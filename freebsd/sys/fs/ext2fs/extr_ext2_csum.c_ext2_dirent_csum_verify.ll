; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_dirent_csum_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_dirent_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext2fs_direct_2 = type { i32 }
%struct.ext2fs_direct_tail = type { i64 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_dirent_csum_verify(%struct.inode* %0, %struct.ext2fs_direct_2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext2fs_direct_2*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ext2fs_direct_tail*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext2fs_direct_2* %1, %struct.ext2fs_direct_2** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %10 = call %struct.ext2fs_direct_tail* @ext2_dirent_get_tail(%struct.inode* %8, %struct.ext2fs_direct_2* %9)
  store %struct.ext2fs_direct_tail* %10, %struct.ext2fs_direct_tail** %7, align 8
  %11 = load %struct.ext2fs_direct_tail*, %struct.ext2fs_direct_tail** %7, align 8
  %12 = icmp eq %struct.ext2fs_direct_tail* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %17 = load %struct.ext2fs_direct_tail*, %struct.ext2fs_direct_tail** %7, align 8
  %18 = bitcast %struct.ext2fs_direct_tail* %17 to i8*
  %19 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %20 = bitcast %struct.ext2fs_direct_2* %19 to i8*
  %21 = ptrtoint i8* %18 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = call i64 @ext2_dirent_csum(%struct.inode* %15, %struct.ext2fs_direct_2* %16, i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.ext2fs_direct_tail*, %struct.ext2fs_direct_tail** %7, align 8
  %28 = getelementptr inbounds %struct.ext2fs_direct_tail, %struct.ext2fs_direct_tail* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %14
  %32 = load i32, i32* @EIO, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %31, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.ext2fs_direct_tail* @ext2_dirent_get_tail(%struct.inode*, %struct.ext2fs_direct_2*) #1

declare dso_local i64 @ext2_dirent_csum(%struct.inode*, %struct.ext2fs_direct_2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
