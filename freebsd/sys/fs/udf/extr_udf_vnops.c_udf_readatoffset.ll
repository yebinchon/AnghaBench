; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_readatoffset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_readatoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udf_node = type { %struct.file_entry*, %struct.vnode*, %struct.udf_mnt* }
%struct.file_entry = type { i32, i32, i32* }
%struct.vnode = type { i32 }
%struct.udf_mnt = type { i32 }
%struct.buf = type { i32* }

@UDF_INVALID_BMAP = common dso_local global i32 0, align 4
@MAXBSIZE = common dso_local global i64 0, align 8
@NOCRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"warning: udf_readlblks returned error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udf_node*, i32*, i32, %struct.buf**, i32**)* @udf_readatoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_readatoffset(%struct.udf_node* %0, i32* %1, i32 %2, %struct.buf** %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.udf_node*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buf**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.udf_mnt*, align 8
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.file_entry*, align 8
  %15 = alloca %struct.buf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.udf_node* %0, %struct.udf_node** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.buf** %3, %struct.buf*** %10, align 8
  store i32** %4, i32*** %11, align 8
  %21 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %22 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %21, i32 0, i32 2
  %23 = load %struct.udf_mnt*, %struct.udf_mnt** %22, align 8
  store %struct.udf_mnt* %23, %struct.udf_mnt** %12, align 8
  %24 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %25 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %24, i32 0, i32 1
  %26 = load %struct.vnode*, %struct.vnode** %25, align 8
  store %struct.vnode* %26, %struct.vnode** %13, align 8
  %27 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @udf_bmap_internal(%struct.udf_node* %27, i32 %28, i32* %17, i32* %16)
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* @UDF_INVALID_BMAP, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %5
  %34 = load %struct.udf_node*, %struct.udf_node** %7, align 8
  %35 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %34, i32 0, i32 0
  %36 = load %struct.file_entry*, %struct.file_entry** %35, align 8
  store %struct.file_entry* %36, %struct.file_entry** %14, align 8
  %37 = load %struct.file_entry*, %struct.file_entry** %14, align 8
  %38 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.file_entry*, %struct.file_entry** %14, align 8
  %41 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @le32toh(i32 %42)
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32**, i32*** %11, align 8
  store i32* %44, i32** %45, align 8
  %46 = load %struct.file_entry*, %struct.file_entry** %14, align 8
  %47 = getelementptr inbounds %struct.file_entry, %struct.file_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @le32toh(i32 %48)
  %50 = trunc i64 %49 to i32
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %33
  %57 = load i32*, i32** %8, align 8
  store i32 0, i32* %57, align 4
  br label %68

58:                                               ; preds = %33
  %59 = load i32, i32* %9, align 4
  %60 = load i32**, i32*** %11, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %60, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %58, %56
  store i32 0, i32* %6, align 4
  br label %140

69:                                               ; preds = %5
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %20, align 4
  store i32 %73, i32* %6, align 4
  br label %140

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79, %75
  %85 = load i32, i32* %16, align 4
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %79
  %88 = load %struct.udf_mnt*, %struct.udf_mnt** %12, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @blkoff(%struct.udf_mnt* %88, i32 %89)
  store i32 %90, i32* %18, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* @MAXBSIZE, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %93, %95
  %97 = call i32 @min(i32 %92, i64 %96)
  %98 = load i32*, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %100, %101
  %103 = load %struct.udf_mnt*, %struct.udf_mnt** %12, align 8
  %104 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %102, %105
  %107 = load %struct.udf_mnt*, %struct.udf_mnt** %12, align 8
  %108 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %106, %110
  store i32 %111, i32* %19, align 4
  %112 = load %struct.buf**, %struct.buf*** %10, align 8
  store %struct.buf* null, %struct.buf** %112, align 8
  %113 = load %struct.vnode*, %struct.vnode** %13, align 8
  %114 = load %struct.udf_mnt*, %struct.udf_mnt** %12, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @lblkno(%struct.udf_mnt* %114, i32 %115)
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* @NOCRED, align 4
  %119 = load %struct.buf**, %struct.buf*** %10, align 8
  %120 = call i32 @bread(%struct.vnode* %113, i32 %116, i32 %117, i32 %118, %struct.buf** %119)
  store i32 %120, i32* %20, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %87
  %123 = load i32, i32* %20, align 4
  %124 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %20, align 4
  store i32 %125, i32* %6, align 4
  br label %140

126:                                              ; preds = %87
  %127 = load %struct.buf**, %struct.buf*** %10, align 8
  %128 = load %struct.buf*, %struct.buf** %127, align 8
  store %struct.buf* %128, %struct.buf** %15, align 8
  %129 = load %struct.buf*, %struct.buf** %15, align 8
  %130 = getelementptr inbounds %struct.buf, %struct.buf* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.udf_mnt*, %struct.udf_mnt** %12, align 8
  %134 = getelementptr inbounds %struct.udf_mnt, %struct.udf_mnt* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %132, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %131, i64 %137
  %139 = load i32**, i32*** %11, align 8
  store i32* %138, i32** %139, align 8
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %126, %122, %72, %68
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @udf_bmap_internal(%struct.udf_node*, i32, i32*, i32*) #1

declare dso_local i64 @le32toh(i32) #1

declare dso_local i32 @blkoff(%struct.udf_mnt*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @bread(%struct.vnode*, i32, i32, i32, %struct.buf**) #1

declare dso_local i32 @lblkno(%struct.udf_mnt*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
