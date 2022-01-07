; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_blkpref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_blkpref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ext4_extent_path = type { i32, i64, i64, %struct.ext4_extent* }
%struct.ext4_extent = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, %struct.ext4_extent_path*, i64)* @ext4_ext_blkpref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_ext_blkpref(%struct.inode* %0, %struct.ext4_extent_path* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_extent_path*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.m_ext2fs*, align 8
  %9 = alloca %struct.ext4_extent*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_extent_path* %1, %struct.ext4_extent_path** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load %struct.m_ext2fs*, %struct.m_ext2fs** %15, align 8
  store %struct.m_ext2fs* %16, %struct.m_ext2fs** %8, align 8
  %17 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %18 = icmp ne %struct.ext4_extent_path* %17, null
  br i1 %18, label %19, label %68

19:                                               ; preds = %3
  %20 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %21 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %23, i64 %25
  %27 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %26, i32 0, i32 3
  %28 = load %struct.ext4_extent*, %struct.ext4_extent** %27, align 8
  store %struct.ext4_extent* %28, %struct.ext4_extent** %9, align 8
  %29 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %30 = icmp ne %struct.ext4_extent* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %19
  %32 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %33 = call i64 @ext4_ext_extent_pblock(%struct.ext4_extent* %32)
  store i64 %33, i64* %12, align 8
  %34 = load %struct.ext4_extent*, %struct.ext4_extent** %9, align 8
  %35 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %13, align 8
  %44 = sub nsw i64 %42, %43
  %45 = add nsw i64 %41, %44
  store i64 %45, i64* %4, align 8
  br label %87

46:                                               ; preds = %31
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub nsw i64 %48, %49
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* %4, align 8
  br label %87

52:                                               ; preds = %19
  %53 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %53, i64 %55
  %57 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %61, i64 %63
  %65 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %4, align 8
  br label %87

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67, %3
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  %74 = load %struct.m_ext2fs*, %struct.m_ext2fs** %73, align 8
  %75 = call i32 @EXT2_BLOCKS_PER_GROUP(%struct.m_ext2fs* %74)
  %76 = mul nsw i32 %71, %75
  %77 = sext i32 %76 to i64
  %78 = load %struct.m_ext2fs*, %struct.m_ext2fs** %8, align 8
  %79 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %77, %82
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %7, align 8
  %86 = add nsw i64 %84, %85
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %68, %60, %46, %40
  %88 = load i64, i64* %4, align 8
  ret i64 %88
}

declare dso_local i64 @ext4_ext_extent_pblock(%struct.ext4_extent*) #1

declare dso_local i32 @EXT2_BLOCKS_PER_GROUP(%struct.m_ext2fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
