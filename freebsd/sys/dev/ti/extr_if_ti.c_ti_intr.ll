; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { %struct.TYPE_2__, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifnet = type { i32, i32 }

@TI_MISC_HOST_CTL = common dso_local global i32 0, align 4
@TI_MHC_INTSTATE = common dso_local global i32 0, align 4
@TI_MB_HOSTINTR = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ti_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ti_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ti_softc*
  store %struct.ti_softc* %6, %struct.ti_softc** %3, align 8
  %7 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %8 = call i32 @TI_LOCK(%struct.ti_softc* %7)
  %9 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %9, i32 0, i32 1
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %13 = load i32, i32* @TI_MISC_HOST_CTL, align 4
  %14 = call i32 @CSR_READ_4(%struct.ti_softc* %12, i32 %13)
  %15 = load i32, i32* @TI_MHC_INTSTATE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %20 = call i32 @TI_UNLOCK(%struct.ti_softc* %19)
  br label %80

21:                                               ; preds = %1
  %22 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %23 = load i32, i32* @TI_MB_HOSTINTR, align 4
  %24 = call i32 @CSR_WRITE_4(%struct.ti_softc* %22, i32 %23, i32 1)
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %21
  %32 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %41 = call i32 @bus_dmamap_sync(i32 %35, i32 %39, i32 %40)
  %42 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %43 = call i32 @ti_rxeof(%struct.ti_softc* %42)
  %44 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %45 = call i32 @ti_txeof(%struct.ti_softc* %44)
  %46 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %51 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %55 = call i32 @bus_dmamap_sync(i32 %49, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %31, %21
  %57 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %58 = call i32 @ti_handle_events(%struct.ti_softc* %57)
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %56
  %66 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %67 = load i32, i32* @TI_MB_HOSTINTR, align 4
  %68 = call i32 @CSR_WRITE_4(%struct.ti_softc* %66, i32 %67, i32 0)
  %69 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %70 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %69, i32 0, i32 1
  %71 = call i32 @IFQ_DRV_IS_EMPTY(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %75 = call i32 @ti_start_locked(%struct.ifnet* %74)
  br label %76

76:                                               ; preds = %73, %65
  br label %77

77:                                               ; preds = %76, %56
  %78 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %79 = call i32 @TI_UNLOCK(%struct.ti_softc* %78)
  br label %80

80:                                               ; preds = %77, %18
  ret void
}

declare dso_local i32 @TI_LOCK(%struct.ti_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.ti_softc*, i32) #1

declare dso_local i32 @TI_UNLOCK(%struct.ti_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @ti_rxeof(%struct.ti_softc*) #1

declare dso_local i32 @ti_txeof(%struct.ti_softc*) #1

declare dso_local i32 @ti_handle_events(%struct.ti_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @ti_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
