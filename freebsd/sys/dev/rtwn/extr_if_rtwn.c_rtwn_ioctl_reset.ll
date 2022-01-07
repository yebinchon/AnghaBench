; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_ioctl_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_ioctl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rtwn_softc* }
%struct.rtwn_softc = type { i32 }
%struct.rtwn_vap = type { i32 }

@IEEE80211_M_STA = common dso_local global i32 0, align 4
@RTWN_RUNNING = common dso_local global i32 0, align 4
@ENETRESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, i32)* @rtwn_ioctl_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_ioctl_reset(%struct.ieee80211vap* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtwn_softc*, align 8
  %7 = alloca %struct.rtwn_vap*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %53 [
    i32 132, label %9
    i32 131, label %9
    i32 128, label %52
    i32 129, label %52
    i32 130, label %52
    i32 134, label %52
    i32 133, label %52
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %13, align 8
  store %struct.rtwn_softc* %14, %struct.rtwn_softc** %6, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %16 = call %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap* %15)
  store %struct.rtwn_vap* %16, %struct.rtwn_vap** %7, align 8
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IEEE80211_M_STA, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %9
  %23 = load %struct.rtwn_vap*, %struct.rtwn_vap** %7, align 8
  %24 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %29 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %28)
  %30 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %31 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RTWN_RUNNING, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %38 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %39 = call i32 @rtwn_set_pwrmode(%struct.rtwn_softc* %37, %struct.ieee80211vap* %38, i32 1)
  store i32 %39, i32* %5, align 4
  br label %41

40:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %43 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @ENETRESET, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %41
  br label %51

49:                                               ; preds = %22, %9
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %48
  br label %55

52:                                               ; preds = %2, %2, %2, %2, %2
  store i32 0, i32* %5, align 4
  br label %55

53:                                               ; preds = %2
  %54 = load i32, i32* @ENETRESET, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %52, %51
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @RTWN_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_set_pwrmode(%struct.rtwn_softc*, %struct.ieee80211vap*, i32) #1

declare dso_local i32 @RTWN_UNLOCK(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
