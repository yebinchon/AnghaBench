; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_notification_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_notification_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.iwi_notif = type { i32, i32, i32 }
%struct.ieee80211vap = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.iwi_notif_scan_channel = type { i32 }
%struct.iwi_notif_scan_complete = type { i32, i32 }
%struct.iwi_notif_authentication = type { i32 }
%struct.iwi_notif_association = type { i32 }
%struct.iwi_notif_beacon_state = type { i32, i32 }
%struct.ieee80211_frame = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Scan of channel %u complete (%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Scan completed (%u, %u)\0A\00", align 1
@IWI_FW_SCANNING = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i32 0, align 4
@IWI_SCAN_COMPLETED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Authentication succeeeded\0A\00", align 1
@IEEE80211_S_ASSOC = common dso_local global i32 0, align 4
@IWI_FLAG_ASSOCIATED = common dso_local global i32 0, align 4
@IEEE80211_S_RUN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Authentication failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Deauthenticated\0A\00", align 1
@IEEE80211_S_SCAN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [71 x i8] c"Initial authentication handshake failed; you probably need shared key\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"unknown authentication state %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Association succeeded\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Association failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Dissassociated\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"unknown association state %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Beacon state (%u, %u)\0A\00", align 1
@IWI_BEACON_MISS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"Beacon miss: %u >= %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Notification (%u)\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"unknown notification type %u flags 0x%x len %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*, %struct.iwi_notif*)* @iwi_notification_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_notification_intr(%struct.iwi_softc* %0, %struct.iwi_notif* %1) #0 {
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca %struct.iwi_notif*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca %struct.iwi_notif_scan_channel*, align 8
  %8 = alloca %struct.iwi_notif_scan_complete*, align 8
  %9 = alloca %struct.iwi_notif_authentication*, align 8
  %10 = alloca %struct.iwi_notif_association*, align 8
  %11 = alloca %struct.iwi_notif_beacon_state*, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %3, align 8
  store %struct.iwi_notif* %1, %struct.iwi_notif** %4, align 8
  %12 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %12, i32 0, i32 6
  store %struct.ieee80211com* %13, %struct.ieee80211com** %5, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %15)
  store %struct.ieee80211vap* %16, %struct.ieee80211vap** %6, align 8
  %17 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %18 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %268 [
    i32 129, label %20
    i32 128, label %36
    i32 134, label %72
    i32 135, label %135
    i32 133, label %207
    i32 132, label %257
    i32 130, label %257
    i32 131, label %264
  ]

20:                                               ; preds = %2
  %21 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %22 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %21, i64 1
  %23 = bitcast %struct.iwi_notif* %22 to %struct.iwi_notif_scan_channel*
  store %struct.iwi_notif_scan_channel* %23, %struct.iwi_notif_scan_channel** %7, align 8
  %24 = load %struct.iwi_notif_scan_channel*, %struct.iwi_notif_scan_channel** %7, align 8
  %25 = getelementptr inbounds %struct.iwi_notif_scan_channel, %struct.iwi_notif_scan_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ieee80211_ieee2mhz(i32 %26, i32 0)
  %28 = load %struct.iwi_notif_scan_channel*, %struct.iwi_notif_scan_channel** %7, align 8
  %29 = getelementptr inbounds %struct.iwi_notif_scan_channel, %struct.iwi_notif_scan_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @DPRINTFN(i32 3, i8* %32)
  %34 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %35 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %34, i32 0, i32 0
  store i32 3, i32* %35, align 4
  br label %282

36:                                               ; preds = %2
  %37 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %38 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %37, i64 1
  %39 = bitcast %struct.iwi_notif* %38 to %struct.iwi_notif_scan_complete*
  store %struct.iwi_notif_scan_complete* %39, %struct.iwi_notif_scan_complete** %8, align 8
  %40 = load %struct.iwi_notif_scan_complete*, %struct.iwi_notif_scan_complete** %8, align 8
  %41 = getelementptr inbounds %struct.iwi_notif_scan_complete, %struct.iwi_notif_scan_complete* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iwi_notif_scan_complete*, %struct.iwi_notif_scan_complete** %8, align 8
  %44 = getelementptr inbounds %struct.iwi_notif_scan_complete, %struct.iwi_notif_scan_complete* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @DPRINTFN(i32 2, i8* %47)
  %49 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %50 = load i32, i32* @IWI_FW_SCANNING, align 4
  %51 = call i32 @IWI_STATE_END(%struct.iwi_softc* %49, i32 %50)
  %52 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IEEE80211_M_MONITOR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %36
  %58 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %59 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %60 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %59, i32 0, i32 5
  %61 = call i32 @ieee80211_runtask(%struct.ieee80211com* %58, i32* %60)
  br label %282

