; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_softc = type { i32 }
%struct.hdac_dma = type { i64, i64, i32*, i32*, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_softc*, %struct.hdac_dma*)* @hdac_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_dma_free(%struct.hdac_softc* %0, %struct.hdac_dma* %1) #0 {
  %3 = alloca %struct.hdac_softc*, align 8
  %4 = alloca %struct.hdac_dma*, align 8
  store %struct.hdac_softc* %0, %struct.hdac_softc** %3, align 8
  store %struct.hdac_dma* %1, %struct.hdac_dma** %4, align 8
  %5 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %6 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %11 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %14 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %17 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @bus_dmamap_sync(i32* %12, i32 %15, i32 %18)
  %20 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %21 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %24 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bus_dmamap_unload(i32* %22, i32 %25)
  %27 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %28 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %9, %2
  %30 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %31 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %36 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %39 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %42 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bus_dmamem_free(i32* %37, i32* %40, i32 %43)
  %45 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %46 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %34, %29
  %48 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %49 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %54 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @bus_dma_tag_destroy(i32* %55)
  %57 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %58 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.hdac_dma*, %struct.hdac_dma** %4, align 8
  %61 = getelementptr inbounds %struct.hdac_dma, %struct.hdac_dma* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
