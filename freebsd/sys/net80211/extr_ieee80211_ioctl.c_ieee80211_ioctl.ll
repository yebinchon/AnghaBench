; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, {}*, %struct.ieee80211vap*, i32 (%struct.ieee80211vap*)*, i32, i32* }
%struct.ieee80211vap = type { i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i32, i32 (%struct.ieee80211com*, i32, i64)*, i32 }
%struct.ifreq = type { i32 }
%struct.ifaddr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.epoch_tracker = type { i32 }
%struct.ieee80211req = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_PPROMISC = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_M_AHDEMO = common dso_local global i32 0, align 4
@IEEE80211_C_TDMA = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IEEE80211_S_INIT = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@PRIV_NET80211_MANAGE = common dso_local global i32 0, align 4
@IEEE80211_MTU_MIN = common dso_local global i32 0, align 4
@IEEE80211_MTU_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211vap*, align 8
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ifreq*, align 8
  %14 = alloca %struct.ifaddr*, align 8
  %15 = alloca %struct.epoch_tracker, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 3
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %17, align 8
  store %struct.ieee80211vap* %18, %struct.ieee80211vap** %8, align 8
  %19 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %19, i32 0, i32 7
  %21 = load %struct.ieee80211com*, %struct.ieee80211com** %20, align 8
  store %struct.ieee80211com* %21, %struct.ieee80211com** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 128
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 134
  br label %27

27:                                               ; preds = %24, %3
  %28 = phi i1 [ false, %3 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %34 = call i32 @ieee80211_com_vincref(%struct.ieee80211vap* %33)
  store i32 %34, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %328

38:                                               ; preds = %32, %27
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %299 [
    i32 130, label %40
    i32 137, label %205
    i32 136, label %205
    i32 129, label %210
    i32 133, label %210
    i32 135, label %219
    i32 132, label %225
    i32 134, label %238
    i32 128, label %246
    i32 131, label %269
  ]

40:                                               ; preds = %38
  %41 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %42 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %41)
  %43 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = xor i32 %45, %48
  %50 = load i32, i32* @IFF_PROMISC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %98

53:                                               ; preds = %40
  %54 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %84, label %58

58:                                               ; preds = %53
  %59 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IFF_PPROMISC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %84, label %65

65:                                               ; preds = %58
  %66 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %67 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IEEE80211_M_MONITOR, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %84, label %71

71:                                               ; preds = %65
  %72 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %73 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IEEE80211_M_AHDEMO, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %79 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IEEE80211_C_TDMA, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %77, %65, %58, %53
  %85 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %86 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %87 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IFF_PROMISC, align 4
  %90 = and i32 %88, %89
  %91 = call i32 @ieee80211_promisc(%struct.ieee80211vap* %85, i32 %90)
  %92 = load i32, i32* @IFF_PROMISC, align 4
  %93 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %94 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = xor i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %84, %77, %71
  br label %98

98:                                               ; preds = %97, %40
  %99 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %100 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %103 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = xor i32 %101, %104
  %106 = load i32, i32* @IFF_ALLMULTI, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %98
  %110 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %111 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %112 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @IFF_ALLMULTI, align 4
  %115 = and i32 %113, %114
  %116 = call i32 @ieee80211_allmulti(%struct.ieee80211vap* %110, i32 %115)
  %117 = load i32, i32* @IFF_ALLMULTI, align 4
  %118 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %119 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = xor i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %109, %98
  %123 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %124 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IFF_UP, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %122
  %130 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %131 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IEEE80211_S_INIT, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %129
  %136 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %137 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i32 1, i32* %11, align 4
  br label %141

141:                                              ; preds = %140, %135
  %142 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %143 = call i32 @ieee80211_start_locked(%struct.ieee80211vap* %142)
  br label %144

144:                                              ; preds = %141, %129
  br label %162

145:                                              ; preds = %122
  %146 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %147 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %145
  %153 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %154 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i32 1, i32* %11, align 4
  br label %158

158:                                              ; preds = %157, %152
  %159 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %160 = call i32 @ieee80211_stop_locked(%struct.ieee80211vap* %159)
  br label %161

161:                                              ; preds = %158, %145
  br label %162

162:                                              ; preds = %161, %144
  %163 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %164 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %163)
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %204

