; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_getcapability.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_getcapability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }

@HAL_OK = common dso_local global i32 0, align 4
@HAL_ENOTSUPP = common dso_local global i32 0, align 4
@HAL_ENXIO = common dso_local global i32 0, align 4
@HAL_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_hal_getcapability(%struct.ath_hal* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %12 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 10
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %602 [
    i32 157, label %15
    i32 180, label %22
    i32 184, label %29
    i32 140, label %29
    i32 139, label %31
    i32 159, label %33
    i32 130, label %44
    i32 178, label %46
    i32 167, label %48
    i32 160, label %54
    i32 131, label %60
    i32 158, label %71
    i32 182, label %82
    i32 185, label %93
    i32 173, label %104
    i32 179, label %115
    i32 136, label %122
    i32 188, label %149
    i32 165, label %160
    i32 138, label %171
    i32 155, label %173
    i32 193, label %207
    i32 170, label %209
    i32 171, label %220
    i32 172, label %231
    i32 133, label %242
    i32 147, label %248
    i32 163, label %254
    i32 181, label %260
    i32 154, label %271
    i32 192, label %277
    i32 174, label %288
    i32 145, label %299
    i32 132, label %310
    i32 183, label %321
    i32 190, label %332
    i32 166, label %343
    i32 142, label %354
    i32 156, label %365
    i32 175, label %372
    i32 161, label %383
    i32 137, label %389
    i32 135, label %395
    i32 149, label %401
    i32 151, label %407
    i32 153, label %423
    i32 162, label %423
    i32 186, label %429
    i32 143, label %440
    i32 169, label %451
    i32 148, label %462
    i32 191, label %468
    i32 176, label %479
    i32 150, label %490
    i32 168, label %502
    i32 187, label %508
    i32 141, label %519
    i32 152, label %535
    i32 189, label %546
    i32 144, label %557
    i32 164, label %568
    i32 146, label %574
    i32 177, label %585
    i32 134, label %596
  ]

15:                                               ; preds = %4
  %16 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %17 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @HAL_OK, align 4
  store i32 %21, i32* %5, align 4
  br label %604

22:                                               ; preds = %4
  %23 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %24 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @HAL_OK, align 4
  store i32 %28, i32* %5, align 4
  br label %604

29:                                               ; preds = %4, %4
  %30 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %30, i32* %5, align 4
  br label %604

31:                                               ; preds = %4
  %32 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %32, i32* %5, align 4
  br label %604

33:                                               ; preds = %4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 51
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @HAL_OK, align 4
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @HAL_ENXIO, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %5, align 4
  br label %604

44:                                               ; preds = %4
  %45 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %45, i32* %5, align 4
  br label %604

46:                                               ; preds = %4
  %47 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %47, i32* %5, align 4
  br label %604

48:                                               ; preds = %4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 50
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @HAL_OK, align 4
  store i32 %53, i32* %5, align 4
  br label %604

54:                                               ; preds = %4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 49
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @HAL_OK, align 4
  store i32 %59, i32* %5, align 4
  br label %604

60:                                               ; preds = %4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 48
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @HAL_OK, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %5, align 4
  br label %604

71:                                               ; preds = %4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 47
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @HAL_OK, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  store i32 %81, i32* %5, align 4
  br label %604

82:                                               ; preds = %4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 46
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @HAL_OK, align 4
  br label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %5, align 4
  br label %604

93:                                               ; preds = %4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 45
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @HAL_OK, align 4
  br label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  store i32 %103, i32* %5, align 4
  br label %604

104:                                              ; preds = %4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 44
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @HAL_OK, align 4
  br label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  store i32 %114, i32* %5, align 4
  br label %604

115:                                              ; preds = %4
  %116 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %117 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %116)
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %9, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* @HAL_OK, align 4
  store i32 %121, i32* %5, align 4
  br label %604

122:                                              ; preds = %4
  %123 = load i32, i32* %8, align 4
  switch i32 %123, label %147 [
    i32 0, label %124
    i32 1, label %126
    i32 2, label %133
    i32 3, label %140
  ]

