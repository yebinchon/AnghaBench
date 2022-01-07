; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_create_raw_packet_qp_rq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_create_raw_packet_qp_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_rq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mlx5_ib_qp* }
%struct.mlx5_ib_qp = type { i32 }

@create_qp_in = common dso_local global i8* null, align 8
@create_rq_in = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ctx = common dso_local global i8* null, align 8
@vlan_strip_disable = common dso_local global i32 0, align 4
@mem_rq_type = common dso_local global i32 0, align 4
@MLX5_RQC_RQ_TYPE_MEMORY_RQ_INLINE = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_RST = common dso_local global i32 0, align 4
@flush_in_error_en = common dso_local global i32 0, align 4
@user_index = common dso_local global i32 0, align 4
@cqn = common dso_local global i32 0, align 4
@cqn_rcv = common dso_local global i32 0, align 4
@MLX5_IB_QP_CAP_SCATTER_FCS = common dso_local global i32 0, align 4
@scatter_fcs = common dso_local global i32 0, align 4
@wq_type = common dso_local global i32 0, align 4
@MLX5_WQ_TYPE_CYCLIC = common dso_local global i32 0, align 4
@end_padding_mode = common dso_local global i32 0, align 4
@page_offset = common dso_local global i32 0, align 4
@pd = common dso_local global i32 0, align 4
@dbr_addr = common dso_local global i32 0, align 4
@log_wq_stride = common dso_local global i32 0, align 4
@log_rq_stride = common dso_local global i32 0, align 4
@log_wq_pg_sz = common dso_local global i32 0, align 4
@log_page_size = common dso_local global i32 0, align 4
@log_wq_sz = common dso_local global i32 0, align 4
@log_rq_size = common dso_local global i32 0, align 4
@qpc = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*, i8*)* @create_raw_packet_qp_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_raw_packet_qp_rq(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_rq* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_ib_rq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlx5_ib_qp*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_ib_rq* %1, %struct.mlx5_ib_rq** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %20, align 8
  store %struct.mlx5_ib_qp* %21, %struct.mlx5_ib_qp** %8, align 8
  %22 = load i8*, i8** @create_qp_in, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = call i8* @MLX5_ADDR_OF(i8* %22, i8* %23, i8* %24)
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = call i32 @get_rq_pas_size(i8* %26)
  store i32 %27, i32* %17, align 4
  %28 = load i8*, i8** @create_rq_in, align 8
  %29 = call i32 @MLX5_ST_SZ_BYTES(i8* %28)
  %30 = load i32, i32* %17, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i8* @mlx5_vzalloc(i32 %32)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %180

39:                                               ; preds = %3
  %40 = load i8*, i8** @create_rq_in, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** @ctx, align 8
  %43 = call i8* @MLX5_ADDR_OF(i8* %40, i8* %41, i8* %42)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* @vlan_strip_disable, align 4
  %47 = call i32 @MLX5_SET(i8* %44, i8* %45, i32 %46, i32 1)
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* @mem_rq_type, align 4
  %51 = load i32, i32* @MLX5_RQC_RQ_TYPE_MEMORY_RQ_INLINE, align 4
  %52 = call i32 @MLX5_SET(i8* %48, i8* %49, i32 %50, i32 %51)
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* @state, align 4
  %56 = load i32, i32* @MLX5_RQC_STATE_RST, align 4
  %57 = call i32 @MLX5_SET(i8* %53, i8* %54, i32 %55, i32 %56)
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* @flush_in_error_en, align 4
  %61 = call i32 @MLX5_SET(i8* %58, i8* %59, i32 %60, i32 1)
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* @user_index, align 4
  %65 = load i8*, i8** %14, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i32, i32* @user_index, align 4
  %68 = call i32 @MLX5_GET(i8* %65, i8* %66, i32 %67)
  %69 = call i32 @MLX5_SET(i8* %62, i8* %63, i32 %64, i32 %68)
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* @cqn, align 4
  %73 = load i8*, i8** %14, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = load i32, i32* @cqn_rcv, align 4
  %76 = call i32 @MLX5_GET(i8* %73, i8* %74, i32 %75)
  %77 = call i32 @MLX5_SET(i8* %70, i8* %71, i32 %72, i32 %76)
  %78 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %79 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MLX5_IB_QP_CAP_SCATTER_FCS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %39
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load i32, i32* @scatter_fcs, align 4
  %88 = call i32 @MLX5_SET(i8* %85, i8* %86, i32 %87, i32 1)
  br label %89

89:                                               ; preds = %84, %39
  %90 = load i8*, i8** %12, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = call i8* @MLX5_ADDR_OF(i8* %90, i8* %91, i8* %92)
  store i8* %93, i8** %13, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = load i32, i32* @wq_type, align 4
  %97 = load i32, i32* @MLX5_WQ_TYPE_CYCLIC, align 4
  %98 = call i32 @MLX5_SET(i8* %94, i8* %95, i32 %96, i32 %97)
  %99 = load i8*, i8** %13, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load i32, i32* @end_padding_mode, align 4
  %102 = load i8*, i8** %14, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = load i32, i32* @end_padding_mode, align 4
  %105 = call i32 @MLX5_GET(i8* %102, i8* %103, i32 %104)
  %106 = call i32 @MLX5_SET(i8* %99, i8* %100, i32 %101, i32 %105)
  %107 = load i8*, i8** %13, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* @page_offset, align 4
  %110 = load i8*, i8** %14, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = load i32, i32* @page_offset, align 4
  %113 = call i32 @MLX5_GET(i8* %110, i8* %111, i32 %112)
  %114 = call i32 @MLX5_SET(i8* %107, i8* %108, i32 %109, i32 %113)
  %115 = load i8*, i8** %13, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = load i32, i32* @pd, align 4
  %118 = load i8*, i8** %14, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i32, i32* @pd, align 4
  %121 = call i32 @MLX5_GET(i8* %118, i8* %119, i32 %120)
  %122 = call i32 @MLX5_SET(i8* %115, i8* %116, i32 %117, i32 %121)
  %123 = load i8*, i8** %13, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = load i32, i32* @dbr_addr, align 4
  %126 = load i8*, i8** %14, align 8
  %127 = load i8*, i8** %14, align 8
  %128 = load i32, i32* @dbr_addr, align 4
  %129 = call i32 @MLX5_GET64(i8* %126, i8* %127, i32 %128)
  %130 = call i32 @MLX5_SET64(i8* %123, i8* %124, i32 %125, i32 %129)
  %131 = load i8*, i8** %13, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = load i32, i32* @log_wq_stride, align 4
  %134 = load i8*, i8** %14, align 8
  %135 = load i8*, i8** %14, align 8
  %136 = load i32, i32* @log_rq_stride, align 4
  %137 = call i32 @MLX5_GET(i8* %134, i8* %135, i32 %136)
  %138 = add nsw i32 %137, 4
  %139 = call i32 @MLX5_SET(i8* %131, i8* %132, i32 %133, i32 %138)
  %140 = load i8*, i8** %13, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = load i32, i32* @log_wq_pg_sz, align 4
  %143 = load i8*, i8** %14, align 8
  %144 = load i8*, i8** %14, align 8
  %145 = load i32, i32* @log_page_size, align 4
  %146 = call i32 @MLX5_GET(i8* %143, i8* %144, i32 %145)
  %147 = call i32 @MLX5_SET(i8* %140, i8* %141, i32 %142, i32 %146)
  %148 = load i8*, i8** %13, align 8
  %149 = load i8*, i8** %13, align 8
  %150 = load i32, i32* @log_wq_sz, align 4
  %151 = load i8*, i8** %14, align 8
  %152 = load i8*, i8** %14, align 8
  %153 = load i32, i32* @log_rq_size, align 4
  %154 = call i32 @MLX5_GET(i8* %151, i8* %152, i32 %153)
  %155 = call i32 @MLX5_SET(i8* %148, i8* %149, i32 %150, i32 %154)
  %156 = load i8*, i8** %13, align 8
  %157 = load i8*, i8** %13, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = call i8* @MLX5_ADDR_OF(i8* %156, i8* %157, i8* %158)
  store i8* %159, i8** %9, align 8
  %160 = load i8*, i8** @create_qp_in, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = call i8* @MLX5_ADDR_OF(i8* %160, i8* %161, i8* %162)
  store i8* %163, i8** %10, align 8
  %164 = load i8*, i8** %9, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = load i32, i32* %17, align 4
  %167 = call i32 @memcpy(i8* %164, i8* %165, i32 %166)
  %168 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %169 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %11, align 8
  %172 = load i32, i32* %15, align 4
  %173 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %6, align 8
  %174 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = call i32 @mlx5_core_create_rq_tracked(i32 %170, i8* %171, i32 %172, i32* %175)
  store i32 %176, i32* %16, align 4
  %177 = load i8*, i8** %11, align 8
  %178 = call i32 @kvfree(i8* %177)
  %179 = load i32, i32* %16, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %89, %36
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i8*) #1

declare dso_local i32 @get_rq_pas_size(i8*) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i8*) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_GET(i8*, i8*, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_GET64(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mlx5_core_create_rq_tracked(i32, i8*, i32, i32*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
