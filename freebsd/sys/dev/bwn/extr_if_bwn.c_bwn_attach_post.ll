; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_attach_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_attach_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_softc = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_5__, %struct.ieee80211com }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211com = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bwn_softc* }
%struct.TYPE_6__ = type { i32 }

@IEEE80211_T_OFDM = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i32 0, align 4
@IEEE80211_C_STA = common dso_local global i32 0, align 4
@IEEE80211_C_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_C_AHDEMO = common dso_local global i32 0, align 4
@IEEE80211_C_SHPREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_C_SHSLOT = common dso_local global i32 0, align 4
@IEEE80211_C_WME = common dso_local global i32 0, align 4
@IEEE80211_C_WPA = common dso_local global i32 0, align 4
@IEEE80211_C_TXPMGT = common dso_local global i32 0, align 4
@IEEE80211_FEXT_SWBMISS = common dso_local global i32 0, align 4
@BHND_NVAR_IL0MACADDR = common dso_local global i8* null, align 8
@BHND_NVAR_ET1MACADDR = common dso_local global i8* null, align 8
@BHND_NVAR_MACADDR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"missing MAC address variable for D11 core %u\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BHND_NVRAM_TYPE_UINT8_ARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"error reading %s: %d\0A\00", align 1
@bwn_raw_xmit = common dso_local global i32 0, align 4
@bwn_updateslot = common dso_local global i32 0, align 4
@bwn_update_promisc = common dso_local global i32 0, align 4
@bwn_wme_update = common dso_local global i32 0, align 4
@bwn_scan_start = common dso_local global i32 0, align 4
@bwn_scan_end = common dso_local global i32 0, align 4
@bwn_set_channel = common dso_local global i32 0, align 4
@bwn_vap_create = common dso_local global i32 0, align 4
@bwn_vap_delete = common dso_local global i32 0, align 4
@bwn_transmit = common dso_local global i32 0, align 4
@bwn_parent = common dso_local global i32 0, align 4
@BWN_TX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@BWN_RX_RADIOTAP_PRESENT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@IEEE80211_C_BGSCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_softc*)* @bwn_attach_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_attach_post(%struct.bwn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bwn_softc* %0, %struct.bwn_softc** %3, align 8
  %8 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %8, i32 0, i32 4
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 18
  store %struct.bwn_softc* %10, %struct.bwn_softc** %12, align 8
  %13 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @device_get_nameunit(i32 %15)
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %17, i32 0, i32 17
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @IEEE80211_T_OFDM, align 4
  %20 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %20, i32 0, i32 16
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @IEEE80211_M_STA, align 4
  %23 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %23, i32 0, i32 15
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @IEEE80211_C_STA, align 4
  %26 = load i32, i32* @IEEE80211_C_MONITOR, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @IEEE80211_C_AHDEMO, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IEEE80211_C_SHPREAMBLE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @IEEE80211_C_SHSLOT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @IEEE80211_C_WME, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IEEE80211_C_WPA, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @IEEE80211_C_TXPMGT, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @IEEE80211_FEXT_SWBMISS, align 4
  %43 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %43, i32 0, i32 14
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %48 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @bhnd_get_core_unit(i32 %49)
  store i32 %50, i32* %6, align 4
  store i8* null, i8** %5, align 8
  %51 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %52 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sle i32 %54, 2
  br i1 %55, label %56, label %68

56:                                               ; preds = %1
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i8*, i8** @BHND_NVAR_IL0MACADDR, align 8
  store i8* %60, i8** %5, align 8
  br label %67

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i8*, i8** @BHND_NVAR_ET1MACADDR, align 8
  store i8* %65, i8** %5, align 8
  br label %66

66:                                               ; preds = %64, %61
  br label %67

67:                                               ; preds = %66, %59
  br label %74

68:                                               ; preds = %1
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i8*, i8** @BHND_NVAR_MACADDR, align 8
  store i8* %72, i8** %5, align 8
  br label %73

73:                                               ; preds = %71, %68
  br label %74

74:                                               ; preds = %73, %67
  %75 = load i8*, i8** %5, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %79 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i32, i8*, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ENXIO, align 4
  store i32 %83, i32* %2, align 4
  br label %161

84:                                               ; preds = %74
  %85 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %86 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %90 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @BHND_NVRAM_TYPE_UINT8_ARRAY, align 4
  %93 = call i32 @bhnd_nvram_getvar_array(i32 %87, i8* %88, i32 %91, i32 4, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %84
  %97 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %98 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %100, i32 %101)
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %161

104:                                              ; preds = %84
  %105 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %106 = call i32 @ieee80211_ifattach(%struct.ieee80211com* %105)
  %107 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %108 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %107, i32 0, i32 1
  store i32 4, i32* %108, align 4
  %109 = load i32, i32* @bwn_raw_xmit, align 4
  %110 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %111 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %110, i32 0, i32 12
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @bwn_updateslot, align 4
  %113 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %114 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %113, i32 0, i32 11
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @bwn_update_promisc, align 4
  %116 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %117 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %116, i32 0, i32 10
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @bwn_wme_update, align 4
  %119 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %120 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %119, i32 0, i32 9
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* @bwn_scan_start, align 4
  %123 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %124 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %123, i32 0, i32 8
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @bwn_scan_end, align 4
  %126 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %127 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @bwn_set_channel, align 4
  %129 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %130 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @bwn_vap_create, align 4
  %132 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %133 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @bwn_vap_delete, align 4
  %135 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %136 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @bwn_transmit, align 4
  %138 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %139 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @bwn_parent, align 4
  %141 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %142 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %144 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %145 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* @BWN_TX_RADIOTAP_PRESENT, align 4
  %148 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %149 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* @BWN_RX_RADIOTAP_PRESENT, align 4
  %152 = call i32 @ieee80211_radiotap_attach(%struct.ieee80211com* %143, i32* %146, i32 4, i32 %147, i32* %150, i32 4, i32 %151)
  %153 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %154 = call i32 @bwn_sysctl_node(%struct.bwn_softc* %153)
  %155 = load i64, i64* @bootverbose, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %104
  %158 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %159 = call i32 @ieee80211_announce(%struct.ieee80211com* %158)
  br label %160

160:                                              ; preds = %157, %104
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %96, %77
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bhnd_get_core_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bhnd_nvram_getvar_array(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ieee80211_ifattach(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_radiotap_attach(%struct.ieee80211com*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @bwn_sysctl_node(%struct.bwn_softc*) #1

declare dso_local i32 @ieee80211_announce(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