167:                                              ; preds = %162
  %168 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %169 = call i32 @ieee80211_waitfor_parent(%struct.ieee80211com* %168)
  %170 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %15, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @NET_EPOCH_ENTER(i32 %171)
  %173 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %174 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %173, i32 0, i32 2
  %175 = bitcast {}** %174 to i32 (%struct.ifnet*, i32, i64)**
  %176 = load i32 (%struct.ifnet*, i32, i64)*, i32 (%struct.ifnet*, i32, i64)** %175, align 8
  %177 = icmp eq i32 (%struct.ifnet*, i32, i64)* %176, @ieee80211_ioctl
  br i1 %177, label %178, label %200

178:                                              ; preds = %167
  %179 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %180 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @IFF_UP, align 4
  %183 = and i32 %181, %182
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %178
  %186 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %187 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %190 = call i32 @IF_LLADDR(%struct.ifnet* %189)
  %191 = call i32 @IEEE80211_ADDR_EQ(i32 %188, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %185
  %194 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %195 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %198 = call i32 @IF_LLADDR(%struct.ifnet* %197)
  %199 = call i32 @IEEE80211_ADDR_COPY(i32 %196, i32 %198)
  br label %200

200:                                              ; preds = %193, %185, %178, %167
  %201 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %15, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @NET_EPOCH_EXIT(i32 %202)
  br label %204

204:                                              ; preds = %200, %162
  br label %320

205:                                              ; preds = %38, %38
  %206 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %207 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %208 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %207, i32 0, i32 2
  %209 = call i32 @ieee80211_runtask(%struct.ieee80211com* %206, i32* %208)
  br label %320

210:                                              ; preds = %38, %38
  %211 = load i64, i64* %7, align 8
  %212 = inttoptr i64 %211 to %struct.ifreq*
  store %struct.ifreq* %212, %struct.ifreq** %13, align 8
  %213 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %214 = load %struct.ifreq*, %struct.ifreq** %13, align 8
  %215 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %216 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %215, i32 0, i32 3
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @ifmedia_ioctl(%struct.ifnet* %213, %struct.ifreq* %214, i32* %216, i32 %217)
  store i32 %218, i32* %10, align 4
  br label %320

219:                                              ; preds = %38
  %220 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %221 = load i32, i32* %6, align 4
  %222 = load i64, i64* %7, align 8
  %223 = inttoptr i64 %222 to %struct.ieee80211req*
  %224 = call i32 @ieee80211_ioctl_get80211(%struct.ieee80211vap* %220, i32 %221, %struct.ieee80211req* %223)
  store i32 %224, i32* %10, align 4
  br label %320

225:                                              ; preds = %38
  %226 = load i32, i32* @curthread, align 4
  %227 = load i32, i32* @PRIV_NET80211_MANAGE, align 4
  %228 = call i32 @priv_check(i32 %226, i32 %227)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %225
  %232 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %233 = load i32, i32* %6, align 4
  %234 = load i64, i64* %7, align 8
  %235 = inttoptr i64 %234 to %struct.ieee80211req*
  %236 = call i32 @ieee80211_ioctl_set80211(%struct.ieee80211vap* %232, i32 %233, %struct.ieee80211req* %235)
  store i32 %236, i32* %10, align 4
  br label %237

237:                                              ; preds = %231, %225
  br label %320

238:                                              ; preds = %38
  %239 = load i64, i64* %7, align 8
  %240 = inttoptr i64 %239 to %struct.ifreq*
  store %struct.ifreq* %240, %struct.ifreq** %13, align 8
  %241 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %242 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %241, i32 0, i32 2
  %243 = load %struct.ifreq*, %struct.ifreq** %13, align 8
  %244 = call i32 @ifr_data_get_ptr(%struct.ifreq* %243)
  %245 = call i32 @copyout(i32* %242, i32 %244, i32 4)
  br label %320

246:                                              ; preds = %38
  %247 = load i64, i64* %7, align 8
  %248 = inttoptr i64 %247 to %struct.ifreq*
  store %struct.ifreq* %248, %struct.ifreq** %13, align 8
  %249 = load i32, i32* @IEEE80211_MTU_MIN, align 4
  %250 = load %struct.ifreq*, %struct.ifreq** %13, align 8
  %251 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = icmp sle i32 %249, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %246
  %255 = load %struct.ifreq*, %struct.ifreq** %13, align 8
  %256 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @IEEE80211_MTU_MAX, align 4
  %259 = icmp sle i32 %257, %258
  br i1 %259, label %262, label %260

260:                                              ; preds = %254, %246
  %261 = load i32, i32* @EINVAL, align 4
  store i32 %261, i32* %10, align 4
  br label %268

262:                                              ; preds = %254
  %263 = load %struct.ifreq*, %struct.ifreq** %13, align 8
  %264 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %267 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %266, i32 0, i32 5
  store i32 %265, i32* %267, align 8
  br label %268

268:                                              ; preds = %262, %260
  br label %320

269:                                              ; preds = %38
  %270 = load i64, i64* %7, align 8
  %271 = inttoptr i64 %270 to %struct.ifaddr*
  store %struct.ifaddr* %271, %struct.ifaddr** %14, align 8
  %272 = load %struct.ifaddr*, %struct.ifaddr** %14, align 8
  %273 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %272, i32 0, i32 0
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  switch i32 %276, label %277 [
  ]

277:                                              ; preds = %269
  %278 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %279 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @IFF_UP, align 4
  %282 = and i32 %280, %281
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %297

284:                                              ; preds = %277
  %285 = load i32, i32* @IFF_UP, align 4
  %286 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %287 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 8
  %290 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %291 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %290, i32 0, i32 4
  %292 = load i32 (%struct.ieee80211vap*)*, i32 (%struct.ieee80211vap*)** %291, align 8
  %293 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %294 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %293, i32 0, i32 3
  %295 = load %struct.ieee80211vap*, %struct.ieee80211vap** %294, align 8
  %296 = call i32 %292(%struct.ieee80211vap* %295)
  br label %297

297:                                              ; preds = %284, %277
  br label %298

298:                                              ; preds = %297
  br label %320

299:                                              ; preds = %38
  %300 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %301 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %300, i32 0, i32 1
  %302 = load i32 (%struct.ieee80211com*, i32, i64)*, i32 (%struct.ieee80211com*, i32, i64)** %301, align 8
  %303 = icmp ne i32 (%struct.ieee80211com*, i32, i64)* %302, null
  br i1 %303, label %304, label %315

304:                                              ; preds = %299
  %305 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %306 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %305, i32 0, i32 1
  %307 = load i32 (%struct.ieee80211com*, i32, i64)*, i32 (%struct.ieee80211com*, i32, i64)** %306, align 8
  %308 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %309 = load i32, i32* %6, align 4
  %310 = load i64, i64* %7, align 8
  %311 = call i32 %307(%struct.ieee80211com* %308, i32 %309, i64 %310)
  store i32 %311, i32* %10, align 4
  %312 = load i32, i32* @ENOTTY, align 4
  %313 = icmp ne i32 %311, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %304
  br label %320

315:                                              ; preds = %304, %299
  %316 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %317 = load i32, i32* %6, align 4
  %318 = load i64, i64* %7, align 8
  %319 = call i32 @ether_ioctl(%struct.ifnet* %316, i32 %317, i64 %318)
  store i32 %319, i32* %10, align 4
  br label %320

320:                                              ; preds = %315, %314, %298, %268, %238, %237, %219, %210, %205, %204
  %321 = load i32, i32* %12, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %325 = call i32 @ieee80211_com_vdecref(%struct.ieee80211vap* %324)
  br label %326

326:                                              ; preds = %323, %320
  %327 = load i32, i32* %10, align 4
  store i32 %327, i32* %4, align 4
  br label %328

328:                                              ; preds = %326, %36
  %329 = load i32, i32* %4, align 4
  ret i32 %329
}

declare dso_local i32 @ieee80211_com_vincref(%struct.ieee80211vap*) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_promisc(%struct.ieee80211vap*, i32) #1

declare dso_local i32 @ieee80211_allmulti(%struct.ieee80211vap*, i32) #1

declare dso_local i32 @ieee80211_start_locked(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_stop_locked(%struct.ieee80211vap*) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

declare dso_local i32 @ieee80211_waitfor_parent(%struct.ieee80211com*) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @IEEE80211_ADDR_EQ(i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local i32 @ieee80211_runtask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ieee80211_ioctl_get80211(%struct.ieee80211vap*, i32, %struct.ieee80211req*) #1

declare dso_local i32 @priv_check(i32, i32) #1

declare dso_local i32 @ieee80211_ioctl_set80211(%struct.ieee80211vap*, i32, %struct.ieee80211req*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @ifr_data_get_ptr(%struct.ifreq*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

declare dso_local i32 @ieee80211_com_vdecref(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
