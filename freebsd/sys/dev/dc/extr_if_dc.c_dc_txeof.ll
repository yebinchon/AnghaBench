; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i64, i32, i32, i64, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__, %struct.ifnet* }
%struct.TYPE_4__ = type { i64, i32, i32, i32**, i32* }
%struct.TYPE_3__ = type { %struct.dc_desc* }
%struct.dc_desc = type { i32, i32 }
%struct.ifnet = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@DC_TXSTAT_OWN = common dso_local global i32 0, align 4
@DC_TXCTL_SETUP = common dso_local global i32 0, align 4
@DC_TXSTAT_ERRSUM = common dso_local global i32 0, align 4
@DC_PMODE_MII = common dso_local global i64 0, align 8
@DC_TXSTAT_NOCARRIER = common dso_local global i32 0, align 4
@DC_TXSTAT_CARRLOST = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@DC_TXSTAT_EXCESSCOLL = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@DC_TXSTAT_LATECOLL = common dso_local global i32 0, align 4
@DC_TXSTAT_UNDERRUN = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@DC_TXSTAT_COLLCNT = common dso_local global i32 0, align 4
@DC_TX_LIST_CNT = common dso_local global i64 0, align 8
@DC_TX_LIST_RSVD = common dso_local global i64 0, align 8
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_softc*)* @dc_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_txeof(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca %struct.dc_desc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  %9 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %10 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %313

15:                                               ; preds = %1
  %16 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %17 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %16, i32 0, i32 9
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  store %struct.ifnet* %18, %struct.ifnet** %4, align 8
  %19 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %20 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %23 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %26 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @bus_dmamap_sync(i32 %21, i32 %24, i32 %27)
  store i32 0, i32* %6, align 4
  %29 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %30 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %261, %15
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %36 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %34, %38
  br i1 %39, label %40, label %270

40:                                               ; preds = %33
  %41 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %42 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.dc_desc*, %struct.dc_desc** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %44, i64 %46
  store %struct.dc_desc* %47, %struct.dc_desc** %3, align 8
  %48 = load %struct.dc_desc*, %struct.dc_desc** %3, align 8
  %49 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32toh(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.dc_desc*, %struct.dc_desc** %3, align 8
  %53 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32toh(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @DC_TXSTAT_OWN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %40
  br label %270

61:                                               ; preds = %40
  %62 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %63 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %261

72:                                               ; preds = %61
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @DC_TXCTL_SETUP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %115

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @DC_TXCTL_SETUP, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = call i32 @htole32(i32 %81)
  %83 = load %struct.dc_desc*, %struct.dc_desc** %3, align 8
  %84 = getelementptr inbounds %struct.dc_desc, %struct.dc_desc* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  %87 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %88 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %91 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %94 = call i32 @bus_dmamap_sync(i32 %89, i32 %92, i32 %93)
  %95 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %96 = call i64 @DC_IS_PNIC(%struct.dc_softc* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %77
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @DC_TXSTAT_ERRSUM, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %105 = call i32 @dc_setfilt(%struct.dc_softc* %104)
  br label %106

106:                                              ; preds = %103, %98
  br label %107

107:                                              ; preds = %106, %77
  %108 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %109 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  store i32* null, i32** %114, align 8
  br label %261

115:                                              ; preds = %72
  %116 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %117 = call i64 @DC_IS_XIRCOM(%struct.dc_softc* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %121 = call i64 @DC_IS_CONEXANT(%struct.dc_softc* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %119, %115
  %124 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %125 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @DC_PMODE_MII, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %123
  %130 = load i32, i32* %8, align 4
  %131 = and i32 %130, 65535
  %132 = load i32, i32* @DC_TXSTAT_ERRSUM, align 4
  %133 = load i32, i32* @DC_TXSTAT_NOCARRIER, align 4
  %134 = or i32 %132, %133
  %135 = xor i32 %134, -1
  %136 = and i32 %131, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %129
  %139 = load i32, i32* @DC_TXSTAT_ERRSUM, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %8, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %138, %129, %123
  br label %167

144:                                              ; preds = %119
  %145 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %146 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @DC_PMODE_MII, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %144
  %151 = load i32, i32* %8, align 4
  %152 = and i32 %151, 65535
  %153 = load i32, i32* @DC_TXSTAT_ERRSUM, align 4
  %154 = load i32, i32* @DC_TXSTAT_NOCARRIER, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @DC_TXSTAT_CARRLOST, align 4
  %157 = or i32 %155, %156
  %158 = xor i32 %157, -1
  %159 = and i32 %152, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %150
  %162 = load i32, i32* @DC_TXSTAT_ERRSUM, align 4
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %8, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %161, %150, %144
  br label %167

167:                                              ; preds = %166, %143
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @DC_TXSTAT_ERRSUM, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %208

172:                                              ; preds = %167
  %173 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %174 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %175 = call i32 @if_inc_counter(%struct.ifnet* %173, i32 %174, i32 1)
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @DC_TXSTAT_EXCESSCOLL, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %172
  %181 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %182 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %183 = call i32 @if_inc_counter(%struct.ifnet* %181, i32 %182, i32 1)
  br label %184

184:                                              ; preds = %180, %172
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @DC_TXSTAT_LATECOLL, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %191 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %192 = call i32 @if_inc_counter(%struct.ifnet* %190, i32 %191, i32 1)
  br label %193

193:                                              ; preds = %189, %184
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @DC_TXSTAT_UNDERRUN, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %207, label %198

198:                                              ; preds = %193
  %199 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %200 = xor i32 %199, -1
  %201 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %202 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, %200
  store i32 %204, i32* %202, align 4
  %205 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %206 = call i32 @dc_init_locked(%struct.dc_softc* %205)
  br label %313

207:                                              ; preds = %193
  br label %212

208:                                              ; preds = %167
  %209 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %210 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %211 = call i32 @if_inc_counter(%struct.ifnet* %209, i32 %210, i32 1)
  br label %212

212:                                              ; preds = %208, %207
  %213 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %214 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* @DC_TXSTAT_COLLCNT, align 4
  %217 = and i32 %215, %216
  %218 = ashr i32 %217, 3
  %219 = call i32 @if_inc_counter(%struct.ifnet* %213, i32 %214, i32 %218)
  %220 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %221 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %224 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 4
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %232 = call i32 @bus_dmamap_sync(i32 %222, i32 %230, i32 %231)
  %233 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %234 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %237 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %5, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @bus_dmamap_unload(i32 %235, i32 %243)
  %245 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %246 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 3
  %248 = load i32**, i32*** %247, align 8
  %249 = load i32, i32* %5, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32*, i32** %248, i64 %250
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @m_freem(i32* %252)
  %254 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %255 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 3
  %257 = load i32**, i32*** %256, align 8
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32*, i32** %257, i64 %259
  store i32* null, i32** %260, align 8
  br label %261

261:                                              ; preds = %212, %107, %71
  %262 = load i32, i32* %5, align 4
  %263 = load i64, i64* @DC_TX_LIST_CNT, align 8
  %264 = call i32 @DC_INC(i32 %262, i64 %263)
  %265 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %266 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %265, i32 0, i32 4
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %268, -1
  store i64 %269, i64* %267, align 8
  br label %33

270:                                              ; preds = %60, %33
  %271 = load i32, i32* %5, align 4
  %272 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %273 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %272, i32 0, i32 4
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  store i32 %271, i32* %274, align 8
  %275 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %276 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @DC_TX_LIST_CNT, align 8
  %280 = load i64, i64* @DC_TX_LIST_RSVD, align 8
  %281 = sub nsw i64 %279, %280
  %282 = icmp sle i64 %278, %281
  br i1 %282, label %283, label %299

283:                                              ; preds = %270
  %284 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %285 = xor i32 %284, -1
  %286 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %287 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = and i32 %288, %285
  store i32 %289, i32* %287, align 4
  %290 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %291 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %290, i32 0, i32 4
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %283
  %296 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %297 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %296, i32 0, i32 3
  store i64 0, i64* %297, align 8
  br label %298

298:                                              ; preds = %295, %283
  br label %299

299:                                              ; preds = %298, %270
  %300 = load i32, i32* %6, align 4
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %302, label %313

302:                                              ; preds = %299
  %303 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %304 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %307 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %310 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %311 = or i32 %309, %310
  %312 = call i32 @bus_dmamap_sync(i32 %305, i32 %308, i32 %311)
  br label %313

313:                                              ; preds = %14, %198, %302, %299
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i64 @DC_IS_PNIC(%struct.dc_softc*) #1

declare dso_local i32 @dc_setfilt(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_XIRCOM(%struct.dc_softc*) #1

declare dso_local i64 @DC_IS_CONEXANT(%struct.dc_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @dc_init_locked(%struct.dc_softc*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @DC_INC(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
