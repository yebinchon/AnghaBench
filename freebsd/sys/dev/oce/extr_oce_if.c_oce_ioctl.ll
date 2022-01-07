; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ifreq = type { i32, i32 }
%struct.ifi2creq = type { i32, i64, i32*, i32 }

@OCE_MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Interface Up\0A\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Interface Down\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Update multicast address failed\0A\00", align 1
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@IFCAP_TSO = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"TSO disabled due to -txcsum.\0A\00", align 1
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Enable txcsum first.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@PAGE_NUM_A0 = common dso_local global i32 0, align 4
@PAGE_NUM_A2 = common dso_local global i32 0, align 4
@TRANSCEIVER_A0_SIZE = common dso_local global i64 0, align 8
@sfp_vpd_dump_buffer = common dso_local global i32* null, align 8
@IFCAP_LRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @oce_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oce_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.ifi2creq, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.ifreq*
  store %struct.ifreq* %14, %struct.ifreq** %7, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 5
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %361 [
    i32 132, label %19
    i32 128, label %26
    i32 129, label %41
    i32 135, label %137
    i32 134, label %137
    i32 130, label %148
    i32 133, label %295
    i32 131, label %357
  ]

19:                                               ; preds = %3
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 5
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ifmedia_ioctl(%struct.ifnet* %20, %struct.ifreq* %21, i32* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  br label %366

26:                                               ; preds = %3
  %27 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %28 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OCE_MAX_MTU, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %11, align 4
  br label %40

34:                                               ; preds = %26
  %35 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %36 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %32
  br label %366

41:                                               ; preds = %3
  %42 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IFF_UP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %41
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %56
  store i32 %62, i32* %60, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = call i32 @oce_init(%struct.TYPE_11__* %63)
  br label %65

65:                                               ; preds = %55, %48
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %93

70:                                               ; preds = %41
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  %73 = call i32 @LOCK(i32* %72)
  %74 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %75 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %77
  store i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = call i32 @oce_if_deactivate(%struct.TYPE_11__* %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = call i32 @UNLOCK(i32* %87)
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %70, %65
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @IFF_PROMISC, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %93
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = call i32 @oce_rxf_set_promiscuous(%struct.TYPE_11__* %106, i32 3)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @TRUE, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %109, %105
  br label %136

114:                                              ; preds = %100, %93
  %115 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %116 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @IFF_PROMISC, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %135, label %121

121:                                              ; preds = %114
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %128 = call i32 @oce_rxf_set_promiscuous(%struct.TYPE_11__* %127, i32 0)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* @FALSE, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %130, %126
  br label %135

135:                                              ; preds = %134, %121, %114
  br label %136

136:                                              ; preds = %135, %113
  br label %366

137:                                              ; preds = %3, %3
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %139 = call i32 @oce_hw_update_multicast(%struct.TYPE_11__* %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @device_printf(i32 %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %147

147:                                              ; preds = %142, %137
  br label %366

148:                                              ; preds = %3
  %149 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %150 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %153 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = xor i32 %151, %154
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @IFCAP_TXCSUM, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %204

160:                                              ; preds = %148
  %161 = load i32, i32* @IFCAP_TXCSUM, align 4
  %162 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %163 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = xor i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load i32, i32* @CSUM_TCP, align 4
  %167 = load i32, i32* @CSUM_UDP, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @CSUM_IP, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %172 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = xor i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* @IFCAP_TSO, align 4
  %176 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %177 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %175, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %160
  %182 = load i32, i32* @IFCAP_TXCSUM, align 4
  %183 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %184 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %182, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %203, label %188

188:                                              ; preds = %181
  %189 = load i32, i32* @IFCAP_TSO, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %192 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load i32, i32* @CSUM_TSO, align 4
  %196 = xor i32 %195, -1
  %197 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %198 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, %196
  store i32 %200, i32* %198, align 4
  %201 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %202 = call i32 @if_printf(%struct.ifnet* %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %203

203:                                              ; preds = %188, %181, %160
  br label %204

204:                                              ; preds = %203, %148
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* @IFCAP_RXCSUM, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %204
  %210 = load i32, i32* @IFCAP_RXCSUM, align 4
  %211 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %212 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = xor i32 %213, %210
  store i32 %214, i32* %212, align 8
  br label %215

215:                                              ; preds = %209, %204
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* @IFCAP_TSO4, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %270

220:                                              ; preds = %215
  %221 = load i32, i32* @IFCAP_TSO4, align 4
  %222 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %223 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = xor i32 %224, %221
  store i32 %225, i32* %223, align 8
  %226 = load i32, i32* @IFCAP_TSO, align 4
  %227 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %228 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = and i32 %226, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %262

232:                                              ; preds = %220
  %233 = load i32, i32* @IFCAP_TXCSUM, align 4
  %234 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %235 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = and i32 %233, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %232
  %240 = load i32, i32* @CSUM_TSO, align 4
  %241 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %242 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 4
  br label %261

245:                                              ; preds = %232
  %246 = load i32, i32* @IFCAP_TSO, align 4
  %247 = xor i32 %246, -1
  %248 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %249 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = and i32 %250, %247
  store i32 %251, i32* %249, align 8
  %252 = load i32, i32* @CSUM_TSO, align 4
  %253 = xor i32 %252, -1
  %254 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %255 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, %253
  store i32 %257, i32* %255, align 4
  %258 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %259 = call i32 @if_printf(%struct.ifnet* %258, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %260 = load i32, i32* @EAGAIN, align 4
  store i32 %260, i32* %11, align 4
  br label %261

261:                                              ; preds = %245, %239
  br label %269

262:                                              ; preds = %220
  %263 = load i32, i32* @CSUM_TSO, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %266 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, %264
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %262, %261
  br label %270

270:                                              ; preds = %269, %215
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %270
  %276 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %277 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %278 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = xor i32 %279, %276
  store i32 %280, i32* %278, align 8
  br label %281

281:                                              ; preds = %275, %270
  %282 = load i32, i32* %12, align 4
  %283 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %294

286:                                              ; preds = %281
  %287 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %288 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %289 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = xor i32 %290, %287
  store i32 %291, i32* %289, align 8
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %293 = call i32 @oce_vid_config(%struct.TYPE_11__* %292)
  br label %294

294:                                              ; preds = %286, %281
  br label %366

295:                                              ; preds = %3
  %296 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %297 = call i32 @ifr_data_get_ptr(%struct.ifreq* %296)
  %298 = call i32 @copyin(i32 %297, %struct.ifi2creq* %9, i32 32)
  store i32 %298, i32* %11, align 4
  %299 = load i32, i32* %11, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %295
  br label %366

302:                                              ; preds = %295
  %303 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %9, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @PAGE_NUM_A0, align 4
  %306 = icmp ne i32 %304, %305
  br i1 %306, label %307, label %314

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %9, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* @PAGE_NUM_A2, align 4
  %311 = icmp ne i32 %309, %310
  br i1 %311, label %312, label %314

312:                                              ; preds = %307
  %313 = load i32, i32* @EINVAL, align 4
  store i32 %313, i32* %11, align 4
  br label %366

314:                                              ; preds = %307, %302
  %315 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %9, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = icmp ugt i64 %317, 8
  br i1 %318, label %319, label %321

319:                                              ; preds = %314
  %320 = load i32, i32* @EINVAL, align 4
  store i32 %320, i32* %11, align 4
  br label %366

321:                                              ; preds = %314
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %323 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %9, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @oce_mbox_read_transrecv_data(%struct.TYPE_11__* %322, i32 %324)
  store i32 %325, i32* %11, align 4
  %326 = load i32, i32* %11, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %321
  %329 = load i32, i32* %11, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %11, align 4
  br label %366

331:                                              ; preds = %321
  %332 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %9, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @PAGE_NUM_A0, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %339

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %9, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %10, align 8
  br label %344

339:                                              ; preds = %331
  %340 = load i64, i64* @TRANSCEIVER_A0_SIZE, align 8
  %341 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %9, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = add i64 %340, %342
  store i64 %343, i64* %10, align 8
  br label %344

344:                                              ; preds = %339, %336
  %345 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %9, i32 0, i32 2
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 0
  %348 = load i32*, i32** @sfp_vpd_dump_buffer, align 8
  %349 = load i64, i64* %10, align 8
  %350 = getelementptr inbounds i32, i32* %348, i64 %349
  %351 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %9, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @memcpy(i32* %347, i32* %350, i32 %352)
  %354 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %355 = call i32 @ifr_data_get_ptr(%struct.ifreq* %354)
  %356 = call i32 @copyout(%struct.ifi2creq* %9, i32 %355, i32 32)
  store i32 %356, i32* %11, align 4
  br label %366

357:                                              ; preds = %3
  %358 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %359 = load i64, i64* %6, align 8
  %360 = call i32 @oce_handle_passthrough(%struct.ifnet* %358, i64 %359)
  store i32 %360, i32* %11, align 4
  br label %366

361:                                              ; preds = %3
  %362 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %363 = load i32, i32* %5, align 4
  %364 = load i64, i64* %6, align 8
  %365 = call i32 @ether_ioctl(%struct.ifnet* %362, i32 %363, i64 %364)
  store i32 %365, i32* %11, align 4
  br label %366

366:                                              ; preds = %361, %357, %344, %328, %319, %312, %301, %294, %147, %136, %40, %19
  %367 = load i32, i32* %11, align 4
  ret i32 %367
}

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @oce_init(%struct.TYPE_11__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @oce_if_deactivate(%struct.TYPE_11__*) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @oce_rxf_set_promiscuous(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @oce_hw_update_multicast(%struct.TYPE_11__*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @oce_vid_config(%struct.TYPE_11__*) #1

declare dso_local i32 @copyin(i32, %struct.ifi2creq*, i32) #1

declare dso_local i32 @ifr_data_get_ptr(%struct.ifreq*) #1

declare dso_local i32 @oce_mbox_read_transrecv_data(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @copyout(%struct.ifi2creq*, i32, i32) #1

declare dso_local i32 @oce_handle_passthrough(%struct.ifnet*, i64) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
