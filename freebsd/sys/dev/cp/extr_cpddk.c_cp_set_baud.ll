; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_set_baud.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_set_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i32, %struct.TYPE_5__*, i64, i64, i32, i64 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_set_baud(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 14
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %14
  br label %119

25:                                               ; preds = %19, %2
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 32000
  %28 = sdiv i32 %27, 64000
  %29 = mul nsw i32 %28, 64
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 12
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %36

35:                                               ; preds = %25
  store i32 2048, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, -8
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %44, 1024
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %53

47:                                               ; preds = %43, %36
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %49, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 2048000, i32* %52, align 8
  br label %108

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 512
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  br label %64

57:                                               ; preds = %53
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, 2
  store i32 %61, i32* %59, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32 1024000, i32* %63, align 8
  br label %107

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 256
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %75

68:                                               ; preds = %64
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, 3
  store i32 %72, i32* %70, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 512000, i32* %74, align 8
  br label %106

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 128
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %86

79:                                               ; preds = %75
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, 4
  store i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  store i32 256000, i32* %85, align 8
  br label %105

86:                                               ; preds = %78
  %87 = load i32, i32* %7, align 4
  %88 = icmp sgt i32 %87, 64
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  br label %97

90:                                               ; preds = %86
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, 5
  store i32 %94, i32* %92, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i32 128000, i32* %96, align 8
  br label %104

97:                                               ; preds = %89
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, 6
  store i32 %101, i32* %99, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  store i32 64000, i32* %103, align 8
  br label %104

104:                                              ; preds = %97, %90
  br label %105

105:                                              ; preds = %104, %79
  br label %106

106:                                              ; preds = %105, %68
  br label %107

107:                                              ; preds = %106, %57
  br label %108

108:                                              ; preds = %107, %47
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 10
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 13
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @l(%struct.TYPE_5__* %111, i32 %114, i32 %117)
  br label %184

119:                                              ; preds = %24
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 6
  br i1 %128, label %129, label %134

129:                                              ; preds = %124, %119
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 12
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129, %124
  br label %164

135:                                              ; preds = %129
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %8, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  store i32 0, i32* %140, align 8
  store i32 0, i32* %9, align 4
  br label %141

141:                                              ; preds = %146, %135
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %142, 32
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  br label %163

145:                                              ; preds = %141
  br label %149

146:                                              ; preds = %162
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %141

149:                                              ; preds = %145
  %150 = load i64, i64* %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = zext i32 %151 to i64
  %153 = lshr i64 %150, %152
  %154 = and i64 %153, 1
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %149
  br label %162

157:                                              ; preds = %149
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 64000
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %157, %156
  br label %146

163:                                              ; preds = %144
  br label %183

164:                                              ; preds = %134
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 3
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 12
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169, %164
  br label %178

175:                                              ; preds = %169
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  store i32 2048000, i32* %177, align 8
  br label %182

178:                                              ; preds = %174
  %179 = load i32, i32* %4, align 4
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %178, %175
  br label %183

183:                                              ; preds = %182, %163
  br label %184

184:                                              ; preds = %183, %108
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, -56
  store i32 %188, i32* %186, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, 4
  br i1 %192, label %204, label %193

193:                                              ; preds = %184
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 7
  br i1 %197, label %204, label %198

198:                                              ; preds = %193
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 8
  br i1 %202, label %204, label %203

203:                                              ; preds = %198
  br label %216

204:                                              ; preds = %198, %193, %184
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 10
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 8
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = or i32 %214, 12
  store i32 %215, i32* %213, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %313

216:                                              ; preds = %203
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %216
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 1
  br i1 %225, label %227, label %226

226:                                              ; preds = %221
  br label %243

227:                                              ; preds = %221, %216
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 11
  store i64 0, i64* %229, align 8
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp eq i32 %232, 1
  br i1 %233, label %235, label %234

234:                                              ; preds = %227
  br label %238

235:                                              ; preds = %227
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 8
  store i64 0, i64* %237, align 8
  br label %238

238:                                              ; preds = %235, %234
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, 4
  store i32 %242, i32* %240, align 4
  br label %312

243:                                              ; preds = %226
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 11
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %243
  br label %268

249:                                              ; preds = %243
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, 54
  store i32 %253, i32* %251, align 8
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 10
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = sdiv i32 %258, 16
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @l141(i32 %259, i32 %262, i32* %6, i32* %5)
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, -5
  store i32 %267, i32* %265, align 4
  br label %311

268:                                              ; preds = %248
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 8
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  br label %292

274:                                              ; preds = %268
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = or i32 %277, 55
  store i32 %278, i32* %276, align 8
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 10
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @l141(i32 %283, i32 %286, i32* %6, i32* %5)
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 4
  %291 = and i32 %290, -5
  store i32 %291, i32* %289, align 4
  br label %310

292:                                              ; preds = %273
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, 48
  store i32 %296, i32* %294, align 8
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 10
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @l141(i32 %301, i32 %304, i32* %6, i32* %5)
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 4
  %309 = and i32 %308, -5
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %292, %274
  br label %311

311:                                              ; preds = %310, %249
  br label %312

312:                                              ; preds = %311, %238
  br label %313

313:                                              ; preds = %312, %204
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 10
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %315, align 8
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 9
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 5
  %322 = load i32, i32* %321, align 4
  %323 = and i32 %322, -5
  %324 = call i32 @l(%struct.TYPE_5__* %316, i32 %319, i32 %323)
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = sext i32 %327 to i64
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 7
  %331 = load i64, i64* %330, align 8
  %332 = add nsw i64 %331, 8
  %333 = inttoptr i64 %332 to i64*
  store volatile i64 %328, i64* %333, align 8
  %334 = load i32, i32* %6, align 4
  %335 = shl i32 %334, 8
  %336 = load i32, i32* %5, align 4
  %337 = or i32 %335, %336
  %338 = sext i32 %337 to i64
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 7
  %341 = load i64, i64* %340, align 8
  %342 = add nsw i64 %341, 44
  %343 = inttoptr i64 %342 to i64*
  store volatile i64 %338, i64* %343, align 8
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 10
  %346 = load %struct.TYPE_5__*, %struct.TYPE_5__** %345, align 8
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 9
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @l(%struct.TYPE_5__* %346, i32 %349, i32 %352)
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = icmp eq i32 %356, 1
  br i1 %357, label %358, label %363

358:                                              ; preds = %313
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 8
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %364, label %363

363:                                              ; preds = %358, %313
  br label %369

364:                                              ; preds = %358
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 6
  %367 = load i32, i32* %366, align 8
  %368 = or i32 %367, 256
  store i32 %368, i32* %366, align 8
  br label %374

369:                                              ; preds = %363
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 6
  %372 = load i32, i32* %371, align 8
  %373 = and i32 %372, -257
  store i32 %373, i32* %371, align 8
  br label %374

374:                                              ; preds = %369, %364
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 6
  %377 = load i32, i32* %376, align 8
  %378 = sext i32 %377 to i64
  %379 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 7
  %381 = load i64, i64* %380, align 8
  %382 = add nsw i64 %381, 12
  %383 = inttoptr i64 %382 to i64*
  store volatile i64 %378, i64* %383, align 8
  ret void
}

declare dso_local i32 @l(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @l141(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
