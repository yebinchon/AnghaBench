; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atse_softc = type { i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@ATSE_FLAGS_LINK = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@atse_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atse_softc*)* @atse_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atse_init_locked(%struct.atse_softc* %0) #0 {
  %2 = alloca %struct.atse_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32*, align 8
  store %struct.atse_softc* %0, %struct.atse_softc** %2, align 8
  %6 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %7 = call i32 @ATSE_LOCK_ASSERT(%struct.atse_softc* %6)
  %8 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %9 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %8, i32 0, i32 4
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %68

18:                                               ; preds = %1
  %19 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %20 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %19, i32 0, i32 4
  %21 = load %struct.ifnet*, %struct.ifnet** %20, align 8
  %22 = call i32* @IF_LLADDR(%struct.ifnet* %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %25 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %24, i32 0, i32 3
  %26 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %27 = call i32 @bcopy(i32* %23, i32* %25, i32 %26)
  %28 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %29 = call i32 @atse_stop_locked(%struct.atse_softc* %28)
  %30 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %31 = call i32 @atse_reset(%struct.atse_softc* %30)
  %32 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %33 = call i32 @atse_rxfilter_locked(%struct.atse_softc* %32)
  %34 = load i32, i32* @ATSE_FLAGS_LINK, align 4
  %35 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %36 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %40 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.mii_data* @device_get_softc(i32 %41)
  store %struct.mii_data* %42, %struct.mii_data** %4, align 8
  %43 = load i32, i32* @ATSE_FLAGS_LINK, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %46 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %50 = call i32 @mii_mediachg(%struct.mii_data* %49)
  %51 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %63 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %62, i32 0, i32 0
  %64 = load i32, i32* @hz, align 4
  %65 = load i32, i32* @atse_tick, align 4
  %66 = load %struct.atse_softc*, %struct.atse_softc** %2, align 8
  %67 = call i32 @callout_reset(i32* %63, i32 %64, i32 %65, %struct.atse_softc* %66)
  br label %68

68:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @ATSE_LOCK_ASSERT(%struct.atse_softc*) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @atse_stop_locked(%struct.atse_softc*) #1

declare dso_local i32 @atse_reset(%struct.atse_softc*) #1

declare dso_local i32 @atse_rxfilter_locked(%struct.atse_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.atse_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
