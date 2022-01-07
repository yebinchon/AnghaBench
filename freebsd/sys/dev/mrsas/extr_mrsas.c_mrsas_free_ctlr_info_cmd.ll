; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_free_ctlr_info_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_free_ctlr_info_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32*, i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrsas_free_ctlr_info_cmd(%struct.mrsas_softc* %0) #0 {
  %2 = alloca %struct.mrsas_softc*, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %2, align 8
  %3 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %4 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %12 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @bus_dmamap_unload(i32* %10, i32 %13)
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %17 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %22 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %28 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @bus_dmamem_free(i32* %23, i32* %26, i32 %29)
  br label %31

31:                                               ; preds = %20, %15
  %32 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %33 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %38 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @bus_dma_tag_destroy(i32* %39)
  br label %41

41:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
