; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.xae_softc* }
%struct.xae_softc = type { %struct.mii_data* }
%struct.mii_data = type { i32, i32 }
%struct.ifmediareq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, %struct.ifmediareq*)* @xae_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xae_media_status(%struct.ifnet* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.xae_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load %struct.xae_softc*, %struct.xae_softc** %8, align 8
  store %struct.xae_softc* %9, %struct.xae_softc** %5, align 8
  %10 = load %struct.xae_softc*, %struct.xae_softc** %5, align 8
  %11 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %10, i32 0, i32 0
  %12 = load %struct.mii_data*, %struct.mii_data** %11, align 8
  store %struct.mii_data* %12, %struct.mii_data** %6, align 8
  %13 = load %struct.xae_softc*, %struct.xae_softc** %5, align 8
  %14 = call i32 @XAE_LOCK(%struct.xae_softc* %13)
  %15 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %16 = call i32 @mii_pollstat(%struct.mii_data* %15)
  %17 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %18 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %21 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %23 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %26 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.xae_softc*, %struct.xae_softc** %5, align 8
  %28 = call i32 @XAE_UNLOCK(%struct.xae_softc* %27)
  ret void
}

declare dso_local i32 @XAE_LOCK(%struct.xae_softc*) #1

declare dso_local i32 @mii_pollstat(%struct.mii_data*) #1

declare dso_local i32 @XAE_UNLOCK(%struct.xae_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
