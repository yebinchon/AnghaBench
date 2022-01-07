; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_fw.c_r12a_iq_calib_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_fw.c_r12a_iq_calib_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.TYPE_2__, %struct.r12a_softc* }
%struct.TYPE_2__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.r12a_softc = type { i32, i32, i32 }
%struct.r12a_fw_cmd_iq_calib = type { i32, i32, i32 }

@R12A_IQK_RUNNING = common dso_local global i32 0, align 4
@RTWN_DEBUG_CALIB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Starting IQ calibration (FW)\0A\00", align 1
@RTWN_CMD_IQ_BAND_5GHZ = common dso_local global i32 0, align 4
@RTWN_CMD_IQ_BAND_2GHZ = common dso_local global i32 0, align 4
@RTWN_CMD_IQ_CHAN_WIDTH_40 = common dso_local global i32 0, align 4
@RTWN_CMD_IQ_CHAN_WIDTH_20 = common dso_local global i32 0, align 4
@R12A_CMD_IQ_CALIBRATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"error while sending IQ calibration command to FW!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r12a_iq_calib_fw(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r12a_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.r12a_fw_cmd_iq_calib, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %7 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %6, i32 0, i32 1
  %8 = load %struct.r12a_softc*, %struct.r12a_softc** %7, align 8
  store %struct.r12a_softc* %8, %struct.r12a_softc** %3, align 8
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %10 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  store %struct.ieee80211_channel* %12, %struct.ieee80211_channel** %4, align 8
  %13 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %14 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @R12A_IQK_RUNNING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %77

20:                                               ; preds = %1
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %22 = load i32, i32* @RTWN_DEBUG_CALIB, align 4
  %23 = call i32 @RTWN_DPRINTF(%struct.rtwn_softc* %21, i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %25 = call i32 @rtwn_chan2centieee(%struct.ieee80211_channel* %24)
  %26 = getelementptr inbounds %struct.r12a_fw_cmd_iq_calib, %struct.r12a_fw_cmd_iq_calib* %5, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %28 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @RTWN_CMD_IQ_BAND_5GHZ, align 4
  %32 = getelementptr inbounds %struct.r12a_fw_cmd_iq_calib, %struct.r12a_fw_cmd_iq_calib* %5, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  br label %36

33:                                               ; preds = %20
  %34 = load i32, i32* @RTWN_CMD_IQ_BAND_2GHZ, align 4
  %35 = getelementptr inbounds %struct.r12a_fw_cmd_iq_calib, %struct.r12a_fw_cmd_iq_calib* %5, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %38 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @RTWN_CMD_IQ_CHAN_WIDTH_40, align 4
  %42 = getelementptr inbounds %struct.r12a_fw_cmd_iq_calib, %struct.r12a_fw_cmd_iq_calib* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load i32, i32* @RTWN_CMD_IQ_CHAN_WIDTH_20, align 4
  %47 = getelementptr inbounds %struct.r12a_fw_cmd_iq_calib, %struct.r12a_fw_cmd_iq_calib* %5, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %52 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @RTWN_CMD_IQ_EXT_PA_5G(i32 %53)
  %55 = getelementptr inbounds %struct.r12a_fw_cmd_iq_calib, %struct.r12a_fw_cmd_iq_calib* %5, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %57 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @RTWN_CMD_IQ_EXT_LNA_5G(i32 %58)
  %60 = getelementptr inbounds %struct.r12a_fw_cmd_iq_calib, %struct.r12a_fw_cmd_iq_calib* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  %63 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %64 = load i32, i32* @R12A_CMD_IQ_CALIBRATE, align 4
  %65 = call i64 @r88e_fw_cmd(%struct.rtwn_softc* %63, i32 %64, %struct.r12a_fw_cmd_iq_calib* %5, i32 12)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %50
  %68 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %69 = load i32, i32* @RTWN_DEBUG_CALIB, align 4
  %70 = call i32 @RTWN_DPRINTF(%struct.rtwn_softc* %68, i32 %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %77

71:                                               ; preds = %50
  %72 = load i32, i32* @R12A_IQK_RUNNING, align 4
  %73 = load %struct.r12a_softc*, %struct.r12a_softc** %3, align 8
  %74 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %67, %19
  ret void
}

declare dso_local i32 @RTWN_DPRINTF(%struct.rtwn_softc*, i32, i8*) #1

declare dso_local i32 @rtwn_chan2centieee(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local i32 @RTWN_CMD_IQ_EXT_PA_5G(i32) #1

declare dso_local i32 @RTWN_CMD_IQ_EXT_LNA_5G(i32) #1

declare dso_local i64 @r88e_fw_cmd(%struct.rtwn_softc*, i32, %struct.r12a_fw_cmd_iq_calib*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
