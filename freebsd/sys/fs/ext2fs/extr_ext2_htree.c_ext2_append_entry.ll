; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_append_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_append_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_direct_2 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2*, i32)* @ext2_append_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_append_entry(i8* %0, i32 %1, %struct.ext2fs_direct_2* %2, %struct.ext2fs_direct_2* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext2fs_direct_2*, align 8
  %9 = alloca %struct.ext2fs_direct_2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ext2fs_direct_2* %2, %struct.ext2fs_direct_2** %8, align 8
  store %struct.ext2fs_direct_2* %3, %struct.ext2fs_direct_2** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %8, align 8
  %13 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @EXT2_DIR_REC_LEN(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %8, align 8
  %18 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %8, align 8
  %20 = bitcast %struct.ext2fs_direct_2* %19 to i8*
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = bitcast i8* %23 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %24, %struct.ext2fs_direct_2** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %8, align 8
  %30 = bitcast %struct.ext2fs_direct_2* %29 to i8*
  %31 = ptrtoint i8* %28 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %33, %35
  %37 = trunc i64 %36 to i32
  %38 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %9, align 8
  %39 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %8, align 8
  %41 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %9, align 8
  %42 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %9, align 8
  %43 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @EXT2_DIR_REC_LEN(i32 %44)
  %46 = call i32 @memcpy(%struct.ext2fs_direct_2* %40, %struct.ext2fs_direct_2* %41, i32 %45)
  ret void
}

declare dso_local i32 @EXT2_DIR_REC_LEN(i32) #1

declare dso_local i32 @memcpy(%struct.ext2fs_direct_2*, %struct.ext2fs_direct_2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
