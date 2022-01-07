; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@dme_tick = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dme_softc*)* @dme_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dme_init_locked(%struct.dme_softc* %0) #0 {
  %2 = alloca %struct.dme_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.dme_softc* %0, %struct.dme_softc** %2, align 8
  %4 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %5 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %4, i32 0, i32 1
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %8 = call i32 @DME_ASSERT_LOCKED(%struct.dme_softc* %7)
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %38

16:                                               ; preds = %1
  %17 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %18 = call i32 @dme_reset(%struct.dme_softc* %17)
  %19 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %20 = call i32 @dme_config(%struct.dme_softc* %19)
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
  %32 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %33 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %32, i32 0, i32 0
  %34 = load i32, i32* @hz, align 4
  %35 = load i32, i32* @dme_tick, align 4
  %36 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %37 = call i32 @callout_reset(i32* %33, i32 %34, i32 %35, %struct.dme_softc* %36)
  br label %38

38:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @DME_ASSERT_LOCKED(%struct.dme_softc*) #1

declare dso_local i32 @dme_reset(%struct.dme_softc*) #1

declare dso_local i32 @dme_config(%struct.dme_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.dme_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
