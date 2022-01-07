; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex_mci.c_ath_btcoex_mci_cal_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex_mci.c_ath_btcoex_mci_cal_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }

@ATH_DEBUG_BTCOEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"(MCI) receive BT_CAL_REQ\0A\00", align 1
@HAL_MCI_STATE_BT = common dso_local global i32 0, align 4
@MCI_BT_AWAKE = common dso_local global i32 0, align 4
@HAL_MCI_STATE_SET_BT_CAL_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"(MCI) State mismatches: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"(MCI) receive BT_CAL_DONE\0A\00", align 1
@MCI_BT_CAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"(MCI) ERROR ILLEGAL!\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"(MCI) BT not in CAL state.\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"(MCI) receive BT_CAL_GRANT\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"(MCI) Send WLAN_CAL_DONE\0A\00", align 1
@MCI_GPM_WLAN_CAL_DONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"(MCI) Unknown GPM CAL message.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, i32, i32*)* @ath_btcoex_mci_cal_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_btcoex_mci_cal_msg(%struct.ath_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32], align 16
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 16, i1 false)
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %72 [
    i32 128, label %10
    i32 130, label %39
    i32 129, label %59
  ]

10:                                               ; preds = %3
  %11 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %12 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %13 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %11, i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HAL_MCI_STATE_BT, align 4
  %18 = call i32 @ath_hal_btcoex_mci_state(i32 %16, i32 %17, i32* null)
  %19 = load i32, i32* @MCI_BT_AWAKE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %10
  %22 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HAL_MCI_STATE_SET_BT_CAL_START, align 4
  %26 = call i32 @ath_hal_btcoex_mci_state(i32 %24, i32 %25, i32* null)
  %27 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %28 = call i32 @ath_btcoex_mci_bt_cal_do(%struct.ath_softc* %27, i32 1000, i32 1000)
  br label %38

29:                                               ; preds = %10
  %30 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %31 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %32 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HAL_MCI_STATE_BT, align 4
  %36 = call i32 @ath_hal_btcoex_mci_state(i32 %34, i32 %35, i32* null)
  %37 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %30, i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %29, %21
  br label %76

39:                                               ; preds = %3
  %40 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %41 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %42 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %40, i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HAL_MCI_STATE_BT, align 4
  %47 = call i32 @ath_hal_btcoex_mci_state(i32 %45, i32 %46, i32* null)
  %48 = load i32, i32* @MCI_BT_CAL, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %52 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %53 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %51, i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %58

54:                                               ; preds = %39
  %55 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %56 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %57 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %55, i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %50
  br label %76

59:                                               ; preds = %3
  %60 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %61 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %62 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %60, i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %64 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %65 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %63, i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %67 = load i32, i32* @MCI_GPM_WLAN_CAL_DONE, align 4
  %68 = call i32 @MCI_GPM_SET_CAL_TYPE(i32* %66, i32 %67)
  %69 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %71 = call i32 @ath_btcoex_mci_send_gpm(%struct.ath_softc* %69, i32* %70)
  br label %76

72:                                               ; preds = %3
  %73 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %74 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %75 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %73, i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %59, %58, %38
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DPRINTF(%struct.ath_softc*, i32, i8*, ...) #2

declare dso_local i32 @ath_hal_btcoex_mci_state(i32, i32, i32*) #2

declare dso_local i32 @ath_btcoex_mci_bt_cal_do(%struct.ath_softc*, i32, i32) #2

declare dso_local i32 @MCI_GPM_SET_CAL_TYPE(i32*, i32) #2

declare dso_local i32 @ath_btcoex_mci_send_gpm(%struct.ath_softc*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
