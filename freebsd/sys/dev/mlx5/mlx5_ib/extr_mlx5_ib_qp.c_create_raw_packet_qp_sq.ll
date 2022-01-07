; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_create_raw_packet_qp_sq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_create_raw_packet_qp_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_sq = type { i32, %struct.mlx5_ib_ubuffer, %struct.TYPE_2__ }
%struct.mlx5_ib_ubuffer = type { i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@create_qp_in = common dso_local global i8* null, align 8
@create_sq_in = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ctx = common dso_local global i8* null, align 8
@flush_in_error_en = common dso_local global %struct.ib_pd* null, align 8
@state = common dso_local global %struct.ib_pd* null, align 8
@MLX5_SQC_STATE_RST = common dso_local global i32 0, align 4
@user_index = common dso_local global %struct.ib_pd* null, align 8
@cqn = common dso_local global %struct.ib_pd* null, align 8
@cqn_snd = common dso_local global %struct.ib_pd* null, align 8
@tis_lst_sz = common dso_local global %struct.ib_pd* null, align 8
@tis_num_0 = common dso_local global %struct.ib_pd* null, align 8
@wq_type = common dso_local global %struct.ib_pd* null, align 8
@MLX5_WQ_TYPE_CYCLIC = common dso_local global i32 0, align 4
@uar_page = common dso_local global %struct.ib_pd* null, align 8
@dbr_addr = common dso_local global i32 0, align 4
@log_wq_stride = common dso_local global %struct.ib_pd* null, align 8
@MLX5_SEND_WQE_BB = common dso_local global i32 0, align 4
@log_wq_sz = common dso_local global %struct.ib_pd* null, align 8
@log_sq_size = common dso_local global %struct.ib_pd* null, align 8
@log_wq_pg_sz = common dso_local global %struct.ib_pd* null, align 8
@MLX5_ADAPTER_PAGE_SHIFT = common dso_local global i32 0, align 4
@page_offset = common dso_local global %struct.ib_pd* null, align 8
@qpc = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_sq*, i8*, %struct.ib_pd*)* @create_raw_packet_qp_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_raw_packet_qp_sq(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_sq* %1, i8* %2, %struct.ib_pd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_ib_sq*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ib_pd*, align 8
  %10 = alloca %struct.mlx5_ib_ubuffer*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.mlx5_ib_sq* %1, %struct.mlx5_ib_sq** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.ib_pd* %3, %struct.ib_pd** %9, align 8
  %22 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %7, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %22, i32 0, i32 1
  store %struct.mlx5_ib_ubuffer* %23, %struct.mlx5_ib_ubuffer** %10, align 8
  %24 = load i8*, i8** @create_qp_in, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = call i8* @MLX5_ADDR_OF(i8* %24, i8* %25, i8* %26)
  store i8* %27, i8** %14, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %29 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %30 = load %struct.mlx5_ib_ubuffer*, %struct.mlx5_ib_ubuffer** %10, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_ubuffer, %struct.mlx5_ib_ubuffer* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5_ib_ubuffer*, %struct.mlx5_ib_ubuffer** %10, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_ubuffer, %struct.mlx5_ib_ubuffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.mlx5_ib_ubuffer, %struct.mlx5_ib_ubuffer* %37, i32 0, i32 0
  %39 = call i32 @mlx5_ib_umem_get(%struct.mlx5_ib_dev* %28, %struct.ib_pd* %29, i32 %32, i32 %35, i32** %38, i32* %19, i32* %18, i32* %20, i32* %21)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %5, align 4
  br label %197

44:                                               ; preds = %4
  %45 = load i8*, i8** @create_sq_in, align 8
  %46 = call i32 @MLX5_ST_SZ_BYTES(i8* %45)
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* %20, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = add i64 %47, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i8* @mlx5_vzalloc(i32 %53)
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %17, align 4
  br label %187

60:                                               ; preds = %44
  %61 = load i8*, i8** @create_sq_in, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** @ctx, align 8
  %64 = call i8* @MLX5_ADDR_OF(i8* %61, i8* %62, i8* %63)
  store i8* %64, i8** %13, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load %struct.ib_pd*, %struct.ib_pd** @flush_in_error_en, align 8
  %68 = call i32 @MLX5_SET(i8* %65, i8* %66, %struct.ib_pd* %67, i32 1)
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load %struct.ib_pd*, %struct.ib_pd** @state, align 8
  %72 = load i32, i32* @MLX5_SQC_STATE_RST, align 4
  %73 = call i32 @MLX5_SET(i8* %69, i8* %70, %struct.ib_pd* %71, i32 %72)
  %74 = load i8*, i8** %13, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = load %struct.ib_pd*, %struct.ib_pd** @user_index, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = load %struct.ib_pd*, %struct.ib_pd** @user_index, align 8
  %80 = call i32 @MLX5_GET(i8* %77, i8* %78, %struct.ib_pd* %79)
  %81 = call i32 @MLX5_SET(i8* %74, i8* %75, %struct.ib_pd* %76, i32 %80)
  %82 = load i8*, i8** %13, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = load %struct.ib_pd*, %struct.ib_pd** @cqn, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = load %struct.ib_pd*, %struct.ib_pd** @cqn_snd, align 8
  %88 = call i32 @MLX5_GET(i8* %85, i8* %86, %struct.ib_pd* %87)
  %89 = call i32 @MLX5_SET(i8* %82, i8* %83, %struct.ib_pd* %84, i32 %88)
  %90 = load i8*, i8** %13, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = load %struct.ib_pd*, %struct.ib_pd** @tis_lst_sz, align 8
  %93 = call i32 @MLX5_SET(i8* %90, i8* %91, %struct.ib_pd* %92, i32 1)
  %94 = load i8*, i8** %13, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = load %struct.ib_pd*, %struct.ib_pd** @tis_num_0, align 8
  %97 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %7, align 8
  %98 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @MLX5_SET(i8* %94, i8* %95, %struct.ib_pd* %96, i32 %99)
  %101 = load i8*, i8** %13, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = call i8* @MLX5_ADDR_OF(i8* %101, i8* %102, i8* %103)
  store i8* %104, i8** %15, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = load i8*, i8** %15, align 8
  %107 = load %struct.ib_pd*, %struct.ib_pd** @wq_type, align 8
  %108 = load i32, i32* @MLX5_WQ_TYPE_CYCLIC, align 4
  %109 = call i32 @MLX5_SET(i8* %105, i8* %106, %struct.ib_pd* %107, i32 %108)
  %110 = load i8*, i8** %15, align 8
  %111 = load i8*, i8** %15, align 8
  %112 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %116 = call i32 @MLX5_GET(i8* %113, i8* %114, %struct.ib_pd* %115)
  %117 = call i32 @MLX5_SET(i8* %110, i8* %111, %struct.ib_pd* %112, i32 %116)
  %118 = load i8*, i8** %15, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = load %struct.ib_pd*, %struct.ib_pd** @uar_page, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = load i8*, i8** %14, align 8
  %123 = load %struct.ib_pd*, %struct.ib_pd** @uar_page, align 8
  %124 = call i32 @MLX5_GET(i8* %121, i8* %122, %struct.ib_pd* %123)
  %125 = call i32 @MLX5_SET(i8* %118, i8* %119, %struct.ib_pd* %120, i32 %124)
  %126 = load i8*, i8** %15, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = load i32, i32* @dbr_addr, align 4
  %129 = load i8*, i8** %14, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = load i32, i32* @dbr_addr, align 4
  %132 = call i32 @MLX5_GET64(i8* %129, i8* %130, i32 %131)
  %133 = call i32 @MLX5_SET64(i8* %126, i8* %127, i32 %128, i32 %132)
  %134 = load i8*, i8** %15, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_stride, align 8
  %137 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %138 = call i32 @ilog2(i32 %137)
  %139 = call i32 @MLX5_SET(i8* %134, i8* %135, %struct.ib_pd* %136, i32 %138)
  %140 = load i8*, i8** %15, align 8
  %141 = load i8*, i8** %15, align 8
  %142 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_sz, align 8
  %143 = load i8*, i8** %14, align 8
  %144 = load i8*, i8** %14, align 8
  %145 = load %struct.ib_pd*, %struct.ib_pd** @log_sq_size, align 8
  %146 = call i32 @MLX5_GET(i8* %143, i8* %144, %struct.ib_pd* %145)
  %147 = call i32 @MLX5_SET(i8* %140, i8* %141, %struct.ib_pd* %142, i32 %146)
  %148 = load i8*, i8** %15, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = load %struct.ib_pd*, %struct.ib_pd** @log_wq_pg_sz, align 8
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* @MLX5_ADAPTER_PAGE_SHIFT, align 4
  %153 = sub nsw i32 %151, %152
  %154 = call i32 @MLX5_SET(i8* %148, i8* %149, %struct.ib_pd* %150, i32 %153)
  %155 = load i8*, i8** %15, align 8
  %156 = load i8*, i8** %15, align 8
  %157 = load %struct.ib_pd*, %struct.ib_pd** @page_offset, align 8
  %158 = load i32, i32* %21, align 4
  %159 = call i32 @MLX5_SET(i8* %155, i8* %156, %struct.ib_pd* %157, i32 %158)
  %160 = load i8*, i8** %15, align 8
  %161 = load i8*, i8** %15, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = call i8* @MLX5_ADDR_OF(i8* %160, i8* %161, i8* %162)
  store i8* %163, i8** %11, align 8
  %164 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %165 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %7, align 8
  %166 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.mlx5_ib_ubuffer, %struct.mlx5_ib_ubuffer* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %18, align 4
  %170 = load i8*, i8** %11, align 8
  %171 = call i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev* %164, i32* %168, i32 %169, i8* %170, i32 0)
  %172 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %173 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i8*, i8** %12, align 8
  %176 = load i32, i32* %16, align 4
  %177 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %7, align 8
  %178 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = call i32 @mlx5_core_create_sq_tracked(i32 %174, i8* %175, i32 %176, i32* %179)
  store i32 %180, i32* %17, align 4
  %181 = load i8*, i8** %12, align 8
  %182 = call i32 @kvfree(i8* %181)
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %60
  br label %187

186:                                              ; preds = %60
  store i32 0, i32* %5, align 4
  br label %197

187:                                              ; preds = %185, %57
  %188 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %7, align 8
  %189 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.mlx5_ib_ubuffer, %struct.mlx5_ib_ubuffer* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @ib_umem_release(i32* %191)
  %193 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %7, align 8
  %194 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.mlx5_ib_ubuffer, %struct.mlx5_ib_ubuffer* %194, i32 0, i32 0
  store i32* null, i32** %195, align 8
  %196 = load i32, i32* %17, align 4
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %187, %186, %42
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local i32 @mlx5_ib_umem_get(%struct.mlx5_ib_dev*, %struct.ib_pd*, i32, i32, i32**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, %struct.ib_pd*, i32) #1

declare dso_local i32 @MLX5_GET(i8*, i8*, %struct.ib_pd*) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_GET64(i8*, i8*, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mlx5_ib_populate_pas(%struct.mlx5_ib_dev*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mlx5_core_create_sq_tracked(i32, i8*, i32, i32*) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @ib_umem_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