62:                                               ; preds = %36
  %63 = load %struct.iwi_notif_scan_complete*, %struct.iwi_notif_scan_complete** %8, align 8
  %64 = getelementptr inbounds %struct.iwi_notif_scan_complete, %struct.iwi_notif_scan_complete* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IWI_SCAN_COMPLETED, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %70 = call i32 @ieee80211_scan_next(%struct.ieee80211vap* %69)
  br label %71

71:                                               ; preds = %68, %62
  br label %282

72:                                               ; preds = %2
  %73 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %74 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %73, i64 1
  %75 = bitcast %struct.iwi_notif* %74 to %struct.iwi_notif_authentication*
  store %struct.iwi_notif_authentication* %75, %struct.iwi_notif_authentication** %9, align 8
  %76 = load %struct.iwi_notif_authentication*, %struct.iwi_notif_authentication** %9, align 8
  %77 = getelementptr inbounds %struct.iwi_notif_authentication, %struct.iwi_notif_authentication* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %126 [
    i32 138, label %79
    i32 143, label %84
    i32 141, label %116
    i32 142, label %116
    i32 139, label %116
    i32 140, label %117
  ]

79:                                               ; preds = %72
  %80 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %82 = load i32, i32* @IEEE80211_S_ASSOC, align 4
  %83 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %81, i32 %82, i32 -1)
  br label %134

84:                                               ; preds = %72
  %85 = load i32, i32* @IWI_FLAG_ASSOCIATED, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %88 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %92 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IEEE80211_S_RUN, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %84
  %97 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %99 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %104 = call i32 @IWI_STATE_END(%struct.iwi_softc* %103, i32 137)
  br label %112

105:                                              ; preds = %84
  %106 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %108 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %105, %96
  %113 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %114 = load i32, i32* @IEEE80211_S_SCAN, align 4
  %115 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %113, i32 %114, i32 -1)
  br label %134

116:                                              ; preds = %72, %72, %72
  br label %134

117:                                              ; preds = %72
  %118 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  %119 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %120 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %125 = call i32 @IWI_STATE_END(%struct.iwi_softc* %124, i32 137)
  br label %134

126:                                              ; preds = %72
  %127 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %128 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.iwi_notif_authentication*, %struct.iwi_notif_authentication** %9, align 8
  %131 = getelementptr inbounds %struct.iwi_notif_authentication, %struct.iwi_notif_authentication* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @device_printf(i32 %129, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %126, %117, %116, %112, %79
  br label %282

135:                                              ; preds = %2
  %136 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %137 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %136, i64 1
  %138 = bitcast %struct.iwi_notif* %137 to %struct.iwi_notif_association*
  store %struct.iwi_notif_association* %138, %struct.iwi_notif_association** %10, align 8
  %139 = load %struct.iwi_notif_association*, %struct.iwi_notif_association** %10, align 8
  %140 = getelementptr inbounds %struct.iwi_notif_association, %struct.iwi_notif_association* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  switch i32 %141, label %198 [
    i32 138, label %142
    i32 144, label %143
    i32 145, label %168
  ]

142:                                              ; preds = %135
  br label %206

143:                                              ; preds = %135
  %144 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %145 = load i32, i32* @IWI_FLAG_ASSOCIATED, align 4
  %146 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %147 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %151 = call i32 @IWI_STATE_END(%struct.iwi_softc* %150, i32 137)
  %152 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %153 = load %struct.iwi_notif_association*, %struct.iwi_notif_association** %10, align 8
  %154 = getelementptr inbounds %struct.iwi_notif_association, %struct.iwi_notif_association* %153, i64 1
  %155 = bitcast %struct.iwi_notif_association* %154 to %struct.ieee80211_frame*
  %156 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %157 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le16toh(i32 %158)
  %160 = sext i32 %159 to i64
  %161 = sub i64 %160, 4
  %162 = sub i64 %161, 1
  %163 = trunc i64 %162 to i32
  %164 = call i32 @iwi_checkforqos(%struct.ieee80211vap* %152, %struct.ieee80211_frame* %155, i32 %163)
  %165 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %166 = load i32, i32* @IEEE80211_S_RUN, align 4
  %167 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %165, i32 %166, i32 -1)
  br label %206

168:                                              ; preds = %135
  %169 = load i32, i32* @IWI_FLAG_ASSOCIATED, align 4
  %170 = xor i32 %169, -1
  %171 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %172 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %176 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  switch i32 %177, label %197 [
    i32 137, label %178
    i32 136, label %185
  ]