124:                                              ; preds = %122
  %125 = load i32, i32* @HAL_OK, align 4
  store i32 %125, i32* %5, align 4
  br label %604

126:                                              ; preds = %122
  %127 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %128 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %127)
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %9, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* @HAL_OK, align 4
  store i32 %132, i32* %5, align 4
  br label %604

133:                                              ; preds = %122
  %134 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %135 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %134)
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %9, align 8
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* @HAL_OK, align 4
  store i32 %139, i32* %5, align 4
  br label %604

140:                                              ; preds = %122
  %141 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %142 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %141)
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %9, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* @HAL_OK, align 4
  store i32 %146, i32* %5, align 4
  br label %604

147:                                              ; preds = %122
  %148 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %148, i32* %5, align 4
  br label %604

149:                                              ; preds = %4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 43
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* @HAL_OK, align 4
  br label %158

156:                                              ; preds = %149
  %157 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  store i32 %159, i32* %5, align 4
  br label %604

160:                                              ; preds = %4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 42
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i32, i32* @HAL_OK, align 4
  br label %169

167:                                              ; preds = %160
  %168 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i32 [ %166, %165 ], [ %168, %167 ]
  store i32 %170, i32* %5, align 4
  br label %604

171:                                              ; preds = %4
  %172 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %172, i32* %5, align 4
  br label %604

173:                                              ; preds = %4
  %174 = load i32, i32* %8, align 4
  switch i32 %174, label %205 [
    i32 0, label %175
    i32 1, label %186
    i32 2, label %198
  ]

175:                                              ; preds = %173
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 41
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = load i32, i32* @HAL_OK, align 4
  br label %184

182:                                              ; preds = %175
  %183 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i32 [ %181, %180 ], [ %183, %182 ]
  store i32 %185, i32* %5, align 4
  br label %604

186:                                              ; preds = %173
  %187 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %188 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %187)
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = load i32, i32* @HAL_OK, align 4
  br label %196

194:                                              ; preds = %186
  %195 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i32 [ %193, %192 ], [ %195, %194 ]
  store i32 %197, i32* %5, align 4
  br label %604

198:                                              ; preds = %173
  %199 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %200 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %199)
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %9, align 8
  store i32 %202, i32* %203, align 4
  %204 = load i32, i32* @HAL_OK, align 4
  store i32 %204, i32* %5, align 4
  br label %604

205:                                              ; preds = %173
  %206 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %206, i32* %5, align 4
  br label %604

207:                                              ; preds = %4
  %208 = load i32, i32* @HAL_OK, align 4
  store i32 %208, i32* %5, align 4
  br label %604

209:                                              ; preds = %4
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 40
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = load i32, i32* @HAL_OK, align 4
  br label %218

216:                                              ; preds = %209
  %217 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi i32 [ %215, %214 ], [ %217, %216 ]
  store i32 %219, i32* %5, align 4
  br label %604

220:                                              ; preds = %4
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 39
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load i32, i32* @HAL_OK, align 4
  br label %229

227:                                              ; preds = %220
  %228 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi i32 [ %226, %225 ], [ %228, %227 ]
  store i32 %230, i32* %5, align 4
  br label %604

231:                                              ; preds = %4
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 38
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %231
  %237 = load i32, i32* @HAL_OK, align 4
  br label %240

238:                                              ; preds = %231
  %239 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi i32 [ %237, %236 ], [ %239, %238 ]
  store i32 %241, i32* %5, align 4
  br label %604

242:                                              ; preds = %4
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 37
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %9, align 8
  store i32 %245, i32* %246, align 4
  %247 = load i32, i32* @HAL_OK, align 4
  store i32 %247, i32* %5, align 4
  br label %604

248:                                              ; preds = %4
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 36
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** %9, align 8
  store i32 %251, i32* %252, align 4
  %253 = load i32, i32* @HAL_OK, align 4
  store i32 %253, i32* %5, align 4
  br label %604

