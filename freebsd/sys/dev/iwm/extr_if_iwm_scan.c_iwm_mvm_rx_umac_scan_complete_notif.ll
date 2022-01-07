; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_rx_umac_scan_complete_notif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_rx_umac_scan_complete_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_rx_packet = type { i64 }
%struct.iwm_umac_scan_complete = type { i64, i32, i32 }

@IWM_DEBUG_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Scan completed, uid %u, status %s, EBS status %s\0A\00", align 1
@IWM_SCAN_EBS_SUCCESS = common dso_local global i64 0, align 8
@IWM_SCAN_EBS_INACTIVE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwm_mvm_rx_umac_scan_complete_notif(%struct.iwm_softc* %0, %struct.iwm_rx_packet* %1) #0 {
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_rx_packet*, align 8
  %5 = alloca %struct.iwm_umac_scan_complete*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  store %struct.iwm_rx_packet* %1, %struct.iwm_rx_packet** %4, align 8
  %6 = load %struct.iwm_rx_packet*, %struct.iwm_rx_packet** %4, align 8
  %7 = getelementptr inbounds %struct.iwm_rx_packet, %struct.iwm_rx_packet* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.iwm_umac_scan_complete*
  store %struct.iwm_umac_scan_complete* %10, %struct.iwm_umac_scan_complete** %5, align 8
  %11 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %12 = load i32, i32* @IWM_DEBUG_SCAN, align 4
  %13 = load %struct.iwm_umac_scan_complete*, %struct.iwm_umac_scan_complete** %5, align 8
  %14 = getelementptr inbounds %struct.iwm_umac_scan_complete, %struct.iwm_umac_scan_complete* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32toh(i32 %15)
  %17 = load %struct.iwm_umac_scan_complete*, %struct.iwm_umac_scan_complete** %5, align 8
  %18 = getelementptr inbounds %struct.iwm_umac_scan_complete, %struct.iwm_umac_scan_complete* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @iwm_mvm_offload_status_str(i32 %19)
  %21 = load %struct.iwm_umac_scan_complete*, %struct.iwm_umac_scan_complete** %5, align 8
  %22 = getelementptr inbounds %struct.iwm_umac_scan_complete, %struct.iwm_umac_scan_complete* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @iwm_mvm_ebs_status_str(i64 %23)
  %25 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %11, i32 %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i32 %24)
  %26 = load %struct.iwm_umac_scan_complete*, %struct.iwm_umac_scan_complete** %5, align 8
  %27 = getelementptr inbounds %struct.iwm_umac_scan_complete, %struct.iwm_umac_scan_complete* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IWM_SCAN_EBS_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = load %struct.iwm_umac_scan_complete*, %struct.iwm_umac_scan_complete** %5, align 8
  %33 = getelementptr inbounds %struct.iwm_umac_scan_complete, %struct.iwm_umac_scan_complete* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IWM_SCAN_EBS_INACTIVE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @FALSE, align 4
  %39 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %40 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %31, %2
  ret void
}

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @iwm_mvm_offload_status_str(i32) #1

declare dso_local i32 @iwm_mvm_ebs_status_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
