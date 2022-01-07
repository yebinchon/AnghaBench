; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_fdt_test.c_xdmatest_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/extr_xdma_fdt_test.c_xdmatest_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdmatest_softc = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xdmatest_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdmatest_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdmatest_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.xdmatest_softc* @device_get_softc(i32 %4)
  store %struct.xdmatest_softc* %5, %struct.xdmatest_softc** %3, align 8
  %6 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %7 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %10 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @bus_dmamap_unload(i32 %8, i32 %11)
  %13 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %14 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %17 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %20 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bus_dmamem_free(i32 %15, i32 %18, i32 %21)
  %23 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %24 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bus_dma_tag_destroy(i32 %25)
  %27 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %28 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %31 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bus_dmamap_unload(i32 %29, i32 %32)
  %34 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %35 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %38 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %41 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bus_dmamem_free(i32 %36, i32 %39, i32 %42)
  %44 = load %struct.xdmatest_softc*, %struct.xdmatest_softc** %3, align 8
  %45 = getelementptr inbounds %struct.xdmatest_softc, %struct.xdmatest_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bus_dma_tag_destroy(i32 %46)
  ret i32 0
}

declare dso_local %struct.xdmatest_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
