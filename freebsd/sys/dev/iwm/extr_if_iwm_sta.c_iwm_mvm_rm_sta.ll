; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_sta.c_iwm_mvm_rm_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_sta.c_iwm_mvm_rm_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iwm_softc = type { i32 }
%struct.ieee80211vap = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@WME_NUM_AC = common dso_local global i32 0, align 4
@iwm_mvm_ac_to_tx_fifo = common dso_local global i32* null, align 8
@IWM_CMD_SYNC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@mvm = common dso_local global %struct.TYPE_4__* null, align 8
@mvm_sta = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_mvm_rm_sta(%struct.iwm_softc* %0, %struct.ieee80211vap* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwm_softc*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %5, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %13 = call i32 @IWM_VAP(%struct.ieee80211vap* %12)
  %14 = load i32, i32* @TRUE, align 4
  %15 = call i32 @iwm_mvm_drain_sta(%struct.iwm_softc* %11, i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %61

20:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %35, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @WME_NUM_AC, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i32*, i32** @iwm_mvm_ac_to_tx_fifo, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 1, %30
  %32 = call i32 @htole32(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %21

38:                                               ; preds = %21
  %39 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @IWM_CMD_SYNC, align 4
  %42 = call i32 @iwm_mvm_flush_tx_path(%struct.iwm_softc* %39, i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %61

47:                                               ; preds = %38
  %48 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %49 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %50 = call i32 @IWM_VAP(%struct.ieee80211vap* %49)
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i32 @iwm_mvm_drain_sta(%struct.iwm_softc* %48, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %61

57:                                               ; preds = %47
  %58 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %59 = call i32 @iwm_mvm_rm_sta_common(%struct.iwm_softc* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %55, %45, %18
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @iwm_mvm_drain_sta(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @IWM_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @iwm_mvm_flush_tx_path(%struct.iwm_softc*, i32, i32) #1

declare dso_local i32 @iwm_mvm_rm_sta_common(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
