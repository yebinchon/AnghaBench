; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32, %struct.msk_if_softc* }
%struct.msk_if_softc = type { i32, i32, i32 }
%struct.ifreq = type { i32, i32 }
%struct.mii_data = type { i32 }

@MSK_JUMBO_MTU = common dso_local global i32 0, align 4
@ETHERMIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@MSK_FLAG_JUMBO = common dso_local global i32 0, align 4
@MSK_FLAG_JUMBO_NOCSUM = common dso_local global i32 0, align 4
@MSK_CSUM_FEATURES = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MSK_FLAG_DETACH = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@MSK_FLAG_DESCV2 = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @msk_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msk_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.msk_if_softc*, align 8
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
  %15 = load %struct.msk_if_softc*, %struct.msk_if_softc** %14, align 8
  store %struct.msk_if_softc* %15, %struct.msk_if_softc** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %440 [
    i32 128, label %19
    i32 130, label %113
    i32 134, label %176
    i32 133, label %176
    i32 132, label %191
    i32 129, label %191
    i32 131, label %202
  ]

19:                                               ; preds = %3
  %20 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %21 = call i32 @MSK_IF_LOCK(%struct.msk_if_softc* %20)
  %22 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %23 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MSK_JUMBO_MTU, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %29 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ETHERMIN, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %19
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %10, align 4
  br label %110

35:                                               ; preds = %27
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %40 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %109

43:                                               ; preds = %35
  %44 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %45 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ETHERMTU, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %43
  %50 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %51 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MSK_FLAG_JUMBO, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %10, align 4
  %58 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %59 = call i32 @MSK_IF_UNLOCK(%struct.msk_if_softc* %58)
  br label %445

60:                                               ; preds = %49
  %61 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %62 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MSK_FLAG_JUMBO_NOCSUM, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %60
  %68 = load i32, i32* @MSK_CSUM_FEATURES, align 4
  %69 = load i32, i32* @CSUM_TSO, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* @IFCAP_TSO4, align 4
  %77 = load i32, i32* @IFCAP_TXCSUM, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %84)
  br label %86

86:                                               ; preds = %67, %60
  br label %87

87:                                               ; preds = %86, %43
  %88 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %89 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %92 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %87
  %100 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %103 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %107 = call i32 @msk_init_locked(%struct.msk_if_softc* %106)
  br label %108

108:                                              ; preds = %99, %87
  br label %109

109:                                              ; preds = %108, %35
  br label %110

110:                                              ; preds = %109, %33
  %111 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %112 = call i32 @MSK_IF_UNLOCK(%struct.msk_if_softc* %111)
  br label %445

113:                                              ; preds = %3
  %114 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %115 = call i32 @MSK_IF_LOCK(%struct.msk_if_softc* %114)
  %116 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %117 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IFF_UP, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %157

122:                                              ; preds = %113
  %123 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %124 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %122
  %130 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %131 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %134 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = xor i32 %132, %135
  %137 = load i32, i32* @IFF_PROMISC, align 4
  %138 = load i32, i32* @IFF_ALLMULTI, align 4
  %139 = or i32 %137, %138
  %140 = and i32 %136, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %129
  %143 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %144 = call i32 @msk_rxfilter(%struct.msk_if_softc* %143)
  br label %156

145:                                              ; preds = %129, %122
  %146 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %147 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @MSK_FLAG_DETACH, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %154 = call i32 @msk_init_locked(%struct.msk_if_softc* %153)
  br label %155

155:                                              ; preds = %152, %145
  br label %156

156:                                              ; preds = %155, %142
  br label %168

157:                                              ; preds = %113
  %158 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %159 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %166 = call i32 @msk_stop(%struct.msk_if_softc* %165)
  br label %167

167:                                              ; preds = %164, %157
  br label %168

168:                                              ; preds = %167, %156
  %169 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %170 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %173 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %175 = call i32 @MSK_IF_UNLOCK(%struct.msk_if_softc* %174)
  br label %445

