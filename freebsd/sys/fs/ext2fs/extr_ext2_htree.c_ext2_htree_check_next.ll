; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_htree_check_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_htree_check_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ext2fs_htree_lookup_info = type { i32, %struct.ext2fs_htree_lookup_level* }
%struct.ext2fs_htree_lookup_level = type { i64, i64, %struct.buf* }
%struct.buf = type { i64 }
%struct.vnode = type { i32 }
%struct.ext2fs_htree_node = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, %struct.ext2fs_htree_lookup_info*)* @ext2_htree_check_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_htree_check_next(%struct.inode* %0, i32 %1, i8* %2, %struct.ext2fs_htree_lookup_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ext2fs_htree_lookup_info*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.ext2fs_htree_lookup_level*, align 8
  %12 = alloca %struct.buf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.ext2fs_htree_lookup_info* %3, %struct.ext2fs_htree_lookup_info** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.vnode* @ITOV(%struct.inode* %16)
  store %struct.vnode* %17, %struct.vnode** %10, align 8
  %18 = load %struct.ext2fs_htree_lookup_info*, %struct.ext2fs_htree_lookup_info** %9, align 8
  %19 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %55, %4
  %23 = load %struct.ext2fs_htree_lookup_info*, %struct.ext2fs_htree_lookup_info** %9, align 8
  %24 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %23, i32 0, i32 1
  %25 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %24, align 8
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %25, i64 %27
  store %struct.ext2fs_htree_lookup_level* %28, %struct.ext2fs_htree_lookup_level** %11, align 8
  %29 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %11, align 8
  %30 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %11, align 8
  %34 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %11, align 8
  %37 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %11, align 8
  %40 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @ext2_htree_get_count(i64 %41)
  %43 = add nsw i64 %38, %42
  %44 = icmp slt i64 %35, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %22
  br label %56

46:                                               ; preds = %22
  %47 = load i32, i32* %14, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %118

50:                                               ; preds = %46
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %50
  br i1 true, label %22, label %56

56:                                               ; preds = %55, %45
  %57 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %11, align 8
  %58 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ext2_htree_get_hash(i64 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %13, align 4
  %67 = and i32 %66, -2
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %118

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %56
  br label %72

72:                                               ; preds = %92, %71
  %73 = load i32, i32* %15, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %117

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %15, align 4
  %78 = load %struct.vnode*, %struct.vnode** %10, align 8
  %79 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %11, align 8
  %80 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @ext2_htree_get_block(i64 %81)
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %82, %87
  %89 = call i64 @ext2_blkatoff(%struct.vnode* %78, i32 %88, i32* null, %struct.buf** %12)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %118

92:                                               ; preds = %75
  %93 = load %struct.ext2fs_htree_lookup_info*, %struct.ext2fs_htree_lookup_info** %9, align 8
  %94 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %93, i32 0, i32 1
  %95 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %95, i64 %98
  store %struct.ext2fs_htree_lookup_level* %99, %struct.ext2fs_htree_lookup_level** %11, align 8
  %100 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %11, align 8
  %101 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %100, i32 0, i32 2
  %102 = load %struct.buf*, %struct.buf** %101, align 8
  %103 = call i32 @brelse(%struct.buf* %102)
  %104 = load %struct.buf*, %struct.buf** %12, align 8
  %105 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %11, align 8
  %106 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %105, i32 0, i32 2
  store %struct.buf* %104, %struct.buf** %106, align 8
  %107 = load %struct.buf*, %struct.buf** %12, align 8
  %108 = getelementptr inbounds %struct.buf, %struct.buf* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.ext2fs_htree_node*
  %111 = getelementptr inbounds %struct.ext2fs_htree_node, %struct.ext2fs_htree_node* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %11, align 8
  %114 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %11, align 8
  %116 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %115, i32 0, i32 0
  store i64 %112, i64* %116, align 8
  br label %72

117:                                              ; preds = %72
  store i32 1, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %91, %69, %49
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local %struct.vnode* @ITOV(%struct.inode*) #1

declare dso_local i64 @ext2_htree_get_count(i64) #1

declare dso_local i32 @ext2_htree_get_hash(i64) #1

declare dso_local i64 @ext2_blkatoff(%struct.vnode*, i32, i32*, %struct.buf**) #1

declare dso_local i32 @ext2_htree_get_block(i64) #1

declare dso_local i32 @brelse(%struct.buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
