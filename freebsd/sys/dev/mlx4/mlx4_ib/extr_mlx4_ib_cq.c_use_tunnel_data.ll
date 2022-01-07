; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_use_tunnel_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_use_tunnel_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_qp = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_ib_cq = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i32, i32, i64, i32*, i64 }
%struct.mlx4_cqe = type { i32 }
%struct.mlx4_ib_proxy_sqp_hdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@IB_WC_WITH_VLAN = common dso_local global i32 0, align 4
@IB_WC_WITH_SMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_ib_qp*, %struct.mlx4_ib_cq*, %struct.ib_wc*, i32, %struct.mlx4_cqe*, i32)* @use_tunnel_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @use_tunnel_data(%struct.mlx4_ib_qp* %0, %struct.mlx4_ib_cq* %1, %struct.ib_wc* %2, i32 %3, %struct.mlx4_cqe* %4, i32 %5) #0 {
  %7 = alloca %struct.mlx4_ib_qp*, align 8
  %8 = alloca %struct.mlx4_ib_cq*, align 8
  %9 = alloca %struct.ib_wc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_cqe*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx4_ib_proxy_sqp_hdr*, align 8
  store %struct.mlx4_ib_qp* %0, %struct.mlx4_ib_qp** %7, align 8
  store %struct.mlx4_ib_cq* %1, %struct.mlx4_ib_cq** %8, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.mlx4_cqe* %4, %struct.mlx4_cqe** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = call i32 @ib_dma_sync_single_for_cpu(i32 %17, i32 %25, i32 24, i32 %26)
  %28 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %7, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.mlx4_ib_proxy_sqp_hdr*
  store %struct.mlx4_ib_proxy_sqp_hdr* %36, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %37 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be16_to_cpu(i32 %40)
  %42 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %43 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %45 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be32_to_cpu(i32 %47)
  %49 = and i32 %48, 16777215
  %50 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %51 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %6
  %59 = load i32, i32* @IB_WC_GRH, align 4
  br label %61

60:                                               ; preds = %6
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %64 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %68 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %67, i32 0, i32 7
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %61
  %72 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %73 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be16_to_cpu(i32 %75)
  %77 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %78 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %80 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = bitcast i32* %85 to i8*
  %87 = call i32 @memcpy(i32* %82, i8* %86, i32 4)
  %88 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %89 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %93 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = bitcast i32* %94 to i8*
  %96 = call i32 @memcpy(i32* %91, i8* %95, i32 2)
  %97 = load i32, i32* @IB_WC_WITH_VLAN, align 4
  %98 = load i32, i32* @IB_WC_WITH_SMAC, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %101 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %121

104:                                              ; preds = %61
  %105 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %106 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @be16_to_cpu(i32 %108)
  %110 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %111 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.mlx4_ib_proxy_sqp_hdr*, %struct.mlx4_ib_proxy_sqp_hdr** %13, align 8
  %113 = getelementptr inbounds %struct.mlx4_ib_proxy_sqp_hdr, %struct.mlx4_ib_proxy_sqp_hdr* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @be16_to_cpu(i32 %115)
  %117 = ashr i32 %116, 12
  %118 = sext i32 %117 to i64
  %119 = load %struct.ib_wc*, %struct.ib_wc** %9, align 8
  %120 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %119, i32 0, i32 5
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %104, %71
  ret void
}

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