176:                                              ; preds = %3, %3
  %177 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %178 = call i32 @MSK_IF_LOCK(%struct.msk_if_softc* %177)
  %179 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %180 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %176
  %186 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %187 = call i32 @msk_rxfilter(%struct.msk_if_softc* %186)
  br label %188

188:                                              ; preds = %185, %176
  %189 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %190 = call i32 @MSK_IF_UNLOCK(%struct.msk_if_softc* %189)
  br label %445

191:                                              ; preds = %3, %3
  %192 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %193 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call %struct.mii_data* @device_get_softc(i32 %194)
  store %struct.mii_data* %195, %struct.mii_data** %9, align 8
  %196 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %197 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %198 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %199 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %198, i32 0, i32 0
  %200 = load i32, i32* %5, align 4
  %201 = call i32 @ifmedia_ioctl(%struct.ifnet* %196, %struct.ifreq* %197, i32* %199, i32 %200)
  store i32 %201, i32* %10, align 4
  br label %445

202:                                              ; preds = %3
  store i32 0, i32* %12, align 4
  %203 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %204 = call i32 @MSK_IF_LOCK(%struct.msk_if_softc* %203)
  %205 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %206 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %209 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = xor i32 %207, %210
  store i32 %211, i32* %11, align 4
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* @IFCAP_TXCSUM, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %249

216:                                              ; preds = %202
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
  %226 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = xor i32 %227, %224
  store i32 %228, i32* %226, align 4
  %229 = load i32, i32* @IFCAP_TXCSUM, align 4
  %230 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %231 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %229, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %223
  %236 = load i32, i32* @MSK_CSUM_FEATURES, align 4
  %237 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %238 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 8
  br label %248

241:                                              ; preds = %223
  %242 = load i32, i32* @MSK_CSUM_FEATURES, align 4
  %243 = xor i32 %242, -1
  %244 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %245 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = and i32 %246, %243
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %241, %235
  br label %249

249:                                              ; preds = %248, %216, %202
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* @IFCAP_RXCSUM, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %275

254:                                              ; preds = %249
  %255 = load i32, i32* @IFCAP_RXCSUM, align 4
  %256 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %257 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = and i32 %255, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %275

261:                                              ; preds = %254
  %262 = load i32, i32* @IFCAP_RXCSUM, align 4
  %263 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %264 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = xor i32 %265, %262
  store i32 %266, i32* %264, align 4
  %267 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %268 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @MSK_FLAG_DESCV2, align 4
  %271 = and i32 %269, %270
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %261
  store i32 1, i32* %12, align 4
  br label %274

274:                                              ; preds = %273, %261
  br label %275

275:                                              ; preds = %274, %254, %249
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %293

280:                                              ; preds = %275
  %281 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %282 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %283 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = and i32 %281, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %280
  %288 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %289 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %290 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = xor i32 %291, %288
  store i32 %292, i32* %290, align 4
  br label %293

293:                                              ; preds = %287, %280, %275
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* @IFCAP_TSO4, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %331

298:                                              ; preds = %293
  %299 = load i32, i32* @IFCAP_TSO4, align 4
  %300 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %301 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = and i32 %299, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %331

305:                                              ; preds = %298
  %306 = load i32, i32* @IFCAP_TSO4, align 4
  %307 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %308 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = xor i32 %309, %306
  store i32 %310, i32* %308, align 4
  %311 = load i32, i32* @IFCAP_TSO4, align 4
  %312 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %313 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = and i32 %311, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %305
  %318 = load i32, i32* @CSUM_TSO, align 4
  %319 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %320 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 8
  br label %330

323:                                              ; preds = %305
  %324 = load i32, i32* @CSUM_TSO, align 4
  %325 = xor i32 %324, -1
  %326 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %327 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = and i32 %328, %325
  store i32 %329, i32* %327, align 8
  br label %330

330:                                              ; preds = %323, %317
  br label %331

