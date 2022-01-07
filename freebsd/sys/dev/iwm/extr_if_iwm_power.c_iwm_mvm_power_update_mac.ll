; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_power.c_iwm_mvm_power_update_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_power.c_iwm_mvm_power_update_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211vap = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_mvm_power_update_mac(%struct.iwm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  %6 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %7 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %8)
  store %struct.ieee80211vap* %9, %struct.ieee80211vap** %4, align 8
  %10 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %11 = call i32 @iwm_mvm_power_set_ps(%struct.iwm_softc* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %18 = icmp ne %struct.ieee80211vap* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %22 = call i32 @IWM_VAP(%struct.ieee80211vap* %21)
  %23 = call i32 @iwm_mvm_power_send_cmd(%struct.iwm_softc* %20, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %38

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %16
  %30 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %31 = icmp ne %struct.ieee80211vap* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %34 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %35 = call i32 @IWM_VAP(%struct.ieee80211vap* %34)
  %36 = call i32 @iwm_mvm_power_set_ba(%struct.iwm_softc* %33, i32 %35)
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %32, %26, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @iwm_mvm_power_set_ps(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_mvm_power_send_cmd(%struct.iwm_softc*, i32) #1

declare dso_local i32 @IWM_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @iwm_mvm_power_set_ba(%struct.iwm_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
