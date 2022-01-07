; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32, i32, i32*, i32, i64, i64, %struct.ieee80211com }
%struct.ieee80211com = type { i32, i32, i32 }
%struct.ieee80211vap = type { i32 }

@UATH_FLAG_INITDONE = common dso_local global i32 0, align 4
@WDCMSG_BIND = common dso_local global i32 0, align 4
@CFG_MAC_ADDR = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@CFG_RATE_CONTROL_ENABLE = common dso_local global i32 0, align 4
@CFG_DIVERSITY_CTL = common dso_local global i32 0, align 4
@CFG_ABOLT = common dso_local global i32 0, align 4
@CFG_WME_ENABLED = common dso_local global i32 0, align 4
@CFG_SERVICE_TYPE = common dso_local global i32 0, align 4
@CFG_TP_SCALE = common dso_local global i32 0, align 4
@CFG_TPC_HALF_DBM5 = common dso_local global i32 0, align 4
@CFG_TPC_HALF_DBM2 = common dso_local global i32 0, align 4
@CFG_OVERRD_TX_POWER = common dso_local global i32 0, align 4
@CFG_GMODE_PROTECTION = common dso_local global i32 0, align 4
@CFG_GMODE_PROTECT_RATE_INDEX = common dso_local global i32 0, align 4
@CFG_PROTECTION_TYPE = common dso_local global i32 0, align 4
@CFG_MODE_CTS = common dso_local global i32 0, align 4
@WDCMSG_TARGET_START = common dso_local global i32 0, align 4
@UATH_CMD_FLAG_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not start target, error %d\0A\00", align 1
@UATH_DEBUG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s returns handle: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"could not switch channel, error %d\0A\00", align 1
@TARGET_DEVICE_AWAKE = common dso_local global i32 0, align 4
@WDCMSG_SET_PWR_MODE = common dso_local global i32 0, align 4
@WDCMSG_RESET_KEY_CACHE = common dso_local global i32 0, align 4
@UATH_BULK_RX = common dso_local global i64 0, align 8
@UATH_FILTER_OP_INIT = common dso_local global i32 0, align 4
@UATH_FILTER_RX_UCAST = common dso_local global i32 0, align 4
@UATH_FILTER_RX_MCAST = common dso_local global i32 0, align 4
@UATH_FILTER_RX_BCAST = common dso_local global i32 0, align 4
@UATH_FILTER_RX_BEACON = common dso_local global i32 0, align 4
@UATH_FILTER_OP_SET = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@uath_watchdog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*)* @uath_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_init(%struct.uath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uath_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uath_softc* %0, %struct.uath_softc** %3, align 8
  %8 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %8, i32 0, i32 6
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 2
  %12 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %11)
  store %struct.ieee80211vap* %12, %struct.ieee80211vap** %5, align 8
  %13 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %14 = call i32 @UATH_ASSERT_LOCKED(%struct.uath_softc* %13)
  %15 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %16 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @UATH_FLAG_INITDONE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %23 = call i32 @uath_stop(%struct.uath_softc* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %26 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %28 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = call i32 @htobe32(i32 0)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %31 = load i32, i32* @WDCMSG_BIND, align 4
  %32 = call i32 @uath_cmd_write(%struct.uath_softc* %30, i32 %31, i32* %6, i32 4, i32 0)
  %33 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %34 = load i32, i32* @CFG_MAC_ADDR, align 4
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %36 = icmp ne %struct.ieee80211vap* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %45

41:                                               ; preds = %24
  %42 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i32 [ %40, %37 ], [ %44, %41 ]
  %47 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %48 = call i32 @uath_config_multi(%struct.uath_softc* %33, i32 %34, i32 %46, i32 %47)
  %49 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %50 = load i32, i32* @CFG_RATE_CONTROL_ENABLE, align 4
  %51 = call i32 @uath_config(%struct.uath_softc* %49, i32 %50, i32 1)
  %52 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %53 = load i32, i32* @CFG_DIVERSITY_CTL, align 4
  %54 = call i32 @uath_config(%struct.uath_softc* %52, i32 %53, i32 1)
  %55 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %56 = load i32, i32* @CFG_ABOLT, align 4
  %57 = call i32 @uath_config(%struct.uath_softc* %55, i32 %56, i32 63)
  %58 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %59 = load i32, i32* @CFG_WME_ENABLED, align 4
  %60 = call i32 @uath_config(%struct.uath_softc* %58, i32 %59, i32 1)
  %61 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %62 = load i32, i32* @CFG_SERVICE_TYPE, align 4
  %63 = call i32 @uath_config(%struct.uath_softc* %61, i32 %62, i32 1)
  %64 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %65 = load i32, i32* @CFG_TP_SCALE, align 4
  %66 = call i32 @uath_config(%struct.uath_softc* %64, i32 %65, i32 0)
  %67 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %68 = load i32, i32* @CFG_TPC_HALF_DBM5, align 4
  %69 = call i32 @uath_config(%struct.uath_softc* %67, i32 %68, i32 60)
  %70 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %71 = load i32, i32* @CFG_TPC_HALF_DBM2, align 4
  %72 = call i32 @uath_config(%struct.uath_softc* %70, i32 %71, i32 60)
  %73 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %74 = load i32, i32* @CFG_OVERRD_TX_POWER, align 4
  %75 = call i32 @uath_config(%struct.uath_softc* %73, i32 %74, i32 0)
  %76 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %77 = load i32, i32* @CFG_GMODE_PROTECTION, align 4
  %78 = call i32 @uath_config(%struct.uath_softc* %76, i32 %77, i32 0)
  %79 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %80 = load i32, i32* @CFG_GMODE_PROTECT_RATE_INDEX, align 4
  %81 = call i32 @uath_config(%struct.uath_softc* %79, i32 %80, i32 3)
  %82 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %83 = load i32, i32* @CFG_PROTECTION_TYPE, align 4
  %84 = call i32 @uath_config(%struct.uath_softc* %82, i32 %83, i32 0)
  %85 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %86 = load i32, i32* @CFG_MODE_CTS, align 4
  %87 = call i32 @uath_config(%struct.uath_softc* %85, i32 %86, i32 2)
  %88 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %89 = load i32, i32* @WDCMSG_TARGET_START, align 4
  %90 = load i32, i32* @UATH_CMD_FLAG_MAGIC, align 4
  %91 = call i32 @uath_cmd_read(%struct.uath_softc* %88, i32 %89, i32* null, i32 0, i32* %6, i32 4, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %45
  %95 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %96 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @device_printf(i32 %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %161

100:                                              ; preds = %45
  %101 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %102 = load i32, i32* @UATH_DEBUG_INIT, align 4
  %103 = load i32, i32* @WDCMSG_TARGET_START, align 4
  %104 = call i32 @uath_codename(i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @be32toh(i32 %105)
  %107 = call i32 @DPRINTF(%struct.uath_softc* %101, i32 %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %106)
  %108 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %109 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %110 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @uath_switch_channel(%struct.uath_softc* %108, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %100
  %116 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %117 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @device_printf(i32 %118, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %161

121:                                              ; preds = %100
  %122 = load i32, i32* @TARGET_DEVICE_AWAKE, align 4
  %123 = call i32 @htobe32(i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %125 = load i32, i32* @WDCMSG_SET_PWR_MODE, align 4
  %126 = call i32 @uath_cmd_write(%struct.uath_softc* %124, i32 %125, i32* %6, i32 4, i32 0)
  %127 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %128 = load i32, i32* @WDCMSG_RESET_KEY_CACHE, align 4
  %129 = call i32 @uath_cmd_write(%struct.uath_softc* %127, i32 %128, i32* null, i32 0, i32 0)
  %130 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %131 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @UATH_BULK_RX, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @usbd_transfer_start(i32 %135)
  %137 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %138 = load i32, i32* @UATH_FILTER_OP_INIT, align 4
  %139 = call i32 @uath_set_rxfilter(%struct.uath_softc* %137, i32 0, i32 %138)
  %140 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %141 = load i32, i32* @UATH_FILTER_RX_UCAST, align 4
  %142 = load i32, i32* @UATH_FILTER_RX_MCAST, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @UATH_FILTER_RX_BCAST, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @UATH_FILTER_RX_BEACON, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @UATH_FILTER_OP_SET, align 4
  %149 = call i32 @uath_set_rxfilter(%struct.uath_softc* %140, i32 %147, i32 %148)
  %150 = load i32, i32* @UATH_FLAG_INITDONE, align 4
  %151 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %152 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %156 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %155, i32 0, i32 1
  %157 = load i32, i32* @hz, align 4
  %158 = load i32, i32* @uath_watchdog, align 4
  %159 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %160 = call i32 @callout_reset(i32* %156, i32 %157, i32 %158, %struct.uath_softc* %159)
  store i32 0, i32* %2, align 4
  br label %165

161:                                              ; preds = %115, %94
  %162 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %163 = call i32 @uath_stop(%struct.uath_softc* %162)
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %161, %121
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @UATH_ASSERT_LOCKED(%struct.uath_softc*) #1

declare dso_local i32 @uath_stop(%struct.uath_softc*) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @uath_cmd_write(%struct.uath_softc*, i32, i32*, i32, i32) #1

declare dso_local i32 @uath_config_multi(%struct.uath_softc*, i32, i32, i32) #1

declare dso_local i32 @uath_config(%struct.uath_softc*, i32, i32) #1

declare dso_local i32 @uath_cmd_read(%struct.uath_softc*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @DPRINTF(%struct.uath_softc*, i32, i8*, i32, i32) #1

declare dso_local i32 @uath_codename(i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @uath_switch_channel(%struct.uath_softc*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @uath_set_rxfilter(%struct.uath_softc*, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.uath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
