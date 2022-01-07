; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_setup_txbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_setup_txbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.mbuf*, i32 }
%struct.mbuf = type { i32 }
%struct.bus_dma_segment = type { i32, i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffec_softc*, i32, %struct.mbuf**)* @ffec_setup_txbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffec_setup_txbuf(%struct.ffec_softc* %0, i32 %1, %struct.mbuf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ffec_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bus_dma_segment, align 4
  store %struct.ffec_softc* %0, %struct.ffec_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mbuf** %2, %struct.mbuf*** %7, align 8
  %12 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %14 = load i32, i32* @M_NOWAIT, align 4
  %15 = call %struct.mbuf* @m_defrag(%struct.mbuf* %13, i32 %14)
  store %struct.mbuf* %15, %struct.mbuf** %8, align 8
  %16 = icmp eq %struct.mbuf* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %4, align 4
  br label %68

19:                                               ; preds = %3
  %20 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %21 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %20, %struct.mbuf** %21, align 8
  %22 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %23 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %34 = call i32 @bus_dmamap_load_mbuf_sg(i32 %24, i32 %32, %struct.mbuf* %33, %struct.bus_dma_segment* %11, i32* %10, i32 0)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %4, align 4
  br label %68

39:                                               ; preds = %19
  %40 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %41 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %44 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %52 = call i32 @bus_dmamap_sync(i32 %42, i32 %50, i32 %51)
  %53 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %54 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %55 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store %struct.mbuf* %53, %struct.mbuf** %60, align 8
  %61 = load %struct.ffec_softc*, %struct.ffec_softc** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %11, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.bus_dma_segment, %struct.bus_dma_segment* %11, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ffec_setup_txdesc(%struct.ffec_softc* %61, i32 %62, i32 %64, i32 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %39, %37, %17
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.mbuf* @m_defrag(%struct.mbuf*, i32) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, %struct.bus_dma_segment*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @ffec_setup_txdesc(%struct.ffec_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
