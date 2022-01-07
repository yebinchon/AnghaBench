; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_is_dirent_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_is_dirent_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }
%struct.ext2fs_direct_2 = type { i32 }
%struct.ext2fs_direct_tail = type { i64, i32, i64, i64 }

@EXT2F_ROCOMPAT_METADATA_CKSUM = common dso_local global i32 0, align 4
@EXT2_FT_DIR_CSUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_is_dirent_tail(%struct.inode* %0, %struct.ext2fs_direct_2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext2fs_direct_2*, align 8
  %6 = alloca %struct.m_ext2fs*, align 8
  %7 = alloca %struct.ext2fs_direct_tail*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext2fs_direct_2* %1, %struct.ext2fs_direct_2** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.m_ext2fs*, %struct.m_ext2fs** %9, align 8
  store %struct.m_ext2fs* %10, %struct.m_ext2fs** %6, align 8
  %11 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %12 = load i32, i32* @EXT2F_ROCOMPAT_METADATA_CKSUM, align 4
  %13 = call i32 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %18 = bitcast %struct.ext2fs_direct_2* %17 to %struct.ext2fs_direct_tail*
  store %struct.ext2fs_direct_tail* %18, %struct.ext2fs_direct_tail** %7, align 8
  %19 = load %struct.ext2fs_direct_tail*, %struct.ext2fs_direct_tail** %7, align 8
  %20 = getelementptr inbounds %struct.ext2fs_direct_tail, %struct.ext2fs_direct_tail* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  %24 = load %struct.ext2fs_direct_tail*, %struct.ext2fs_direct_tail** %7, align 8
  %25 = getelementptr inbounds %struct.ext2fs_direct_tail, %struct.ext2fs_direct_tail* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = icmp eq i64 %27, 32
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.ext2fs_direct_tail*, %struct.ext2fs_direct_tail** %7, align 8
  %31 = getelementptr inbounds %struct.ext2fs_direct_tail, %struct.ext2fs_direct_tail* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.ext2fs_direct_tail*, %struct.ext2fs_direct_tail** %7, align 8
  %36 = getelementptr inbounds %struct.ext2fs_direct_tail, %struct.ext2fs_direct_tail* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EXT2_FT_DIR_CSUM, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %42

41:                                               ; preds = %34, %29, %23, %16
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %15
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
