; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_create_cq_kernel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_create_cq_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.mlx5_ib_cq = type { %struct.TYPE_20__, %struct.TYPE_13__, %struct.TYPE_14__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i64, i64 }

@create_cq_in = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cq_context = common dso_local global i32* null, align 8
@log_page_size = common dso_local global i32 0, align 4
@MLX5_ADAPTER_PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_cq*, i32, i32, i32**, i32*, i32*)* @create_cq_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_cq_kernel(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_cq* %1, i32 %2, i32 %3, i32** %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_ib_dev*, align 8
  %10 = alloca %struct.mlx5_ib_cq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %9, align 8
  store %struct.mlx5_ib_cq* %1, %struct.mlx5_ib_cq** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32** %4, i32*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %22 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %22, i32 0, i32 0
  %24 = call i32 @mlx5_db_alloc(%struct.TYPE_19__* %21, %struct.TYPE_20__* %23)
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* %18, align 4
  store i32 %28, i32* %8, align 4
  br label %140

29:                                               ; preds = %7
  %30 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  store i64 %33, i64* %36, align 8
  %37 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %50 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %50, i32 0, i32 1
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @alloc_cq_buf(%struct.mlx5_ib_dev* %49, %struct.TYPE_13__* %51, i32 %52, i32 %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %29
  br label %132

58:                                               ; preds = %29
  %59 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %60 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %60, i32 0, i32 1
  %62 = call i32 @init_cq_buf(%struct.mlx5_ib_cq* %59, %struct.TYPE_13__* %61)
  %63 = load i32, i32* @create_cq_in, align 4
  %64 = call i32 @MLX5_ST_SZ_BYTES(i32 %63)
  %65 = load i32, i32* @create_cq_in, align 4
  %66 = load i32*, i32** %16, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @MLX5_FLD_SZ_BYTES(i32 %65, i32 %68)
  %70 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %71 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %69, %74
  %76 = add nsw i32 %64, %75
  %77 = load i32*, i32** %15, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32* @mlx5_vzalloc(i32 %79)
  %81 = load i32**, i32*** %13, align 8
  store i32* %80, i32** %81, align 8
  %82 = load i32**, i32*** %13, align 8
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %58
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %18, align 4
  br label %127

88:                                               ; preds = %58
  %89 = load i32, i32* @create_cq_in, align 4
  %90 = load i32**, i32*** %13, align 8
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %16, align 8
  %93 = call i8* @MLX5_ADDR_OF(i32 %89, i32* %91, i32* %92)
  %94 = bitcast i8* %93 to i32*
  store i32* %94, i32** %16, align 8
  %95 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %96 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32*, i32** %16, align 8
  %99 = call i32 @mlx5_fill_page_array(%struct.TYPE_18__* %97, i32* %98)
  %100 = load i32, i32* @create_cq_in, align 4
  %101 = load i32**, i32*** %13, align 8
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** @cq_context, align 8
  %104 = call i8* @MLX5_ADDR_OF(i32 %100, i32* %102, i32* %103)
  store i8* %104, i8** %17, align 8
  %105 = load i8*, i8** %17, align 8
  %106 = load i8*, i8** %17, align 8
  %107 = load i32, i32* @log_page_size, align 4
  %108 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %109 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @MLX5_ADAPTER_PAGE_SHIFT, align 8
  %114 = sub nsw i64 %112, %113
  %115 = call i32 @MLX5_SET(i8* %105, i8* %106, i32 %107, i64 %114)
  %116 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %117 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %116, i32 0, i32 0
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %14, align 8
  store i32 %125, i32* %126, align 4
  store i32 0, i32* %8, align 4
  br label %140

127:                                              ; preds = %85
  %128 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %129 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %130 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %129, i32 0, i32 1
  %131 = call i32 @free_cq_buf(%struct.mlx5_ib_dev* %128, %struct.TYPE_13__* %130)
  br label %132

132:                                              ; preds = %127, %57
  %133 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %134 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %133, i32 0, i32 0
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %137 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %136, i32 0, i32 0
  %138 = call i32 @mlx5_db_free(%struct.TYPE_19__* %135, %struct.TYPE_20__* %137)
  %139 = load i32, i32* %18, align 4
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %132, %88, %27
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local i32 @mlx5_db_alloc(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @alloc_cq_buf(%struct.mlx5_ib_dev*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @init_cq_buf(%struct.mlx5_ib_cq*, %struct.TYPE_13__*) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_FLD_SZ_BYTES(i32, i32) #1

declare dso_local i32* @mlx5_vzalloc(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32*) #1

declare dso_local i32 @mlx5_fill_page_array(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i64) #1

declare dso_local i32 @free_cq_buf(%struct.mlx5_ib_dev*, %struct.TYPE_13__*) #1

declare dso_local i32 @mlx5_db_free(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
