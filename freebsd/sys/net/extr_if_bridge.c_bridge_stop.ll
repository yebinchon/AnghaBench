; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.bridge_softc* }
%struct.bridge_softc = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFBF_FLUSHDYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, i32)* @bridge_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_stop(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bridge_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 1
  %8 = load %struct.bridge_softc*, %struct.bridge_softc** %7, align 8
  store %struct.bridge_softc* %8, %struct.bridge_softc** %5, align 8
  %9 = load %struct.bridge_softc*, %struct.bridge_softc** %5, align 8
  %10 = call i32 @BRIDGE_LOCK_ASSERT(%struct.bridge_softc* %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.bridge_softc*, %struct.bridge_softc** %5, align 8
  %20 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %19, i32 0, i32 1
  %21 = call i32 @callout_stop(i32* %20)
  %22 = load %struct.bridge_softc*, %struct.bridge_softc** %5, align 8
  %23 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %22, i32 0, i32 0
  %24 = call i32 @bstp_stop(i32* %23)
  %25 = load %struct.bridge_softc*, %struct.bridge_softc** %5, align 8
  %26 = load i32, i32* @IFBF_FLUSHDYN, align 4
  %27 = call i32 @bridge_rtflush(%struct.bridge_softc* %25, i32 %26)
  %28 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @BRIDGE_LOCK_ASSERT(%struct.bridge_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bstp_stop(i32*) #1

declare dso_local i32 @bridge_rtflush(%struct.bridge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
