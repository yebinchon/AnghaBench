; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap.c_netmap_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_priv_d = type { i32, i32, i64*, i64*, i64, i32**, %struct.netmap_adapter*, i32* }
%struct.netmap_adapter = type { i32, %struct.netmap_kring**, %struct.netmap_kring**, i32 }
%struct.netmap_kring = type { i64, i64, i64, i64, i64, i32, i32 (%struct.netmap_kring*, i32)*, i64 (%struct.netmap_kring*, i32)*, %struct.netmap_ring* }
%struct.netmap_ring = type { i64, i64, i64 }
%struct.mbq = type { i32 }

@NR_TXRX = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid poll in CSB mode\00", align 1
@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"device %s events 0x%x\00", align 1
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@NR_TX = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@NR_RX = common dso_local global i64 0, align 8
@netmap_fwd = common dso_local global i32 0, align 4
@NR_FORWARD = common dso_local global i32 0, align 4
@want_rx = common dso_local global i32 0, align 4
@want_tx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_poll(%struct.netmap_priv_d* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netmap_priv_d*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.netmap_adapter*, align 8
  %9 = alloca %struct.netmap_kring*, align 8
  %10 = alloca %struct.netmap_ring*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.mbq, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.netmap_priv_d* %0, %struct.netmap_priv_d** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %24 = load i32, i32* @NR_TXRX, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %28 = load i32, i32* @NR_TXRX, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32*, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  store i32 1, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %31 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %5, align 8
  %32 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %20, align 4
  %34 = call i32 @mbq_init(%struct.mbq* %16)
  %35 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %5, align 8
  %36 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* @POLLERR, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %385

44:                                               ; preds = %3
  %45 = call i32 (...) @mb()
  %46 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %5, align 8
  %47 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %46, i32 0, i32 6
  %48 = load %struct.netmap_adapter*, %struct.netmap_adapter** %47, align 8
  store %struct.netmap_adapter* %48, %struct.netmap_adapter** %8, align 8
  %49 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %50 = call i32 @nm_netmap_on(%struct.netmap_adapter* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @POLLERR, align 4
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %385

58:                                               ; preds = %44
  %59 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %5, align 8
  %60 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = call i32 @nm_prerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @POLLERR, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %385

67:                                               ; preds = %58
  %68 = load i32, i32* @netmap_debug, align 4
  %69 = load i32, i32* @NM_DEBUG_ON, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %74 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @nm_prinf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %67
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @POLLOUT, align 4
  %81 = load i32, i32* @POLLWRNORM, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* @NR_TX, align 8
  %86 = getelementptr inbounds i64, i64* %27, i64 %85
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @POLLIN, align 4
  %89 = load i32, i32* @POLLRDNORM, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @NR_RX, align 8
  %94 = getelementptr inbounds i64, i64* %27, i64 %93
  store i64 %92, i64* %94, align 8
  %95 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %5, align 8
  %96 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %95, i32 0, i32 5
  %97 = load i32**, i32*** %96, align 8
  %98 = load i64, i64* @NR_RX, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @NR_RX, align 8
  %102 = getelementptr inbounds i32*, i32** %30, i64 %101
  store i32* %100, i32** %102, align 8
  %103 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %5, align 8
  %104 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %103, i32 0, i32 5
  %105 = load i32**, i32*** %104, align 8
  %106 = load i64, i64* @NR_TX, align 8
  %107 = getelementptr inbounds i32*, i32** %105, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @NR_TX, align 8
  %110 = getelementptr inbounds i32*, i32** %30, i64 %109
  store i32* %108, i32** %110, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i64, i64* @NR_RX, align 8
  %113 = getelementptr inbounds i32*, i32** %30, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @nm_os_selrecord(i32* %111, i32* %114)
  %116 = load i32*, i32** %7, align 8
  %117 = load i64, i64* @NR_TX, align 8
  %118 = getelementptr inbounds i32*, i32** %30, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @nm_os_selrecord(i32* %116, i32* %119)
  %121 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %5, align 8
  %122 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %78
  %126 = load i64, i64* @NR_TX, align 8
  %127 = getelementptr inbounds i64, i64* %27, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %248

130:                                              ; preds = %125, %78
  br label %131

131:                                              ; preds = %371, %246, %130
  %132 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %5, align 8
  %133 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %132, i32 0, i32 2
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* @NR_TX, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %11, align 8
  br label %138

138:                                              ; preds = %232, %131
  %139 = load i64, i64* %11, align 8
  %140 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %5, align 8
  %141 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %140, i32 0, i32 3
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* @NR_TX, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = icmp ult i64 %139, %145
  br i1 %146, label %147, label %235

147:                                              ; preds = %138
  store i32 0, i32* %22, align 4
  %148 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %149 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %148, i32 0, i32 2
  %150 = load %struct.netmap_kring**, %struct.netmap_kring*** %149, align 8
  %151 = load i64, i64* %11, align 8
  %152 = getelementptr inbounds %struct.netmap_kring*, %struct.netmap_kring** %150, i64 %151
  %153 = load %struct.netmap_kring*, %struct.netmap_kring** %152, align 8
  store %struct.netmap_kring* %153, %struct.netmap_kring** %9, align 8
  %154 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %155 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %154, i32 0, i32 8
  %156 = load %struct.netmap_ring*, %struct.netmap_ring** %155, align 8
  store %struct.netmap_ring* %156, %struct.netmap_ring** %10, align 8
  %157 = load i32, i32* %19, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %147
  %160 = load i64, i64* @NR_TX, align 8
  %161 = getelementptr inbounds i64, i64* %27, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %159
  %165 = load %struct.netmap_ring*, %struct.netmap_ring** %10, align 8
  %166 = getelementptr inbounds %struct.netmap_ring, %struct.netmap_ring* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %169 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %167, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  br label %232

173:                                              ; preds = %164, %159, %147
  %174 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %175 = call i32 @nm_kr_tryget(%struct.netmap_kring* %174, i32 1, i64* %14)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  br label %232

178:                                              ; preds = %173
  %179 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %180 = load %struct.netmap_ring*, %struct.netmap_ring** %10, align 8
  %181 = call i64 @nm_txsync_prologue(%struct.netmap_kring* %179, %struct.netmap_ring* %180)
  %182 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %183 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp sge i64 %181, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %178
  %187 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %188 = call i32 @netmap_ring_reinit(%struct.netmap_kring* %187)
  %189 = load i32, i32* @POLLERR, align 4
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* %14, align 8
  %192 = or i64 %191, %190
  store i64 %192, i64* %14, align 8
  br label %210

193:                                              ; preds = %178
  %194 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %195 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %194, i32 0, i32 7
  %196 = load i64 (%struct.netmap_kring*, i32)*, i64 (%struct.netmap_kring*, i32)** %195, align 8
  %197 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %198 = load i32, i32* %20, align 4
  %199 = call i64 %196(%struct.netmap_kring* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %193
  %202 = load i32, i32* @POLLERR, align 4
  %203 = sext i32 %202 to i64
  %204 = load i64, i64* %14, align 8
  %205 = or i64 %204, %203
  store i64 %205, i64* %14, align 8
  br label %209

206:                                              ; preds = %193
  %207 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %208 = call i32 @nm_sync_finalize(%struct.netmap_kring* %207)
  br label %209

209:                                              ; preds = %206, %201
  br label %210

210:                                              ; preds = %209, %186
  %211 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %212 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %215 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %213, %216
  %218 = zext i1 %217 to i32
  store i32 %218, i32* %22, align 4
  %219 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %220 = call i32 @nm_kr_put(%struct.netmap_kring* %219)
  %221 = load i32, i32* %22, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %210
  %224 = load i64, i64* @NR_TX, align 8
  %225 = getelementptr inbounds i64, i64* %27, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* %14, align 8
  %228 = or i64 %227, %226
  store i64 %228, i64* %14, align 8
  %229 = load i64, i64* @NR_TX, align 8
  %230 = getelementptr inbounds i64, i64* %27, i64 %229
  store i64 0, i64* %230, align 8
  br label %231

231:                                              ; preds = %223, %210
  br label %232

232:                                              ; preds = %231, %177, %172
  %233 = load i64, i64* %11, align 8
  %234 = add i64 %233, 1
  store i64 %234, i64* %11, align 8
  br label %138

235:                                              ; preds = %138
  store i32 0, i32* %19, align 4
  %236 = load i64, i64* @NR_TX, align 8
  %237 = getelementptr inbounds i64, i64* %27, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %235
  %241 = load i32, i32* %17, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load i32*, i32** %7, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  store i32 0, i32* %17, align 4
  br label %131

247:                                              ; preds = %243, %240, %235
  br label %248

248:                                              ; preds = %247, %125
  %249 = load i64, i64* @NR_RX, align 8
  %250 = getelementptr inbounds i64, i64* %27, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %374

253:                                              ; preds = %248
  br label %254

254:                                              ; preds = %372, %253
  %255 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %5, align 8
  %256 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %255, i32 0, i32 2
  %257 = load i64*, i64** %256, align 8
  %258 = load i64, i64* @NR_RX, align 8
  %259 = getelementptr inbounds i64, i64* %257, i64 %258
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %11, align 8
  br label %261

261:                                              ; preds = %359, %254
  %262 = load i64, i64* %11, align 8
  %263 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %5, align 8
  %264 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %263, i32 0, i32 3
  %265 = load i64*, i64** %264, align 8
  %266 = load i64, i64* @NR_RX, align 8
  %267 = getelementptr inbounds i64, i64* %265, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = icmp ult i64 %262, %268
  br i1 %269, label %270, label %362

270:                                              ; preds = %261
  store i32 0, i32* %23, align 4
  %271 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %272 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %271, i32 0, i32 1
  %273 = load %struct.netmap_kring**, %struct.netmap_kring*** %272, align 8
  %274 = load i64, i64* %11, align 8
  %275 = getelementptr inbounds %struct.netmap_kring*, %struct.netmap_kring** %273, i64 %274
  %276 = load %struct.netmap_kring*, %struct.netmap_kring** %275, align 8
  store %struct.netmap_kring* %276, %struct.netmap_kring** %9, align 8
  %277 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %278 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %277, i32 0, i32 8
  %279 = load %struct.netmap_ring*, %struct.netmap_ring** %278, align 8
  store %struct.netmap_ring* %279, %struct.netmap_ring** %10, align 8
  %280 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %281 = call i32 @nm_kr_tryget(%struct.netmap_kring* %280, i32 1, i64* %14)
  %282 = call i64 @unlikely(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %270
  br label %359

285:                                              ; preds = %270
  %286 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %287 = load %struct.netmap_ring*, %struct.netmap_ring** %10, align 8
  %288 = call i64 @nm_rxsync_prologue(%struct.netmap_kring* %286, %struct.netmap_ring* %287)
  %289 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %290 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = icmp sge i64 %288, %291
  br i1 %292, label %293, label %300

293:                                              ; preds = %285
  %294 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %295 = call i32 @netmap_ring_reinit(%struct.netmap_kring* %294)
  %296 = load i32, i32* @POLLERR, align 4
  %297 = sext i32 %296 to i64
  %298 = load i64, i64* %14, align 8
  %299 = or i64 %298, %297
  store i64 %299, i64* %14, align 8
  br label %300

300:                                              ; preds = %293, %285
  %301 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %302 = call i64 @nm_may_forward_up(%struct.netmap_kring* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %300
  %305 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %306 = load i32, i32* @netmap_fwd, align 4
  %307 = call i32 @netmap_grab_packets(%struct.netmap_kring* %305, %struct.mbq* %16, i32 %306)
  br label %308

308:                                              ; preds = %304, %300
  %309 = load i32, i32* @NR_FORWARD, align 4
  %310 = xor i32 %309, -1
  %311 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %312 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 8
  %314 = and i32 %313, %310
  store i32 %314, i32* %312, align 8
  %315 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %316 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %315, i32 0, i32 7
  %317 = load i64 (%struct.netmap_kring*, i32)*, i64 (%struct.netmap_kring*, i32)** %316, align 8
  %318 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %319 = load i32, i32* %20, align 4
  %320 = call i64 %317(%struct.netmap_kring* %318, i32 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %308
  %323 = load i32, i32* @POLLERR, align 4
  %324 = sext i32 %323 to i64
  %325 = load i64, i64* %14, align 8
  %326 = or i64 %325, %324
  store i64 %326, i64* %14, align 8
  br label %330

327:                                              ; preds = %308
  %328 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %329 = call i32 @nm_sync_finalize(%struct.netmap_kring* %328)
  br label %330

330:                                              ; preds = %327, %322
  %331 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %332 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @NR_FORWARD, align 4
  %335 = and i32 %333, %334
  %336 = load i32, i32* %19, align 4
  %337 = or i32 %336, %335
  store i32 %337, i32* %19, align 4
  %338 = load %struct.netmap_ring*, %struct.netmap_ring** %10, align 8
  %339 = call i32 @ring_timestamp_set(%struct.netmap_ring* %338)
  %340 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %341 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %340, i32 0, i32 3
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %344 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %343, i32 0, i32 4
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %342, %345
  %347 = zext i1 %346 to i32
  store i32 %347, i32* %23, align 4
  %348 = load %struct.netmap_kring*, %struct.netmap_kring** %9, align 8
  %349 = call i32 @nm_kr_put(%struct.netmap_kring* %348)
  %350 = load i32, i32* %23, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %330
  %353 = load i64, i64* @NR_RX, align 8
  %354 = getelementptr inbounds i64, i64* %27, i64 %353
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* %14, align 8
  %357 = or i64 %356, %355
  store i64 %357, i64* %14, align 8
  store i32 0, i32* %18, align 4
  br label %358

358:                                              ; preds = %352, %330
  br label %359

359:                                              ; preds = %358, %284
  %360 = load i64, i64* %11, align 8
  %361 = add i64 %360, 1
  store i64 %361, i64* %11, align 8
  br label %261

362:                                              ; preds = %261
  %363 = load i32, i32* %19, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %368, label %365

365:                                              ; preds = %362
  %366 = load i32, i32* %18, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %373

368:                                              ; preds = %365, %362
  store i32 0, i32* %18, align 4
  %369 = load i32, i32* %19, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %368
  br label %131

372:                                              ; preds = %368
  br label %254

373:                                              ; preds = %365
  br label %374

374:                                              ; preds = %373, %248
  %375 = call i64 @mbq_peek(%struct.mbq* %16)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %382

377:                                              ; preds = %374
  %378 = load %struct.netmap_adapter*, %struct.netmap_adapter** %8, align 8
  %379 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @netmap_send_up(i32 %380, %struct.mbq* %16)
  br label %382

382:                                              ; preds = %377, %374
  %383 = load i64, i64* %14, align 8
  %384 = trunc i64 %383 to i32
  store i32 %384, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %385

385:                                              ; preds = %382, %64, %56, %42
  %386 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %386)
  %387 = load i32, i32* %4, align 4
  ret i32 %387
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mbq_init(%struct.mbq*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @mb(...) #2

declare dso_local i32 @nm_netmap_on(%struct.netmap_adapter*) #2

declare dso_local i32 @nm_prerr(i8*) #2

declare dso_local i32 @nm_prinf(i8*, i32, i32) #2

declare dso_local i32 @nm_os_selrecord(i32*, i32*) #2

declare dso_local i32 @nm_kr_tryget(%struct.netmap_kring*, i32, i64*) #2

declare dso_local i64 @nm_txsync_prologue(%struct.netmap_kring*, %struct.netmap_ring*) #2

declare dso_local i32 @netmap_ring_reinit(%struct.netmap_kring*) #2

declare dso_local i32 @nm_sync_finalize(%struct.netmap_kring*) #2

declare dso_local i32 @nm_kr_put(%struct.netmap_kring*) #2

declare dso_local i64 @nm_rxsync_prologue(%struct.netmap_kring*, %struct.netmap_ring*) #2

declare dso_local i64 @nm_may_forward_up(%struct.netmap_kring*) #2

declare dso_local i32 @netmap_grab_packets(%struct.netmap_kring*, %struct.mbq*, i32) #2

declare dso_local i32 @ring_timestamp_set(%struct.netmap_ring*) #2

declare dso_local i64 @mbq_peek(%struct.mbq*) #2

declare dso_local i32 @netmap_send_up(i32, %struct.mbq*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
