; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_scan_stop_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_scan_stop_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_notification_wait = type { i32 }

@iwm_mvm_scan_stop_wait.scan_done_notif = internal constant [2 x i32] [i32 129, i32 128], align 4
@IWM_DEBUG_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Preparing to stop scan\0A\00", align 1
@IWM_UCODE_TLV_CAPA_UMAC_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"couldn't stop scan\0A\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_mvm_scan_stop_wait(%struct.iwm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_notification_wait, align 4
  %5 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  %6 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %7 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @nitems(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @iwm_mvm_scan_stop_wait.scan_done_notif, i64 0, i64 0))
  %10 = call i32 @iwm_init_notification_wait(i32 %8, %struct.iwm_notification_wait* %4, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @iwm_mvm_scan_stop_wait.scan_done_notif, i64 0, i64 0), i32 %9, i32* null, i32* null)
  %11 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %12 = load i32, i32* @IWM_DEBUG_SCAN, align 4
  %13 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %11, i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %15 = load i32, i32* @IWM_UCODE_TLV_CAPA_UMAC_SCAN, align 4
  %16 = call i64 @iwm_fw_has_capa(%struct.iwm_softc* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %20 = call i32 @iwm_mvm_umac_scan_abort(%struct.iwm_softc* %19)
  store i32 %20, i32* %5, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %23 = call i32 @iwm_mvm_lmac_scan_abort(%struct.iwm_softc* %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %29 = load i32, i32* @IWM_DEBUG_SCAN, align 4
  %30 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %28, i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %32 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @iwm_remove_notification(i32 %33, %struct.iwm_notification_wait* %4)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %24
  %37 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %38 = call i32 @IWM_UNLOCK(%struct.iwm_softc* %37)
  %39 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %40 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @hz, align 4
  %43 = call i32 @iwm_wait_notification(i32 %41, %struct.iwm_notification_wait* %4, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %45 = call i32 @IWM_LOCK(%struct.iwm_softc* %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %36, %27
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @iwm_init_notification_wait(i32, %struct.iwm_notification_wait*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*) #1

declare dso_local i64 @iwm_fw_has_capa(%struct.iwm_softc*, i32) #1

declare dso_local i32 @iwm_mvm_umac_scan_abort(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_mvm_lmac_scan_abort(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_remove_notification(i32, %struct.iwm_notification_wait*) #1

declare dso_local i32 @IWM_UNLOCK(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_wait_notification(i32, %struct.iwm_notification_wait*, i32) #1

declare dso_local i32 @IWM_LOCK(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
