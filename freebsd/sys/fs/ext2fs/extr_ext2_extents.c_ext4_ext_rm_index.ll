; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_rm_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_rm_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent_path = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"ext4_ext_rm_index: bad ecount\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_extent_path*)* @ext4_ext_rm_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_rm_index(%struct.inode* %0, %struct.ext4_extent_path* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ext4_extent_path*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ext4_extent_path* %1, %struct.ext4_extent_path** %4, align 8
  %6 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %4, align 8
  %7 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %6, i32 -1
  store %struct.ext4_extent_path* %7, %struct.ext4_extent_path** %4, align 8
  %8 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %4, align 8
  %9 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ext4_ext_index_pblock(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %4, align 8
  %13 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %4, align 8
  %21 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %4, align 8
  %28 = call i32 @ext4_ext_dirty(%struct.inode* %26, %struct.ext4_extent_path* %27)
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ext4_ext_blkfree(%struct.inode* %29, i32 %30, i32 1, i32 0)
  ret i32 0
}

declare dso_local i32 @ext4_ext_index_pblock(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ext4_ext_dirty(%struct.inode*, %struct.ext4_extent_path*) #1

declare dso_local i32 @ext4_ext_blkfree(%struct.inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
