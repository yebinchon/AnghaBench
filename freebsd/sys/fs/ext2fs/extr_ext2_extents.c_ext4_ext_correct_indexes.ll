; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_correct_indexes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_correct_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent_path = type { %struct.TYPE_2__*, %struct.ext4_extent_header*, %struct.ext4_extent* }
%struct.TYPE_2__ = type { i8* }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_extent = type { i8* }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_extent_path*)* @ext4_ext_correct_indexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_correct_indexes(%struct.inode* %0, %struct.ext4_extent_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_extent_path*, align 8
  %6 = alloca %struct.ext4_extent_header*, align 8
  %7 = alloca %struct.ext4_extent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext4_extent_path* %1, %struct.ext4_extent_path** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i32 @ext4_ext_inode_depth(%struct.inode* %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %13, i64 %15
  %17 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %16, i32 0, i32 1
  %18 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %17, align 8
  store %struct.ext4_extent_header* %18, %struct.ext4_extent_header** %6, align 8
  %19 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %19, i64 %21
  %23 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %22, i32 0, i32 2
  %24 = load %struct.ext4_extent*, %struct.ext4_extent** %23, align 8
  store %struct.ext4_extent* %24, %struct.ext4_extent** %7, align 8
  %25 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %26 = icmp eq %struct.ext4_extent* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %6, align 8
  %29 = icmp eq %struct.ext4_extent_header* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @EIO, align 4
  store i32 %31, i32* %3, align 4
  br label %105

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %105

36:                                               ; preds = %32
  %37 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %38 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %6, align 8
  %39 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %38)
  %40 = icmp ne %struct.ext4_extent* %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %105

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %45, i64 %47
  %49 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %48, i32 0, i32 2
  %50 = load %struct.ext4_extent*, %struct.ext4_extent** %49, align 8
  %51 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %54, i64 %56
  %58 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i8* %53, i8** %60, align 8
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %62, i64 %64
  %66 = call i32 @ext4_ext_dirty(%struct.inode* %61, %struct.ext4_extent_path* %65)
  br label %67

67:                                               ; preds = %89, %42
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %10, align 4
  %70 = icmp ne i32 %68, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %67
  %72 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %72, i64 %75
  %77 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %79, i64 %82
  %84 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %83, i32 0, i32 1
  %85 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %84, align 8
  %86 = call %struct.TYPE_2__* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %85)
  %87 = icmp ne %struct.TYPE_2__* %78, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %71
  br label %104

89:                                               ; preds = %71
  %90 = load i8*, i8** %8, align 8
  %91 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %91, i64 %93
  %95 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i8* %90, i8** %97, align 8
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %5, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %99, i64 %101
  %103 = call i32 @ext4_ext_dirty(%struct.inode* %98, %struct.ext4_extent_path* %102)
  br label %67

104:                                              ; preds = %88, %67
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %41, %35, %30
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @ext4_ext_inode_depth(%struct.inode*) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_ext_dirty(%struct.inode*, %struct.ext4_extent_path*) #1

declare dso_local %struct.TYPE_2__* @EXT_FIRST_INDEX(%struct.ext4_extent_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
