; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i32, %struct.rl_softc* }
%struct.rl_softc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ifreq = type { i32, i32 }
%struct.mii_data = type { i32 }

@ETHERMIN = common dso_local global i32 0, align 4
@RL_FLAG_FASTETHER = common dso_local global i32 0, align 4
@RL_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RL_FLAG_JUMBOV2 = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@RL_TSO_MTU = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@RE_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@IFCAP_WOL_UCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@RL_IMR = common dso_local global i32 0, align 4
@RL_INTRS_CPLUS = common dso_local global i32 0, align 4
@re_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @re_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.rl_softc*, align 8
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
  %15 = load %struct.rl_softc*, %struct.rl_softc** %14, align 8
  store %struct.rl_softc* %15, %struct.rl_softc** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %470 [
    i32 128, label %19
    i32 130, label %122
    i32 134, label %178
    i32 133, label %178
    i32 132, label %193
    i32 129, label %193
    i32 131, label %204
  ]

19:                                               ; preds = %3
  %20 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %21 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETHERMIN, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %48, label %25

25:                                               ; preds = %19
  %26 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %30 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %28, %33
  br i1 %34, label %48, label %35

35:                                               ; preds = %25
  %36 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %37 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RL_FLAG_FASTETHER, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %44 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @RL_MTU, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42, %25, %19
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %10, align 4
  br label %475

50:                                               ; preds = %42, %35
  %51 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %52 = call i32 @RL_LOCK(%struct.rl_softc* %51)
  %53 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %57 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %119

60:                                               ; preds = %50
  %61 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %62 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %67 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RL_FLAG_JUMBOV2, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %60
  %73 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %74 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %83 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %87 = call i32 @re_init_locked(%struct.rl_softc* %86)
  br label %88

88:                                               ; preds = %79, %72, %60
  %89 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %90 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @RL_TSO_MTU, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %116

94:                                               ; preds = %88
  %95 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %96 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IFCAP_TSO4, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %94
  %102 = load i32, i32* @IFCAP_TSO4, align 4
  %103 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %104 = or i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %107 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* @CSUM_TSO, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %113 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %101, %94, %88
  %117 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %118 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %117)
  br label %119

119:                                              ; preds = %116, %50
  %120 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %121 = call i32 @RL_UNLOCK(%struct.rl_softc* %120)
  br label %475

122:                                              ; preds = %3
  %123 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %124 = call i32 @RL_LOCK(%struct.rl_softc* %123)
  %125 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %126 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IFF_UP, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %159

131:                                              ; preds = %122
  %132 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %133 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %131
  %139 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %143 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = xor i32 %141, %144
  %146 = load i32, i32* @IFF_PROMISC, align 4
  %147 = load i32, i32* @IFF_ALLMULTI, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %138
  %152 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %153 = call i32 @re_set_rxmode(%struct.rl_softc* %152)
  br label %154

154:                                              ; preds = %151, %138
  br label %158

155:                                              ; preds = %131
  %156 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %157 = call i32 @re_init_locked(%struct.rl_softc* %156)
  br label %158

158:                                              ; preds = %155, %154
  br label %170

159:                                              ; preds = %122
  %160 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %161 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %168 = call i32 @re_stop(%struct.rl_softc* %167)
  br label %169

169:                                              ; preds = %166, %159
  br label %170

170:                                              ; preds = %169, %158
  %171 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %172 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %175 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %177 = call i32 @RL_UNLOCK(%struct.rl_softc* %176)
  br label %475

178:                                              ; preds = %3, %3
  %179 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %180 = call i32 @RL_LOCK(%struct.rl_softc* %179)
  %181 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %182 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %178
  %188 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %189 = call i32 @re_set_rxmode(%struct.rl_softc* %188)
  br label %190

190:                                              ; preds = %187, %178
  %191 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %192 = call i32 @RL_UNLOCK(%struct.rl_softc* %191)
  br label %475

