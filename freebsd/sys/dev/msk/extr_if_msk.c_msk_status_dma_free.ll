; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_status_dma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_status_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i32*, i32*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_softc*)* @msk_status_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_status_dma_free(%struct.msk_softc* %0) #0 {
  %2 = alloca %struct.msk_softc*, align 8
  store %struct.msk_softc* %0, %struct.msk_softc** %2, align 8
  %3 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %4 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %47

7:                                                ; preds = %1
  %8 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %9 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %14 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %17 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bus_dmamap_unload(i32* %15, i32 %18)
  %20 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %21 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %12, %7
  %23 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %24 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %29 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %32 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %35 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bus_dmamem_free(i32* %30, i32* %33, i32 %36)
  %38 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %39 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %27, %22
  %41 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %42 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @bus_dma_tag_destroy(i32* %43)
  %45 = load %struct.msk_softc*, %struct.msk_softc** %2, align 8
  %46 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %1
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