254:                                              ; preds = %4
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 35
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %9, align 8
  store i32 %257, i32* %258, align 4
  %259 = load i32, i32* @HAL_OK, align 4
  store i32 %259, i32* %5, align 4
  br label %604

260:                                              ; preds = %4
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 34
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = load i32, i32* @HAL_OK, align 4
  br label %269

267:                                              ; preds = %260
  %268 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %269

269:                                              ; preds = %267, %265
  %270 = phi i32 [ %266, %265 ], [ %268, %267 ]
  store i32 %270, i32* %5, align 4
  br label %604

271:                                              ; preds = %4
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 33
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %9, align 8
  store i32 %274, i32* %275, align 4
  %276 = load i32, i32* @HAL_OK, align 4
  store i32 %276, i32* %5, align 4
  br label %604

277:                                              ; preds = %4
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 32
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = load i32, i32* @HAL_OK, align 4
  br label %286

284:                                              ; preds = %277
  %285 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %286

286:                                              ; preds = %284, %282
  %287 = phi i32 [ %283, %282 ], [ %285, %284 ]
  store i32 %287, i32* %5, align 4
  br label %604

288:                                              ; preds = %4
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 31
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %288
  %294 = load i32, i32* @HAL_OK, align 4
  br label %297

295:                                              ; preds = %288
  %296 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %297

297:                                              ; preds = %295, %293
  %298 = phi i32 [ %294, %293 ], [ %296, %295 ]
  store i32 %298, i32* %5, align 4
  br label %604

299:                                              ; preds = %4
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 30
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %299
  %305 = load i32, i32* @HAL_OK, align 4
  br label %308

306:                                              ; preds = %299
  %307 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %308

308:                                              ; preds = %306, %304
  %309 = phi i32 [ %305, %304 ], [ %307, %306 ]
  store i32 %309, i32* %5, align 4
  br label %604

310:                                              ; preds = %4
  %311 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 29
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = load i32, i32* @HAL_OK, align 4
  br label %319

317:                                              ; preds = %310
  %318 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %319

319:                                              ; preds = %317, %315
  %320 = phi i32 [ %316, %315 ], [ %318, %317 ]
  store i32 %320, i32* %5, align 4
  br label %604

321:                                              ; preds = %4
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 28
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %321
  %327 = load i32, i32* @HAL_OK, align 4
  br label %330

328:                                              ; preds = %321
  %329 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %330

330:                                              ; preds = %328, %326
  %331 = phi i32 [ %327, %326 ], [ %329, %328 ]
  store i32 %331, i32* %5, align 4
  br label %604

332:                                              ; preds = %4
  %333 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 27
  %335 = load i32, i32* %334, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %339

337:                                              ; preds = %332
  %338 = load i32, i32* @HAL_OK, align 4
  br label %341

339:                                              ; preds = %332
  %340 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %341

341:                                              ; preds = %339, %337
  %342 = phi i32 [ %338, %337 ], [ %340, %339 ]
  store i32 %342, i32* %5, align 4
  br label %604

343:                                              ; preds = %4
  %344 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %344, i32 0, i32 26
  %346 = load i32, i32* %345, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %343
  %349 = load i32, i32* @HAL_OK, align 4
  br label %352

350:                                              ; preds = %343
  %351 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %352

352:                                              ; preds = %350, %348
  %353 = phi i32 [ %349, %348 ], [ %351, %350 ]
  store i32 %353, i32* %5, align 4
  br label %604

354:                                              ; preds = %4
  %355 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 25
  %357 = load i32, i32* %356, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %354
  %360 = load i32, i32* @HAL_OK, align 4
  br label %363

361:                                              ; preds = %354
  %362 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %363

363:                                              ; preds = %361, %359
  %364 = phi i32 [ %360, %359 ], [ %362, %361 ]
  store i32 %364, i32* %5, align 4
  br label %604

