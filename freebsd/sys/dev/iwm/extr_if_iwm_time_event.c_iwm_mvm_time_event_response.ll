; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_time_event.c_iwm_mvm_time_event_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_time_event.c_iwm_mvm_time_event_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i64 }
%struct.iwm_rx_packet = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.iwm_time_event_resp = type { i32, i32 }

@IWM_TIME_EVENT_CMD = common dso_local global i64 0, align 8
@IWM_DEBUG_TE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid TIME_EVENT_CMD response\0A\00", align 1
@IWM_TE_BSS_STA_AGGRESSIVE_ASSOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Got TIME_EVENT_CMD response with wrong id: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"TIME_EVENT_CMD response - UID = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.iwm_rx_packet*, i8*)* @iwm_mvm_time_event_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_time_event_response(%struct.iwm_softc* %0, %struct.iwm_rx_packet* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwm_softc*, align 8
  %6 = alloca %struct.iwm_rx_packet*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iwm_time_event_resp*, align 8
  %9 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %5, align 8
  store %struct.iwm_rx_packet* %1, %struct.iwm_rx_packet** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.iwm_rx_packet*, %struct.iwm_rx_packet** %6, align 8
  %11 = call i32 @iwm_rx_packet_payload_len(%struct.iwm_rx_packet* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.iwm_rx_packet*, %struct.iwm_rx_packet** %6, align 8
  %13 = getelementptr inbounds %struct.iwm_rx_packet, %struct.iwm_rx_packet* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IWM_TIME_EVENT_CMD, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 8
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %3
  %23 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %24 = load i32, i32* @IWM_DEBUG_TE, align 4
  %25 = call i32 (%struct.iwm_softc*, i32, i8*, ...) @IWM_DPRINTF(%struct.iwm_softc* %23, i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %59

26:                                               ; preds = %18
  %27 = load %struct.iwm_rx_packet*, %struct.iwm_rx_packet** %6, align 8
  %28 = getelementptr inbounds %struct.iwm_rx_packet, %struct.iwm_rx_packet* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.iwm_time_event_resp*
  store %struct.iwm_time_event_resp* %31, %struct.iwm_time_event_resp** %8, align 8
  %32 = load %struct.iwm_time_event_resp*, %struct.iwm_time_event_resp** %8, align 8
  %33 = getelementptr inbounds %struct.iwm_time_event_resp, %struct.iwm_time_event_resp* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le32toh(i32 %34)
  %36 = load i64, i64* @IWM_TE_BSS_STA_AGGRESSIVE_ASSOC, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %40 = load i32, i32* @IWM_DEBUG_TE, align 4
  %41 = load %struct.iwm_time_event_resp*, %struct.iwm_time_event_resp** %8, align 8
  %42 = getelementptr inbounds %struct.iwm_time_event_resp, %struct.iwm_time_event_resp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le32toh(i32 %43)
  %45 = call i32 (%struct.iwm_softc*, i32, i8*, ...) @IWM_DPRINTF(%struct.iwm_softc* %39, i32 %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  store i32 0, i32* %4, align 4
  br label %59

46:                                               ; preds = %26
  %47 = load %struct.iwm_time_event_resp*, %struct.iwm_time_event_resp** %8, align 8
  %48 = getelementptr inbounds %struct.iwm_time_event_resp, %struct.iwm_time_event_resp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le32toh(i32 %49)
  %51 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %52 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %54 = load i32, i32* @IWM_DEBUG_TE, align 4
  %55 = load %struct.iwm_softc*, %struct.iwm_softc** %5, align 8
  %56 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (%struct.iwm_softc*, i32, i8*, ...) @IWM_DPRINTF(%struct.iwm_softc* %53, i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %46, %38, %22
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @iwm_rx_packet_payload_len(%struct.iwm_rx_packet*) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, ...) #1

declare dso_local i64 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