331:                                              ; preds = %330, %298, %293
  %332 = load i32, i32* %11, align 4
  %333 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %349

336:                                              ; preds = %331
  %337 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %338 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %339 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 8
  %341 = and i32 %337, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %349

343:                                              ; preds = %336
  %344 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %345 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %346 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = xor i32 %347, %344
  store i32 %348, i32* %346, align 4
  br label %349

349:                                              ; preds = %343, %336, %331
  %350 = load i32, i32* %11, align 4
  %351 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %386

354:                                              ; preds = %349
  %355 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %356 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %357 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 8
  %359 = and i32 %355, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %386

361:                                              ; preds = %354
  %362 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %363 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %364 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = xor i32 %365, %362
  store i32 %366, i32* %364, align 4
  %367 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %368 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %369 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = and i32 %367, %370
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %382

373:                                              ; preds = %361
  %374 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %375 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %376 = or i32 %374, %375
  %377 = xor i32 %376, -1
  %378 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %379 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = and i32 %380, %377
  store i32 %381, i32* %379, align 4
  br label %382

382:                                              ; preds = %373, %361
  %383 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %384 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %385 = call i32 @msk_setvlan(%struct.msk_if_softc* %383, %struct.ifnet* %384)
  br label %386

386:                                              ; preds = %382, %354, %349
  %387 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %388 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %387, i32 0, i32 5
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @ETHERMTU, align 4
  %391 = icmp sgt i32 %389, %390
  br i1 %391, label %392, label %416

392:                                              ; preds = %386
  %393 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %394 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @MSK_FLAG_JUMBO_NOCSUM, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %416

399:                                              ; preds = %392
  %400 = load i32, i32* @MSK_CSUM_FEATURES, align 4
  %401 = load i32, i32* @CSUM_TSO, align 4
  %402 = or i32 %400, %401
  %403 = xor i32 %402, -1
  %404 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %405 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = and i32 %406, %403
  store i32 %407, i32* %405, align 8
  %408 = load i32, i32* @IFCAP_TSO4, align 4
  %409 = load i32, i32* @IFCAP_TXCSUM, align 4
  %410 = or i32 %408, %409
  %411 = xor i32 %410, -1
  %412 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %413 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = and i32 %414, %411
  store i32 %415, i32* %413, align 4
  br label %416

416:                                              ; preds = %399, %392, %386
  %417 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %418 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %417)
  %419 = load i32, i32* %12, align 4
  %420 = icmp sgt i32 %419, 0
  br i1 %420, label %421, label %437

421:                                              ; preds = %416
  %422 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %423 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %437

428:                                              ; preds = %421
  %429 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %430 = xor i32 %429, -1
  %431 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %432 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = and i32 %433, %430
  store i32 %434, i32* %432, align 8
  %435 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %436 = call i32 @msk_init_locked(%struct.msk_if_softc* %435)
  br label %437

437:                                              ; preds = %428, %421, %416
  %438 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  %439 = call i32 @MSK_IF_UNLOCK(%struct.msk_if_softc* %438)
  br label %445

440:                                              ; preds = %3
  %441 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %442 = load i32, i32* %5, align 4
  %443 = load i64, i64* %6, align 8
  %444 = call i32 @ether_ioctl(%struct.ifnet* %441, i32 %442, i64 %443)
  store i32 %444, i32* %10, align 4
  br label %445

445:                                              ; preds = %440, %437, %191, %188, %168, %110, %56
  %446 = load i32, i32* %10, align 4
  ret i32 %446
}

declare dso_local i32 @MSK_IF_LOCK(%struct.msk_if_softc*) #1

declare dso_local i32 @MSK_IF_UNLOCK(%struct.msk_if_softc*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @msk_init_locked(%struct.msk_if_softc*) #1

declare dso_local i32 @msk_rxfilter(%struct.msk_if_softc*) #1

declare dso_local i32 @msk_stop(%struct.msk_if_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @msk_setvlan(%struct.msk_if_softc*, %struct.ifnet*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
