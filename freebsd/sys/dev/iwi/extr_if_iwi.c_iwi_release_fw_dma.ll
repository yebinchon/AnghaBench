; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_release_fw_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_release_fw_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32*, i64, i32*, i32*, i64 }

@IWI_FW_HAVE_PHY = common dso_local global i32 0, align 4
@IWI_FW_HAVE_MAP = common dso_local global i32 0, align 4
@IWI_FW_HAVE_DMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*)* @iwi_release_fw_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_release_fw_dma(%struct.iwi_softc* %0) #0 {
  %2 = alloca %struct.iwi_softc*, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %2, align 8
  %3 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %4 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @IWI_FW_HAVE_PHY, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %11 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %14 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @bus_dmamap_unload(i32* %12, i32* %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %19 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IWI_FW_HAVE_MAP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %26 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %29 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %32 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @bus_dmamem_free(i32* %27, i32* %30, i32* %33)
  br label %35

35:                                               ; preds = %24, %17
  %36 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %37 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IWI_FW_HAVE_DMAT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %44 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @bus_dma_tag_destroy(i32* %45)
  br label %47

47:                                               ; preds = %42, %35
  %48 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %49 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %51 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %53 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %52, i32 0, i32 4
  store i32* null, i32** %53, align 8
  %54 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %55 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %54, i32 0, i32 3
  store i32* null, i32** %55, align 8
  %56 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %57 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %59 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
