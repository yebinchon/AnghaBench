; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, i64, %struct.bce_softc* }
%struct.bce_softc = type { i32, i32, i32, i32 }
%struct.ifreq = type { i32, i64 }
%struct.mii_data = type { i32 }

@BCE_VERBOSE_MISC = common dso_local global i32 0, align 4
@BCE_MIN_MTU = common dso_local global i64 0, align 8
@BCE_MAX_JUMBO_MTU = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BCE_INFO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SIOCSIFMTU: Changing MTU from %d to %d\0A\00", align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@BCE_VERBOSE_SPECIAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Received SIOCSIFFLAGS\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@BCE_MFW_ENABLE_FLAG = common dso_local global i32 0, align 4
@BCE_DRV_MSG_CODE_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Received SIOCADDMULTI/SIOCDELMULTI\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Received SIOCSIFMEDIA/SIOCGIFMEDIA\0A\00", align 1
@BCE_PHY_REMOTE_CAP_FLAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Received SIOCSIFCAP = 0x%08X\0A\00", align 1
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@BCE_IF_HWASSIST = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@bce_tso_enable = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWCSUM = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @bce_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bce_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.bce_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.mii_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 6
  %14 = load %struct.bce_softc*, %struct.bce_softc** %13, align 8
  store %struct.bce_softc* %14, %struct.bce_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @BCE_VERBOSE_MISC, align 4
  %18 = call i32 @DBENTER(i32 %17)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %352 [
    i32 128, label %20
    i32 130, label %71
    i32 134, label %126
    i32 133, label %126
    i32 129, label %144
    i32 132, label %144
    i32 131, label %173
  ]

20:                                               ; preds = %3
  %21 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BCE_MIN_MTU, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %28 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BCE_MAX_JUMBO_MTU, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %20
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %11, align 4
  br label %357

34:                                               ; preds = %26
  %35 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %36 = load i32, i32* @BCE_INFO_MISC, align 4
  %37 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %42 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 (%struct.bce_softc*, i32, i8*, ...) @DBPRINT(%struct.bce_softc* %35, i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44)
  %46 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %47 = call i32 @BCE_LOCK(%struct.bce_softc* %46)
  %48 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %49 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 5
  store i64 %50, i64* %52, align 8
  %53 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %34
  %60 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %67 = call i32 @bce_init_locked(%struct.bce_softc* %66)
  br label %68

68:                                               ; preds = %59, %34
  %69 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %70 = call i32 @BCE_UNLOCK(%struct.bce_softc* %69)
  br label %357

