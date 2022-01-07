; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xilinx/extr_if_xae.c_xae_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xae_softc = type { i32, i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xae_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xae_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xae_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.xae_softc*
  store %struct.xae_softc* %7, %struct.xae_softc** %3, align 8
  %8 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %9 = call i32 @XAE_ASSERT_LOCKED(%struct.xae_softc* %8)
  %10 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %11 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %10, i32 0, i32 2
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %48

20:                                               ; preds = %1
  %21 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %22 = call i32 @xae_harvest_stats(%struct.xae_softc* %21)
  %23 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %24 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %27 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @mii_tick(i32 %28)
  %30 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %31 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %39 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %38, i32 0, i32 2
  %40 = load %struct.ifnet*, %struct.ifnet** %39, align 8
  %41 = call i32 @xae_transmit_locked(%struct.ifnet* %40)
  br label %42

42:                                               ; preds = %37, %34, %20
  %43 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %44 = getelementptr inbounds %struct.xae_softc, %struct.xae_softc* %43, i32 0, i32 1
  %45 = load i32, i32* @hz, align 4
  %46 = load %struct.xae_softc*, %struct.xae_softc** %3, align 8
  %47 = call i32 @callout_reset(i32* %44, i32 %45, void (i8*)* @xae_tick, %struct.xae_softc* %46)
  br label %48

48:                                               ; preds = %42, %19
  ret void
}

declare dso_local i32 @XAE_ASSERT_LOCKED(%struct.xae_softc*) #1

declare dso_local i32 @xae_harvest_stats(%struct.xae_softc*) #1

declare dso_local i32 @mii_tick(i32) #1

declare dso_local i32 @xae_transmit_locked(%struct.ifnet*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.xae_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
