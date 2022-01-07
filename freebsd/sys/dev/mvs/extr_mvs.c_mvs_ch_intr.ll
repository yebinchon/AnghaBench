; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_ch_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_ch_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_intr_arg = type { i32, i32 }
%struct.mvs_channel = type { i64, i64, i32, i64, i64*, i32, i32, i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EDMA_IEC = common dso_local global i32 0, align 4
@EDMA_IE_SERRINT = common dso_local global i32 0, align 4
@SATA_SE = common dso_local global i32 0, align 4
@EDMA_IE_ESELFDIS = common dso_local global i32 0, align 4
@EDMA_IE_ETRANSINT = common dso_local global i32 0, align 4
@MVS_Q_GENI = common dso_local global i32 0, align 4
@MVS_Q_GENII = common dso_local global i32 0, align 4
@SATA_FISC_FISWAIT4HOSTRDYEN_B1 = common dso_local global i32 0, align 4
@SATA_FISIC = common dso_local global i32 0, align 4
@MVS_EDMA_UNKNOWN = common dso_local global i32 0, align 4
@EDMA_IE_EDEVERR = common dso_local global i32 0, align 4
@MVS_Q_GENIIE = common dso_local global i32 0, align 4
@EDMA_S = common dso_local global i32 0, align 4
@SATA_SATAITC = common dso_local global i32 0, align 4
@MVS_MAX_SLOTS = common dso_local global i32 0, align 4
@MVS_ERR_TFE = common dso_local global i32 0, align 4
@MVS_ERR_INNOCENT = common dso_local global i32 0, align 4
@MVS_ERR_NCQ = common dso_local global i32 0, align 4
@MVS_ERR_SATA = common dso_local global i32 0, align 4
@MVS_ERR_INVALID = common dso_local global i32 0, align 4
@EDMA_IE_EDEVDIS = common dso_local global i32 0, align 4
@EDMA_IE_EDEVCON = common dso_local global i32 0, align 4
@SATA_SE_PHY_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mvs_ch_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_ch_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mvs_intr_arg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvs_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = bitcast i8* %16 to %struct.mvs_intr_arg*
  store %struct.mvs_intr_arg* %17, %struct.mvs_intr_arg** %3, align 8
  %18 = load %struct.mvs_intr_arg*, %struct.mvs_intr_arg** %3, align 8
  %19 = getelementptr inbounds %struct.mvs_intr_arg, %struct.mvs_intr_arg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.mvs_channel* @device_get_softc(i32 %21)
  store %struct.mvs_channel* %22, %struct.mvs_channel** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %24 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %29 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %1
  %33 = phi i1 [ true, %1 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = load %struct.mvs_intr_arg*, %struct.mvs_intr_arg** %3, align 8
  %36 = getelementptr inbounds %struct.mvs_intr_arg, %struct.mvs_intr_arg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 2
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @mvs_crbq_intr(i32 %44)
  br label %46

46:                                               ; preds = %43, %40, %32
  %47 = load %struct.mvs_intr_arg*, %struct.mvs_intr_arg** %3, align 8
  %48 = getelementptr inbounds %struct.mvs_intr_arg, %struct.mvs_intr_arg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %353

52:                                               ; preds = %46
  %53 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %54 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @EDMA_IEC, align 4
  %57 = call i32 @ATA_INL(i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @EDMA_IE_SERRINT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %52
  %63 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %64 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SATA_SE, align 4
  %67 = call i32 @ATA_INL(i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %69 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SATA_SE, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @ATA_OUTL(i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %62, %52
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @EDMA_IE_ESELFDIS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 1, i32* %13, align 4
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @EDMA_IE_ETRANSINT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %80
  %86 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %87 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @MVS_Q_GENI, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 1, i32* %13, align 4
  br label %109

93:                                               ; preds = %85
  %94 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %95 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @MVS_Q_GENII, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @SATA_FISC_FISWAIT4HOSTRDYEN_B1, align 4
  store i32 %101, i32* %8, align 4
  br label %108

102:                                              ; preds = %93
  %103 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %104 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @SATA_FISIC, align 4
  %107 = call i32 @ATA_INL(i32 %105, i32 %106)
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %102, %100
  br label %109

109:                                              ; preds = %108, %92
  br label %110

110:                                              ; preds = %109, %80
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* @MVS_EDMA_UNKNOWN, align 4
  %115 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %116 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %113, %110
  %118 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %119 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @EDMA_IEC, align 4
  %122 = load i32, i32* %6, align 4
  %123 = xor i32 %122, -1
  %124 = call i32 @ATA_OUTL(i32 %120, i32 %121, i32 %123)
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @EDMA_IE_EDEVERR, align 4
  %127 = or i32 -65105920, %126
  %128 = and i32 %125, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %317

130:                                              ; preds = %117
  store i32 -1, i32* %12, align 4
  %131 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %132 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 0, i32* %11, align 4
  br label %216

136:                                              ; preds = %130
  %137 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %138 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @MVS_Q_GENIIE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %136
  %144 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %145 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @EDMA_S, align 4
  %148 = call i32 @ATA_INL(i32 %146, i32 %147)
  %149 = call i32 @EDMA_S_EIOID(i32 %148)
  store i32 %149, i32* %11, align 4
  br label %157

150:                                              ; preds = %136
  %151 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %152 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @EDMA_S, align 4
  %155 = call i32 @ATA_INL(i32 %153, i32 %154)
  %156 = call i32 @EDMA_S_EDEVQUETAG(i32 %155)
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %150, %143
  %158 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %159 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %158, i32 0, i32 9
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %215

162:                                              ; preds = %157
  store i32 0, i32* %10, align 4
  br label %163

163:                                              ; preds = %188, %162
  %164 = load i32, i32* %10, align 4
  %165 = icmp slt i32 %164, 16
  br i1 %165, label %166, label %191

166:                                              ; preds = %163
  %167 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %168 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %167, i32 0, i32 4
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %188

176:                                              ; preds = %166
  %177 = load i32, i32* %12, align 4
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %12, align 4
  br label %187

181:                                              ; preds = %176
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 -2, i32* %12, align 4
  br label %191

186:                                              ; preds = %181
  br label %187

187:                                              ; preds = %186, %179
  br label %188

188:                                              ; preds = %187, %175
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  br label %163

191:                                              ; preds = %185, %163
  %192 = load i32, i32* %12, align 4
  %193 = icmp eq i32 %192, -2
  br i1 %193, label %194, label %214

194:                                              ; preds = %191
  %195 = load i32, i32* %13, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %214, label %197

197:                                              ; preds = %194
  %198 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %199 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @SATA_SATAITC, align 4
  %202 = call i32 @ATA_INL(i32 %200, i32 %201)
  %203 = ashr i32 %202, 16
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %15, align 4
  %205 = call i32 @ffs(i32 %204)
  %206 = sub nsw i32 %205, 1
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %15, align 4
  %209 = call i32 @fls(i32 %208)
  %210 = sub nsw i32 %209, 1
  %211 = icmp ne i32 %207, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %197
  store i32 -2, i32* %12, align 4
  br label %213

213:                                              ; preds = %212, %197
  br label %214

214:                                              ; preds = %213, %194, %191
  br label %215

215:                                              ; preds = %214, %157
  br label %216

216:                                              ; preds = %215, %135
  %217 = load i32, i32* %4, align 4
  %218 = call i32 @mvs_requeue_frozen(i32 %217)
  store i32 0, i32* %10, align 4
  br label %219

219:                                              ; preds = %313, %216
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* @MVS_MAX_SLOTS, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %316

223:                                              ; preds = %219
  %224 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %225 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = ashr i32 %226, %227
  %229 = and i32 %228, 1
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %313

232:                                              ; preds = %223
  %233 = load i32, i32* %12, align 4
  %234 = icmp sge i32 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %232
  %236 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %237 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %236, i32 0, i32 8
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %12, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %235
  br label %313

250:                                              ; preds = %235, %232
  %251 = load i32, i32* %6, align 4
  %252 = load i32, i32* @EDMA_IE_EDEVERR, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %280

255:                                              ; preds = %250
  %256 = load i32, i32* %12, align 4
  %257 = icmp ne i32 %256, -2
  br i1 %257, label %258, label %275

258:                                              ; preds = %255
  %259 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %260 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %258
  %264 = load i32, i32* %10, align 4
  %265 = load i32, i32* %11, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  %268 = load i32, i32* @MVS_ERR_TFE, align 4
  store i32 %268, i32* %9, align 4
  br label %271

269:                                              ; preds = %263
  %270 = load i32, i32* @MVS_ERR_INNOCENT, align 4
  store i32 %270, i32* %9, align 4
  br label %271

271:                                              ; preds = %269, %267
  br label %274

272:                                              ; preds = %258
  %273 = load i32, i32* @MVS_ERR_NCQ, align 4
  store i32 %273, i32* %9, align 4
  br label %274

274:                                              ; preds = %272, %271
  br label %279

275:                                              ; preds = %255
  %276 = load i32, i32* @MVS_ERR_TFE, align 4
  store i32 %276, i32* %9, align 4
  %277 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %278 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %277, i32 0, i32 6
  store i32 1, i32* %278, align 4
  br label %279

279:                                              ; preds = %275, %274
  br label %304

280:                                              ; preds = %250
  %281 = load i32, i32* %6, align 4
  %282 = and i32 %281, -65105920
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %301

284:                                              ; preds = %280
  %285 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %286 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %284
  %290 = load i32, i32* %10, align 4
  %291 = load i32, i32* %11, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %298

293:                                              ; preds = %289
  %294 = load i32, i32* %12, align 4
  %295 = icmp ne i32 %294, -2
  br i1 %295, label %296, label %298

296:                                              ; preds = %293
  %297 = load i32, i32* @MVS_ERR_INNOCENT, align 4
  store i32 %297, i32* %9, align 4
  br label %300

298:                                              ; preds = %293, %289, %284
  %299 = load i32, i32* @MVS_ERR_SATA, align 4
  store i32 %299, i32* %9, align 4
  br label %300

300:                                              ; preds = %298, %296
  br label %303

301:                                              ; preds = %280
  %302 = load i32, i32* @MVS_ERR_INVALID, align 4
  store i32 %302, i32* %9, align 4
  br label %303

303:                                              ; preds = %301, %300
  br label %304

304:                                              ; preds = %303, %279
  %305 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %306 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %305, i32 0, i32 8
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %306, align 8
  %308 = load i32, i32* %10, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i64 %309
  %311 = load i32, i32* %9, align 4
  %312 = call i32 @mvs_end_transaction(%struct.TYPE_6__* %310, i32 %311)
  br label %313

313:                                              ; preds = %304, %249, %231
  %314 = load i32, i32* %10, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %10, align 4
  br label %219

316:                                              ; preds = %219
  br label %317

317:                                              ; preds = %316, %117
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* @SATA_FISC_FISWAIT4HOSTRDYEN_B1, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %317
  %323 = load i32, i32* %4, align 4
  %324 = call i32 @mvs_notify_events(i32 %323)
  br label %325

325:                                              ; preds = %322, %317
  %326 = load i32, i32* %8, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %336

328:                                              ; preds = %325
  %329 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %330 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %329, i32 0, i32 7
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @SATA_FISIC, align 4
  %333 = load i32, i32* %8, align 4
  %334 = xor i32 %333, -1
  %335 = call i32 @ATA_OUTL(i32 %331, i32 %332, i32 %334)
  br label %336

336:                                              ; preds = %328, %325
  %337 = load i32, i32* %6, align 4
  %338 = load i32, i32* @EDMA_IE_EDEVDIS, align 4
  %339 = load i32, i32* @EDMA_IE_EDEVCON, align 4
  %340 = or i32 %338, %339
  %341 = and i32 %337, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %348, label %343

343:                                              ; preds = %336
  %344 = load i32, i32* %7, align 4
  %345 = load i32, i32* @SATA_SE_PHY_CHANGED, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %343, %336
  %349 = load i32, i32* %4, align 4
  %350 = load i32, i32* %7, align 4
  %351 = call i32 @mvs_phy_check_events(i32 %349, i32 %350)
  br label %352

352:                                              ; preds = %348, %343
  br label %353

353:                                              ; preds = %352, %46
  %354 = load %struct.mvs_intr_arg*, %struct.mvs_intr_arg** %3, align 8
  %355 = getelementptr inbounds %struct.mvs_intr_arg, %struct.mvs_intr_arg* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = and i32 %356, 2
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %369

359:                                              ; preds = %353
  %360 = load i32, i32* %14, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %369, label %362

362:                                              ; preds = %359
  %363 = load i32, i32* %4, align 4
  %364 = load %struct.mvs_intr_arg*, %struct.mvs_intr_arg** %3, align 8
  %365 = getelementptr inbounds %struct.mvs_intr_arg, %struct.mvs_intr_arg* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = and i32 %366, 4
  %368 = call i32 @mvs_legacy_intr(i32 %363, i32 %367)
  br label %369

369:                                              ; preds = %362, %359, %353
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @mvs_crbq_intr(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @EDMA_S_EIOID(i32) #1

declare dso_local i32 @EDMA_S_EDEVQUETAG(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @mvs_requeue_frozen(i32) #1

declare dso_local i32 @mvs_end_transaction(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mvs_notify_events(i32) #1

declare dso_local i32 @mvs_phy_check_events(i32, i32) #1

declare dso_local i32 @mvs_legacy_intr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
