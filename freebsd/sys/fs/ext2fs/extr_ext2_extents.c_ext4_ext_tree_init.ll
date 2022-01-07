; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_tree_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_tree_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_extent_header = type { i32, i32 }

@IN_E4EXTENTS = common dso_local global i32 0, align 4
@EXT2_NDADDR = common dso_local global i64 0, align 8
@EXT2_NIADDR = common dso_local global i64 0, align 8
@EXT4_EXT_MAGIC = common dso_local global i32 0, align 4
@EXT4_EXT_CACHE_NO = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext4_ext_tree_init(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ext4_extent_header*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load i32, i32* @IN_E4EXTENTS, align 4
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = or i32 %7, %4
  store i32 %8, i32* %6, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EXT2_NDADDR, align 8
  %13 = load i64, i64* @EXT2_NIADDR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @memset(i64 %11, i32 0, i64 %14)
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ext4_extent_header*
  store %struct.ext4_extent_header* %19, %struct.ext4_extent_header** %3, align 8
  %20 = load i32, i32* @EXT4_EXT_MAGIC, align 4
  %21 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %3, align 8
  %22 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = call i32 @ext4_ext_space_root(%struct.inode* %23)
  %25 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %3, align 8
  %26 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @EXT4_EXT_CACHE_NO, align 4
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @IN_CHANGE, align 4
  %32 = load i32, i32* @IN_UPDATE, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.inode*, %struct.inode** %2, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ext2_update(i32 %40, i32 1)
  ret void
}

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @ext4_ext_space_root(%struct.inode*) #1

declare dso_local i32 @ext2_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
