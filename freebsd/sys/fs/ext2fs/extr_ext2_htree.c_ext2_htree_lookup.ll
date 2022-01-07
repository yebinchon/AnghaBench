; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_htree_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_htree_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }
%struct.buf = type { i32 }
%struct.ext2fs_searchslot = type { i64, i32, i64 }
%struct.vnode = type { i32 }
%struct.ext2fs_htree_lookup_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ext2fs_htree_entry* }
%struct.ext2fs_htree_entry = type { i32 }

@NONE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_htree_lookup(%struct.inode* %0, i8* %1, i32 %2, %struct.buf** %3, i32* %4, i32* %5, i32* %6, i32* %7, %struct.ext2fs_searchslot* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.buf**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.ext2fs_searchslot*, align 8
  %20 = alloca %struct.vnode*, align 8
  %21 = alloca %struct.ext2fs_htree_lookup_info, align 8
  %22 = alloca %struct.ext2fs_htree_entry*, align 8
  %23 = alloca %struct.m_ext2fs*, align 8
  %24 = alloca %struct.buf*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.buf** %3, %struct.buf*** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store %struct.ext2fs_searchslot* %8, %struct.ext2fs_searchslot** %19, align 8
  store i32 0, i32* %30, align 4
  %31 = load %struct.inode*, %struct.inode** %11, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load %struct.m_ext2fs*, %struct.m_ext2fs** %32, align 8
  store %struct.m_ext2fs* %33, %struct.m_ext2fs** %23, align 8
  %34 = load %struct.m_ext2fs*, %struct.m_ext2fs** %23, align 8
  %35 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %27, align 4
  %37 = load %struct.inode*, %struct.inode** %11, align 8
  %38 = call %struct.vnode* @ITOV(%struct.inode* %37)
  store %struct.vnode* %38, %struct.vnode** %20, align 8
  %39 = call i32 @memset(%struct.ext2fs_htree_lookup_info* %21, i32 0, i32 16)
  %40 = load %struct.inode*, %struct.inode** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @ext2_htree_find_leaf(%struct.inode* %40, i8* %41, i32 %42, i32* %26, i32* %28, %struct.ext2fs_htree_lookup_info* %21)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %129

46:                                               ; preds = %9
  br label %47

47:                                               ; preds = %123, %46
  %48 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %21, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.ext2fs_htree_lookup_info, %struct.ext2fs_htree_lookup_info* %21, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %55, align 8
  store %struct.ext2fs_htree_entry* %56, %struct.ext2fs_htree_entry** %22, align 8
  %57 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %22, align 8
  %58 = call i32 @ext2_htree_get_block(%struct.ext2fs_htree_entry* %57)
  store i32 %58, i32* %25, align 4
  %59 = load %struct.vnode*, %struct.vnode** %20, align 8
  %60 = load i32, i32* %25, align 4
  %61 = load i32, i32* %27, align 4
  %62 = mul nsw i32 %60, %61
  %63 = call i64 @ext2_blkatoff(%struct.vnode* %59, i32 %62, i32* null, %struct.buf** %24)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %47
  %66 = call i32 @ext2_htree_release(%struct.ext2fs_htree_lookup_info* %21)
  store i32 -1, i32* %10, align 4
  br label %129

67:                                               ; preds = %47
  %68 = load i32, i32* %25, align 4
  %69 = load i32, i32* %27, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32*, i32** %16, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %15, align 8
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %25, align 4
  %74 = load i32, i32* %27, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32*, i32** %17, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %25, align 4
  %78 = load i32, i32* %27, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32*, i32** %18, align 8
  store i32 %79, i32* %80, align 4
  %81 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %19, align 8
  %82 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @NONE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %67
  %87 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %19, align 8
  %88 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %87, i32 0, i32 1
  store i32 -1, i32* %88, align 8
  %89 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %19, align 8
  %90 = getelementptr inbounds %struct.ext2fs_searchslot, %struct.ext2fs_searchslot* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %86, %67
  %92 = load %struct.inode*, %struct.inode** %11, align 8
  %93 = load %struct.buf*, %struct.buf** %24, align 8
  %94 = getelementptr inbounds %struct.buf, %struct.buf* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32*, i32** %15, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = load %struct.ext2fs_searchslot*, %struct.ext2fs_searchslot** %19, align 8
  %103 = call i64 @ext2_search_dirblock(%struct.inode* %92, i32 %95, i32* %30, i8* %96, i32 %97, i32* %98, i32* %99, i32* %100, i32* %101, %struct.ext2fs_searchslot* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %91
  %106 = load %struct.buf*, %struct.buf** %24, align 8
  %107 = call i32 @brelse(%struct.buf* %106)
  %108 = call i32 @ext2_htree_release(%struct.ext2fs_htree_lookup_info* %21)
  store i32 -1, i32* %10, align 4
  br label %129

109:                                              ; preds = %91
  %110 = load i32, i32* %30, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load %struct.buf*, %struct.buf** %24, align 8
  %114 = load %struct.buf**, %struct.buf*** %14, align 8
  store %struct.buf* %113, %struct.buf** %114, align 8
  %115 = call i32 @ext2_htree_release(%struct.ext2fs_htree_lookup_info* %21)
  store i32 0, i32* %10, align 4
  br label %129

116:                                              ; preds = %109
  %117 = load %struct.buf*, %struct.buf** %24, align 8
  %118 = call i32 @brelse(%struct.buf* %117)
  %119 = load %struct.inode*, %struct.inode** %11, align 8
  %120 = load i32, i32* %26, align 4
  %121 = load i8*, i8** %12, align 8
  %122 = call i32 @ext2_htree_check_next(%struct.inode* %119, i32 %120, i8* %121, %struct.ext2fs_htree_lookup_info* %21)
  store i32 %122, i32* %29, align 4
  br label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %29, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %47, label %126

126:                                              ; preds = %123
  %127 = call i32 @ext2_htree_release(%struct.ext2fs_htree_lookup_info* %21)
  %128 = load i32, i32* @ENOENT, align 4
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %126, %112, %105, %65, %45
  %130 = load i32, i32* %10, align 4
  ret i32 %130
}

declare dso_local %struct.vnode* @ITOV(%struct.inode*) #1

declare dso_local i32 @memset(%struct.ext2fs_htree_lookup_info*, i32, i32) #1

declare dso_local i64 @ext2_htree_find_leaf(%struct.inode*, i8*, i32, i32*, i32*, %struct.ext2fs_htree_lookup_info*) #1

declare dso_local i32 @ext2_htree_get_block(%struct.ext2fs_htree_entry*) #1

declare dso_local i64 @ext2_blkatoff(%struct.vnode*, i32, i32*, %struct.buf**) #1

declare dso_local i32 @ext2_htree_release(%struct.ext2fs_htree_lookup_info*) #1

declare dso_local i64 @ext2_search_dirblock(%struct.inode*, i32, i32*, i8*, i32, i32*, i32*, i32*, i32*, %struct.ext2fs_searchslot*) #1

declare dso_local i32 @brelse(%struct.buf*) #1

declare dso_local i32 @ext2_htree_check_next(%struct.inode*, i32, i8*, %struct.ext2fs_htree_lookup_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
