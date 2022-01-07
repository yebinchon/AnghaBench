; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_in_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_in_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.ext4_extent_cache }
%struct.ext4_extent_cache = type { i32, i64, i64, i32 }
%struct.ext4_extent = type { i64, i32, i32, i64 }

@EXT4_EXT_CACHE_NO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_in_cache(%struct.inode* %0, i64 %1, %struct.ext4_extent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ext4_extent*, align 8
  %8 = alloca %struct.ext4_extent_cache*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ext4_extent* %2, %struct.ext4_extent** %7, align 8
  %10 = load i32, i32* @EXT4_EXT_CACHE_NO, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  store %struct.ext4_extent_cache* %12, %struct.ext4_extent_cache** %8, align 8
  %13 = load %struct.ext4_extent_cache*, %struct.ext4_extent_cache** %8, align 8
  %14 = getelementptr inbounds %struct.ext4_extent_cache, %struct.ext4_extent_cache* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @EXT4_EXT_CACHE_NO, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %64

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.ext4_extent_cache*, %struct.ext4_extent_cache** %8, align 8
  %23 = getelementptr inbounds %struct.ext4_extent_cache, %struct.ext4_extent_cache* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.ext4_extent_cache*, %struct.ext4_extent_cache** %8, align 8
  %29 = getelementptr inbounds %struct.ext4_extent_cache, %struct.ext4_extent_cache* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ext4_extent_cache*, %struct.ext4_extent_cache** %8, align 8
  %32 = getelementptr inbounds %struct.ext4_extent_cache, %struct.ext4_extent_cache* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = icmp slt i64 %27, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %26
  %37 = load %struct.ext4_extent_cache*, %struct.ext4_extent_cache** %8, align 8
  %38 = getelementptr inbounds %struct.ext4_extent_cache, %struct.ext4_extent_cache* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %41 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.ext4_extent_cache*, %struct.ext4_extent_cache** %8, align 8
  %43 = getelementptr inbounds %struct.ext4_extent_cache, %struct.ext4_extent_cache* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %46 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ext4_extent_cache*, %struct.ext4_extent_cache** %8, align 8
  %48 = getelementptr inbounds %struct.ext4_extent_cache, %struct.ext4_extent_cache* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 32
  %51 = and i32 %50, 65535
  %52 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %53 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ext4_extent_cache*, %struct.ext4_extent_cache** %8, align 8
  %55 = getelementptr inbounds %struct.ext4_extent_cache, %struct.ext4_extent_cache* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %58 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load %struct.ext4_extent_cache*, %struct.ext4_extent_cache** %8, align 8
  %60 = getelementptr inbounds %struct.ext4_extent_cache, %struct.ext4_extent_cache* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %36, %26, %20
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %18
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
