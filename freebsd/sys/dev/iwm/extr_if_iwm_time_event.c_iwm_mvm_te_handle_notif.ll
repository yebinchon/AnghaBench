; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_time_event.c_iwm_mvm_te_handle_notif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_time_event.c_iwm_mvm_te_handle_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, i32, i32 }
%struct.iwm_time_event_notif = type { i32, i32, i32 }

@IWM_DEBUG_TE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Handle time event notif - UID = 0x%x action %d\0A\00", align 1
@IWM_TE_V2_NOTIF_HOST_EVENT_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Time Event start notification failure\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Time Event end notification failure\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@IWM_TE_V2_NOTIF_HOST_EVENT_END = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"TE ended - current time %d, estimated end %d\0A\00", align 1
@ticks = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Got TE with unknown action\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwm_softc*, %struct.iwm_time_event_notif*)* @iwm_mvm_te_handle_notif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_mvm_te_handle_notif(%struct.iwm_softc* %0, %struct.iwm_time_event_notif* %1) #0 {
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_time_event_notif*, align 8
  %5 = alloca i8*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  store %struct.iwm_time_event_notif* %1, %struct.iwm_time_event_notif** %4, align 8
  %6 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %7 = load i32, i32* @IWM_DEBUG_TE, align 4
  %8 = load %struct.iwm_time_event_notif*, %struct.iwm_time_event_notif** %4, align 8
  %9 = getelementptr inbounds %struct.iwm_time_event_notif, %struct.iwm_time_event_notif* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le32toh(i32 %10)
  %12 = load %struct.iwm_time_event_notif*, %struct.iwm_time_event_notif** %4, align 8
  %13 = getelementptr inbounds %struct.iwm_time_event_notif, %struct.iwm_time_event_notif* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32toh(i32 %14)
  %16 = call i32 (%struct.iwm_softc*, i32, i8*, ...) @IWM_DPRINTF(%struct.iwm_softc* %6, i32 %7, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15)
  %17 = load %struct.iwm_time_event_notif*, %struct.iwm_time_event_notif** %4, align 8
  %18 = getelementptr inbounds %struct.iwm_time_event_notif, %struct.iwm_time_event_notif* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32toh(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %2
  %23 = load %struct.iwm_time_event_notif*, %struct.iwm_time_event_notif** %4, align 8
  %24 = getelementptr inbounds %struct.iwm_time_event_notif, %struct.iwm_time_event_notif* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IWM_TE_V2_NOTIF_HOST_EVENT_START, align 4
  %27 = call i32 @htole32(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %32

31:                                               ; preds = %22
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %32

32:                                               ; preds = %31, %30
  %33 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %34 = load i32, i32* @IWM_DEBUG_TE, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 (%struct.iwm_softc*, i32, i8*, ...) @IWM_DPRINTF(%struct.iwm_softc* %33, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %32, %2
  %38 = load %struct.iwm_time_event_notif*, %struct.iwm_time_event_notif** %4, align 8
  %39 = getelementptr inbounds %struct.iwm_time_event_notif, %struct.iwm_time_event_notif* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32toh(i32 %40)
  %42 = load i32, i32* @IWM_TE_V2_NOTIF_HOST_EVENT_END, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %47 = load i32, i32* @IWM_DEBUG_TE, align 4
  %48 = load i32, i32* @ticks, align 4
  %49 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %50 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.iwm_softc*, i32, i8*, ...) @IWM_DPRINTF(%struct.iwm_softc* %46, i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %54 = call i32 @iwm_mvm_te_clear_data(%struct.iwm_softc* %53)
  br label %78

55:                                               ; preds = %37
  %56 = load %struct.iwm_time_event_notif*, %struct.iwm_time_event_notif** %4, align 8
  %57 = getelementptr inbounds %struct.iwm_time_event_notif, %struct.iwm_time_event_notif* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32toh(i32 %58)
  %60 = load i32, i32* @IWM_TE_V2_NOTIF_HOST_EVENT_START, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load i32, i32* @ticks, align 4
  %65 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %66 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @TU_TO_HZ(i32 %67)
  %69 = add nsw i32 %64, %68
  %70 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %71 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %77

72:                                               ; preds = %55
  %73 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %74 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %72, %63
  br label %78

78:                                               ; preds = %77, %45
  ret void
}

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, ...) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @iwm_mvm_te_clear_data(%struct.iwm_softc*) #1

declare dso_local i32 @TU_TO_HZ(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
