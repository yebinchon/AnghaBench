; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_dirty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }
%struct.ext4_extent_path = type { i32, i64 }
%struct.buf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_extent_path*)* @ext4_ext_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_dirty(%struct.inode* %0, %struct.ext4_extent_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_extent_path*, align 8
  %6 = alloca %struct.m_ext2fs*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext4_extent_path* %1, %struct.ext4_extent_path** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 3
  %12 = load %struct.m_ext2fs*, %struct.m_ext2fs** %11, align 8
  store %struct.m_ext2fs* %12, %struct.m_ext2fs** %6, align 8
  %13 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %14 = icmp ne %struct.ext4_extent_path* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %19 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %17
  %23 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %24 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @fsbtodb(%struct.m_ext2fs* %29, i32 %30)
  %32 = load %struct.m_ext2fs*, %struct.m_ext2fs** %6, align 8
  %33 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.buf* @getblk(i32 %28, i32 %31, i32 %34, i32 0, i32 0, i32 0)
  store %struct.buf* %35, %struct.buf** %7, align 8
  %36 = load %struct.buf*, %struct.buf** %7, align 8
  %37 = icmp ne %struct.buf* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %22
  %39 = load i32, i32* @EIO, align 4
  store i32 %39, i32* %3, align 4
  br label %65

40:                                               ; preds = %22
  %41 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %42 = load %struct.buf*, %struct.buf** %7, align 8
  %43 = call i32 @ext4_ext_fill_path_buf(%struct.ext4_extent_path* %41, %struct.buf* %42)
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = load %struct.buf*, %struct.buf** %7, align 8
  %46 = getelementptr inbounds %struct.buf, %struct.buf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ext2_extent_blk_csum_set(%struct.inode* %44, i32 %47)
  %49 = load %struct.buf*, %struct.buf** %7, align 8
  %50 = call i32 @bwrite(%struct.buf* %49)
  store i32 %50, i32* %9, align 4
  br label %63

51:                                               ; preds = %17
  %52 = load i32, i32* @IN_CHANGE, align 4
  %53 = load i32, i32* @IN_UPDATE, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ext2_update(i32 %61, i32 1)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %51, %40
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %38, %15
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.buf* @getblk(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fsbtodb(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext4_ext_fill_path_buf(%struct.ext4_extent_path*, %struct.buf*) #1

declare dso_local i32 @ext2_extent_blk_csum_set(%struct.inode*, i32) #1

declare dso_local i32 @bwrite(%struct.buf*) #1

declare dso_local i32 @ext2_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
