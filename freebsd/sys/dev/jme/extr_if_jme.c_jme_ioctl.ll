; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32, %struct.jme_softc* }
%struct.jme_softc = type { i32, i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.mii_data = type { i32 }

@ETHERMIN = common dso_local global i32 0, align 4
@JME_JUMBO_MTU = common dso_local global i32 0, align 4
@JME_FLAG_NOJUMBO = common dso_local global i32 0, align 4
@JME_MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@JME_TX_FIFO_SIZE = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@JME_CSUM_FEATURES = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@JME_FLAG_DETACH = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@JME_RXMAC = common dso_local global i32 0, align 4
@RXMAC_CSUM_ENB = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @jme_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.jme_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 6
  %15 = load %struct.jme_softc*, %struct.jme_softc** %14, align 8
  store %struct.jme_softc* %15, %struct.jme_softc** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %8, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %414 [
    i32 128, label %19
    i32 130, label %106
    i32 134, label %170
    i32 133, label %170
    i32 129, label %185
    i32 132, label %185
    i32 131, label %196
  ]

19:                                               ; preds = %3
  %20 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %21 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETHERMIN, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %44, label %25

25:                                               ; preds = %19
  %26 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @JME_JUMBO_MTU, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %44, label %31

31:                                               ; preds = %25
  %32 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %33 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @JME_FLAG_NOJUMBO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %40 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @JME_MAX_MTU, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %25, %19
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %11, align 4
  br label %419

46:                                               ; preds = %38, %31
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %51 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %105

54:                                               ; preds = %46
  %55 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %56 = call i32 @JME_LOCK(%struct.jme_softc* %55)
  %57 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %58 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @JME_TX_FIFO_SIZE, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %54
  %63 = load i32, i32* @IFCAP_TXCSUM, align 4
  %64 = load i32, i32* @IFCAP_TSO4, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @JME_CSUM_FEATURES, align 4
  %72 = load i32, i32* @CSUM_TSO, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %76 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %80 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %79)
  br label %81

81:                                               ; preds = %62, %54
  %82 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %83 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %88 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %81
  %94 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %97 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %101 = call i32 @jme_init_locked(%struct.jme_softc* %100)
  br label %102

102:                                              ; preds = %93, %81
  %103 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %104 = call i32 @JME_UNLOCK(%struct.jme_softc* %103)
  br label %105

105:                                              ; preds = %102, %46
  br label %419

106:                                              ; preds = %3
  %107 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %108 = call i32 @JME_LOCK(%struct.jme_softc* %107)
  %109 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %110 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IFF_UP, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %151

115:                                              ; preds = %106
  %116 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %117 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %115
  %123 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %124 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %127 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = xor i32 %125, %128
  %130 = load i32, i32* @IFF_PROMISC, align 4
  %131 = load i32, i32* @IFF_ALLMULTI, align 4
  %132 = or i32 %130, %131
  %133 = and i32 %129, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %122
  %136 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %137 = call i32 @jme_set_filter(%struct.jme_softc* %136)
  br label %138

138:                                              ; preds = %135, %122
  br label %150

139:                                              ; preds = %115
  %140 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %141 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @JME_FLAG_DETACH, align 4
  %144 = and i32 %142, %143
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %148 = call i32 @jme_init_locked(%struct.jme_softc* %147)
  br label %149

149:                                              ; preds = %146, %139
  br label %150

150:                                              ; preds = %149, %138
  br label %162

151:                                              ; preds = %106
  %152 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %153 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %160 = call i32 @jme_stop(%struct.jme_softc* %159)
  br label %161

161:                                              ; preds = %158, %151
  br label %162

162:                                              ; preds = %161, %150
  %163 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %164 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %167 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %169 = call i32 @JME_UNLOCK(%struct.jme_softc* %168)
  br label %419

170:                                              ; preds = %3, %3
  %171 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %172 = call i32 @JME_LOCK(%struct.jme_softc* %171)
  %173 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %174 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %170
  %180 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %181 = call i32 @jme_set_filter(%struct.jme_softc* %180)
  br label %182

182:                                              ; preds = %179, %170
  %183 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %184 = call i32 @JME_UNLOCK(%struct.jme_softc* %183)
  br label %419

185:                                              ; preds = %3, %3
  %186 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %187 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = call %struct.mii_data* @device_get_softc(i32 %188)
  store %struct.mii_data* %189, %struct.mii_data** %9, align 8
  %190 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %191 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %192 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %193 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %192, i32 0, i32 0
  %194 = load i32, i32* %5, align 4
  %195 = call i32 @ifmedia_ioctl(%struct.ifnet* %190, %struct.ifreq* %191, i32* %193, i32 %194)
  store i32 %195, i32* %11, align 4
  br label %419

196:                                              ; preds = %3
  %197 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %198 = call i32 @JME_LOCK(%struct.jme_softc* %197)
  %199 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %200 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %203 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = xor i32 %201, %204
  store i32 %205, i32* %12, align 4
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* @IFCAP_TXCSUM, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %250

210:                                              ; preds = %196
  %211 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %212 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @JME_TX_FIFO_SIZE, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %250

216:                                              ; preds = %210
  %217 = load i32, i32* @IFCAP_TXCSUM, align 4
  %218 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %219 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = and i32 %217, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %249

223:                                              ; preds = %216
  %224 = load i32, i32* @IFCAP_TXCSUM, align 4
  %225 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %226 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = xor i32 %227, %224
  store i32 %228, i32* %226, align 8
  %229 = load i32, i32* @IFCAP_TXCSUM, align 4
  %230 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %231 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = and i32 %229, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %223
  %236 = load i32, i32* @JME_CSUM_FEATURES, align 4
  %237 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %238 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 4
  br label %248

