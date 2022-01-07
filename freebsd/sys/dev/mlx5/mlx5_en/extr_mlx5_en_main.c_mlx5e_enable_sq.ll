; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_enable_sq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_enable_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_sq = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5e_sq_param = type { i32 }

@create_sq_in = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ctx = common dso_local global i8* null, align 8
@tis_num_0 = common dso_local global i32 0, align 4
@cqn = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_RST = common dso_local global i32 0, align 4
@tis_lst_sz = common dso_local global i32 0, align 4
@flush_in_error_en = common dso_local global i32 0, align 4
@wq_type = common dso_local global i32 0, align 4
@MLX5_WQ_TYPE_CYCLIC = common dso_local global i32 0, align 4
@uar_page = common dso_local global i32 0, align 4
@log_wq_pg_sz = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@dbr_addr = common dso_local global i32 0, align 4
@pas = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_enable_sq(%struct.mlx5e_sq* %0, %struct.mlx5e_sq_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_sq*, align 8
  %6 = alloca %struct.mlx5e_sq_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx5e_sq* %0, %struct.mlx5e_sq** %5, align 8
  store %struct.mlx5e_sq_param* %1, %struct.mlx5e_sq_param** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** @create_sq_in, align 8
  %14 = call i32 @MLX5_ST_SZ_BYTES(i8* %13)
  %15 = sext i32 %14 to i64
  %16 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = add i64 %15, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i8* @mlx5_vzalloc(i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %128

32:                                               ; preds = %3
  %33 = load i8*, i8** @create_sq_in, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** @ctx, align 8
  %36 = call i8* @MLX5_ADDR_OF(i8* %33, i8* %34, i8* %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i8* @MLX5_ADDR_OF(i8* %37, i8* %38, i8* %39)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %6, align 8
  %43 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i8* %41, i32 %44, i32 4)
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* @tis_num_0, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @MLX5_SET(i8* %46, i8* %47, i32 %48, i32 %49)
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* @cqn, align 4
  %54 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @MLX5_SET(i8* %51, i8* %52, i32 %53, i32 %58)
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* @state, align 4
  %63 = load i32, i32* @MLX5_SQC_STATE_RST, align 4
  %64 = call i32 @MLX5_SET(i8* %60, i8* %61, i32 %62, i32 %63)
  %65 = load i8*, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* @tis_lst_sz, align 4
  %68 = call i32 @MLX5_SET(i8* %65, i8* %66, i32 %67, i32 1)
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* @flush_in_error_en, align 4
  %72 = call i32 @MLX5_SET(i8* %69, i8* %70, i32 %71, i32 1)
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* @wq_type, align 4
  %76 = load i32, i32* @MLX5_WQ_TYPE_CYCLIC, align 4
  %77 = call i32 @MLX5_SET(i8* %73, i8* %74, i32 %75, i32 %76)
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* @uar_page, align 4
  %81 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %5, align 8
  %82 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @MLX5_SET(i8* %78, i8* %79, i32 %80, i32 %84)
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* @log_wq_pg_sz, align 4
  %89 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %5, align 8
  %90 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PAGE_SHIFT, align 4
  %95 = sub nsw i32 %93, %94
  %96 = call i32 @MLX5_SET(i8* %86, i8* %87, i32 %88, i32 %95)
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i32, i32* @dbr_addr, align 4
  %100 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %5, align 8
  %101 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @MLX5_SET64(i8* %97, i8* %98, i32 %99, i32 %104)
  %106 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %5, align 8
  %107 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i8*, i8** %10, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load i8*, i8** @pas, align 8
  %112 = call i8* @MLX5_ADDR_OF(i8* %109, i8* %110, i8* %111)
  %113 = bitcast i8* %112 to i32*
  %114 = call i32 @mlx5_fill_page_array(%struct.TYPE_14__* %108, i32* %113)
  %115 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %5, align 8
  %116 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %115, i32 0, i32 1
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %5, align 8
  %123 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %122, i32 0, i32 0
  %124 = call i32 @mlx5_core_create_sq(i32 %119, i8* %120, i32 %121, i32* %123)
  store i32 %124, i32* %12, align 4
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @kvfree(i8* %125)
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %32, %29
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_fill_page_array(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @mlx5_core_create_sq(i32, i8*, i32, i32*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
