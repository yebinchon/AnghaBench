; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_txrx.c_bnxt_isc_rxd_pkt_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_txrx.c_bnxt_isc_rxd_pkt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i8* }
%struct.bnxt_softc = type { i32, %struct.TYPE_10__*, %struct.bnxt_cp_ring* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.rx_tpa_start_cmpl_hi, %struct.rx_tpa_start_cmpl }
%struct.rx_tpa_start_cmpl_hi = type { i32 }
%struct.rx_tpa_start_cmpl = type { i64 }
%struct.bnxt_cp_ring = type { i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.cmpl_base = type { i32 }

@CMPL_BASE_TYPE_MASK = common dso_local global i32 0, align 4
@RX_TPA_START_CMPL_AGG_ID_MASK = common dso_local global i64 0, align 8
@RX_TPA_START_CMPL_AGG_ID_SFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Unhandled completion type %d on RXQ %d get\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_11__*)* @bnxt_isc_rxd_pkt_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_isc_rxd_pkt_get(i8* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.bnxt_softc*, align 8
  %7 = alloca %struct.bnxt_cp_ring*, align 8
  %8 = alloca %struct.cmpl_base*, align 8
  %9 = alloca %struct.cmpl_base*, align 8
  %10 = alloca %struct.rx_tpa_start_cmpl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.bnxt_softc*
  store %struct.bnxt_softc* %15, %struct.bnxt_softc** %6, align 8
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %17 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %16, i32 0, i32 2
  %18 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %17, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %18, i64 %21
  store %struct.bnxt_cp_ring* %22, %struct.bnxt_cp_ring** %7, align 8
  %23 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %24 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.cmpl_base*
  store %struct.cmpl_base* %27, %struct.cmpl_base** %8, align 8
  br label %28

28:                                               ; preds = %188, %2
  %29 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %30 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %29, i32 0, i32 1
  %31 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %32 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %35 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_12__* %30, i64 %33, i32 %36)
  %38 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %39 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @RING_NEXT(%struct.TYPE_12__* %39, i8* %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %47 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %48 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @CMPL_PREFETCH_NEXT(%struct.bnxt_cp_ring* %46, i64 %49)
  %51 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %52 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.cmpl_base*
  %56 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %57 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %55, i64 %58
  store %struct.cmpl_base* %59, %struct.cmpl_base** %9, align 8
  %60 = load %struct.cmpl_base*, %struct.cmpl_base** %9, align 8
  %61 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16toh(i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @CMPL_BASE_TYPE_MASK, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  switch i32 %67, label %152 [
    i32 130, label %68
    i32 129, label %74
    i32 128, label %80
  ]

68:                                               ; preds = %28
  %69 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @bnxt_pkt_get_l2(%struct.bnxt_softc* %69, %struct.TYPE_11__* %70, %struct.bnxt_cp_ring* %71, i32 %72)
  store i32 %73, i32* %3, align 4
  br label %189

74:                                               ; preds = %28
  %75 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @bnxt_pkt_get_tpa(%struct.bnxt_softc* %75, %struct.TYPE_11__* %76, %struct.bnxt_cp_ring* %77, i32 %78)
  store i32 %79, i32* %3, align 4
  br label %189

80:                                               ; preds = %28
  %81 = load %struct.cmpl_base*, %struct.cmpl_base** %8, align 8
  %82 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %83 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.cmpl_base, %struct.cmpl_base* %81, i64 %84
  %86 = bitcast %struct.cmpl_base* %85 to i8*
  %87 = bitcast i8* %86 to %struct.rx_tpa_start_cmpl*
  store %struct.rx_tpa_start_cmpl* %87, %struct.rx_tpa_start_cmpl** %10, align 8
  %88 = load %struct.rx_tpa_start_cmpl*, %struct.rx_tpa_start_cmpl** %10, align 8
  %89 = getelementptr inbounds %struct.rx_tpa_start_cmpl, %struct.rx_tpa_start_cmpl* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @RX_TPA_START_CMPL_AGG_ID_MASK, align 8
  %92 = and i64 %90, %91
  %93 = load i64, i64* @RX_TPA_START_CMPL_AGG_ID_SFT, align 8
  %94 = lshr i64 %92, %93
  store i64 %94, i64* %13, align 8
  %95 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %96 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load %struct.rx_tpa_start_cmpl*, %struct.rx_tpa_start_cmpl** %10, align 8
  %108 = bitcast %struct.rx_tpa_start_cmpl* %106 to i8*
  %109 = bitcast %struct.rx_tpa_start_cmpl* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %108, i8* align 8 %109, i64 8, i1 false)
  %110 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %111 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %110, i32 0, i32 1
  %112 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %113 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %116 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_12__* %111, i64 %114, i32 %117)
  %119 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %120 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %119, i32 0, i32 1
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @RING_NEXT(%struct.TYPE_12__* %120, i8* %123)
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %128 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %129 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @CMPL_PREFETCH_NEXT(%struct.bnxt_cp_ring* %127, i64 %130)
  %132 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %133 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %132, i32 0, i32 1
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = load i64, i64* %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load %struct.cmpl_base*, %struct.cmpl_base** %8, align 8
  %145 = bitcast %struct.cmpl_base* %144 to %struct.rx_tpa_start_cmpl_hi*
  %146 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %147 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.rx_tpa_start_cmpl_hi, %struct.rx_tpa_start_cmpl_hi* %145, i64 %148
  %150 = bitcast %struct.rx_tpa_start_cmpl_hi* %143 to i8*
  %151 = bitcast %struct.rx_tpa_start_cmpl_hi* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 4 %151, i64 4, i1 false)
  br label %188

152:                                              ; preds = %28
  %153 = load %struct.bnxt_softc*, %struct.bnxt_softc** %6, align 8
  %154 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @device_printf(i32 %155, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %156, i64 %159)
  %161 = load i32, i32* %12, align 4
  %162 = and i32 %161, 1
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %187

164:                                              ; preds = %152
  %165 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %166 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %165, i32 0, i32 1
  %167 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %168 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %171 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @NEXT_CP_CONS_V(%struct.TYPE_12__* %166, i64 %169, i32 %172)
  %174 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %175 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %174, i32 0, i32 1
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = call i8* @RING_NEXT(%struct.TYPE_12__* %175, i8* %178)
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  %182 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %183 = load %struct.bnxt_cp_ring*, %struct.bnxt_cp_ring** %7, align 8
  %184 = getelementptr inbounds %struct.bnxt_cp_ring, %struct.bnxt_cp_ring* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @CMPL_PREFETCH_NEXT(%struct.bnxt_cp_ring* %182, i64 %185)
  br label %187

187:                                              ; preds = %164, %152
  br label %188

188:                                              ; preds = %187, %80
  br label %28

189:                                              ; preds = %74, %68
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @NEXT_CP_CONS_V(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i8* @RING_NEXT(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @CMPL_PREFETCH_NEXT(%struct.bnxt_cp_ring*, i64) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @bnxt_pkt_get_l2(%struct.bnxt_softc*, %struct.TYPE_11__*, %struct.bnxt_cp_ring*, i32) #1

declare dso_local i32 @bnxt_pkt_get_tpa(%struct.bnxt_softc*, %struct.TYPE_11__*, %struct.bnxt_cp_ring*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @device_printf(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
