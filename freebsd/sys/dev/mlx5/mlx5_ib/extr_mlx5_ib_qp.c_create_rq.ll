; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_create_rq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_create_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.mlx5_ib_rwq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ib_wq_init_attr = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@create_rq_in = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ctx = common dso_local global i8* null, align 8
@mem_rq_type = common dso_local global %struct.ib_pd* null, align 8
@MLX5_RQC_RQ_TYPE_MEMORY_RQ_INLINE = common dso_local global i32 0, align 4
@user_index = common dso_local global %struct.ib_pd* null, align 8
@cqn = common dso_local global %struct.ib_pd* null, align 8
@state = common dso_local global %struct.ib_pd* null, align 8
@MLX5_RQC_STATE_RST = common dso_local global i32 0, align 4
@flush_in_error_en = common dso_local global %struct.ib_pd* null, align 8
@wq_type = common dso_local global %struct.ib_pd* null, align 8
@MLX5_WQ_TYPE_CYCLIC = common dso_local global i32 0, align 4
@end_padding_mode = common dso_local global %struct.ib_pd* null, align 8
@MLX5_WQ_END_PAD_MODE_ALIGN = common dso_local global i32 0, align 4
@log_wq_stride = common dso_local global %struct.ib_pd* null, align 8
@log_wq_sz = common dso_local global %struct.ib_pd* null, align 8
@page_offset = common dso_local global %struct.ib_pd* null, align 8
@log_wq_pg_sz = common dso_local global %struct.ib_pd* null, align 8
@wq_signature = common dso_local global %struct.ib_pd* null, align 8
@dbr_addr = common dso_local global i32 0, align 4
@pas = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_rwq*, %struct.ib_pd*, %struct.ib_wq_init_attr*)* @create_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_rq(%struct.mlx5_ib_rwq* %0, %struct.ib_pd* %1, %struct.ib_wq_init_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_rwq*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.ib_wq_init_attr*, align 8
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5_ib_rwq* %0, %struct.mlx5_ib_rwq** %5, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %6, align 8
  store %struct.ib_wq_init_attr* %2, %struct.ib_wq_init_attr** %7, align 8
  %15 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %16 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlx5_ib_dev* @to_mdev(i32 %17)
  store %struct.mlx5_ib_dev* %18, %struct.mlx5_ib_dev** %8, align 8
  %19 = load i8*, i8** @create_rq_in, align 8
  %20 = call i32 @MLX5_ST_SZ_BYTES(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = add i64 %21, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i8* @mlx5_vzalloc(i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %163

36:                                               ; preds = %3
  %37 = load i8*, i8** @create_rq_in, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** @ctx, align 8
  %40 = call i8* @MLX5_ADDR_OF(i8* %37, i8* %38, i8* %39)
  store i8* %40, i8** %11, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.ib_pd*, %struct.ib_pd** @mem_rq_type, align 8
  %44 = load i32, i32* @MLX5_RQC_RQ_TYPE_MEMORY_RQ_INLINE, align 4
  %45 = call i32 @MLX5_SET(i8* %41, i8* %42, %struct.ib_pd* %43, i32 %44)
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.ib_pd*, %struct.ib_pd** @user_index, align 8
  %49 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %50 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MLX5_SET(i8* %46, i8* %47, %struct.ib_pd* %48, i32 %51)
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.ib_pd*, %struct.ib_pd** @cqn, align 8
  %56 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %7, align 8
  %57 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_8__* @to_mcq(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @MLX5_SET(i8* %53, i8* %54, %struct.ib_pd* %55, i32 %62)
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load %struct.ib_pd*, %struct.ib_pd** @state, align 8
  %67 = load i32, i32* @MLX5_RQC_STATE_RST, align 4
  %68 = call i32 @MLX5_SET(i8* %64, i8* %65, %struct.ib_pd* %66, i32 %67)
  %69 = load i8*, i8** %11, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.ib_pd*, %struct.ib_pd** @flush_in_error_en, align 8
  %72 = call i32 @MLX5_SET(i8* %69, i8* %70, %struct.ib_pd* %71, i32 1)
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = call i8* @MLX5_ADDR_OF(i8* %73, i8* %74, i8* %75)
  store i8* %76, i8** %12, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load %struct.ib_pd*, %struct.ib_pd** @wq_type, align 8
  %80 = load i32, i32* @MLX5_WQ_TYPE_CYCLIC, align 4
  %81 = call i32 @MLX5_SET(i8* %77, i8* %78, %struct.ib_pd* %79, i32 %80)
  %82 = load i8*, i8** %12, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = load %struct.ib_pd*, %struct.ib_pd** @end_padding_mode, align 8
  %85 = load i32, i32* @MLX5_WQ_END_PAD_MODE_ALIGN, align 4
  %86 = call i32 @MLX5_SET(i8* %82, i8* %83, %struct.ib_pd* %84, i32 %85)
  %87 = load i8*, i8** %12, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_stride, align 8
  %90 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %91 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @MLX5_SET(i8* %87, i8* %88, %struct.ib_pd* %89, i32 %92)
  %94 = load i8*, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_sz, align 8
  %97 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %98 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @MLX5_SET(i8* %94, i8* %95, %struct.ib_pd* %96, i32 %99)
  %101 = load i8*, i8** %12, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %104 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %105 = call %struct.TYPE_7__* @to_mpd(%struct.ib_pd* %104)
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @MLX5_SET(i8* %101, i8* %102, %struct.ib_pd* %103, i32 %107)
  %109 = load i8*, i8** %12, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load %struct.ib_pd*, %struct.ib_pd** @page_offset, align 8
  %112 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %113 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @MLX5_SET(i8* %109, i8* %110, %struct.ib_pd* %111, i32 %114)
  %116 = load i8*, i8** %12, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_pg_sz, align 8
  %119 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %120 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @MLX5_SET(i8* %116, i8* %117, %struct.ib_pd* %118, i32 %121)
  %123 = load i8*, i8** %12, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = load %struct.ib_pd*, %struct.ib_pd** @wq_signature, align 8
  %126 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %127 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @MLX5_SET(i8* %123, i8* %124, %struct.ib_pd* %125, i32 %128)
  %130 = load i8*, i8** %12, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = load i32, i32* @dbr_addr, align 4
  %133 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %134 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %133, i32 0, i32 10
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @MLX5_SET64(i8* %130, i8* %131, i32 %132, i32 %136)
  %138 = load i8*, i8** %12, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = load i8*, i8** @pas, align 8
  %141 = call i8* @MLX5_ADDR_OF(i8* %138, i8* %139, i8* %140)
  %142 = bitcast i8* %141 to i32*
  store i32* %142, i32** %9, align 8
  %143 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %144 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %145 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %144, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %148 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = call i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev* %143, i32 %146, i32 %149, i32* %150, i32 0)
  %152 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %153 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i8*, i8** %10, align 8
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.mlx5_ib_rwq*, %struct.mlx5_ib_rwq** %5, align 8
  %158 = getelementptr inbounds %struct.mlx5_ib_rwq, %struct.mlx5_ib_rwq* %157, i32 0, i32 7
  %159 = call i32 @mlx5_core_create_rq_tracked(i32 %154, i8* %155, i32 %156, i32* %158)
  store i32 %159, i32* %14, align 4
  %160 = load i8*, i8** %10, align 8
  %161 = call i32 @kvfree(i8* %160)
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %36, %33
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, %struct.ib_pd*, i32) #1

declare dso_local %struct.TYPE_8__* @to_mcq(i32) #1

declare dso_local %struct.TYPE_7__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @mlx5_core_create_rq_tracked(i32, i8*, i32, i32*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