365:                                              ; preds = %4
  %366 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %367 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %366)
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load i32*, i32** %9, align 8
  store i32 %369, i32* %370, align 4
  %371 = load i32, i32* @HAL_OK, align 4
  store i32 %371, i32* %5, align 4
  br label %604

372:                                              ; preds = %4
  %373 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 24
  %375 = load i32, i32* %374, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %372
  %378 = load i32, i32* @HAL_OK, align 4
  br label %381

379:                                              ; preds = %372
  %380 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %381

381:                                              ; preds = %379, %377
  %382 = phi i32 [ %378, %377 ], [ %380, %379 ]
  store i32 %382, i32* %5, align 4
  br label %604

383:                                              ; preds = %4
  %384 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %385 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %384, i32 0, i32 23
  %386 = load i32, i32* %385, align 4
  %387 = load i32*, i32** %9, align 8
  store i32 %386, i32* %387, align 4
  %388 = load i32, i32* @HAL_OK, align 4
  store i32 %388, i32* %5, align 4
  br label %604

389:                                              ; preds = %4
  %390 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 22
  %392 = load i32, i32* %391, align 4
  %393 = load i32*, i32** %9, align 8
  store i32 %392, i32* %393, align 4
  %394 = load i32, i32* @HAL_OK, align 4
  store i32 %394, i32* %5, align 4
  br label %604

395:                                              ; preds = %4
  %396 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 21
  %398 = load i32, i32* %397, align 4
  %399 = load i32*, i32** %9, align 8
  store i32 %398, i32* %399, align 4
  %400 = load i32, i32* @HAL_OK, align 4
  store i32 %400, i32* %5, align 4
  br label %604

401:                                              ; preds = %4
  %402 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %403 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %402, i32 0, i32 20
  %404 = load i32, i32* %403, align 4
  %405 = load i32*, i32** %9, align 8
  store i32 %404, i32* %405, align 4
  %406 = load i32, i32* @HAL_OK, align 4
  store i32 %406, i32* %5, align 4
  br label %604

407:                                              ; preds = %4
  %408 = load i32, i32* %8, align 4
  switch i32 %408, label %421 [
    i32 129, label %409
    i32 128, label %415
  ]

409:                                              ; preds = %407
  %410 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %411 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %410, i32 0, i32 19
  %412 = load i32, i32* %411, align 4
  %413 = load i32*, i32** %9, align 8
  store i32 %412, i32* %413, align 4
  %414 = load i32, i32* @HAL_OK, align 4
  store i32 %414, i32* %5, align 4
  br label %604

415:                                              ; preds = %407
  %416 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %417 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %416, i32 0, i32 18
  %418 = load i32, i32* %417, align 4
  %419 = load i32*, i32** %9, align 8
  store i32 %418, i32* %419, align 4
  %420 = load i32, i32* @HAL_OK, align 4
  store i32 %420, i32* %5, align 4
  br label %604

421:                                              ; preds = %407
  %422 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %422, i32* %5, align 4
  br label %604

423:                                              ; preds = %4, %4
  %424 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 17
  %426 = load i32, i32* %425, align 4
  %427 = load i32*, i32** %9, align 8
  store i32 %426, i32* %427, align 4
  %428 = load i32, i32* @HAL_OK, align 4
  store i32 %428, i32* %5, align 4
  br label %604

429:                                              ; preds = %4
  %430 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %431 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %430, i32 0, i32 16
  %432 = load i32, i32* %431, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %429
  %435 = load i32, i32* @HAL_OK, align 4
  br label %438

436:                                              ; preds = %429
  %437 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %438

438:                                              ; preds = %436, %434
  %439 = phi i32 [ %435, %434 ], [ %437, %436 ]
  store i32 %439, i32* %5, align 4
  br label %604

440:                                              ; preds = %4
  %441 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %442 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %441, i32 0, i32 15
  %443 = load i32, i32* %442, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %440
  %446 = load i32, i32* @HAL_OK, align 4
  br label %449

447:                                              ; preds = %440
  %448 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %449

