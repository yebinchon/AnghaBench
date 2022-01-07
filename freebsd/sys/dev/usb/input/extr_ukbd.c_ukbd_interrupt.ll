; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/input/extr_ukbd.c_ukbd_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.ukbd_softc = type { i32, i32*, i32*, i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@KEY_ERROR = common dso_local global i64 0, align 8
@UKBD_NMOD = common dso_local global i64 0, align 8
@ukbd_mods = common dso_local global %struct.TYPE_6__* null, align 8
@KEY_PRESS = common dso_local global i64 0, align 8
@KEY_RELEASE = common dso_local global i64 0, align 8
@UKBD_NKEYCODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ukbd_softc*)* @ukbd_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ukbd_interrupt(%struct.ukbd_softc* %0) #0 {
  %2 = alloca %struct.ukbd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ukbd_softc* %0, %struct.ukbd_softc** %2, align 8
  %10 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = call i32 (...) @UKBD_LOCK_ASSERT()
  %14 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @KEY_ERROR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %295

23:                                               ; preds = %1
  %24 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %3, align 4
  %28 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %84

35:                                               ; preds = %23
  store i64 0, i64* %8, align 8
  br label %36

36:                                               ; preds = %80, %35
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @UKBD_NMOD, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %83

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ukbd_mods, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %41, %46
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ukbd_mods, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %48, %53
  %55 = icmp ne i32 %47, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %40
  %57 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ukbd_mods, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ukbd_mods, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %63, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = load i64, i64* @KEY_PRESS, align 8
  br label %75

73:                                               ; preds = %56
  %74 = load i64, i64* @KEY_RELEASE, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i64 [ %72, %71 ], [ %74, %73 ]
  %77 = or i64 %62, %76
  %78 = call i32 @ukbd_put_key(%struct.ukbd_softc* %57, i64 %77)
  br label %79

79:                                               ; preds = %75, %40
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %8, align 8
  br label %36

83:                                               ; preds = %36
  br label %84

84:                                               ; preds = %83, %23
  store i64 0, i64* %8, align 8
  br label %85

85:                                               ; preds = %137, %84
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @UKBD_NKEYCODE, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %140

89:                                               ; preds = %85
  %90 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %91 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %7, align 8
  %97 = load i64, i64* %7, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %137

100:                                              ; preds = %89
  store i64 0, i64* %9, align 8
  br label %101

101:                                              ; preds = %127, %100
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* @UKBD_NKEYCODE, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %101
  %106 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %107 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %127

115:                                              ; preds = %105
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %118 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %116, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  br label %136

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %114
  %128 = load i64, i64* %9, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %9, align 8
  br label %101

130:                                              ; preds = %101
  %131 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* @KEY_RELEASE, align 8
  %134 = or i64 %132, %133
  %135 = call i32 @ukbd_put_key(%struct.ukbd_softc* %131, i64 %134)
  br label %136

136:                                              ; preds = %130, %125
  br label %137

137:                                              ; preds = %136, %99
  %138 = load i64, i64* %8, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %8, align 8
  br label %85

140:                                              ; preds = %85
  store i64 0, i64* %8, align 8
  br label %141

141:                                              ; preds = %276, %140
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* @UKBD_NKEYCODE, align 8
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %145, label %279

145:                                              ; preds = %141
  %146 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %147 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %7, align 8
  %153 = load i64, i64* %7, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %276

156:                                              ; preds = %145
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %159 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %157, %161
  %163 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %164 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %8, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32 %162, i32* %167, align 4
  store i64 0, i64* %9, align 8
  br label %168

168:                                              ; preds = %229, %156
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* @UKBD_NKEYCODE, align 8
  %171 = icmp ult i64 %169, %170
  br i1 %171, label %172, label %232

172:                                              ; preds = %168
  %173 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %174 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i64*, i64** %175, align 8
  %177 = load i64, i64* %9, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %172
  br label %229

