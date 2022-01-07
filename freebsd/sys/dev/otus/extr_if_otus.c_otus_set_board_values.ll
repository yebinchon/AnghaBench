; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_set_board_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_set_board_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ModalEepHeader* }
%struct.ModalEepHeader = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32 }
%struct.ieee80211_channel = type { i32 }

@AR_PHY_SWITCH_COM = common dso_local global i64 0, align 8
@AR_PHY_SWITCH_CHAIN_0 = common dso_local global i64 0, align 8
@AR_PHY_SETTLING = common dso_local global i64 0, align 8
@AR_PHY_DESIRED_SZ = common dso_local global i64 0, align 8
@AR_PHY_RF_CTL4 = common dso_local global i64 0, align 8
@AR_PHY_RF_CTL3 = common dso_local global i64 0, align 8
@AR_PHY_CCA = common dso_local global i64 0, align 8
@AR_PHY_RXGAIN = common dso_local global i64 0, align 8
@AR_PHY_GAIN_2GHZ = common dso_local global i64 0, align 8
@AR_PHY_TIMING_CTRL4 = common dso_local global i64 0, align 8
@AR_PHY_TPCRG1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @otus_set_board_values(%struct.otus_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.otus_softc*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ModalEepHeader*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.otus_softc* %0, %struct.otus_softc** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %9 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %13 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %14, align 8
  %16 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %15, i64 0
  store %struct.ModalEepHeader* %16, %struct.ModalEepHeader** %5, align 8
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %19 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %20, align 8
  %22 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %21, i64 1
  store %struct.ModalEepHeader* %22, %struct.ModalEepHeader** %5, align 8
  br label %23

23:                                               ; preds = %17, %11
  store i32 8192, i32* %7, align 4
  %24 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %25 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %24, i32 0, i32 14
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @le32toh(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %29 = load i64, i64* @AR_PHY_SWITCH_COM, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @otus_write(%struct.otus_softc* %28, i64 %29, i32 %30)
  %32 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %33 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %32, i32 0, i32 13
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32toh(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %39 = load i64, i64* @AR_PHY_SWITCH_CHAIN_0, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @otus_write(%struct.otus_softc* %38, i64 %39, i32 %40)
  %42 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %43 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %42, i32 0, i32 13
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32toh(i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %49 = load i64, i64* @AR_PHY_SWITCH_CHAIN_0, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @otus_write(%struct.otus_softc* %48, i64 %52, i32 %53)
  %55 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %56 = load i64, i64* @AR_PHY_SETTLING, align 8
  %57 = call i32 @otus_phy_get_def(%struct.otus_softc* %55, i64 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, -16257
  store i32 %59, i32* %6, align 4
  %60 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %61 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 127
  %64 = shl i32 %63, 7
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %68 = load i64, i64* @AR_PHY_SETTLING, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @otus_write(%struct.otus_softc* %67, i64 %68, i32 %69)
  %71 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %72 = load i64, i64* @AR_PHY_DESIRED_SZ, align 8
  %73 = call i32 @otus_phy_get_def(%struct.otus_softc* %71, i64 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, -65536
  store i32 %75, i32* %6, align 4
  %76 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %77 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 8
  %80 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %81 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %79, %82
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %87 = load i64, i64* @AR_PHY_DESIRED_SZ, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @otus_write(%struct.otus_softc* %86, i64 %87, i32 %88)
  %90 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %91 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 24
  %94 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %95 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 16
  %98 = or i32 %93, %97
  %99 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %100 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = shl i32 %101, 8
  %103 = or i32 %98, %102
  %104 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %105 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %103, %106
  store i32 %107, i32* %6, align 4
  %108 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %109 = load i64, i64* @AR_PHY_RF_CTL4, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @otus_write(%struct.otus_softc* %108, i64 %109, i32 %110)
  %112 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %113 = load i64, i64* @AR_PHY_RF_CTL3, align 8
  %114 = call i32 @otus_phy_get_def(%struct.otus_softc* %112, i64 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, -16711681
  store i32 %116, i32* %6, align 4
  %117 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %118 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 16
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %6, align 4
  %123 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %124 = load i64, i64* @AR_PHY_RF_CTL3, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @otus_write(%struct.otus_softc* %123, i64 %124, i32 %125)
  %127 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %128 = load i64, i64* @AR_PHY_CCA, align 8
  %129 = call i32 @otus_phy_get_def(%struct.otus_softc* %127, i64 %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = and i32 %130, -520193
  store i32 %131, i32* %6, align 4
  %132 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %133 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 127
  %136 = shl i32 %135, 12
  %137 = load i32, i32* %6, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %6, align 4
  %139 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %140 = load i64, i64* @AR_PHY_CCA, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @otus_write(%struct.otus_softc* %139, i64 %140, i32 %141)
  %143 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %144 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %145 = call i32 @otus_phy_get_def(%struct.otus_softc* %143, i64 %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, -258049
  store i32 %147, i32* %6, align 4
  %148 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %149 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %148, i32 0, i32 7
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 63
  %154 = shl i32 %153, 12
  %155 = load i32, i32* %6, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %6, align 4
  %157 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %158 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @otus_write(%struct.otus_softc* %157, i64 %158, i32 %159)
  %161 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %162 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %162, %164
  %166 = call i32 @otus_phy_get_def(%struct.otus_softc* %161, i64 %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = and i32 %167, -258049
  store i32 %168, i32* %6, align 4
  %169 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %170 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %169, i32 0, i32 7
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 63
  %175 = shl i32 %174, 12
  %176 = load i32, i32* %6, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %6, align 4
  %178 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %179 = load i64, i64* @AR_PHY_RXGAIN, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %179, %181
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @otus_write(%struct.otus_softc* %178, i64 %182, i32 %183)
  %185 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %186 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %187 = call i32 @otus_phy_get_def(%struct.otus_softc* %185, i64 %186)
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %6, align 4
  %189 = and i32 %188, -16515073
  store i32 %189, i32* %6, align 4
  %190 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %191 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %190, i32 0, i32 8
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 63
  %196 = shl i32 %195, 18
  %197 = load i32, i32* %6, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %6, align 4
  %199 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %200 = call i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %23
  %203 = load i32, i32* %6, align 4
  %204 = and i32 %203, -15361
  store i32 %204, i32* %6, align 4
  %205 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %206 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %205, i32 0, i32 9
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, 15
  %211 = shl i32 %210, 10
  %212 = load i32, i32* %6, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %6, align 4
  br label %214

214:                                              ; preds = %202, %23
  %215 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %216 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @otus_write(%struct.otus_softc* %215, i64 %216, i32 %217)
  %219 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %220 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %220, %222
  %224 = call i32 @otus_phy_get_def(%struct.otus_softc* %219, i64 %223)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = and i32 %225, -16515073
  store i32 %226, i32* %6, align 4
  %227 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %228 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %227, i32 0, i32 8
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, 63
  %233 = shl i32 %232, 18
  %234 = load i32, i32* %6, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %6, align 4
  %236 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %237 = load i64, i64* @AR_PHY_GAIN_2GHZ, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %237, %239
  %241 = load i32, i32* %6, align 4
  %242 = call i32 @otus_write(%struct.otus_softc* %236, i64 %240, i32 %241)
  %243 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %244 = load i64, i64* @AR_PHY_TIMING_CTRL4, align 8
  %245 = call i32 @otus_phy_get_def(%struct.otus_softc* %243, i64 %244)
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = and i32 %246, -2048
  store i32 %247, i32* %6, align 4
  %248 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %249 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %248, i32 0, i32 10
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = and i32 %252, 63
  %254 = shl i32 %253, 5
  %255 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %256 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %255, i32 0, i32 11
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %259, 31
  %261 = or i32 %254, %260
  %262 = load i32, i32* %6, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %6, align 4
  %264 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %265 = load i64, i64* @AR_PHY_TIMING_CTRL4, align 8
  %266 = load i32, i32* %6, align 4
  %267 = call i32 @otus_write(%struct.otus_softc* %264, i64 %265, i32 %266)
  %268 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %269 = load i64, i64* @AR_PHY_TIMING_CTRL4, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %269, %271
  %273 = call i32 @otus_phy_get_def(%struct.otus_softc* %268, i64 %272)
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* %6, align 4
  %275 = and i32 %274, -2048
  store i32 %275, i32* %6, align 4
  %276 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %277 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %276, i32 0, i32 10
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 1
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, 63
  %282 = shl i32 %281, 5
  %283 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %284 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %283, i32 0, i32 11
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  %287 = load i32, i32* %286, align 4
  %288 = and i32 %287, 31
  %289 = or i32 %282, %288
  %290 = load i32, i32* %6, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %6, align 4
  %292 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %293 = load i64, i64* @AR_PHY_TIMING_CTRL4, align 8
  %294 = load i32, i32* %7, align 4
  %295 = sext i32 %294 to i64
  %296 = add nsw i64 %293, %295
  %297 = load i32, i32* %6, align 4
  %298 = call i32 @otus_write(%struct.otus_softc* %292, i64 %296, i32 %297)
  %299 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %300 = load i64, i64* @AR_PHY_TPCRG1, align 8
  %301 = call i32 @otus_phy_get_def(%struct.otus_softc* %299, i64 %300)
  store i32 %301, i32* %6, align 4
  %302 = load i32, i32* %6, align 4
  %303 = and i32 %302, -983041
  store i32 %303, i32* %6, align 4
  %304 = load %struct.ModalEepHeader*, %struct.ModalEepHeader** %5, align 8
  %305 = getelementptr inbounds %struct.ModalEepHeader, %struct.ModalEepHeader* %304, i32 0, i32 12
  %306 = load i32, i32* %305, align 8
  %307 = and i32 %306, 15
  %308 = shl i32 %307, 16
  %309 = load i32, i32* %6, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %6, align 4
  %311 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %312 = load i64, i64* @AR_PHY_TPCRG1, align 8
  %313 = load i32, i32* %6, align 4
  %314 = call i32 @otus_write(%struct.otus_softc* %311, i64 %312, i32 %313)
  %315 = load %struct.otus_softc*, %struct.otus_softc** %3, align 8
  %316 = call i32 @otus_write_barrier(%struct.otus_softc* %315)
  ret i32 %316
}

declare dso_local i64 @IEEE80211_IS_CHAN_5GHZ(%struct.ieee80211_channel*) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @otus_write(%struct.otus_softc*, i64, i32) #1

declare dso_local i32 @otus_phy_get_def(%struct.otus_softc*, i64) #1

declare dso_local i32 @otus_write_barrier(%struct.otus_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
