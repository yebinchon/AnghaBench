; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_sf.c_iwm_mvm_sf_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_sf.c_iwm_mvm_sf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.ieee80211vap = type { i32, %struct.ieee80211_node* }
%struct.ieee80211_node = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IWM_SF_INIT_OFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IWM_SF_FULL_ON = common dso_local global i32 0, align 4
@IWM_SF_UNINIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_mvm_sf_update(%struct.iwm_softc* %0, %struct.ieee80211vap* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwm_softc*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_node*, align 8
  %10 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %5, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_node* null, %struct.ieee80211_node** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %12 = icmp ne %struct.ieee80211vap* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %16, %13, %3
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %50 [
    i32 0, label %21
    i32 1, label %23
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @IWM_SF_INIT_OFF, align 4
  store i32 %22, i32* %8, align 4
  br label %52

23:                                               ; preds = %19
  %24 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %25 = icmp ne %struct.ieee80211vap* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %57

28:                                               ; preds = %23
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 1
  %31 = load %struct.ieee80211_node*, %struct.ieee80211_node** %30, align 8
  store %struct.ieee80211_node* %31, %struct.ieee80211_node** %9, align 8
  %32 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %33 = icmp ne %struct.ieee80211_node* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %36 = call %struct.TYPE_2__* @IWM_NODE(%struct.ieee80211_node* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @IWM_SF_FULL_ON, align 4
  store i32 %46, i32* %8, align 4
  br label %49

47:                                               ; preds = %40, %34, %28
  %48 = load i32, i32* @IWM_SF_INIT_OFF, align 4
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %52

50:                                               ; preds = %19
  %51 = load i32, i32* @IWM_SF_UNINIT, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %49, %21
  %53 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %54 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @iwm_mvm_sf_config(%struct.iwm_softc* %53, %struct.ieee80211_node* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %26
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_2__* @IWM_NODE(%struct.ieee80211_node*) #1

declare dso_local i32 @iwm_mvm_sf_config(%struct.iwm_softc*, %struct.ieee80211_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