449:                                              ; preds = %447, %445
  %450 = phi i32 [ %446, %445 ], [ %448, %447 ]
  store i32 %450, i32* %5, align 4
  br label %604

451:                                              ; preds = %4
  %452 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %452, i32 0, i32 14
  %454 = load i32, i32* %453, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %458

456:                                              ; preds = %451
  %457 = load i32, i32* @HAL_OK, align 4
  br label %460

458:                                              ; preds = %451
  %459 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %460

460:                                              ; preds = %458, %456
  %461 = phi i32 [ %457, %456 ], [ %459, %458 ]
  store i32 %461, i32* %5, align 4
  br label %604

462:                                              ; preds = %4
  %463 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %464 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %463, i32 0, i32 13
  %465 = load i32, i32* %464, align 4
  %466 = load i32*, i32** %9, align 8
  store i32 %465, i32* %466, align 4
  %467 = load i32, i32* @HAL_OK, align 4
  store i32 %467, i32* %5, align 4
  br label %604

468:                                              ; preds = %4
  %469 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %470 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %469, i32 0, i32 12
  %471 = load i32, i32* %470, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %475

473:                                              ; preds = %468
  %474 = load i32, i32* @HAL_OK, align 4
  br label %477

475:                                              ; preds = %468
  %476 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %477

477:                                              ; preds = %475, %473
  %478 = phi i32 [ %474, %473 ], [ %476, %475 ]
  store i32 %478, i32* %5, align 4
  br label %604

479:                                              ; preds = %4
  %480 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %481 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %480, i32 0, i32 11
  %482 = load i32, i32* %481, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %486

484:                                              ; preds = %479
  %485 = load i32, i32* @HAL_OK, align 4
  br label %488

486:                                              ; preds = %479
  %487 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %488

488:                                              ; preds = %486, %484
  %489 = phi i32 [ %485, %484 ], [ %487, %486 ]
  store i32 %489, i32* %5, align 4
  br label %604

490:                                              ; preds = %4
  %491 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %492 = call %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal* %491)
  %493 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %498

496:                                              ; preds = %490
  %497 = load i32, i32* @HAL_OK, align 4
  br label %500

498:                                              ; preds = %490
  %499 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %500

500:                                              ; preds = %498, %496
  %501 = phi i32 [ %497, %496 ], [ %499, %498 ]
  store i32 %501, i32* %5, align 4
  br label %604

502:                                              ; preds = %4
  %503 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %504 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %503, i32 0, i32 10
  %505 = load i32, i32* %504, align 4
  %506 = load i32*, i32** %9, align 8
  store i32 %505, i32* %506, align 4
  %507 = load i32, i32* @HAL_OK, align 4
  store i32 %507, i32* %5, align 4
  br label %604

508:                                              ; preds = %4
  %509 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %510 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %509, i32 0, i32 9
  %511 = load i32, i32* %510, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %515

513:                                              ; preds = %508
  %514 = load i32, i32* @HAL_OK, align 4
  br label %517

515:                                              ; preds = %508
  %516 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %517

517:                                              ; preds = %515, %513
  %518 = phi i32 [ %514, %513 ], [ %516, %515 ]
  store i32 %518, i32* %5, align 4
  br label %604

519:                                              ; preds = %4
  %520 = load i32, i32* %8, align 4
  switch i32 %520, label %533 [
    i32 0, label %521
    i32 1, label %527
  ]

521:                                              ; preds = %519
  %522 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %523 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %522, i32 0, i32 8
  %524 = load i32, i32* %523, align 4
  %525 = load i32*, i32** %9, align 8
  store i32 %524, i32* %525, align 4
  %526 = load i32, i32* @HAL_OK, align 4
  store i32 %526, i32* %5, align 4
  br label %604

527:                                              ; preds = %519
  %528 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %529 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %528, i32 0, i32 7
  %530 = load i32, i32* %529, align 4
  %531 = load i32*, i32** %9, align 8
  store i32 %530, i32* %531, align 4
  %532 = load i32, i32* @HAL_OK, align 4
  store i32 %532, i32* %5, align 4
  br label %604

