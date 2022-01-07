; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_free_tx_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_free_tx_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32, i32*, i32, i32* }
%struct.rt2860_tx_data = type { i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2860_free_tx_pool(%struct.rt2860_softc* %0) #0 {
  %2 = alloca %struct.rt2860_softc*, align 8
  %3 = alloca %struct.rt2860_tx_data*, align 8
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %2, align 8
  %4 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %10 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %13 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %16 = call i32 @bus_dmamap_sync(i32* %11, i32 %14, i32 %15)
  %17 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %18 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %21 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @bus_dmamap_unload(i32* %19, i32 %22)
  %24 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %25 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %28 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %31 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bus_dmamem_free(i32* %26, i32* %29, i32 %32)
  br label %34

34:                                               ; preds = %8, %1
  %35 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %36 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %41 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @bus_dma_tag_destroy(i32* %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %51, %44
  %46 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %47 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %46, i32 0, i32 0
  %48 = call i32 @SLIST_EMPTY(i32* %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %53 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %52, i32 0, i32 0
  %54 = call %struct.rt2860_tx_data* @SLIST_FIRST(i32* %53)
  store %struct.rt2860_tx_data* %54, %struct.rt2860_tx_data** %3, align 8
  %55 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %56 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.rt2860_tx_data*, %struct.rt2860_tx_data** %3, align 8
  %59 = getelementptr inbounds %struct.rt2860_tx_data, %struct.rt2860_tx_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bus_dmamap_destroy(i32* %57, i32 %60)
  %62 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %63 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %62, i32 0, i32 0
  %64 = load i32, i32* @next, align 4
  %65 = call i32 @SLIST_REMOVE_HEAD(i32* %63, i32 %64)
  br label %45

66:                                               ; preds = %45
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local %struct.rt2860_tx_data* @SLIST_FIRST(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
