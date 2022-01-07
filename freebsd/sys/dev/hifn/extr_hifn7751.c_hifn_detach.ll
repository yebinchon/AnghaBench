; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"hifn_detach: null software carrier!\00", align 1
@HIFN_1_DMA_IER = common dso_local global i32 0, align 4
@HIFN_1_DMA_CNFG = common dso_local global i32 0, align 4
@HIFN_DMACNFG_MSTRESET = common dso_local global i32 0, align 4
@HIFN_DMACNFG_DMARESET = common dso_local global i32 0, align 4
@HIFN_DMACNFG_MODE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@HIFN_BAR1 = common dso_local global i32 0, align 4
@HIFN_BAR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hifn_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hifn_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.hifn_softc* @device_get_softc(i32 %4)
  store %struct.hifn_softc* %5, %struct.hifn_softc** %3, align 8
  %6 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %7 = icmp ne %struct.hifn_softc* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %11 = load i32, i32* @HIFN_1_DMA_IER, align 4
  %12 = call i32 @WRITE_REG_1(%struct.hifn_softc* %10, i32 %11, i32 0)
  %13 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %14 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %13, i32 0, i32 11
  %15 = call i32 @callout_stop(i32* %14)
  %16 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %17 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %16, i32 0, i32 10
  %18 = call i32 @callout_stop(i32* %17)
  %19 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %20 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %21 = load i32, i32* @HIFN_DMACNFG_MSTRESET, align 4
  %22 = load i32, i32* @HIFN_DMACNFG_DMARESET, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @HIFN_DMACNFG_MODE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @WRITE_REG_1(%struct.hifn_softc* %19, i32 %20, i32 %25)
  %27 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %28 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @crypto_unregister_all(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @bus_generic_detach(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %35 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %38 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bus_teardown_intr(i32 %33, i32 %36, i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @SYS_RES_IRQ, align 4
  %43 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %44 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bus_release_resource(i32 %41, i32 %42, i32 0, i32 %45)
  %47 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %48 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %51 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @bus_dmamap_unload(i32 %49, i32 %52)
  %54 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %55 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %58 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %61 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @bus_dmamem_free(i32 %56, i32 %59, i32 %62)
  %64 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %65 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bus_dma_tag_destroy(i32 %66)
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @SYS_RES_MEMORY, align 4
  %70 = load i32, i32* @HIFN_BAR1, align 4
  %71 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %72 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bus_release_resource(i32 %68, i32 %69, i32 %70, i32 %73)
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @SYS_RES_MEMORY, align 4
  %77 = load i32, i32* @HIFN_BAR0, align 4
  %78 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %79 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bus_release_resource(i32 %75, i32 %76, i32 %77, i32 %80)
  %82 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %83 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %82, i32 0, i32 0
  %84 = call i32 @mtx_destroy(i32* %83)
  ret i32 0
}

declare dso_local %struct.hifn_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @WRITE_REG_1(%struct.hifn_softc*, i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @crypto_unregister_all(i32) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
