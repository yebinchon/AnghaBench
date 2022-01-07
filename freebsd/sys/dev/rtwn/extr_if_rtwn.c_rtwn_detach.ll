; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { %struct.rtwn_softc* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtwn_detach(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %4 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %4, i32 0, i32 2
  store %struct.ieee80211com* %5, %struct.ieee80211com** %3, align 8
  %6 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %6, i32 0, i32 0
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %7, align 8
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %10 = icmp eq %struct.rtwn_softc* %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %13 = call i32 @RTWN_CMDQ_LOCK(%struct.rtwn_softc* %12)
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %15 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %17 = call i32 @RTWN_CMDQ_UNLOCK(%struct.rtwn_softc* %16)
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %20 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %19, i32 0, i32 1
  %21 = call i32 @ieee80211_draintask(%struct.ieee80211com* %18, i32* %20)
  %22 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %23 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %22)
  br label %24

24:                                               ; preds = %11, %1
  %25 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %26 = call i32 @rtwn_cmdq_destroy(%struct.rtwn_softc* %25)
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %28 = call i64 @RTWN_NT_LOCK_INITIALIZED(%struct.rtwn_softc* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %32 = call i32 @RTWN_NT_LOCK_DESTROY(%struct.rtwn_softc* %31)
  br label %33

33:                                               ; preds = %30, %24
  ret void
}

declare dso_local i32 @RTWN_CMDQ_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @RTWN_CMDQ_UNLOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @ieee80211_draintask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @rtwn_cmdq_destroy(%struct.rtwn_softc*) #1

declare dso_local i64 @RTWN_NT_LOCK_INITIALIZED(%struct.rtwn_softc*) #1

declare dso_local i32 @RTWN_NT_LOCK_DESTROY(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
