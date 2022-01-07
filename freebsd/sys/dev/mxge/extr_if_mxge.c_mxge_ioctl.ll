; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.ifreq = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ifi2creq = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"mxge requires tx checksum offload be enabled to use TSO\0A\00", align 1
@IFCAP_LRO = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTSO = common dso_local global i32 0, align 4
@MXGE_XFP = common dso_local global i32 0, align 4
@MXGE_SFP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @mxge_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca %struct.ifi2creq, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 5
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = inttoptr i64 %16 to %struct.ifreq*
  store %struct.ifreq* %17, %struct.ifreq** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %357 [
    i32 128, label %19
    i32 129, label %25
    i32 134, label %81
    i32 133, label %81
    i32 130, label %100
    i32 131, label %282
    i32 132, label %308
  ]

19:                                               ; preds = %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mxge_change_mtu(%struct.TYPE_11__* %20, i32 %23)
  store i32 %24, i32* %11, align 4
  br label %362

25:                                               ; preds = %3
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = call i32 @mtx_lock(i32* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = call i32 @mtx_unlock(i32* %35)
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %364

38:                                               ; preds = %25
  %39 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IFF_UP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %38
  %46 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = call i32 @mxge_open(%struct.TYPE_11__* %53)
  store i32 %54, i32* %11, align 4
  br label %65

55:                                               ; preds = %45
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IFF_PROMISC, align 4
  %61 = and i32 %59, %60
  %62 = call i32 @mxge_change_promisc(%struct.TYPE_11__* %56, i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = call i32 @mxge_set_multicast_list(%struct.TYPE_11__* %63)
  br label %65

65:                                               ; preds = %55, %52
  br label %77

66:                                               ; preds = %38
  %67 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = call i32 @mxge_close(%struct.TYPE_11__* %74, i32 0)
  br label %76

76:                                               ; preds = %73, %66
  br label %77

77:                                               ; preds = %76, %65
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = call i32 @mtx_unlock(i32* %79)
  br label %362

81:                                               ; preds = %3, %3
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = call i32 @mtx_lock(i32* %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = call i32 @mtx_unlock(i32* %91)
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* %4, align 4
  br label %364

94:                                               ; preds = %81
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %96 = call i32 @mxge_set_multicast_list(%struct.TYPE_11__* %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = call i32 @mtx_unlock(i32* %98)
  br label %362

100:                                              ; preds = %3
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = call i32 @mtx_lock(i32* %102)
  %104 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %105 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %108 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = xor i32 %106, %109
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @IFCAP_TXCSUM, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %153

115:                                              ; preds = %100
  %116 = load i32, i32* @IFCAP_TXCSUM, align 4
  %117 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %115
  %123 = load i32, i32* @IFCAP_TXCSUM, align 4
  %124 = load i32, i32* @IFCAP_TSO4, align 4
  %125 = or i32 %123, %124
  %126 = xor i32 %125, -1
  %127 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %128 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* @CSUM_TCP, align 4
  %132 = load i32, i32* @CSUM_UDP, align 4
  %133 = or i32 %131, %132
  %134 = xor i32 %133, -1
  %135 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %136 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %152

139:                                              ; preds = %115
  %140 = load i32, i32* @IFCAP_TXCSUM, align 4
  %141 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %142 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load i32, i32* @CSUM_TCP, align 4
  %146 = load i32, i32* @CSUM_UDP, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %149 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %139, %122
  br label %180

153:                                              ; preds = %100
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @IFCAP_RXCSUM, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %153
  %159 = load i32, i32* @IFCAP_RXCSUM, align 4
  %160 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %161 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %159, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = load i32, i32* @IFCAP_RXCSUM, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %169 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %178

172:                                              ; preds = %158
  %173 = load i32, i32* @IFCAP_RXCSUM, align 4
  %174 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %175 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %172, %165
  br label %179

179:                                              ; preds = %178, %153
  br label %180

180:                                              ; preds = %179, %152
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* @IFCAP_TSO4, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %222

185:                                              ; preds = %180
  %186 = load i32, i32* @IFCAP_TSO4, align 4
  %187 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %188 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = and i32 %186, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %185
  %193 = load i32, i32* @IFCAP_TSO4, align 4
  %194 = xor i32 %193, -1
  %195 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %196 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = and i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %221

199:                                              ; preds = %185
  %200 = load i32, i32* @IFCAP_TXCSUM, align 4
  %201 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %202 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = and i32 %200, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %199
  %207 = load i32, i32* @IFCAP_TSO4, align 4
  %208 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %209 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load i32, i32* @CSUM_TSO, align 4
  %213 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %214 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 4
  br label %220

217:                                              ; preds = %199
  %218 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %219 = load i32, i32* @EINVAL, align 4
  store i32 %219, i32* %11, align 4
  br label %220

220:                                              ; preds = %217, %206
  br label %221

221:                                              ; preds = %220, %192
  br label %222

222:                                              ; preds = %221, %180
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* @IFCAP_LRO, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %222
  %228 = load i32, i32* @IFCAP_LRO, align 4
  %229 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %230 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = xor i32 %231, %228
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %227, %222
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %240 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %241 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = xor i32 %242, %239
  store i32 %243, i32* %241, align 8
  br label %244

244:                                              ; preds = %238, %233
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %251 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %252 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = xor i32 %253, %250
  store i32 %254, i32* %252, align 8
  br label %255

255:                                              ; preds = %249, %244
  %256 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %257 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %255
  %263 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %264 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %276, label %269

269:                                              ; preds = %262, %255
  %270 = load i32, i32* @IFCAP_VLAN_HWTSO, align 4
  %271 = xor i32 %270, -1
  %272 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %273 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = and i32 %274, %271
  store i32 %275, i32* %273, align 8
  br label %276

276:                                              ; preds = %269, %262
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 0
  %279 = call i32 @mtx_unlock(i32* %278)
  %280 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %281 = call i32 @VLAN_CAPABILITIES(%struct.ifnet* %280)
  br label %362

282:                                              ; preds = %3
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 0
  %285 = call i32 @mtx_lock(i32* %284)
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %282
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 0
  %293 = call i32 @mtx_unlock(i32* %292)
  %294 = load i32, i32* @EINVAL, align 4
  store i32 %294, i32* %4, align 4
  br label %364

295:                                              ; preds = %282
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %297 = call i32 @mxge_media_probe(%struct.TYPE_11__* %296)
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  %300 = call i32 @mtx_unlock(i32* %299)
  %301 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %302 = load i64, i64* %7, align 8
  %303 = inttoptr i64 %302 to %struct.ifreq*
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 3
  %306 = load i32, i32* %6, align 4
  %307 = call i32 @ifmedia_ioctl(%struct.ifnet* %301, %struct.ifreq* %303, i32* %305, i32 %306)
  store i32 %307, i32* %11, align 4
  br label %362

308:                                              ; preds = %3
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @MXGE_XFP, align 4
  %313 = icmp ne i32 %311, %312
  br i1 %313, label %314, label %322

314:                                              ; preds = %308
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @MXGE_SFP, align 4
  %319 = icmp ne i32 %317, %318
  br i1 %319, label %320, label %322

320:                                              ; preds = %314
  %321 = load i32, i32* @ENXIO, align 4
  store i32 %321, i32* %11, align 4
  br label %362

322:                                              ; preds = %314, %308
  %323 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %324 = call i32 @ifr_data_get_ptr(%struct.ifreq* %323)
  %325 = call i32 @copyin(i32 %324, %struct.ifi2creq* %10, i32 4)
  store i32 %325, i32* %11, align 4
  %326 = load i32, i32* %11, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %322
  br label %362

329:                                              ; preds = %322
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 0
  %332 = call i32 @mtx_lock(i32* %331)
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %329
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 0
  %340 = call i32 @mtx_unlock(i32* %339)
  %341 = load i32, i32* @EINVAL, align 4
  store i32 %341, i32* %4, align 4
  br label %364

342:                                              ; preds = %329
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %344 = call i32 @mxge_fetch_i2c(%struct.TYPE_11__* %343, %struct.ifi2creq* %10)
  store i32 %344, i32* %11, align 4
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 0
  %347 = call i32 @mtx_unlock(i32* %346)
  %348 = load i32, i32* %11, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %342
  %351 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %352 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @copyout(%struct.ifi2creq* %10, i32 %354, i32 4)
  store i32 %355, i32* %11, align 4
  br label %356

356:                                              ; preds = %350, %342
  br label %362

357:                                              ; preds = %3
  %358 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %359 = load i32, i32* %6, align 4
  %360 = load i64, i64* %7, align 8
  %361 = call i32 @ether_ioctl(%struct.ifnet* %358, i32 %359, i64 %360)
  store i32 %361, i32* %11, align 4
  br label %362

362:                                              ; preds = %357, %356, %328, %320, %295, %276, %94, %77, %19
  %363 = load i32, i32* %11, align 4
  store i32 %363, i32* %4, align 4
  br label %364

364:                                              ; preds = %362, %337, %290, %89, %33
  %365 = load i32, i32* %4, align 4
  ret i32 %365
}

declare dso_local i32 @mxge_change_mtu(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mxge_open(%struct.TYPE_11__*) #1

declare dso_local i32 @mxge_change_promisc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mxge_set_multicast_list(%struct.TYPE_11__*) #1

declare dso_local i32 @mxge_close(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @VLAN_CAPABILITIES(%struct.ifnet*) #1

declare dso_local i32 @mxge_media_probe(%struct.TYPE_11__*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @copyin(i32, %struct.ifi2creq*, i32) #1

declare dso_local i32 @ifr_data_get_ptr(%struct.ifreq*) #1

declare dso_local i32 @mxge_fetch_i2c(%struct.TYPE_11__*, %struct.ifi2creq*) #1

declare dso_local i32 @copyout(%struct.ifi2creq*, i32, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
