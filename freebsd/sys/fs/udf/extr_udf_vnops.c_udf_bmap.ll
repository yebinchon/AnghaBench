; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_bmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/udf/extr_udf_vnops.c_udf_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_bmap_args = type { i32*, i32, i32*, i64*, i32**, i32 }
%struct.udf_node = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@UDF_INVALID_BMAP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DEV_BSHIFT = common dso_local global i32 0, align 4
@MAXBSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_bmap_args*)* @udf_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_bmap(%struct.vop_bmap_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_bmap_args*, align 8
  %4 = alloca %struct.udf_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vop_bmap_args* %0, %struct.vop_bmap_args** %3, align 8
  %9 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.udf_node* @VTON(i32 %11)
  store %struct.udf_node* %12, %struct.udf_node** %4, align 8
  %13 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %13, i32 0, i32 4
  %15 = load i32**, i32*** %14, align 8
  %16 = icmp ne i32** %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.udf_node*, %struct.udf_node** %4, align 8
  %19 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %25 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %24, i32 0, i32 4
  %26 = load i32**, i32*** %25, align 8
  store i32* %23, i32** %26, align 8
  br label %27

27:                                               ; preds = %17, %1
  %28 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %29 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %135

33:                                               ; preds = %27
  %34 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %35 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %34, i32 0, i32 3
  %36 = load i64*, i64** %35, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %40 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %39, i32 0, i32 3
  %41 = load i64*, i64** %40, align 8
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.udf_node*, %struct.udf_node** %4, align 8
  %44 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %45 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.udf_node*, %struct.udf_node** %4, align 8
  %48 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %46, %51
  %53 = call i32 @udf_bmap_internal(%struct.udf_node* %43, i32 %52, i32* %6, i32* %5)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @UDF_INVALID_BMAP, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %58, i32* %2, align 4
  br label %135

59:                                               ; preds = %42
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %135

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.udf_node*, %struct.udf_node** %4, align 8
  %67 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @DEV_BSHIFT, align 4
  %72 = sub nsw i32 %70, %71
  %73 = shl i32 %65, %72
  %74 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %75 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  store i32 %73, i32* %76, align 4
  %77 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %78 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %125

81:                                               ; preds = %64
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.udf_node*, %struct.udf_node** %4, align 8
  %84 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = ashr i32 %82, %87
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp sle i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %81
  %93 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %94 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  store i32 0, i32* %95, align 4
  br label %124

96:                                               ; preds = %81
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @MAXBSIZE, align 4
  %99 = load %struct.udf_node*, %struct.udf_node** %4, align 8
  %100 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = ashr i32 %98, %103
  %105 = icmp sge i32 %97, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %96
  %107 = load i32, i32* @MAXBSIZE, align 4
  %108 = load %struct.udf_node*, %struct.udf_node** %4, align 8
  %109 = getelementptr inbounds %struct.udf_node, %struct.udf_node* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = ashr i32 %107, %112
  %114 = sub nsw i32 %113, 1
  %115 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %116 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  store i32 %114, i32* %117, align 4
  br label %123

118:                                              ; preds = %96
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %121 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %118, %106
  br label %124

124:                                              ; preds = %123, %92
  br label %125

125:                                              ; preds = %124, %64
  %126 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %127 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %126, i32 0, i32 3
  %128 = load i64*, i64** %127, align 8
  %129 = icmp ne i64* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.vop_bmap_args*, %struct.vop_bmap_args** %3, align 8
  %132 = getelementptr inbounds %struct.vop_bmap_args, %struct.vop_bmap_args* %131, i32 0, i32 3
  %133 = load i64*, i64** %132, align 8
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %130, %125
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %62, %57, %32
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.udf_node* @VTON(i32) #1

declare dso_local i32 @udf_bmap_internal(%struct.udf_node*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
