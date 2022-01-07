; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_lmac_scan_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_lmac_scan_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_host_cmd = type { i32, i32, i32, i32 }

@IWM_CMD_SYNC = common dso_local global i32 0, align 4
@IWM_SCAN_OFFLOAD_ABORT_CMD = common dso_local global i32 0, align 4
@IWM_CAN_ABORT_STATUS = common dso_local global i64 0, align 8
@IWM_DEBUG_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SCAN OFFLOAD ABORT ret %d.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*)* @iwm_mvm_lmac_scan_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_lmac_scan_abort(%struct.iwm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwm_host_cmd, align 4
  %6 = alloca i64, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  %7 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %5, i32 0, i32 0
  %8 = load i32, i32* @IWM_CMD_SYNC, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %5, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %5, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %5, i32 0, i32 3
  %12 = load i32, i32* @IWM_SCAN_OFFLOAD_ABORT_CMD, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %14 = call i32 @iwm_mvm_send_cmd_status(%struct.iwm_softc* %13, %struct.iwm_host_cmd* %5, i64* %6)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @IWM_CAN_ABORT_STATUS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %25 = load i32, i32* @IWM_DEBUG_SCAN, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %24, i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %17
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @iwm_mvm_send_cmd_status(%struct.iwm_softc*, %struct.iwm_host_cmd*, i64*) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
