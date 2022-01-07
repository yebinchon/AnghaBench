; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_getstate_80211.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis.c_ndis_getstate_80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32, i32, i32*, i32*, i32*, i32, i32 }
%struct.ieee80211vap = type { i32, %struct.ieee80211_node* }
%struct.ieee80211_node = type { i8*, i32*, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@IEEE80211_C_PMGT = common dso_local global i32 0, align 4
@OID_802_11_POWER_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"get power mode failed: %d\0A\00", align 1
@NDIS_80211_POWERMODE_CAM = common dso_local global i32 0, align 4
@IEEE80211_F_PMGTON = common dso_local global i32 0, align 4
@IEEE80211_C_TXPMGT = common dso_local global i32 0, align 4
@OID_802_11_TX_POWER_LEVEL = common dso_local global i32 0, align 4
@dBm2mW = common dso_local global i32* null, align 8
@M_TEMP = common dso_local global i32 0, align 4
@OID_802_11_AUTHENTICATION_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"get authmode status failed: %d\0A\00", align 1
@IEEE80211_F_WPA = common dso_local global i32 0, align 4
@IEEE80211_AUTH_OPEN = common dso_local global i8* null, align 8
@IEEE80211_AUTH_SHARED = common dso_local global i8* null, align 8
@IEEE80211_AUTH_AUTO = common dso_local global i8* null, align 8
@IEEE80211_AUTH_WPA = common dso_local global i8* null, align 8
@IEEE80211_F_WPA1 = common dso_local global i32 0, align 4
@IEEE80211_F_WPA2 = common dso_local global i32 0, align 4
@IEEE80211_AUTH_NONE = common dso_local global i8* null, align 8
@OID_802_11_WEP_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"get wep status failed: %d\0A\00", align 1
@NDIS_80211_WEPSTAT_ENABLED = common dso_local global i32 0, align 4
@IEEE80211_F_PRIVACY = common dso_local global i32 0, align 4
@IEEE80211_F_DROPUNENC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ndis_softc*)* @ndis_getstate_80211 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndis_getstate_80211(%struct.ndis_softc* %0) #0 {
  %2 = alloca %struct.ndis_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ndis_softc* %0, %struct.ndis_softc** %2, align 8
  %12 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %12, i32 0, i32 1
  store %struct.ieee80211com* %13, %struct.ieee80211com** %3, align 8
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 6
  %16 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %15)
  store %struct.ieee80211vap* %16, %struct.ieee80211vap** %4, align 8
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 1
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %18, align 8
  store %struct.ieee80211_node* %19, %struct.ieee80211_node** %5, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %21 = call i32 @NDIS_INITIALIZED(%struct.ndis_softc* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %257

24:                                               ; preds = %1
  %25 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %26 = call i32 @ndis_get_assoc(%struct.ndis_softc* %25, %struct.TYPE_8__** %6)
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %257

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ndis_nettype_mode(i32 %32)
  %34 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ndis_nettype_chan(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @IEEE80211_ADDR_COPY(i32 %42, i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bcopy(i32 %50, i32 %53, i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %66 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IEEE80211_C_PMGT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %29
  store i32 4, i32* %8, align 4
  %72 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %73 = load i32, i32* @OID_802_11_POWER_MODE, align 4
  %74 = call i32 @ndis_get_info(%struct.ndis_softc* %72, i32 %73, i32* %11, i32* %8)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %79 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @NDIS_80211_POWERMODE_CAM, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32, i32* @IEEE80211_F_PMGTON, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %91 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %100

94:                                               ; preds = %83
  %95 = load i32, i32* @IEEE80211_F_PMGTON, align 4
  %96 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %97 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %87
  br label %101

101:                                              ; preds = %100, %29
  %102 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %103 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @IEEE80211_C_TXPMGT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %134

108:                                              ; preds = %101
  store i32 4, i32* %8, align 4
  %109 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %110 = load i32, i32* @OID_802_11_TX_POWER_LEVEL, align 4
  %111 = call i32 @ndis_get_info(%struct.ndis_softc* %109, i32 %110, i32* %11, i32* %8)
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %127, %108
  %113 = load i32, i32* %9, align 4
  %114 = load i32*, i32** @dBm2mW, align 8
  %115 = call i32 @nitems(i32* %114)
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %112
  %118 = load i32*, i32** @dBm2mW, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %130

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %112

130:                                              ; preds = %125, %112
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %133 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %130, %101
  %135 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sdiv i32 %139, 1000
  %141 = load i32, i32* %10, align 4
  %142 = call i32* @ieee80211_find_channel(%struct.ieee80211com* %135, i32 %140, i32 %141)
  %143 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %144 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %143, i32 0, i32 2
  store i32* %142, i32** %144, align 8
  %145 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %146 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %134
  %150 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %151 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %155 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %154, i32 0, i32 2
  store i32* %153, i32** %155, align 8
  br label %156

156:                                              ; preds = %149, %134
  %157 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %158 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %161 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %160, i32 0, i32 1
  store i32* %159, i32** %161, align 8
  %162 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %163 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %166 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %165, i32 0, i32 3
  store i32* %164, i32** %166, align 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %168 = load i32, i32* @M_TEMP, align 4
  %169 = call i32 @free(%struct.TYPE_8__* %167, i32 %168)
  store i32 4, i32* %8, align 4
  %170 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %171 = load i32, i32* @OID_802_11_AUTHENTICATION_MODE, align 4
  %172 = call i32 @ndis_get_info(%struct.ndis_softc* %170, i32 %171, i32* %11, i32* %8)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %156
  %176 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %177 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @device_printf(i32 %178, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %179)
  br label %224

181:                                              ; preds = %156
  %182 = load i32, i32* @IEEE80211_F_WPA, align 4
  %183 = xor i32 %182, -1
  %184 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %185 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load i32, i32* %11, align 4
  switch i32 %188, label %219 [
    i32 134, label %189
    i32 133, label %193
    i32 135, label %197
    i32 132, label %201
    i32 128, label %201
    i32 129, label %201
    i32 131, label %210
    i32 130, label %210
  ]

189:                                              ; preds = %181
  %190 = load i8*, i8** @IEEE80211_AUTH_OPEN, align 8
  %191 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %192 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %191, i32 0, i32 0
  store i8* %190, i8** %192, align 8
  br label %223

193:                                              ; preds = %181
  %194 = load i8*, i8** @IEEE80211_AUTH_SHARED, align 8
  %195 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %196 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %195, i32 0, i32 0
  store i8* %194, i8** %196, align 8
  br label %223

197:                                              ; preds = %181
  %198 = load i8*, i8** @IEEE80211_AUTH_AUTO, align 8
  %199 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %200 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %199, i32 0, i32 0
  store i8* %198, i8** %200, align 8
  br label %223

201:                                              ; preds = %181, %181, %181
  %202 = load i8*, i8** @IEEE80211_AUTH_WPA, align 8
  %203 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %204 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %203, i32 0, i32 0
  store i8* %202, i8** %204, align 8
  %205 = load i32, i32* @IEEE80211_F_WPA1, align 4
  %206 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %207 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 8
  br label %223

210:                                              ; preds = %181, %181
  %211 = load i8*, i8** @IEEE80211_AUTH_WPA, align 8
  %212 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %213 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %212, i32 0, i32 0
  store i8* %211, i8** %213, align 8
  %214 = load i32, i32* @IEEE80211_F_WPA2, align 4
  %215 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %216 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %223

219:                                              ; preds = %181
  %220 = load i8*, i8** @IEEE80211_AUTH_NONE, align 8
  %221 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %222 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %221, i32 0, i32 0
  store i8* %220, i8** %222, align 8
  br label %223

223:                                              ; preds = %219, %210, %201, %197, %193, %189
  br label %224

224:                                              ; preds = %223, %175
  store i32 4, i32* %8, align 4
  %225 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %226 = load i32, i32* @OID_802_11_WEP_STATUS, align 4
  %227 = call i32 @ndis_get_info(%struct.ndis_softc* %225, i32 %226, i32* %11, i32* %8)
  store i32 %227, i32* %7, align 4
  %228 = load i32, i32* %7, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %224
  %231 = load %struct.ndis_softc*, %struct.ndis_softc** %2, align 8
  %232 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @device_printf(i32 %233, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %234)
  br label %236

236:                                              ; preds = %230, %224
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* @NDIS_80211_WEPSTAT_ENABLED, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %236
  %241 = load i32, i32* @IEEE80211_F_PRIVACY, align 4
  %242 = load i32, i32* @IEEE80211_F_DROPUNENC, align 4
  %243 = or i32 %241, %242
  %244 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %245 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  br label %257

248:                                              ; preds = %236
  %249 = load i32, i32* @IEEE80211_F_PRIVACY, align 4
  %250 = load i32, i32* @IEEE80211_F_DROPUNENC, align 4
  %251 = or i32 %249, %250
  %252 = xor i32 %251, -1
  %253 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %254 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, %252
  store i32 %256, i32* %254, align 8
  br label %257

257:                                              ; preds = %23, %28, %248, %240
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @NDIS_INITIALIZED(%struct.ndis_softc*) #1

declare dso_local i32 @ndis_get_assoc(%struct.ndis_softc*, %struct.TYPE_8__**) #1

declare dso_local i32 @ndis_nettype_mode(i32) #1

declare dso_local i32 @ndis_nettype_chan(i32) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @ndis_get_info(%struct.ndis_softc*, i32, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32* @ieee80211_find_channel(%struct.ieee80211com*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