71:                                               ; preds = %3
  %72 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %73 = load i32, i32* @BCE_VERBOSE_SPECIAL, align 4
  %74 = call i32 (%struct.bce_softc*, i32, i8*, ...) @DBPRINT(%struct.bce_softc* %72, i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %76 = call i32 @BCE_LOCK(%struct.bce_softc* %75)
  %77 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IFF_UP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %71
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %92 = call i32 @bce_set_rx_mode(%struct.bce_softc* %91)
  br label %96

93:                                               ; preds = %83
  %94 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %95 = call i32 @bce_init_locked(%struct.bce_softc* %94)
  br label %96

96:                                               ; preds = %93, %90
  br label %123

97:                                               ; preds = %71
  %98 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %99 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %97
  %105 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %106 = call i32 @bce_stop(%struct.bce_softc* %105)
  %107 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %108 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @BCE_MFW_ENABLE_FLAG, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %104
  %114 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %115 = load i32, i32* @BCE_DRV_MSG_CODE_RESET, align 4
  %116 = call i32 @bce_reset(%struct.bce_softc* %114, i32 %115)
  %117 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %118 = call i32 @bce_chipinit(%struct.bce_softc* %117)
  %119 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %120 = call i32 @bce_mgmt_init_locked(%struct.bce_softc* %119)
  br label %121

121:                                              ; preds = %113, %104
  br label %122

122:                                              ; preds = %121, %97
  br label %123

123:                                              ; preds = %122, %96
  %124 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %125 = call i32 @BCE_UNLOCK(%struct.bce_softc* %124)
  br label %357

126:                                              ; preds = %3, %3
  %127 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %128 = load i32, i32* @BCE_VERBOSE_MISC, align 4
  %129 = call i32 (%struct.bce_softc*, i32, i8*, ...) @DBPRINT(%struct.bce_softc* %127, i32 %128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %130 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %131 = call i32 @BCE_LOCK(%struct.bce_softc* %130)
  %132 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %133 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %126
  %139 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %140 = call i32 @bce_set_rx_mode(%struct.bce_softc* %139)
  br label %141

141:                                              ; preds = %138, %126
  %142 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %143 = call i32 @BCE_UNLOCK(%struct.bce_softc* %142)
  br label %357

144:                                              ; preds = %3, %3
  %145 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %146 = load i32, i32* @BCE_VERBOSE_MISC, align 4
  %147 = call i32 (%struct.bce_softc*, i32, i8*, ...) @DBPRINT(%struct.bce_softc* %145, i32 %146, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %148 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %149 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @BCE_PHY_REMOTE_CAP_FLAG, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %144
  %155 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %156 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %157 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %158 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %157, i32 0, i32 3
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @ifmedia_ioctl(%struct.ifnet* %155, %struct.ifreq* %156, i32* %158, i32 %159)
  store i32 %160, i32* %11, align 4
  br label %172

161:                                              ; preds = %144
  %162 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %163 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call %struct.mii_data* @device_get_softc(i32 %164)
  store %struct.mii_data* %165, %struct.mii_data** %9, align 8
  %166 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %167 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %168 = load %struct.mii_data*, %struct.mii_data** %9, align 8
  %169 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %168, i32 0, i32 0
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @ifmedia_ioctl(%struct.ifnet* %166, %struct.ifreq* %167, i32* %169, i32 %170)
  store i32 %171, i32* %11, align 4
  br label %172

172:                                              ; preds = %161, %154
  br label %357

173:                                              ; preds = %3
  %174 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %175 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %178 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = xor i32 %176, %179
  store i32 %180, i32* %10, align 4
  %181 = load %struct.bce_softc*, %struct.bce_softc** %7, align 8
  %182 = load i32, i32* @BCE_INFO_MISC, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 (%struct.bce_softc*, i32, i8*, ...) @DBPRINT(%struct.bce_softc* %181, i32 %182, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* @IFCAP_TXCSUM, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %222

189:                                              ; preds = %173
  %190 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %191 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @IFCAP_TXCSUM, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %222

196:                                              ; preds = %189
  %197 = load i32, i32* @IFCAP_TXCSUM, align 4
  %198 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %199 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = xor i32 %200, %197
  store i32 %201, i32* %199, align 8
  %202 = load i32, i32* @IFCAP_TXCSUM, align 4
  %203 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %204 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %202, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %196
  %209 = load i32, i32* @BCE_IF_HWASSIST, align 4
  %210 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %211 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 8
  br label %221

214:                                              ; preds = %196
  %215 = load i32, i32* @BCE_IF_HWASSIST, align 4
  %216 = xor i32 %215, -1
  %217 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %218 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = and i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %214, %208
  br label %222

222:                                              ; preds = %221, %189, %173
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* @IFCAP_RXCSUM, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %222
  %228 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %229 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @IFCAP_RXCSUM, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %227
  %235 = load i32, i32* @IFCAP_RXCSUM, align 4
  %236 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %237 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = xor i32 %238, %235
  store i32 %239, i32* %237, align 8
  br label %240

240:                                              ; preds = %234, %227, %222
  %241 = load i32, i32* @bce_tso_enable, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %281

243:                                              ; preds = %240
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* @IFCAP_TSO4, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %281

248:                                              ; preds = %243
  %249 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %250 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @IFCAP_TSO4, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %281

255:                                              ; preds = %248
  %256 = load i32, i32* @IFCAP_TSO4, align 4
  %257 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %258 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = xor i32 %259, %256
  store i32 %260, i32* %258, align 8
  %261 = load i32, i32* @IFCAP_TSO4, align 4
  %262 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %263 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = and i32 %261, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %255
  %268 = load i32, i32* @CSUM_TSO, align 4
  %269 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %270 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  br label %280

273:                                              ; preds = %255
  %274 = load i32, i32* @CSUM_TSO, align 4
  %275 = xor i32 %274, -1
  %276 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %277 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %276, i32 0, i32 4
  %278 = load i32, i32* %277, align 8
  %279 = and i32 %278, %275
  store i32 %279, i32* %277, align 8
  br label %280

280:                                              ; preds = %273, %267
  br label %281

281:                                              ; preds = %280, %248, %243, %240
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %299

286:                                              ; preds = %281
  %287 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %288 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %286
  %294 = load i32, i32* @IFCAP_VLAN_HWCSUM, align 4
  %295 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %296 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = xor i32 %297, %294
  store i32 %298, i32* %296, align 8
  br label %299

299:                                              ; preds = %293, %286, %281
  %300 = load i32, i32* %10, align 4
  %301 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %317

304:                                              ; preds = %299
  %305 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %306 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %304
  %312 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %313 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %314 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = xor i32 %315, %312
  store i32 %316, i32* %314, align 8
  br label %317

317:                                              ; preds = %311, %304, %299
  %318 = load i32, i32* %10, align 4
  %319 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %349

322:                                              ; preds = %317
  %323 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %324 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %349

329:                                              ; preds = %322
  %330 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %331 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %332 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = xor i32 %333, %330
  store i32 %334, i32* %332, align 8
  %335 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %336 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %339 = and i32 %337, %338
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %348

341:                                              ; preds = %329
  %342 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %343 = xor i32 %342, -1
  %344 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %345 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = and i32 %346, %343
  store i32 %347, i32* %345, align 8
  br label %348

348:                                              ; preds = %341, %329
  br label %349

349:                                              ; preds = %348, %322, %317
  %350 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %351 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %350)
  br label %357

352:                                              ; preds = %3
  %353 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %354 = load i32, i32* %5, align 4
  %355 = load i64, i64* %6, align 8
  %356 = call i32 @ether_ioctl(%struct.ifnet* %353, i32 %354, i64 %355)
  store i32 %356, i32* %11, align 4
  br label %357

357:                                              ; preds = %352, %349, %172, %141, %123, %68, %32
  %358 = load i32, i32* @BCE_VERBOSE_MISC, align 4
  %359 = call i32 @DBEXIT(i32 %358)
  %360 = load i32, i32* %11, align 4
  ret i32 %360
}

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @DBPRINT(%struct.bce_softc*, i32, i8*, ...) #1

declare dso_local i32 @BCE_LOCK(%struct.bce_softc*) #1

declare dso_local i32 @bce_init_locked(%struct.bce_softc*) #1

declare dso_local i32 @BCE_UNLOCK(%struct.bce_softc*) #1

declare dso_local i32 @bce_set_rx_mode(%struct.bce_softc*) #1

declare dso_local i32 @bce_stop(%struct.bce_softc*) #1

declare dso_local i32 @bce_reset(%struct.bce_softc*, i32) #1

declare dso_local i32 @bce_chipinit(%struct.bce_softc*) #1

declare dso_local i32 @bce_mgmt_init_locked(%struct.bce_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
