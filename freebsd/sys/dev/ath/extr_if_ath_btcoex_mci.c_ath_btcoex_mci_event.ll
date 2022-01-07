; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex_mci.c_ath_btcoex_mci_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_btcoex_mci.c_ath_btcoex_mci_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32 }

@HAL_MCI_STATE_NEED_FLUSH_BT_INFO = common dso_local global i32 0, align 4
@HAL_MCI_STATE_ENABLE = common dso_local global i32 0, align 4
@ATH_DEBUG_BTCOEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"(MCI) Flush BT profile\0A\00", align 1
@HAL_MCI_STATE_SEND_STATUS_QUERY = common dso_local global i32 0, align 4
@ATH_COEX_EVENT_BT_NOOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"(MCI) BT_NOOP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, i64, i8*)* @ath_btcoex_mci_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_btcoex_mci_event(%struct.ath_softc* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %50

13:                                               ; preds = %3
  %14 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HAL_MCI_STATE_NEED_FLUSH_BT_INFO, align 4
  %18 = call i64 @ath_hal_btcoex_mci_state(i32 %16, i32 %17, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  %21 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HAL_MCI_STATE_ENABLE, align 4
  %25 = call i64 @ath_hal_btcoex_mci_state(i32 %23, i32 %24, i32* null)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %29 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %30 = call i32 @DPRINTF(%struct.ath_softc* %28, i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HAL_MCI_STATE_NEED_FLUSH_BT_INFO, align 4
  %35 = call i64 @ath_hal_btcoex_mci_state(i32 %33, i32 %34, i32* %7)
  %36 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %37 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HAL_MCI_STATE_SEND_STATUS_QUERY, align 4
  %40 = call i64 @ath_hal_btcoex_mci_state(i32 %38, i32 %39, i32* null)
  br label %41

41:                                               ; preds = %27, %20
  br label %42

42:                                               ; preds = %41, %13
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @ATH_COEX_EVENT_BT_NOOP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %48 = load i32, i32* @ATH_DEBUG_BTCOEX, align 4
  %49 = call i32 @DPRINTF(%struct.ath_softc* %47, i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %12, %46, %42
  ret void
}

declare dso_local i64 @ath_hal_btcoex_mci_state(i32, i32, i32*) #1

declare dso_local i32 @DPRINTF(%struct.ath_softc*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
