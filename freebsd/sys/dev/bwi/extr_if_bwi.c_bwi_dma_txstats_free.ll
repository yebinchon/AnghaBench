; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_dma_txstats_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_dma_txstats_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { %struct.bwi_txstats_data* }
%struct.bwi_txstats_data = type { i32*, i32, i32, i32*, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*)* @bwi_dma_txstats_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_dma_txstats_free(%struct.bwi_softc* %0) #0 {
  %2 = alloca %struct.bwi_softc*, align 8
  %3 = alloca %struct.bwi_txstats_data*, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %2, align 8
  %4 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %5 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %4, i32 0, i32 0
  %6 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %5, align 8
  %7 = icmp eq %struct.bwi_txstats_data* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %70

9:                                                ; preds = %1
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %10, i32 0, i32 0
  %12 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %11, align 8
  store %struct.bwi_txstats_data* %12, %struct.bwi_txstats_data** %3, align 8
  %13 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %14 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %9
  %18 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %19 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %22 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bus_dmamap_unload(i32* %20, i32 %23)
  %25 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %26 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %29 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %32 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bus_dmamem_free(i32* %27, i32 %30, i32 %33)
  %35 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %36 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @bus_dma_tag_destroy(i32* %37)
  br label %39

39:                                               ; preds = %17, %9
  %40 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %41 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %46 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %49 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bus_dmamap_unload(i32* %47, i32 %50)
  %52 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %53 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %56 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %59 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bus_dmamem_free(i32* %54, i32 %57, i32 %60)
  %62 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %63 = getelementptr inbounds %struct.bwi_txstats_data, %struct.bwi_txstats_data* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @bus_dma_tag_destroy(i32* %64)
  br label %66

66:                                               ; preds = %44, %39
  %67 = load %struct.bwi_txstats_data*, %struct.bwi_txstats_data** %3, align 8
  %68 = load i32, i32* @M_DEVBUF, align 4
  %69 = call i32 @free(%struct.bwi_txstats_data* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %8
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @free(%struct.bwi_txstats_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
