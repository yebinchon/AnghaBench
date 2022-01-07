; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_rxintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_rxintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, %struct.ifnet* }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.rx_rdesc* }
%struct.rx_rdesc = type { i64, i64 }
%struct.ifnet = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@RRD_VALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"unexpected segment count -- resetting\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ALC_RR_RING_CNT = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@ALC_FLAG_AR816X_FAMILY = common dso_local global i32 0, align 4
@ALC_MBOX_RD0_PROD_IDX = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alc_softc*, i32)* @alc_rxintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_rxintr(%struct.alc_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.rx_rdesc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %13 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %17 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %21 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @bus_dmamap_sync(i32 %15, i32 %19, i32 %22)
  %24 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %25 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %29 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %33 = call i32 @bus_dmamap_sync(i32 %27, i32 %31, i32 %32)
  %34 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %35 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  %38 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %39 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %38, i32 0, i32 4
  %40 = load %struct.ifnet*, %struct.ifnet** %39, align 8
  store %struct.ifnet* %40, %struct.ifnet** %6, align 8
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %84, %2
  %42 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %110

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %5, align 4
  %51 = icmp sle i32 %49, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %110

53:                                               ; preds = %48
  %54 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %55 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.rx_rdesc*, %struct.rx_rdesc** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %57, i64 %59
  store %struct.rx_rdesc* %60, %struct.rx_rdesc** %7, align 8
  %61 = load %struct.rx_rdesc*, %struct.rx_rdesc** %7, align 8
  %62 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @le32toh(i64 %63)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @RRD_VALID, align 8
  %67 = and i64 %65, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %110

70:                                               ; preds = %53
  %71 = load %struct.rx_rdesc*, %struct.rx_rdesc** %7, align 8
  %72 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @le32toh(i64 %73)
  %75 = call i64 @RRD_RD_CNT(i64 %74)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %80 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @EIO, align 4
  store i32 %83, i32* %3, align 4
  br label %172

84:                                               ; preds = %70
  %85 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %86 = load %struct.rx_rdesc*, %struct.rx_rdesc** %7, align 8
  %87 = call i32 @alc_rxeof(%struct.alc_softc* %85, %struct.rx_rdesc* %86)
  %88 = load %struct.rx_rdesc*, %struct.rx_rdesc** %7, align 8
  %89 = getelementptr inbounds %struct.rx_rdesc, %struct.rx_rdesc* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i64, i64* @ALC_RR_RING_CNT, align 8
  %92 = call i32 @ALC_DESC_INC(i32 %90, i64 %91)
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %95 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, %93
  store i64 %98, i64* %96, align 8
  %99 = load i64, i64* @ALC_RR_RING_CNT, align 8
  %100 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %101 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = srem i64 %103, %99
  store i64 %104, i64* %102, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %11, align 4
  br label %41

110:                                              ; preds = %69, %52, %41
  %111 = load i32, i32* %11, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %164

113:                                              ; preds = %110
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %116 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %119 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %123 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %127 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @bus_dmamap_sync(i32 %121, i32 %125, i32 %128)
  %130 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %131 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %135 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %139 = call i32 @bus_dmamap_sync(i32 %133, i32 %137, i32 %138)
  %140 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %141 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %113
  %147 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %148 = load i32, i32* @ALC_MBOX_RD0_PROD_IDX, align 4
  %149 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %150 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = call i32 @CSR_WRITE_2(%struct.alc_softc* %147, i32 %148, i32 %153)
  br label %163

155:                                              ; preds = %113
  %156 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %157 = load i32, i32* @ALC_MBOX_RD0_PROD_IDX, align 4
  %158 = load %struct.alc_softc*, %struct.alc_softc** %4, align 8
  %159 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @CSR_WRITE_4(%struct.alc_softc* %156, i32 %157, i64 %161)
  br label %163

163:                                              ; preds = %155, %146
  br label %164

164:                                              ; preds = %163, %110
  %165 = load i32, i32* %5, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %170

168:                                              ; preds = %164
  %169 = load i32, i32* @EAGAIN, align 4
  br label %170

170:                                              ; preds = %168, %167
  %171 = phi i32 [ 0, %167 ], [ %169, %168 ]
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %78
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @le32toh(i64) #1

declare dso_local i64 @RRD_RD_CNT(i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @alc_rxeof(%struct.alc_softc*, %struct.rx_rdesc*) #1

declare dso_local i32 @ALC_DESC_INC(i32, i64) #1

declare dso_local i32 @CSR_WRITE_2(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
