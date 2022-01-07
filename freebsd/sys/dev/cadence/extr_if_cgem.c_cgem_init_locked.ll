; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i32, i32, i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@cgem_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgem_softc*)* @cgem_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgem_init_locked(%struct.cgem_softc* %0) #0 {
  %2 = alloca %struct.cgem_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  store %struct.cgem_softc* %0, %struct.cgem_softc** %2, align 8
  %4 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %5 = call i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc* %4)
  %6 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %7 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @if_getdrvflags(i32 %8)
  %10 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %16 = call i32 @cgem_config(%struct.cgem_softc* %15)
  %17 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %18 = call i32 @cgem_fill_rqueue(%struct.cgem_softc* %17)
  %19 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %20 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %23 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %24 = call i32 @if_setdrvflagbits(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %26 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.mii_data* @device_get_softc(i32 %27)
  store %struct.mii_data* %28, %struct.mii_data** %3, align 8
  %29 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %30 = call i32 @mii_mediachg(%struct.mii_data* %29)
  %31 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %32 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %31, i32 0, i32 0
  %33 = load i32, i32* @hz, align 4
  %34 = load i32, i32* @cgem_tick, align 4
  %35 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %36 = call i32 @callout_reset(i32* %32, i32 %33, i32 %34, %struct.cgem_softc* %35)
  br label %37

37:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @cgem_config(%struct.cgem_softc*) #1

declare dso_local i32 @cgem_fill_rqueue(%struct.cgem_softc*) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.cgem_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
