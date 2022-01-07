; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_post_pv_qp_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_mlx4_ib_post_pv_qp_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_demux_pv_ctx = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_ib_demux_pv_qp = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_sge = type { i32, i32, i32 }
%struct.ib_recv_wr = type { i32, i32, %struct.ib_sge*, i32* }

@IB_QPT_UD = common dso_local global i64 0, align 8
@MLX4_TUN_WRID_RECV = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_qp*, i32)* @mlx4_ib_post_pv_qp_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_post_pv_qp_buf(%struct.mlx4_ib_demux_pv_ctx* %0, %struct.mlx4_ib_demux_pv_qp* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_ib_demux_pv_ctx*, align 8
  %5 = alloca %struct.mlx4_ib_demux_pv_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_sge, align 4
  %8 = alloca %struct.ib_recv_wr, align 8
  %9 = alloca %struct.ib_recv_wr*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_ib_demux_pv_ctx* %0, %struct.mlx4_ib_demux_pv_ctx** %4, align 8
  store %struct.mlx4_ib_demux_pv_qp* %1, %struct.mlx4_ib_demux_pv_qp** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IB_QPT_UD, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i64 4, i64 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %7, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %7, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %8, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %8, i32 0, i32 2
  store %struct.ib_sge* %7, %struct.ib_sge** %39, align 8
  %40 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %8, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MLX4_TUN_WRID_RECV, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %5, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @MLX4_TUN_SET_WRID_QPN(i32 %46)
  %48 = or i32 %43, %47
  %49 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %8, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.mlx4_ib_demux_pv_ctx*, %struct.mlx4_ib_demux_pv_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_demux_pv_ctx, %struct.mlx4_ib_demux_pv_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %5, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %63 = call i32 @ib_dma_sync_single_for_device(i32 %52, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.mlx4_ib_demux_pv_qp*, %struct.mlx4_ib_demux_pv_qp** %5, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_demux_pv_qp, %struct.mlx4_ib_demux_pv_qp* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = call i32 @ib_post_recv(%struct.TYPE_6__* %66, %struct.ib_recv_wr* %8, %struct.ib_recv_wr** %9)
  ret i32 %67
}

declare dso_local i32 @MLX4_TUN_SET_WRID_QPN(i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @ib_post_recv(%struct.TYPE_6__*, %struct.ib_recv_wr*, %struct.ib_recv_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