193:                                              ; preds = %3, %3
  %194 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %195 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = call %struct.mii_data* @device_get_softc(i32 %196)
  store %struct.mii_data* %197, %struct.mii_data** %9, align 8
  %198 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %199 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %200 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %201 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %200, i32 0, i32 0
  %202 = load i32, i32* %5, align 4
  %203 = call i32 @ifmedia_ioctl(%struct.ifnet* %198, %struct.ifreq* %199, i32* %201, i32 %202)
  store i32 %203, i32* %10, align 4
  br label %475

204:                                              ; preds = %3
  %205 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %206 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %209 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = xor i32 %207, %210
  store i32 %211, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %212 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %213 = call i32 @RL_LOCK(%struct.rl_softc* %212)
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @IFCAP_TXCSUM, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %251

218:                                              ; preds = %204
  %219 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %220 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @IFCAP_TXCSUM, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %251

225:                                              ; preds = %218
  %226 = load i32, i32* @IFCAP_TXCSUM, align 4
  %227 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %228 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = xor i32 %229, %226
  store i32 %230, i32* %228, align 4
  %231 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %232 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @IFCAP_TXCSUM, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %225
  %238 = load i32, i32* @RE_CSUM_FEATURES, align 4
  %239 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %240 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 8
  br label %250

243:                                              ; preds = %225
  %244 = load i32, i32* @RE_CSUM_FEATURES, align 4
  %245 = xor i32 %244, -1
  %246 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %247 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = and i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %243, %237
  store i32 1, i32* %12, align 4
  br label %251

251:                                              ; preds = %250, %218, %204
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* @IFCAP_RXCSUM, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %251
  %257 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %258 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @IFCAP_RXCSUM, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %256
  %264 = load i32, i32* @IFCAP_RXCSUM, align 4
  %265 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %266 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = xor i32 %267, %264
  store i32 %268, i32* %266, align 4
  store i32 1, i32* %12, align 4
  br label %269

269:                                              ; preds = %263, %256, %251
  %270 = load i32, i32* %11, align 4
  %271 = load i32, i32* @IFCAP_TSO4, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %333

274:                                              ; preds = %269
  %275 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %276 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @IFCAP_TSO4, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %333

281:                                              ; preds = %274
  %282 = load i32, i32* @IFCAP_TSO4, align 4
  %283 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %284 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = xor i32 %285, %282
  store i32 %286, i32* %284, align 4
  %287 = load i32, i32* @IFCAP_TSO4, align 4
  %288 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %289 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = and i32 %287, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %281
  %294 = load i32, i32* @CSUM_TSO, align 4
  %295 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %296 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 8
  br label %306

299:                                              ; preds = %281
  %300 = load i32, i32* @CSUM_TSO, align 4
  %301 = xor i32 %300, -1
  %302 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %303 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %302, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = and i32 %304, %301
  store i32 %305, i32* %303, align 8
  br label %306

306:                                              ; preds = %299, %293
  %307 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %308 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @RL_TSO_MTU, align 4
  %311 = icmp sgt i32 %309, %310
  br i1 %311, label %312, label %332

312:                                              ; preds = %306
  %313 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %314 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @IFCAP_TSO4, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %332

319:                                              ; preds = %312
  %320 = load i32, i32* @IFCAP_TSO4, align 4
  %321 = xor i32 %320, -1
  %322 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %323 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = and i32 %324, %321
  store i32 %325, i32* %323, align 4
  %326 = load i32, i32* @CSUM_TSO, align 4
  %327 = xor i32 %326, -1
  %328 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %329 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = and i32 %330, %327
  store i32 %331, i32* %329, align 8
  br label %332

332:                                              ; preds = %319, %312, %306
  br label %333

333:                                              ; preds = %332, %274, %269
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %351

338:                                              ; preds = %333
  %339 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %340 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %338
  %346 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %347 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %348 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = xor i32 %349, %346
  store i32 %350, i32* %348, align 4
  br label %351