533:                                              ; preds = %519
  %534 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %534, i32* %5, align 4
  br label %604

535:                                              ; preds = %4
  %536 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %537 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %536, i32 0, i32 6
  %538 = load i32, i32* %537, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %542

540:                                              ; preds = %535
  %541 = load i32, i32* @HAL_OK, align 4
  br label %544

542:                                              ; preds = %535
  %543 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %544

544:                                              ; preds = %542, %540
  %545 = phi i32 [ %541, %540 ], [ %543, %542 ]
  store i32 %545, i32* %5, align 4
  br label %604

546:                                              ; preds = %4
  %547 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %548 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %547, i32 0, i32 5
  %549 = load i32, i32* %548, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %553

551:                                              ; preds = %546
  %552 = load i32, i32* @HAL_OK, align 4
  br label %555

553:                                              ; preds = %546
  %554 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %555

555:                                              ; preds = %553, %551
  %556 = phi i32 [ %552, %551 ], [ %554, %553 ]
  store i32 %556, i32* %5, align 4
  br label %604

557:                                              ; preds = %4
  %558 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %559 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %558, i32 0, i32 4
  %560 = load i32, i32* %559, align 4
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %564

562:                                              ; preds = %557
  %563 = load i32, i32* @HAL_OK, align 4
  br label %566

564:                                              ; preds = %557
  %565 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %566

566:                                              ; preds = %564, %562
  %567 = phi i32 [ %563, %562 ], [ %565, %564 ]
  store i32 %567, i32* %5, align 4
  br label %604

568:                                              ; preds = %4
  %569 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %570 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %569, i32 0, i32 3
  %571 = load i32, i32* %570, align 4
  %572 = load i32*, i32** %9, align 8
  store i32 %571, i32* %572, align 4
  %573 = load i32, i32* @HAL_OK, align 4
  store i32 %573, i32* %5, align 4
  br label %604

574:                                              ; preds = %4
  %575 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %576 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %575, i32 0, i32 2
  %577 = load i32, i32* %576, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %581

579:                                              ; preds = %574
  %580 = load i32, i32* @HAL_OK, align 4
  br label %583

581:                                              ; preds = %574
  %582 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %583

583:                                              ; preds = %581, %579
  %584 = phi i32 [ %580, %579 ], [ %582, %581 ]
  store i32 %584, i32* %5, align 4
  br label %604

585:                                              ; preds = %4
  %586 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %587 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 4
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %592

590:                                              ; preds = %585
  %591 = load i32, i32* @HAL_OK, align 4
  br label %594

592:                                              ; preds = %585
  %593 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %594

594:                                              ; preds = %592, %590
  %595 = phi i32 [ %591, %590 ], [ %593, %592 ]
  store i32 %595, i32* %5, align 4
  br label %604

596:                                              ; preds = %4
  %597 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %598 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 4
  %600 = load i32*, i32** %9, align 8
  store i32 %599, i32* %600, align 4
  %601 = load i32, i32* @HAL_OK, align 4
  store i32 %601, i32* %5, align 4
  br label %604

602:                                              ; preds = %4
  %603 = load i32, i32* @HAL_EINVAL, align 4
  store i32 %603, i32* %5, align 4
  br label %604

604:                                              ; preds = %602, %596, %594, %583, %568, %566, %555, %544, %533, %527, %521, %517, %502, %500, %488, %477, %462, %460, %449, %438, %423, %421, %415, %409, %401, %395, %389, %383, %381, %365, %363, %352, %341, %330, %319, %308, %297, %286, %271, %269, %254, %248, %242, %240, %229, %218, %207, %205, %198, %196, %184, %171, %169, %158, %147, %140, %133, %126, %124, %115, %113, %102, %91, %80, %69, %54, %48, %46, %44, %42, %31, %29, %22, %15
  %605 = load i32, i32* %5, align 4
  ret i32 %605
}

declare dso_local %struct.TYPE_4__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
