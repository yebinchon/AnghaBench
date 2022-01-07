; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_ifmedia_sts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_ifmedia_sts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.rl_softc* }
%struct.rl_softc = type { i32 }
%struct.ifmediareq = type { i32, i32 }
%struct.mii_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @rl_ifmedia_sts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_ifmedia_sts(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.rl_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.rl_softc*, %struct.rl_softc** %8, align 8
  store %struct.rl_softc* %9, %struct.rl_softc** %5, align 8
  %10 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %11 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mii_data* @device_get_softc(i32 %12)
  store %struct.mii_data* %13, %struct.mii_data** %6, align 8
  %14 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %15 = call i32 @RL_LOCK(%struct.rl_softc* %14)
  %16 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %17 = call i32 @mii_pollstat(%struct.mii_data* %16)
  %18 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %19 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %22 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %24 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %27 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rl_softc*, %struct.rl_softc** %5, align 8
  %29 = call i32 @RL_UNLOCK(%struct.rl_softc* %28)
  ret void
}

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @RL_LOCK(%struct.rl_softc*) #1

declare dso_local i32 @mii_pollstat(%struct.mii_data*) #1

declare dso_local i32 @RL_UNLOCK(%struct.rl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
