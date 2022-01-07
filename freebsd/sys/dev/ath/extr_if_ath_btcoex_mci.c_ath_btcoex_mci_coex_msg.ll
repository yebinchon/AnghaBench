; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex_mci.c_ath_btcoex_mci_coex_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex_mci.c_ath_btcoex_mci_coex_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }

@ATH_DEBUG_BTCOEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"(MCI) Recv GPM COEX Version Query.\0A\00", align 1
@HAL_MCI_STATE_SEND_WLAN_COEX_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"(MCI) Recv GPM COEX Version Response.\0A\00", align 1
@MCI_GPM_COEX_B_MAJOR_VERSION = common dso_local global i32 0, align 4
@MCI_GPM_COEX_B_MINOR_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"(MCI) BT Coex version: %d.%d\0A\00", align 1
@HAL_MCI_STATE_SET_BT_COEX_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"(MCI) Recv GPM COEX Status Query = 0x%02x.\0A\00", align 1
@MCI_GPM_COEX_B_WLAN_BITMAP = common dso_local global i32 0, align 4
@HAL_MCI_STATE_SEND_WLAN_CHANNELS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"(MCI) TODO: Recv GPM COEX BT_Profile_Info.\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"(MCI) Recv GPM COEX BT_Status_Update: SEQ=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"(MCI) Unknown GPM COEX message = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, i32, i32*)* @ath_btcoex_mci_coex_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_btcoex_mci_coex_msg(%struct.ath_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %75 [
    i32 129, label %12
    i32 128, label %21
    i32 130, label %49
    i32 132, label %63
    i32 131, label %67
  ]

12:                                               ; preds = %3
  %13 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %14 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %15 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %13, i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HAL_MCI_STATE_SEND_WLAN_COEX_VERSION, align 4
  %20 = call i32 @ath_hal_btcoex_mci_state(i32 %18, i32 %19, i32* null)
  store i32 %20, i32* %7, align 4
  br label %80

21:                                               ; preds = %3
  %22 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %23 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %24 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %22, i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* @MCI_GPM_COEX_B_MAJOR_VERSION, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @MCI_GPM_COEX_B_MINOR_VERSION, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %36 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %35, i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HAL_MCI_STATE_SET_BT_COEX_VERSION, align 4
  %48 = call i32 @ath_hal_btcoex_mci_state(i32 %46, i32 %47, i32* %7)
  store i32 %48, i32* %7, align 4
  br label %80

49:                                               ; preds = %3
  %50 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %51 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @MCI_GPM_COEX_B_WLAN_BITMAP, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %50, i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %59 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HAL_MCI_STATE_SEND_WLAN_CHANNELS, align 4
  %62 = call i32 @ath_hal_btcoex_mci_state(i32 %60, i32 %61, i32* null)
  br label %80

63:                                               ; preds = %3
  %64 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %65 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %66 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %64, i32 %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %80

67:                                               ; preds = %3
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 12
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  %71 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %72 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %71, i32 %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  br label %80

75:                                               ; preds = %3
  %76 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %77 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (%struct.ath_softc*, i32, i8*, ...) @DPRINTF(%struct.ath_softc* %76, i32 %77, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %67, %63, %49, %21, %12
  ret void
}

declare dso_local i32 @DPRINTF(%struct.ath_softc*, i32, i8*, ...) #1

declare dso_local i32 @ath_hal_btcoex_mci_state(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
