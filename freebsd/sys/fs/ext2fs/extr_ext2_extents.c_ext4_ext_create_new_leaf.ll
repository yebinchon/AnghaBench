; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_create_new_leaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_create_new_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent_path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ext4_extent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_extent_path*, %struct.ext4_extent*)* @ext4_ext_create_new_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_create_new_leaf(%struct.inode* %0, %struct.ext4_extent_path* %1, %struct.ext4_extent* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_extent_path*, align 8
  %6 = alloca %struct.ext4_extent*, align 8
  %7 = alloca %struct.ext4_extent_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext4_extent_path* %1, %struct.ext4_extent_path** %5, align 8
  store %struct.ext4_extent* %2, %struct.ext4_extent** %6, align 8
  br label %11

11:                                               ; preds = %97, %3
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @ext4_ext_inode_depth(%struct.inode* %12)
  store i32 %13, i32* %8, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %14, i64 %16
  store %struct.ext4_extent_path* %17, %struct.ext4_extent_path** %7, align 8
  br label %18

18:                                               ; preds = %28, %11
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %7, align 8
  %23 = call i64 @EXT_HAS_FREE_INDEX(%struct.ext4_extent_path* %22)
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ]
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %9, align 4
  %31 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %7, align 8
  %32 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %31, i32 -1
  store %struct.ext4_extent_path* %32, %struct.ext4_extent_path** %7, align 8
  br label %18

33:                                               ; preds = %26
  %34 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %7, align 8
  %35 = call i64 @EXT_HAS_FREE_INDEX(%struct.ext4_extent_path* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %33
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %40 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @ext4_ext_split(%struct.inode* %38, %struct.ext4_extent_path* %39, %struct.ext4_extent* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %100

46:                                               ; preds = %37
  %47 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %48 = call i32 @ext4_ext_drop_refs(%struct.ext4_extent_path* %47)
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %51 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ext4_ext_find_extent(%struct.inode* %49, i32 %52, %struct.ext4_extent_path** %5)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %100

57:                                               ; preds = %46
  br label %99

58:                                               ; preds = %33
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %61 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %62 = call i32 @ext4_ext_grow_indepth(%struct.inode* %59, %struct.ext4_extent_path* %60, %struct.ext4_extent* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %100

66:                                               ; preds = %58
  %67 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %68 = call i32 @ext4_ext_drop_refs(%struct.ext4_extent_path* %67)
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %71 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ext4_ext_find_extent(%struct.inode* %69, i32 %72, %struct.ext4_extent_path** %5)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %100

77:                                               ; preds = %66
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = call i32 @ext4_ext_inode_depth(%struct.inode* %78)
  store i32 %79, i32* %8, align 4
  %80 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %80, i64 %82
  %84 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %88, i64 %90
  %92 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %87, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %77
  br label %11

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98, %57
  br label %100

100:                                              ; preds = %99, %76, %65, %56, %45
  %101 = load i32, i32* %10, align 4
  ret i32 %101
}

declare dso_local i32 @ext4_ext_inode_depth(%struct.inode*) #1

declare dso_local i64 @EXT_HAS_FREE_INDEX(%struct.ext4_extent_path*) #1

declare dso_local i32 @ext4_ext_split(%struct.inode*, %struct.ext4_extent_path*, %struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_extent_path*) #1

declare dso_local i32 @ext4_ext_find_extent(%struct.inode*, i32, %struct.ext4_extent_path**) #1

declare dso_local i32 @ext4_ext_grow_indepth(%struct.inode*, %struct.ext4_extent_path*, %struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
