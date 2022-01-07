; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_lsi64854.c_lsi64854_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_lsi64854.c_lsi64854_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsi64854_softc = type { i32, i32, i32* }

@L64854_WRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsi64854_detach(%struct.lsi64854_softc* %0) #0 {
  %2 = alloca %struct.lsi64854_softc*, align 8
  store %struct.lsi64854_softc* %0, %struct.lsi64854_softc** %2, align 8
  %3 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %2, align 8
  %4 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %44

7:                                                ; preds = %1
  %8 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %2, align 8
  %9 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %2, align 8
  %12 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %2, align 8
  %15 = call i32 @L64854_GCSR(%struct.lsi64854_softc* %14)
  %16 = load i32, i32* @L64854_WRITE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  br label %23

21:                                               ; preds = %7
  %22 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call i32 @bus_dmamap_sync(i32 %10, i32 %13, i32 %24)
  %26 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %2, align 8
  %27 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %2, align 8
  %30 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bus_dmamap_unload(i32 %28, i32 %31)
  %33 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %2, align 8
  %34 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %2, align 8
  %37 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bus_dmamap_destroy(i32 %35, i32 %38)
  %40 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %2, align 8
  %41 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bus_dma_tag_destroy(i32 %42)
  br label %44

44:                                               ; preds = %23, %1
  ret i32 0
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @L64854_GCSR(%struct.lsi64854_softc*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