182:                                              ; preds = %172
  %183 = load i64, i64* %7, align 8
  %184 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %185 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = load i64, i64* %9, align 8
  %189 = getelementptr inbounds i64, i64* %187, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %183, %190
  br i1 %191, label %192, label %228

192:                                              ; preds = %182
  %193 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %194 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* %9, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %200 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* %8, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  store i32 %198, i32* %203, align 4
  %204 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %205 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* %9, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %5, align 4
  %211 = sub nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  store i64 %212, i64* %6, align 8
  %213 = load i64, i64* %6, align 8
  %214 = icmp sgt i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %192
  br label %275

216:                                              ; preds = %192
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %219 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %218, i32 0, i32 6
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %217, %221
  %223 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %224 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %8, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32 %222, i32* %227, align 4
  br label %232

228:                                              ; preds = %182
  br label %229

229:                                              ; preds = %228, %181
  %230 = load i64, i64* %9, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %9, align 8
  br label %168

232:                                              ; preds = %216, %168
  %233 = load i64, i64* %9, align 8
  %234 = load i64, i64* @UKBD_NKEYCODE, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %248

236:                                              ; preds = %232
  %237 = call i32 (...) @sbinuptime()
  %238 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %239 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %238, i32 0, i32 7
  store i32 %237, i32* %239, align 8
  %240 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %241 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %240, i32 0, i32 6
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %245 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 8
  %246 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %247 = call i32 @ukbd_start_timer(%struct.ukbd_softc* %246)
  br label %248

248:                                              ; preds = %236, %232
  %249 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %250 = load i64, i64* %7, align 8
  %251 = load i64, i64* @KEY_PRESS, align 8
  %252 = or i64 %250, %251
  %253 = call i32 @ukbd_put_key(%struct.ukbd_softc* %249, i64 %252)
  store i64 0, i64* %9, align 8
  br label %254

254:                                              ; preds = %271, %248
  %255 = load i64, i64* %9, align 8
  %256 = load i64, i64* @UKBD_NKEYCODE, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %274

258:                                              ; preds = %254
  %259 = load i64, i64* %9, align 8
  %260 = load i64, i64* %8, align 8
  %261 = icmp ne i64 %259, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %258
  %263 = load i32, i32* %5, align 4
  %264 = add nsw i32 %263, 100000
  %265 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %266 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = load i64, i64* %9, align 8
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  store i32 %264, i32* %269, align 4
  br label %270

270:                                              ; preds = %262, %258
  br label %271

271:                                              ; preds = %270
  %272 = load i64, i64* %9, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %9, align 8
  br label %254

274:                                              ; preds = %254
  br label %275

275:                                              ; preds = %274, %215
  br label %276

276:                                              ; preds = %275, %155
  %277 = load i64, i64* %8, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %8, align 8
  br label %141

279:                                              ; preds = %141
  %280 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %281 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %280, i32 0, i32 5
  %282 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %283 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %282, i32 0, i32 4
  %284 = bitcast %struct.TYPE_5__* %281 to i8*
  %285 = bitcast %struct.TYPE_5__* %283 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %284, i8* align 8 %285, i64 16, i1 false)
  %286 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %287 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %290 = getelementptr inbounds %struct.ukbd_softc, %struct.ukbd_softc* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = call i32 @memcpy(i32* %288, i32* %291, i32 8)
  %293 = load %struct.ukbd_softc*, %struct.ukbd_softc** %2, align 8
  %294 = call i32 @ukbd_event_keyinput(%struct.ukbd_softc* %293)
  br label %295

295:                                              ; preds = %279, %22
  ret void
}

declare dso_local i32 @UKBD_LOCK_ASSERT(...) #1

declare dso_local i32 @ukbd_put_key(%struct.ukbd_softc*, i64) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @ukbd_start_timer(%struct.ukbd_softc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ukbd_event_keyinput(%struct.ukbd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
