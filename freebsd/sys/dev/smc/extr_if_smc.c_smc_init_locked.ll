; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_softc = type { i32*, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@smc_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_softc*)* @smc_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_init_locked(%struct.smc_softc* %0) #0 {
  %2 = alloca %struct.smc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.smc_softc* %0, %struct.smc_softc** %2, align 8
  %4 = load %struct.smc_softc*, %struct.smc_softc** %2, align 8
  %5 = call i32 @SMC_ASSERT_LOCKED(%struct.smc_softc* %4)
  %6 = load %struct.smc_softc*, %struct.smc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %6, i32 0, i32 2
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.smc_softc*, %struct.smc_softc** %2, align 8
  %18 = call i32 @smc_reset(%struct.smc_softc* %17)
  %19 = load %struct.smc_softc*, %struct.smc_softc** %2, align 8
  %20 = call i32 @smc_enable(%struct.smc_softc* %19)
  %21 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = call i32 @smc_start_locked(%struct.ifnet* %32)
  %34 = load %struct.smc_softc*, %struct.smc_softc** %2, align 8
  %35 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %16
  %39 = load %struct.smc_softc*, %struct.smc_softc** %2, align 8
  %40 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %39, i32 0, i32 1
  %41 = load i32, i32* @hz, align 4
  %42 = load %struct.smc_softc*, %struct.smc_softc** %2, align 8
  %43 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.smc_softc*, %struct.smc_softc** %2, align 8
  %46 = call i32 @callout_reset(i32* %40, i32 %41, i32* %44, %struct.smc_softc* %45)
  br label %47

47:                                               ; preds = %15, %38, %16
  ret void
}

declare dso_local i32 @SMC_ASSERT_LOCKED(%struct.smc_softc*) #1

declare dso_local i32 @smc_reset(%struct.smc_softc*) #1

declare dso_local i32 @smc_enable(%struct.smc_softc*) #1

declare dso_local i32 @smc_start_locked(%struct.ifnet*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32*, %struct.smc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
