; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ET_INTR_MASK = common dso_local global i32 0, align 4
@ET_INTRS = common dso_local global i32 0, align 4
@ET_TIMER = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ET_FLAG_LINK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@et_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_softc*)* @et_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_init_locked(%struct.et_softc* %0) #0 {
  %2 = alloca %struct.et_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %2, align 8
  %5 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %6 = call i32 @ET_LOCK_ASSERT(%struct.et_softc* %5)
  %7 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %8 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %7, i32 0, i32 3
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %90

17:                                               ; preds = %1
  %18 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %19 = call i32 @et_stop(%struct.et_softc* %18)
  %20 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %21 = call i32 @et_reset(%struct.et_softc* %20)
  %22 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %23 = call i32 @et_init_tx_ring(%struct.et_softc* %22)
  %24 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %25 = call i32 @et_init_rx_ring(%struct.et_softc* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %90

29:                                               ; preds = %17
  %30 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %31 = call i32 @et_chip_init(%struct.et_softc* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %84

35:                                               ; preds = %29
  %36 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %37 = call i32 @et_start_rxdma(%struct.et_softc* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %90

41:                                               ; preds = %35
  %42 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %43 = call i32 @et_start_txdma(%struct.et_softc* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %90

47:                                               ; preds = %41
  %48 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %49 = load i32, i32* @ET_INTR_MASK, align 4
  %50 = load i32, i32* @ET_INTRS, align 4
  %51 = xor i32 %50, -1
  %52 = call i32 @CSR_WRITE_4(%struct.et_softc* %48, i32 %49, i32 %51)
  %53 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %54 = load i32, i32* @ET_TIMER, align 4
  %55 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %56 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @CSR_WRITE_4(%struct.et_softc* %53, i32 %54, i32 %57)
  %59 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %60 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @ET_FLAG_LINK, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %73 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %77 = call i32 @et_ifmedia_upd_locked(%struct.ifnet* %76)
  %78 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %79 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %78, i32 0, i32 0
  %80 = load i32, i32* @hz, align 4
  %81 = load i32, i32* @et_tick, align 4
  %82 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %83 = call i32 @callout_reset(i32* %79, i32 %80, i32 %81, %struct.et_softc* %82)
  br label %84

84:                                               ; preds = %47, %34
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %89 = call i32 @et_stop(%struct.et_softc* %88)
  br label %90

90:                                               ; preds = %16, %28, %40, %46, %87, %84
  ret void
}

declare dso_local i32 @ET_LOCK_ASSERT(%struct.et_softc*) #1

declare dso_local i32 @et_stop(%struct.et_softc*) #1

declare dso_local i32 @et_reset(%struct.et_softc*) #1

declare dso_local i32 @et_init_tx_ring(%struct.et_softc*) #1

declare dso_local i32 @et_init_rx_ring(%struct.et_softc*) #1

declare dso_local i32 @et_chip_init(%struct.et_softc*) #1

declare dso_local i32 @et_start_rxdma(%struct.et_softc*) #1

declare dso_local i32 @et_start_txdma(%struct.et_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #1

declare dso_local i32 @et_ifmedia_upd_locked(%struct.ifnet*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.et_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
