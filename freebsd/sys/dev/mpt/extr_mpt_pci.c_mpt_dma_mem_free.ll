; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_pci.c_mpt_dma_mem_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_pci.c_mpt_dma_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32*, i32*, i32*, i32, i32 }

@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"already released dma memory\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_softc*)* @mpt_dma_mem_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_dma_mem_free(%struct.mpt_softc* %0) #0 {
  %2 = alloca %struct.mpt_softc*, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %2, align 8
  %3 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %4 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %9 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %10 = call i32 @mpt_lprt(%struct.mpt_softc* %8, i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %16 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @bus_dmamap_unload(i32* %14, i32 %17)
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %26 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @bus_dmamem_free(i32* %21, i32 %24, i32 %27)
  %29 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %30 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @bus_dma_tag_destroy(i32* %31)
  %33 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %34 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @bus_dma_tag_destroy(i32* %35)
  %37 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %38 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %40 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @M_DEVBUF, align 4
  %43 = call i32 @free(i32* %41, i32 %42)
  %44 = load %struct.mpt_softc*, %struct.mpt_softc** %2, align 8
  %45 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %11, %7
  ret void
}

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
