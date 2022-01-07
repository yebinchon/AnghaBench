; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.le_dma_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.lance_softc }
%struct.lance_softc = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @le_dma_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_dma_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.le_dma_softc*, align 8
  %5 = alloca %struct.lance_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.le_dma_softc* @device_get_softc(i32 %7)
  store %struct.le_dma_softc* %8, %struct.le_dma_softc** %4, align 8
  %9 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %10 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.lance_softc* %11, %struct.lance_softc** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %14 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %17 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bus_teardown_intr(i32 %12, i32 %15, i32 %18)
  %20 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %21 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %20, i32 0, i32 5
  %22 = call i32 @am7990_detach(%struct.TYPE_2__* %21)
  %23 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %24 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %27 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bus_dmamap_unload(i32 %25, i32 %28)
  %30 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %31 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %34 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %37 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bus_dmamem_free(i32 %32, i32 %35, i32 %38)
  %40 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %41 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bus_dma_tag_destroy(i32 %42)
  %44 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %45 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @lsi64854_detach(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %1
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %75

52:                                               ; preds = %1
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @SYS_RES_IRQ, align 4
  %55 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %56 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rman_get_rid(i32 %57)
  %59 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %60 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bus_release_resource(i32 %53, i32 %54, i32 %58, i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @SYS_RES_MEMORY, align 4
  %65 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %66 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rman_get_rid(i32 %67)
  %69 = load %struct.le_dma_softc*, %struct.le_dma_softc** %4, align 8
  %70 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bus_release_resource(i32 %63, i32 %64, i32 %68, i32 %71)
  %73 = load %struct.lance_softc*, %struct.lance_softc** %5, align 8
  %74 = call i32 @LE_LOCK_DESTROY(%struct.lance_softc* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %52, %50
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.le_dma_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @am7990_detach(%struct.TYPE_2__*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @lsi64854_detach(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_rid(i32) #1

declare dso_local i32 @LE_LOCK_DESTROY(%struct.lance_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
