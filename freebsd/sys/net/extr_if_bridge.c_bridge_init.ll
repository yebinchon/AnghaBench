; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@bridge_rtable_prune_period = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@bridge_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bridge_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bridge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bridge_softc*
  store %struct.bridge_softc* %6, %struct.bridge_softc** %3, align 8
  %7 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %7, i32 0, i32 2
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %38

17:                                               ; preds = %1
  %18 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %19 = call i32 @BRIDGE_LOCK(%struct.bridge_softc* %18)
  %20 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %21 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %20, i32 0, i32 1
  %22 = load i32, i32* @bridge_rtable_prune_period, align 4
  %23 = load i32, i32* @hz, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* @bridge_timer, align 4
  %26 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %27 = call i32 @callout_reset(i32* %21, i32 %24, i32 %25, %struct.bridge_softc* %26)
  %28 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %34 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %33, i32 0, i32 0
  %35 = call i32 @bstp_init(i32* %34)
  %36 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %37 = call i32 @BRIDGE_UNLOCK(%struct.bridge_softc* %36)
  br label %38

38:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @BRIDGE_LOCK(%struct.bridge_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.bridge_softc*) #1

declare dso_local i32 @bstp_init(i32*) #1

declare dso_local i32 @BRIDGE_UNLOCK(%struct.bridge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
