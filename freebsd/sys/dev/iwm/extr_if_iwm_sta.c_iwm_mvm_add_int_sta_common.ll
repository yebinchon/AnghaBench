; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_sta.c_iwm_mvm_add_int_sta_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_sta.c_iwm_mvm_add_int_sta_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwm_int_sta = type { i64, i32 }
%struct.iwm_mvm_add_sta_cmd = type { i64, i32, i32, i8*, i32, i8* }

@IWM_AUX_STA_ID = common dso_local global i64 0, align 8
@IWM_STA_AUX_ACTIVITY = common dso_local global i32 0, align 4
@IWM_ADD_STA = common dso_local global i32 0, align 4
@IWM_ADD_STA_STATUS_MASK = common dso_local global i32 0, align 4
@IWM_DEBUG_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Internal station added.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Add internal station failed, status=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.iwm_int_sta*, i32*, i32, i32)* @iwm_mvm_add_int_sta_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_add_int_sta_common(%struct.iwm_softc* %0, %struct.iwm_int_sta* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwm_softc*, align 8
  %8 = alloca %struct.iwm_int_sta*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwm_mvm_add_sta_cmd, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %7, align 8
  store %struct.iwm_int_sta* %1, %struct.iwm_int_sta** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = call i32 @memset(%struct.iwm_mvm_add_sta_cmd* %12, i32 0, i32 40)
  %16 = load %struct.iwm_int_sta*, %struct.iwm_int_sta** %8, align 8
  %17 = getelementptr inbounds %struct.iwm_int_sta, %struct.iwm_int_sta* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %12, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @IWM_FW_CMD_ID_AND_COLOR(i32 %20, i32 %21)
  %23 = call i8* @htole32(i32 %22)
  %24 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %12, i32 0, i32 5
  store i8* %23, i8** %24, align 8
  %25 = load %struct.iwm_int_sta*, %struct.iwm_int_sta** %8, align 8
  %26 = getelementptr inbounds %struct.iwm_int_sta, %struct.iwm_int_sta* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IWM_AUX_STA_ID, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %5
  %31 = load %struct.iwm_softc*, %struct.iwm_softc** %7, align 8
  %32 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @IWM_STA_AUX_ACTIVITY, align 4
  %39 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %12, i32 0, i32 4
  store i32 %38, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %30, %5
  %41 = load %struct.iwm_int_sta*, %struct.iwm_int_sta** %8, align 8
  %42 = getelementptr inbounds %struct.iwm_int_sta, %struct.iwm_int_sta* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @htole32(i32 %43)
  %45 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %12, i32 0, i32 3
  store i8* %44, i8** %45, align 8
  %46 = call i32 @htole16(i32 65535)
  %47 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %12, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.iwm_mvm_add_sta_cmd, %struct.iwm_mvm_add_sta_cmd* %12, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @IEEE80211_ADDR_COPY(i32 %52, i32* %53)
  br label %55

55:                                               ; preds = %50, %40
  %56 = load %struct.iwm_softc*, %struct.iwm_softc** %7, align 8
  %57 = load i32, i32* @IWM_ADD_STA, align 4
  %58 = load %struct.iwm_softc*, %struct.iwm_softc** %7, align 8
  %59 = call i32 @iwm_mvm_add_sta_cmd_size(%struct.iwm_softc* %58)
  %60 = call i32 @iwm_mvm_send_cmd_pdu_status(%struct.iwm_softc* %56, i32 %57, i32 %59, %struct.iwm_mvm_add_sta_cmd* %12, i32* %14)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %6, align 4
  br label %82

65:                                               ; preds = %55
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @IWM_ADD_STA_STATUS_MASK, align 4
  %68 = and i32 %66, %67
  switch i32 %68, label %73 [
    i32 128, label %69
  ]

69:                                               ; preds = %65
  %70 = load %struct.iwm_softc*, %struct.iwm_softc** %7, align 8
  %71 = load i32, i32* @IWM_DEBUG_NODE, align 4
  %72 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %70, i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %82

73:                                               ; preds = %65
  %74 = load i32, i32* @EIO, align 4
  store i32 %74, i32* %13, align 4
  %75 = load %struct.iwm_softc*, %struct.iwm_softc** %7, align 8
  %76 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %69, %63
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @memset(%struct.iwm_mvm_add_sta_cmd*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @IWM_FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32*) #1

declare dso_local i32 @iwm_mvm_send_cmd_pdu_status(%struct.iwm_softc*, i32, i32, %struct.iwm_mvm_add_sta_cmd*, i32*) #1

declare dso_local i32 @iwm_mvm_add_sta_cmd_size(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
