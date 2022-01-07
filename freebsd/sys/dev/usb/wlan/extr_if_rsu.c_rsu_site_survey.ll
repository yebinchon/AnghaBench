; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_site_survey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_site_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsu_softc = type { i32, i32, i64 }
%struct.ieee80211_scan_ssid = type { i32, i32 }
%struct.r92s_fw_cmd_sitesurvey = type { i8*, i32, i8*, i8* }

@R92S_CMD_SITE_SURVEY = common dso_local global i32 0, align 4
@RSU_DEBUG_FWCMD = common dso_local global i32 0, align 4
@RSU_DEBUG_SCAN = common dso_local global i32 0, align 4
@rsu_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsu_softc*, %struct.ieee80211_scan_ssid*)* @rsu_site_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsu_site_survey(%struct.rsu_softc* %0, %struct.ieee80211_scan_ssid* %1) #0 {
  %3 = alloca %struct.rsu_softc*, align 8
  %4 = alloca %struct.ieee80211_scan_ssid*, align 8
  %5 = alloca %struct.r92s_fw_cmd_sitesurvey, align 8
  store %struct.rsu_softc* %0, %struct.rsu_softc** %3, align 8
  store %struct.ieee80211_scan_ssid* %1, %struct.ieee80211_scan_ssid** %4, align 8
  %6 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %7 = call i32 @RSU_ASSERT_LOCKED(%struct.rsu_softc* %6)
  %8 = call i32 @memset(%struct.r92s_fw_cmd_sitesurvey* %5, i32 0, i32 32)
  %9 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i8* @htole32(i32 1)
  %15 = getelementptr inbounds %struct.r92s_fw_cmd_sitesurvey, %struct.r92s_fw_cmd_sitesurvey* %5, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = call i8* @htole32(i32 48)
  %18 = getelementptr inbounds %struct.r92s_fw_cmd_sitesurvey, %struct.r92s_fw_cmd_sitesurvey* %5, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = load %struct.ieee80211_scan_ssid*, %struct.ieee80211_scan_ssid** %4, align 8
  %20 = icmp ne %struct.ieee80211_scan_ssid* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %16
  %22 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %23 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.ieee80211_scan_ssid*, %struct.ieee80211_scan_ssid** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_scan_ssid, %struct.ieee80211_scan_ssid* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @htole32(i32 %26)
  %28 = getelementptr inbounds %struct.r92s_fw_cmd_sitesurvey, %struct.r92s_fw_cmd_sitesurvey* %5, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.r92s_fw_cmd_sitesurvey, %struct.r92s_fw_cmd_sitesurvey* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ieee80211_scan_ssid*, %struct.ieee80211_scan_ssid** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_scan_ssid, %struct.ieee80211_scan_ssid* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ieee80211_scan_ssid*, %struct.ieee80211_scan_ssid** %4, align 8
  %35 = getelementptr inbounds %struct.ieee80211_scan_ssid, %struct.ieee80211_scan_ssid* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i32 %30, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %21, %16
  %39 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %40 = load i32, i32* @R92S_CMD_SITE_SURVEY, align 4
  %41 = call i32 @rsu_fw_cmd(%struct.rsu_softc* %39, i32 %40, %struct.r92s_fw_cmd_sitesurvey* %5, i32 32)
  ret i32 %41
}

declare dso_local i32 @RSU_ASSERT_LOCKED(%struct.rsu_softc*) #1

declare dso_local i32 @memset(%struct.r92s_fw_cmd_sitesurvey*, i32, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rsu_fw_cmd(%struct.rsu_softc*, i32, %struct.r92s_fw_cmd_sitesurvey*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
