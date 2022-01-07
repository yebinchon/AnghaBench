; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_isa.c_le_isa_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_isa.c_le_isa_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.le_isa_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.lance_softc }
%struct.lance_softc = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @le_isa_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_isa_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.le_isa_softc*, align 8
  %4 = alloca %struct.lance_softc*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.le_isa_softc* @device_get_softc(i32 %5)
  store %struct.le_isa_softc* %6, %struct.le_isa_softc** %3, align 8
  %7 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %8 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.lance_softc* %9, %struct.lance_softc** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %12 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %15 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bus_teardown_intr(i32 %10, i32 %13, i32 %16)
  %18 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %19 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %18, i32 0, i32 6
  %20 = call i32 @am7990_detach(%struct.TYPE_2__* %19)
  %21 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %22 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %25 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bus_dmamap_unload(i32 %23, i32 %26)
  %28 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %29 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.lance_softc*, %struct.lance_softc** %4, align 8
  %32 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %35 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bus_dmamem_free(i32 %30, i32 %33, i32 %36)
  %38 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %39 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bus_dma_tag_destroy(i32 %40)
  %42 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %43 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bus_dma_tag_destroy(i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @SYS_RES_IRQ, align 4
  %48 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %49 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rman_get_rid(i32 %50)
  %52 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %53 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bus_release_resource(i32 %46, i32 %47, i32 %51, i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @SYS_RES_DRQ, align 4
  %58 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %59 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rman_get_rid(i32 %60)
  %62 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %63 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bus_release_resource(i32 %56, i32 %57, i32 %61, i32 %64)
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @SYS_RES_IOPORT, align 4
  %68 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %69 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rman_get_rid(i32 %70)
  %72 = load %struct.le_isa_softc*, %struct.le_isa_softc** %3, align 8
  %73 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bus_release_resource(i32 %66, i32 %67, i32 %71, i32 %74)
  %76 = load %struct.lance_softc*, %struct.lance_softc** %4, align 8
  %77 = call i32 @LE_LOCK_DESTROY(%struct.lance_softc* %76)
  ret i32 0
}

declare dso_local %struct.le_isa_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @am7990_detach(%struct.TYPE_2__*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_rid(i32) #1

declare dso_local i32 @LE_LOCK_DESTROY(%struct.lance_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
