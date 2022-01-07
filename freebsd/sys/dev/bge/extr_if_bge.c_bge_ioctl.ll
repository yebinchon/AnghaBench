; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i32, i32, i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.mii_data = type { i32 }

@BGE_FLAG_JUMBO_STD = common dso_local global i32 0, align 4
@ETHERMIN = common dso_local global i32 0, align 4
@BGE_JUMBO_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@BGE_FLAG_TBI = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@BGE_MBX_IRQ0_LO = common dso_local global i32 0, align 4
@BGE_PCIMISCCTL_MASK_PCI_INTR = common dso_local global i32 0, align 4
@BGE_PCI_MISC_CTL = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@bge_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @bge_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_ioctl(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.bge_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.bge_softc* @if_getsoftc(i32 %13)
  store %struct.bge_softc* %14, %struct.bge_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %331 [
    i32 128, label %18
    i32 130, label %89
    i32 134, label %147
    i32 133, label %147
    i32 129, label %161
    i32 132, label %161
    i32 131, label %187
  ]

18:                                               ; preds = %3
  %19 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %20 = call i32 @BGE_IS_JUMBO_CAPABLE(%struct.bge_softc* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %24 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BGE_FLAG_JUMBO_STD, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %22, %18
  %30 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ETHERMIN, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %37 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BGE_JUMBO_MTU, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35, %29
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %12, align 4
  br label %336

43:                                               ; preds = %35
  br label %59

44:                                               ; preds = %22
  %45 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %46 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ETHERMIN, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %52 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ETHERMTU, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50, %44
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %12, align 4
  br label %336

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %61 = call i32 @BGE_LOCK(%struct.bge_softc* %60)
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @if_getmtu(i32 %62)
  %64 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %65 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %59
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %71 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @if_setmtu(i32 %69, i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @if_getdrvflags(i32 %74)
  %76 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %82 = call i32 @if_setdrvflagbits(i32 %80, i32 0, i32 %81)
  %83 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %84 = call i32 @bge_init_locked(%struct.bge_softc* %83)
  br label %85

85:                                               ; preds = %79, %68
  br label %86

86:                                               ; preds = %85, %59
  %87 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %88 = call i32 @BGE_UNLOCK(%struct.bge_softc* %87)
  br label %336

89:                                               ; preds = %3
  %90 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %91 = call i32 @BGE_LOCK(%struct.bge_softc* %90)
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @if_getflags(i32 %92)
  %94 = load i32, i32* @IFF_UP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %130

97:                                               ; preds = %89
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @if_getdrvflags(i32 %98)
  %100 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %97
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @if_getflags(i32 %104)
  %106 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %107 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %105, %108
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @IFF_PROMISC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %103
  %115 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %116 = call i32 @bge_setpromisc(%struct.bge_softc* %115)
  br label %117

117:                                              ; preds = %114, %103
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @IFF_ALLMULTI, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %124 = call i32 @bge_setmulti(%struct.bge_softc* %123)
  br label %125

125:                                              ; preds = %122, %117
  br label %129

126:                                              ; preds = %97
  %127 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %128 = call i32 @bge_init_locked(%struct.bge_softc* %127)
  br label %129

129:                                              ; preds = %126, %125
  br label %140

130:                                              ; preds = %89
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @if_getdrvflags(i32 %131)
  %133 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %138 = call i32 @bge_stop(%struct.bge_softc* %137)
  br label %139

139:                                              ; preds = %136, %130
  br label %140

140:                                              ; preds = %139, %129
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @if_getflags(i32 %141)
  %143 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %144 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %146 = call i32 @BGE_UNLOCK(%struct.bge_softc* %145)
  store i32 0, i32* %12, align 4
  br label %336

147:                                              ; preds = %3, %3
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @if_getdrvflags(i32 %148)
  %150 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %155 = call i32 @BGE_LOCK(%struct.bge_softc* %154)
  %156 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %157 = call i32 @bge_setmulti(%struct.bge_softc* %156)
  %158 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %159 = call i32 @BGE_UNLOCK(%struct.bge_softc* %158)
  store i32 0, i32* %12, align 4
  br label %160

160:                                              ; preds = %153, %147
  br label %336

161:                                              ; preds = %3, %3
  %162 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %163 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @BGE_FLAG_TBI, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %161
  %169 = load i32, i32* %4, align 4
  %170 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %171 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %172 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %171, i32 0, i32 4
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @ifmedia_ioctl(i32 %169, %struct.ifreq* %170, i32* %172, i32 %173)
  store i32 %174, i32* %12, align 4
  br label %186

175:                                              ; preds = %161
  %176 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %177 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = call %struct.mii_data* @device_get_softc(i32 %178)
  store %struct.mii_data* %179, %struct.mii_data** %9, align 8
  %180 = load i32, i32* %4, align 4
  %181 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %182 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %183 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %182, i32 0, i32 0
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @ifmedia_ioctl(i32 %180, %struct.ifreq* %181, i32* %183, i32 %184)
  store i32 %185, i32* %12, align 4
  br label %186

186:                                              ; preds = %175, %168
  br label %336

187:                                              ; preds = %3
  %188 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %189 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %4, align 4
  %192 = call i32 @if_getcapenable(i32 %191)
  %193 = xor i32 %190, %192
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @IFCAP_TXCSUM, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %226

198:                                              ; preds = %187
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @if_getcapabilities(i32 %199)
  %201 = load i32, i32* @IFCAP_TXCSUM, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %198
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* @IFCAP_TXCSUM, align 4
  %207 = call i32 @if_togglecapenable(i32 %205, i32 %206)
  %208 = load i32, i32* %4, align 4
  %209 = call i32 @if_getcapenable(i32 %208)
  %210 = load i32, i32* @IFCAP_TXCSUM, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %204
  %214 = load i32, i32* %4, align 4
  %215 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %216 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @if_sethwassistbits(i32 %214, i32 %217, i32 0)
  br label %225

219:                                              ; preds = %204
  %220 = load i32, i32* %4, align 4
  %221 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %222 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @if_sethwassistbits(i32 %220, i32 0, i32 %223)
  br label %225

225:                                              ; preds = %219, %213
  br label %226

226:                                              ; preds = %225, %198, %187
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* @IFCAP_RXCSUM, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %226
  %232 = load i32, i32* %4, align 4
  %233 = call i32 @if_getcapabilities(i32 %232)
  %234 = load i32, i32* @IFCAP_RXCSUM, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %231
  %238 = load i32, i32* %4, align 4
  %239 = load i32, i32* @IFCAP_RXCSUM, align 4
  %240 = call i32 @if_togglecapenable(i32 %238, i32 %239)
  br label %241

241:                                              ; preds = %237, %231, %226
  %242 = load i32, i32* %11, align 4
  %243 = load i32, i32* @IFCAP_TSO4, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %270

246:                                              ; preds = %241
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @if_getcapabilities(i32 %247)
  %249 = load i32, i32* @IFCAP_TSO4, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %270

252:                                              ; preds = %246
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* @IFCAP_TSO4, align 4
  %255 = call i32 @if_togglecapenable(i32 %253, i32 %254)
  %256 = load i32, i32* %4, align 4
  %257 = call i32 @if_getcapenable(i32 %256)
  %258 = load i32, i32* @IFCAP_TSO4, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %252
  %262 = load i32, i32* %4, align 4
  %263 = load i32, i32* @CSUM_TSO, align 4
  %264 = call i32 @if_sethwassistbits(i32 %262, i32 %263, i32 0)
  br label %269

265:                                              ; preds = %252
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* @CSUM_TSO, align 4
  %268 = call i32 @if_sethwassistbits(i32 %266, i32 0, i32 %267)
  br label %269

269:                                              ; preds = %265, %261
  br label %270

270:                                              ; preds = %269, %246, %241
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %270
  %276 = load i32, i32* %4, align 4
  %277 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %278 = call i32 @if_togglecapenable(i32 %276, i32 %277)
  %279 = load i32, i32* %4, align 4
  %280 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %281 = call i32 @if_setdrvflagbits(i32 %279, i32 0, i32 %280)
  %282 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %283 = call i32 @bge_init(%struct.bge_softc* %282)
  br label %284

284:                                              ; preds = %275, %270
  %285 = load i32, i32* %11, align 4
  %286 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %284
  %290 = load i32, i32* %4, align 4
  %291 = call i32 @if_getcapabilities(i32 %290)
  %292 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %289
  %296 = load i32, i32* %4, align 4
  %297 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %298 = call i32 @if_togglecapenable(i32 %296, i32 %297)
  br label %299

299:                                              ; preds = %295, %289, %284
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %330

304:                                              ; preds = %299
  %305 = load i32, i32* %4, align 4
  %306 = call i32 @if_getcapabilities(i32 %305)
  %307 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %330

310:                                              ; preds = %304
  %311 = load i32, i32* %4, align 4
  %312 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %313 = call i32 @if_togglecapenable(i32 %311, i32 %312)
  %314 = load i32, i32* %4, align 4
  %315 = call i32 @if_getcapenable(i32 %314)
  %316 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %317 = and i32 %315, %316
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %310
  %320 = load i32, i32* %4, align 4
  %321 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %322 = call i32 @if_setcapenablebit(i32 %320, i32 0, i32 %321)
  br label %323

323:                                              ; preds = %319, %310
  %324 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %325 = call i32 @BGE_LOCK(%struct.bge_softc* %324)
  %326 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %327 = call i32 @bge_setvlan(%struct.bge_softc* %326)
  %328 = load %struct.bge_softc*, %struct.bge_softc** %7, align 8
  %329 = call i32 @BGE_UNLOCK(%struct.bge_softc* %328)
  br label %330

330:                                              ; preds = %323, %304, %299
  br label %336

331:                                              ; preds = %3
  %332 = load i32, i32* %4, align 4
  %333 = load i32, i32* %5, align 4
  %334 = load i64, i64* %6, align 8
  %335 = call i32 @ether_ioctl(i32 %332, i32 %333, i64 %334)
  store i32 %335, i32* %12, align 4
  br label %336

336:                                              ; preds = %331, %330, %186, %160, %140, %86, %56, %41
  %337 = load i32, i32* %12, align 4
  ret i32 %337
}

declare dso_local %struct.bge_softc* @if_getsoftc(i32) #1

declare dso_local i32 @BGE_IS_JUMBO_CAPABLE(%struct.bge_softc*) #1

declare dso_local i32 @BGE_LOCK(%struct.bge_softc*) #1

declare dso_local i32 @if_getmtu(i32) #1

declare dso_local i32 @if_setmtu(i32, i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @bge_init_locked(%struct.bge_softc*) #1

declare dso_local i32 @BGE_UNLOCK(%struct.bge_softc*) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i32 @bge_setpromisc(%struct.bge_softc*) #1

declare dso_local i32 @bge_setmulti(%struct.bge_softc*) #1

declare dso_local i32 @bge_stop(%struct.bge_softc*) #1

declare dso_local i32 @ifmedia_ioctl(i32, %struct.ifreq*, i32*, i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @if_getcapabilities(i32) #1

declare dso_local i32 @if_togglecapenable(i32, i32) #1

declare dso_local i32 @if_sethwassistbits(i32, i32, i32) #1

declare dso_local i32 @bge_init(%struct.bge_softc*) #1

declare dso_local i32 @if_setcapenablebit(i32, i32, i32) #1

declare dso_local i32 @bge_setvlan(%struct.bge_softc*) #1

declare dso_local i32 @ether_ioctl(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
