; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_setup_rxbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_setup_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.mbuf*, i32 }
%struct.mbuf = type { i32 }
%struct.bus_dma_segment = type { i32 }

@FECFLAG_RACC = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffec_softc*, i32, %struct.mbuf*)* @ffec_setup_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffec_setup_rxbuf(%struct.ffec_softc* %0, i32 %1, %struct.mbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ffec_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bus_dma_segment, align 4
  store %struct.ffec_softc* %0, %struct.ffec_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %11 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %12 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FECFLAG_RACC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %19 = load i32, i32* @ETHER_ALIGN, align 4
  %20 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @roundup(i32 %19, i32 %22)
  %24 = call i32 @m_adj(%struct.mbuf* %18, i32 %23)
  br label %25

25:                                               ; preds = %17, %3
  %26 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %27 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %38 = call i32 @bus_dmamap_load_mbuf_sg(i32 %28, i32 %36, %struct.mbuf* %37, %struct.bus_dma_segment* %10, i32* %9, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %25
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %70

43:                                               ; preds = %25
  %44 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %45 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %48 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %56 = call i32 @bus_dmamap_sync(i32 %46, i32 %54, i32 %55)
  %57 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %58 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %59 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.mbuf* %57, %struct.mbuf** %64, align 8
  %65 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ffec_setup_rxdesc(%struct.ffec_softc* %65, i32 %66, i32 %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %43, %41
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.bus_dma_segment*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @ffec_setup_rxdesc(%struct.ffec_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
