; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_make_hunks.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_make_hunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sline = type { i64, %struct.lline* }
%struct.lline = type { i64, %struct.lline* }

@context = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sline*, i64, i32, i32)* @make_hunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_hunks(%struct.sline* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sline*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.lline*, align 8
  store %struct.sline* %0, %struct.sline** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = shl i64 1, %23
  %25 = sub i64 %24, 1
  store i64 %25, i64* %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = shl i64 1, %27
  store i64 %28, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %29

29:                                               ; preds = %58, %4
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ule i64 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = load %struct.sline*, %struct.sline** %6, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.sline, %struct.sline* %34, i64 %35
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @interesting(%struct.sline* %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i64, i64* %11, align 8
  %42 = load %struct.sline*, %struct.sline** %6, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds %struct.sline, %struct.sline* %42, i64 %43
  %45 = getelementptr inbounds %struct.sline, %struct.sline* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %46, %41
  store i64 %47, i64* %45, align 8
  br label %57

48:                                               ; preds = %33
  %49 = load i64, i64* %11, align 8
  %50 = xor i64 %49, -1
  %51 = load %struct.sline*, %struct.sline** %6, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds %struct.sline, %struct.sline* %51, i64 %52
  %54 = getelementptr inbounds %struct.sline, %struct.sline* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = and i64 %55, %50
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %48, %40
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %12, align 8
  br label %29

61:                                               ; preds = %29
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load %struct.sline*, %struct.sline** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @give_context(%struct.sline* %65, i64 %66, i32 %67)
  store i32 %68, i32* %5, align 4
  br label %274

69:                                               ; preds = %61
  store i64 0, i64* %12, align 8
  br label %70

70:                                               ; preds = %266, %69
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ule i64 %71, %72
  br i1 %73, label %74, label %268

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %91, %74
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %7, align 8
  %78 = icmp ule i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = load %struct.sline*, %struct.sline** %6, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds %struct.sline, %struct.sline* %80, i64 %81
  %83 = getelementptr inbounds %struct.sline, %struct.sline* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %11, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %79, %75
  %90 = phi i1 [ false, %75 ], [ %88, %79 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i64, i64* %12, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %12, align 8
  br label %75

94:                                               ; preds = %89
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %12, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %268

99:                                               ; preds = %94
  %100 = load i64, i64* %12, align 8
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %12, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %14, align 8
  br label %103

103:                                              ; preds = %165, %99
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* %7, align 8
  %106 = icmp ule i64 %104, %105
  br i1 %106, label %107, label %168

107:                                              ; preds = %103
  %108 = load %struct.sline*, %struct.sline** %6, align 8
  %109 = load i64, i64* %14, align 8
  %110 = getelementptr inbounds %struct.sline, %struct.sline* %108, i64 %109
  %111 = getelementptr inbounds %struct.sline, %struct.sline* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %11, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %164, label %116

116:                                              ; preds = %107
  store i32 0, i32* %19, align 4
  %117 = load %struct.sline*, %struct.sline** %6, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load i64, i64* %14, align 8
  %121 = call i64 @adjust_hunk_tail(%struct.sline* %117, i64 %118, i64 %119, i64 %120)
  store i64 %121, i64* %18, align 8
  %122 = load i64, i64* %18, align 8
  %123 = load i64, i64* @context, align 8
  %124 = add i64 %122, %123
  %125 = load i64, i64* %7, align 8
  %126 = add i64 %125, 1
  %127 = icmp ult i64 %124, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %116
  %129 = load i64, i64* %18, align 8
  %130 = load i64, i64* @context, align 8
  %131 = add i64 %129, %130
  br label %135

132:                                              ; preds = %116
  %133 = load i64, i64* %7, align 8
  %134 = add i64 %133, 1
  br label %135

135:                                              ; preds = %132, %128
  %136 = phi i64 [ %131, %128 ], [ %134, %132 ]
  store i64 %136, i64* %18, align 8
  br label %137

137:                                              ; preds = %157, %135
  %138 = load i64, i64* %18, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i64, i64* %14, align 8
  %142 = load i64, i64* %18, align 8
  %143 = add i64 %142, -1
  store i64 %143, i64* %18, align 8
  %144 = icmp ule i64 %141, %143
  br label %145

145:                                              ; preds = %140, %137
  %146 = phi i1 [ false, %137 ], [ %144, %140 ]
  br i1 %146, label %147, label %158

147:                                              ; preds = %145
  %148 = load %struct.sline*, %struct.sline** %6, align 8
  %149 = load i64, i64* %18, align 8
  %150 = getelementptr inbounds %struct.sline, %struct.sline* %148, i64 %149
  %151 = getelementptr inbounds %struct.sline, %struct.sline* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %11, align 8
  %154 = and i64 %152, %153
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  store i32 1, i32* %19, align 4
  br label %158

157:                                              ; preds = %147
  br label %137

158:                                              ; preds = %156, %145
  %159 = load i32, i32* %19, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  br label %168

162:                                              ; preds = %158
  %163 = load i64, i64* %18, align 8
  store i64 %163, i64* %14, align 8
  br label %164

164:                                              ; preds = %162, %107
  br label %165

165:                                              ; preds = %164
  %166 = load i64, i64* %14, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %14, align 8
  br label %103

168:                                              ; preds = %161, %103
  %169 = load i64, i64* %14, align 8
  store i64 %169, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %13, align 4
  %170 = load i64, i64* %12, align 8
  store i64 %170, i64* %14, align 8
  br label %171

171:                                              ; preds = %237, %168
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %16, align 8
  %174 = icmp ult i64 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  br label %179

179:                                              ; preds = %175, %171
  %180 = phi i1 [ false, %171 ], [ %178, %175 ]
  br i1 %180, label %181, label %240

181:                                              ; preds = %179
  %182 = load %struct.sline*, %struct.sline** %6, align 8
  %183 = load i64, i64* %14, align 8
  %184 = getelementptr inbounds %struct.sline, %struct.sline* %182, i64 %183
  %185 = getelementptr inbounds %struct.sline, %struct.sline* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %10, align 8
  %188 = and i64 %186, %187
  store i64 %188, i64* %20, align 8
  %189 = load %struct.sline*, %struct.sline** %6, align 8
  %190 = load i64, i64* %14, align 8
  %191 = getelementptr inbounds %struct.sline, %struct.sline* %189, i64 %190
  %192 = getelementptr inbounds %struct.sline, %struct.sline* %191, i32 0, i32 1
  %193 = load %struct.lline*, %struct.lline** %192, align 8
  store %struct.lline* %193, %struct.lline** %21, align 8
  %194 = load i64, i64* %20, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %181
  %197 = load i64, i64* %17, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %196
  %200 = load i64, i64* %20, align 8
  store i64 %200, i64* %17, align 8
  br label %207

201:                                              ; preds = %196
  %202 = load i64, i64* %17, align 8
  %203 = load i64, i64* %20, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  store i32 1, i32* %13, align 4
  br label %240

206:                                              ; preds = %201
  br label %207

207:                                              ; preds = %206, %199
  br label %208

208:                                              ; preds = %207, %181
  br label %209

209:                                              ; preds = %232, %208
  %210 = load %struct.lline*, %struct.lline** %21, align 8
  %211 = icmp ne %struct.lline* %210, null
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load i32, i32* %13, align 4
  %214 = icmp ne i32 %213, 0
  %215 = xor i1 %214, true
  br label %216

216:                                              ; preds = %212, %209
  %217 = phi i1 [ false, %209 ], [ %215, %212 ]
  br i1 %217, label %218, label %236

218:                                              ; preds = %216
  %219 = load %struct.lline*, %struct.lline** %21, align 8
  %220 = getelementptr inbounds %struct.lline, %struct.lline* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %20, align 8
  %222 = load i64, i64* %17, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %218
  %225 = load i64, i64* %20, align 8
  store i64 %225, i64* %17, align 8
  br label %232

226:                                              ; preds = %218
  %227 = load i64, i64* %17, align 8
  %228 = load i64, i64* %20, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  store i32 1, i32* %13, align 4
  br label %231

231:                                              ; preds = %230, %226
  br label %232

232:                                              ; preds = %231, %224
  %233 = load %struct.lline*, %struct.lline** %21, align 8
  %234 = getelementptr inbounds %struct.lline, %struct.lline* %233, i32 0, i32 1
  %235 = load %struct.lline*, %struct.lline** %234, align 8
  store %struct.lline* %235, %struct.lline** %21, align 8
  br label %209

236:                                              ; preds = %216
  br label %237

237:                                              ; preds = %236
  %238 = load i64, i64* %14, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %14, align 8
  br label %171

240:                                              ; preds = %205, %179
  %241 = load i32, i32* %13, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %266, label %243

243:                                              ; preds = %240
  %244 = load i64, i64* %17, align 8
  %245 = load i64, i64* %10, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %266

247:                                              ; preds = %243
  %248 = load i64, i64* %15, align 8
  store i64 %248, i64* %14, align 8
  br label %249

249:                                              ; preds = %262, %247
  %250 = load i64, i64* %14, align 8
  %251 = load i64, i64* %16, align 8
  %252 = icmp ult i64 %250, %251
  br i1 %252, label %253, label %265

253:                                              ; preds = %249
  %254 = load i64, i64* %11, align 8
  %255 = xor i64 %254, -1
  %256 = load %struct.sline*, %struct.sline** %6, align 8
  %257 = load i64, i64* %14, align 8
  %258 = getelementptr inbounds %struct.sline, %struct.sline* %256, i64 %257
  %259 = getelementptr inbounds %struct.sline, %struct.sline* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = and i64 %260, %255
  store i64 %261, i64* %259, align 8
  br label %262

262:                                              ; preds = %253
  %263 = load i64, i64* %14, align 8
  %264 = add i64 %263, 1
  store i64 %264, i64* %14, align 8
  br label %249

265:                                              ; preds = %249
  br label %266

266:                                              ; preds = %265, %243, %240
  %267 = load i64, i64* %16, align 8
  store i64 %267, i64* %12, align 8
  br label %70

268:                                              ; preds = %98, %70
  %269 = load %struct.sline*, %struct.sline** %6, align 8
  %270 = load i64, i64* %7, align 8
  %271 = load i32, i32* %8, align 4
  %272 = call i32 @give_context(%struct.sline* %269, i64 %270, i32 %271)
  store i32 %272, i32* %13, align 4
  %273 = load i32, i32* %13, align 4
  store i32 %273, i32* %5, align 4
  br label %274

274:                                              ; preds = %268, %64
  %275 = load i32, i32* %5, align 4
  ret i32 %275
}

declare dso_local i64 @interesting(%struct.sline*, i64) #1

declare dso_local i32 @give_context(%struct.sline*, i64, i32) #1

declare dso_local i64 @adjust_hunk_tail(%struct.sline*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
