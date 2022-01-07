; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_rx_mb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_rx.c_mlx4_en_rx_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.mbuf*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_en_priv = type { i32 }
%struct.mlx4_en_rx_ring = type { i32 }
%struct.mlx4_en_rx_desc = type { i32 }
%struct.mlx4_en_rx_mbuf = type { %struct.mbuf*, i32 }

@MHLEN = common dso_local global i32 0, align 4
@MLX4_NET_IP_ALIGN = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_mbuf*, i32)* @mlx4_en_rx_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @mlx4_en_rx_mb(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring* %1, %struct.mlx4_en_rx_desc* %2, %struct.mlx4_en_rx_mbuf* %3, i32 %4) #0 {
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca %struct.mlx4_en_rx_ring*, align 8
  %9 = alloca %struct.mlx4_en_rx_desc*, align 8
  %10 = alloca %struct.mlx4_en_rx_mbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.mbuf*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %7, align 8
  store %struct.mlx4_en_rx_ring* %1, %struct.mlx4_en_rx_ring** %8, align 8
  store %struct.mlx4_en_rx_desc* %2, %struct.mlx4_en_rx_desc** %9, align 8
  store %struct.mlx4_en_rx_mbuf* %3, %struct.mlx4_en_rx_mbuf** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @MHLEN, align 4
  %16 = load i32, i32* @MLX4_NET_IP_ALIGN, align 4
  %17 = sub nsw i32 %15, %16
  %18 = icmp sle i32 %14, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %5
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = load i32, i32* @MT_DATA, align 4
  %22 = call %struct.mbuf* @m_gethdr(i32 %20, i32 %21)
  store %struct.mbuf* %22, %struct.mbuf** %13, align 8
  %23 = icmp ne %struct.mbuf* %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %19
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 8
  %31 = load i32, i32* @MLX4_NET_IP_ALIGN, align 4
  %32 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %10, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %43 = call i32 @bus_dmamap_sync(i32 %38, i32 %41, i32 %42)
  %44 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %10, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %44, i32 0, i32 0
  %46 = load %struct.mbuf*, %struct.mbuf** %45, align 8
  %47 = load i32, i32* @caddr_t, align 4
  %48 = call i32 @mtod(%struct.mbuf* %46, i32 %47)
  %49 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %50 = load i32, i32* @caddr_t, align 4
  %51 = call i32 @mtod(%struct.mbuf* %49, i32 %50)
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @bcopy(i32 %48, i32 %51, i32 %52)
  %54 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %54, %struct.mbuf** %6, align 8
  br label %134

55:                                               ; preds = %19, %5
  %56 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %10, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_rx_mbuf, %struct.mlx4_en_rx_mbuf* %56, i32 0, i32 0
  %58 = load %struct.mbuf*, %struct.mbuf** %57, align 8
  store %struct.mbuf* %58, %struct.mbuf** %13, align 8
  %59 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %60 = load %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_desc** %9, align 8
  %61 = load %struct.mlx4_en_rx_mbuf*, %struct.mlx4_en_rx_mbuf** %10, align 8
  %62 = call i64 @mlx4_en_alloc_buf(%struct.mlx4_en_rx_ring* %59, %struct.mlx4_en_rx_desc* %60, %struct.mlx4_en_rx_mbuf* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %134

65:                                               ; preds = %55
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %66, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %77 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %75, %65
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %85, %struct.mbuf** %12, align 8
  br label %86

86:                                               ; preds = %127, %80
  %87 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %88 = icmp ne %struct.mbuf* %87, null
  br i1 %88, label %89, label %131

89:                                               ; preds = %86
  %90 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %98 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %95, %89
  %100 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %101 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i64 @likely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %99
  %111 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %112 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %111, i32 0, i32 1
  %113 = load %struct.mbuf*, %struct.mbuf** %112, align 8
  %114 = icmp ne %struct.mbuf* %113, null
  %115 = zext i1 %114 to i32
  %116 = call i64 @likely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %110
  %119 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %120 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %119, i32 0, i32 1
  %121 = load %struct.mbuf*, %struct.mbuf** %120, align 8
  %122 = call i32 @m_freem(%struct.mbuf* %121)
  %123 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %124 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %123, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %124, align 8
  br label %125

125:                                              ; preds = %118, %110
  br label %131

126:                                              ; preds = %99
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %129 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %128, i32 0, i32 1
  %130 = load %struct.mbuf*, %struct.mbuf** %129, align 8
  store %struct.mbuf* %130, %struct.mbuf** %13, align 8
  br label %86

131:                                              ; preds = %125, %86
  %132 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %132, %struct.mbuf** %13, align 8
  %133 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %133, %struct.mbuf** %6, align 8
  br label %134

134:                                              ; preds = %131, %64, %24
  %135 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  ret %struct.mbuf* %135
}

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i64 @mlx4_en_alloc_buf(%struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_desc*, %struct.mlx4_en_rx_mbuf*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