351:                                              ; preds = %345, %338, %333
  %352 = load i32, i32* %11, align 4
  %353 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %383

356:                                              ; preds = %351
  %357 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %358 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %383

363:                                              ; preds = %356
  %364 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %365 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %366 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = xor i32 %367, %364
  store i32 %368, i32* %366, align 4
  %369 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %370 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %373 = and i32 %371, %372
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %363
  %376 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %377 = xor i32 %376, -1
  %378 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %379 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = and i32 %380, %377
  store i32 %381, i32* %379, align 4
  br label %382

382:                                              ; preds = %375, %363
  store i32 1, i32* %12, align 4
  br label %383

383:                                              ; preds = %382, %356, %351
  %384 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %385 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @RL_FLAG_JUMBOV2, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %400

390:                                              ; preds = %383
  %391 = load i32, i32* %11, align 4
  %392 = load i32, i32* @IFCAP_HWCSUM, align 4
  %393 = load i32, i32* @IFCAP_TSO4, align 4
  %394 = or i32 %392, %393
  %395 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %396 = or i32 %394, %395
  %397 = and i32 %391, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %390
  store i32 1, i32* %12, align 4
  br label %400

400:                                              ; preds = %399, %390, %383
  %401 = load i32, i32* %11, align 4
  %402 = load i32, i32* @IFCAP_WOL, align 4
  %403 = and i32 %401, %402
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %446

405:                                              ; preds = %400
  %406 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %407 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @IFCAP_WOL, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %446

412:                                              ; preds = %405
  %413 = load i32, i32* %11, align 4
  %414 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %423

417:                                              ; preds = %412
  %418 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %419 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %420 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = xor i32 %421, %418
  store i32 %422, i32* %420, align 4
  br label %423

423:                                              ; preds = %417, %412
  %424 = load i32, i32* %11, align 4
  %425 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %434

428:                                              ; preds = %423
  %429 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %430 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %431 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = xor i32 %432, %429
  store i32 %433, i32* %431, align 4
  br label %434

434:                                              ; preds = %428, %423
  %435 = load i32, i32* %11, align 4
  %436 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %437 = and i32 %435, %436
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %445

439:                                              ; preds = %434
  %440 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %441 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %442 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = xor i32 %443, %440
  store i32 %444, i32* %442, align 4
  br label %445

445:                                              ; preds = %439, %434
  br label %446

446:                                              ; preds = %445, %405, %400
  %447 = load i32, i32* %12, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %465

449:                                              ; preds = %446
  %450 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %451 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %454 = and i32 %452, %453
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %465

456:                                              ; preds = %449
  %457 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %458 = xor i32 %457, -1
  %459 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %460 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = and i32 %461, %458
  store i32 %462, i32* %460, align 8
  %463 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %464 = call i32 @re_init_locked(%struct.rl_softc* %463)
  br label %465

465:                                              ; preds = %456, %449, %446
  %466 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  %467 = call i32 @RL_UNLOCK(%struct.rl_softc* %466)
  %468 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %469 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %468)
  br label %475

470:                                              ; preds = %3
  %471 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %472 = load i32, i32* %5, align 4
  %473 = load i64, i64* %6, align 8
  %474 = call i32 @ether_ioctl(%struct.ifnet* %471, i32 %472, i64 %473)
  store i32 %474, i32* %10, align 4
  br label %475

475:                                              ; preds = %470, %465, %193, %190, %170, %119, %48
  %476 = load i32, i32* %10, align 4
  ret i32 %476
}

declare dso_local i32 @RL_LOCK(%struct.rl_softc*) #1

declare dso_local i32 @re_init_locked(%struct.rl_softc*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @RL_UNLOCK(%struct.rl_softc*) #1

declare dso_local i32 @re_set_rxmode(%struct.rl_softc*) #1

declare dso_local i32 @re_stop(%struct.rl_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