178:                                              ; preds = %168
  %179 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %180 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %181 = call i32 @IWI_STATE_END(%struct.iwi_softc* %180, i32 137)
  %182 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %183 = load i32, i32* @IEEE80211_S_SCAN, align 4
  %184 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %182, i32 %183, i32 -1)
  br label %197

185:                                              ; preds = %168
  %186 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %187 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %188 = call i32 @IWI_STATE_END(%struct.iwi_softc* %187, i32 136)
  %189 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %190 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %195 = load i32, i32* @IEEE80211_S_SCAN, align 4
  %196 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %194, i32 %195, i32 -1)
  br label %197

197:                                              ; preds = %168, %185, %178
  br label %206

198:                                              ; preds = %135
  %199 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %200 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.iwi_notif_association*, %struct.iwi_notif_association** %10, align 8
  %203 = getelementptr inbounds %struct.iwi_notif_association, %struct.iwi_notif_association* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @device_printf(i32 %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %198, %197, %143, %142
  br label %282

207:                                              ; preds = %2
  %208 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %209 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %208, i64 1
  %210 = bitcast %struct.iwi_notif* %209 to %struct.iwi_notif_beacon_state*
  store %struct.iwi_notif_beacon_state* %210, %struct.iwi_notif_beacon_state** %11, align 8
  %211 = load %struct.iwi_notif_beacon_state*, %struct.iwi_notif_beacon_state** %11, align 8
  %212 = getelementptr inbounds %struct.iwi_notif_beacon_state, %struct.iwi_notif_beacon_state* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.iwi_notif_beacon_state*, %struct.iwi_notif_beacon_state** %11, align 8
  %215 = getelementptr inbounds %struct.iwi_notif_beacon_state, %struct.iwi_notif_beacon_state* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @le32toh(i32 %216)
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to i8*
  %220 = call i32 @DPRINTFN(i32 5, i8* %219)
  %221 = load %struct.iwi_notif_beacon_state*, %struct.iwi_notif_beacon_state** %11, align 8
  %222 = getelementptr inbounds %struct.iwi_notif_beacon_state, %struct.iwi_notif_beacon_state* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @IWI_BEACON_MISS, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %256

226:                                              ; preds = %207
  %227 = load %struct.iwi_notif_beacon_state*, %struct.iwi_notif_beacon_state** %11, align 8
  %228 = getelementptr inbounds %struct.iwi_notif_beacon_state, %struct.iwi_notif_beacon_state* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @le32toh(i32 %229)
  %231 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %232 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp sge i32 %230, %233
  br i1 %234, label %235, label %255

235:                                              ; preds = %226
  %236 = load %struct.iwi_notif_beacon_state*, %struct.iwi_notif_beacon_state** %11, align 8
  %237 = getelementptr inbounds %struct.iwi_notif_beacon_state, %struct.iwi_notif_beacon_state* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @le32toh(i32 %238)
  %240 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %241 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = inttoptr i64 %243 to i8*
  %245 = call i32 @DPRINTF(i8* %244)
  %246 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %247 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  %251 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %252 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %253 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %252, i32 0, i32 1
  %254 = call i32 @ieee80211_runtask(%struct.ieee80211com* %251, i32* %253)
  br label %255

255:                                              ; preds = %235, %226
  br label %256

256:                                              ; preds = %255, %207
  br label %282

257:                                              ; preds = %2, %2
  %258 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %259 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = inttoptr i64 %261 to i8*
  %263 = call i32 @DPRINTFN(i32 5, i8* %262)
  br label %282

264:                                              ; preds = %2
  %265 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %266 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %267 = call i32 @iwi_notif_link_quality(%struct.iwi_softc* %265, %struct.iwi_notif* %266)
  br label %282

268:                                              ; preds = %2
  %269 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %270 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %273 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.iwi_notif*, %struct.iwi_notif** %4, align 8
  %276 = getelementptr inbounds %struct.iwi_notif, %struct.iwi_notif* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @le16toh(i32 %277)
  %279 = sext i32 %278 to i64
  %280 = inttoptr i64 %279 to i8*
  %281 = call i32 @DPRINTF(i8* %280)
  br label %282

282:                                              ; preds = %268, %264, %257, %256, %206, %134, %71, %57, %20
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @ieee80211_ieee2mhz(i32, i32) #1

declare dso_local i32 @IWI_STATE_END(%struct.iwi_softc*, i32) #1

declare dso_local i32 @ieee80211_runtask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @ieee80211_scan_next(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_new_state(%struct.ieee80211vap*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @iwi_checkforqos(%struct.ieee80211vap*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @iwi_notif_link_quality(%struct.iwi_softc*, %struct.iwi_notif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
