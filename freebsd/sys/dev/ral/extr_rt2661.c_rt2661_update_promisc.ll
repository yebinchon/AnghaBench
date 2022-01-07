; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_update_promisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_update_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, %struct.rt2661_softc* }
%struct.rt2661_softc = type { i32 }

@RT2661_TXRX_CSR0 = common dso_local global i32 0, align 4
@RT2661_DROP_NOT_TO_ME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s promiscuous mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"entering\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"leaving\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @rt2661_update_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2661_update_promisc(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.rt2661_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 1
  %7 = load %struct.rt2661_softc*, %struct.rt2661_softc** %6, align 8
  store %struct.rt2661_softc* %7, %struct.rt2661_softc** %3, align 8
  %8 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %9 = load i32, i32* @RT2661_TXRX_CSR0, align 4
  %10 = call i32 @RAL_READ(%struct.rt2661_softc* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @RT2661_DROP_NOT_TO_ME, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @RT2661_DROP_NOT_TO_ME, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %25 = load i32, i32* @RT2661_TXRX_CSR0, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @RAL_WRITE(%struct.rt2661_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.rt2661_softc*, %struct.rt2661_softc** %3, align 8
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @DPRINTF(%struct.rt2661_softc* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %34)
  ret void
}

declare dso_local i32 @RAL_READ(%struct.rt2661_softc*, i32) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2661_softc*, i32, i32) #1

declare dso_local i32 @DPRINTF(%struct.rt2661_softc*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