241:                                              ; preds = %223
  %242 = load i32, i32* @JME_CSUM_FEATURES, align 4
  %243 = xor i32 %242, -1
  %244 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %245 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, %243
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %241, %235
  br label %249

249:                                              ; preds = %248, %216
  br label %250

250:                                              ; preds = %249, %210, %196
  %251 = load i32, i32* %12, align 4
  %252 = load i32, i32* @IFCAP_RXCSUM, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %290

255:                                              ; preds = %250
  %256 = load i32, i32* @IFCAP_RXCSUM, align 4
  %257 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %258 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = and i32 %256, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %290

262:                                              ; preds = %255
  %263 = load i32, i32* @IFCAP_RXCSUM, align 4
  %264 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %265 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = xor i32 %266, %263
  store i32 %267, i32* %265, align 8
  %268 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %269 = load i32, i32* @JME_RXMAC, align 4
  %270 = call i32 @CSR_READ_4(%struct.jme_softc* %268, i32 %269)
  store i32 %270, i32* %10, align 4
  %271 = load i32, i32* @RXMAC_CSUM_ENB, align 4
  %272 = xor i32 %271, -1
  %273 = load i32, i32* %10, align 4
  %274 = and i32 %273, %272
  store i32 %274, i32* %10, align 4
  %275 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %276 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @IFCAP_RXCSUM, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %262
  %282 = load i32, i32* @RXMAC_CSUM_ENB, align 4
  %283 = load i32, i32* %10, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %10, align 4
  br label %285

285:                                              ; preds = %281, %262
  %286 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %287 = load i32, i32* @JME_RXMAC, align 4
  %288 = load i32, i32* %10, align 4
  %289 = call i32 @CSR_WRITE_4(%struct.jme_softc* %286, i32 %287, i32 %288)
  br label %290

290:                                              ; preds = %285, %255, %250
  %291 = load i32, i32* %12, align 4
  %292 = load i32, i32* @IFCAP_TSO4, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %335

295:                                              ; preds = %290
  %296 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %297 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @JME_TX_FIFO_SIZE, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %335

301:                                              ; preds = %295
  %302 = load i32, i32* @IFCAP_TSO4, align 4
  %303 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %304 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = and i32 %302, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %334

308:                                              ; preds = %301
  %309 = load i32, i32* @IFCAP_TSO4, align 4
  %310 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %311 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = xor i32 %312, %309
  store i32 %313, i32* %311, align 8
  %314 = load i32, i32* @IFCAP_TSO4, align 4
  %315 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %316 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = and i32 %314, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %308
  %321 = load i32, i32* @CSUM_TSO, align 4
  %322 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %323 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = or i32 %324, %321
  store i32 %325, i32* %323, align 4
  br label %333

326:                                              ; preds = %308
  %327 = load i32, i32* @CSUM_TSO, align 4
  %328 = xor i32 %327, -1
  %329 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %330 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = and i32 %331, %328
  store i32 %332, i32* %330, align 4
  br label %333

333:                                              ; preds = %326, %320
  br label %334

334:                                              ; preds = %333, %301
  br label %335

335:                                              ; preds = %334, %295, %290
  %336 = load i32, i32* %12, align 4
  %337 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %353

340:                                              ; preds = %335
  %341 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %342 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %343 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  %345 = and i32 %341, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %340
  %348 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %349 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %350 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = xor i32 %351, %348
  store i32 %352, i32* %350, align 8
  br label %353

353:                                              ; preds = %347, %340, %335
  %354 = load i32, i32* %12, align 4
  %355 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %371

358:                                              ; preds = %353
  %359 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %360 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %371

365:                                              ; preds = %358
  %366 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %367 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %368 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = xor i32 %369, %366
  store i32 %370, i32* %368, align 8
  br label %371

371:                                              ; preds = %365, %358, %353
  %372 = load i32, i32* %12, align 4
  %373 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %389

376:                                              ; preds = %371
  %377 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %378 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %389

383:                                              ; preds = %376
  %384 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %385 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %386 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = xor i32 %387, %384
  store i32 %388, i32* %386, align 8
  br label %389

389:                                              ; preds = %383, %376, %371
  %390 = load i32, i32* %12, align 4
  %391 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %392 = and i32 %390, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %409

394:                                              ; preds = %389
  %395 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %396 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %397 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 8
  %399 = and i32 %395, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %409

401:                                              ; preds = %394
  %402 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %403 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %404 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = xor i32 %405, %402
  store i32 %406, i32* %404, align 8
  %407 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %408 = call i32 @jme_set_vlan(%struct.jme_softc* %407)
  br label %409

409:                                              ; preds = %401, %394, %389
  %410 = load %struct.jme_softc*, %struct.jme_softc** %7, align 8
  %411 = call i32 @JME_UNLOCK(%struct.jme_softc* %410)
  %412 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %413 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %412)
  br label %419

414:                                              ; preds = %3
  %415 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %416 = load i32, i32* %5, align 4
  %417 = load i64, i64* %6, align 8
  %418 = call i32 @ether_ioctl(%struct.ifnet* %415, i32 %416, i64 %417)
  store i32 %418, i32* %11, align 4
  br label %419

419:                                              ; preds = %414, %409, %185, %182, %162, %105, %44
  %420 = load i32, i32* %11, align 4
  ret i32 %420
}

declare dso_local i32 @JME_LOCK(%struct.jme_softc*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @jme_init_locked(%struct.jme_softc*) #1

declare dso_local i32 @JME_UNLOCK(%struct.jme_softc*) #1

declare dso_local i32 @jme_set_filter(%struct.jme_softc*) #1

declare dso_local i32 @jme_stop(%struct.jme_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.jme_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i32, i32) #1

declare dso_local i32 @jme_set_vlan(%struct.jme_softc*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
