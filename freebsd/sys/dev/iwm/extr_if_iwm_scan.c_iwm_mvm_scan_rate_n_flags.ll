; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_scan_rate_n_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_scan_rate_n_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }

@IWM_RATE_MCS_ANT_NUM = common dso_local global i32 0, align 4
@IWM_RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_2GHZ = common dso_local global i32 0, align 4
@IWM_RATE_1M_PLCP = common dso_local global i32 0, align 4
@IWM_RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@IWM_RATE_6M_PLCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, i32, i32)* @iwm_mvm_scan_rate_n_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_scan_rate_n_flags(%struct.iwm_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwm_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %12 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  br label %14

14:                                               ; preds = %34, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @IWM_RATE_MCS_ANT_NUM, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* @IWM_RATE_MCS_ANT_NUM, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %24 = call i32 @iwm_mvm_get_valid_tx_ant(%struct.iwm_softc* %23)
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %32 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %37

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %14

37:                                               ; preds = %29, %14
  %38 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %39 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* @IWM_RATE_MCS_ANT_POS, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %37
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @IWM_RATE_1M_PLCP, align 4
  %53 = load i32, i32* @IWM_RATE_MCS_CCK_MSK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @htole32(i32 %56)
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %48, %37
  %59 = load i32, i32* @IWM_RATE_6M_PLCP, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @htole32(i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %58, %51
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @iwm_mvm_get_valid_tx_ant(%struct.iwm_softc*) #1

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
