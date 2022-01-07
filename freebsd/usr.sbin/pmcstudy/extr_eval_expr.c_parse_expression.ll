; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_eval_expr.c_parse_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_eval_expr.c_parse_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i64, i8*, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"Invalid expression '%s' %d open paren's and %d close?\0A\00", align 1
@TYPE_PARN_OPEN = common dso_local global i64 0, align 8
@TYPE_PARN_CLOSE = common dso_local global i64 0, align 8
@TYPE_OP_PLUS = common dso_local global i64 0, align 8
@TYPE_OP_MINUS = common dso_local global i64 0, align 8
@TYPE_OP_DIVIDE = common dso_local global i64 0, align 8
@TYPE_OP_MULT = common dso_local global i64 0, align 8
@TYPE_VALUE_CON = common dso_local global i64 0, align 8
@TYPE_VALUE_PMC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Value/Constant too long %d max:%d\0A\00", align 1
@STATE_FILLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid expression\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.expression* @parse_expression(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.expression*, align 8
  %4 = alloca %struct.expression*, align 8
  %5 = alloca %struct.expression*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store %struct.expression* null, %struct.expression** %3, align 8
  store %struct.expression* null, %struct.expression** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = load i64, i64* %9, align 8
  %16 = sub i64 %15, 1
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i8*, i8** %2, align 8
  %23 = load i64, i64* %9, align 8
  %24 = sub i64 %23, 1
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 0, i8* %25, align 1
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %21, %1
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %55, %28
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load i8*, i8** %2, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 40
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %54

43:                                               ; preds = %33
  %44 = load i8*, i8** %2, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 41
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %43
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %10, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %10, align 8
  br label %29

58:                                               ; preds = %29
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i8*, i8** %2, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %64, i32 %65)
  %67 = call i32 @exit(i32 -1) #3
  unreachable

68:                                               ; preds = %58
  store i64 0, i64* %10, align 8
  br label %69

69:                                               ; preds = %282, %68
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %285

73:                                               ; preds = %69
  %74 = load i8*, i8** %2, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 40
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = call %struct.expression* @alloc_and_hook_expr(%struct.expression** %3, %struct.expression** %4)
  store %struct.expression* %81, %struct.expression** %5, align 8
  %82 = load i64, i64* @TYPE_PARN_OPEN, align 8
  %83 = load %struct.expression*, %struct.expression** %5, align 8
  %84 = getelementptr inbounds %struct.expression, %struct.expression* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %281

85:                                               ; preds = %73
  %86 = load i8*, i8** %2, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 41
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = call %struct.expression* @alloc_and_hook_expr(%struct.expression** %3, %struct.expression** %4)
  store %struct.expression* %93, %struct.expression** %5, align 8
  %94 = load i64, i64* @TYPE_PARN_CLOSE, align 8
  %95 = load %struct.expression*, %struct.expression** %5, align 8
  %96 = getelementptr inbounds %struct.expression, %struct.expression* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %280

97:                                               ; preds = %85
  %98 = load i8*, i8** %2, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 32
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %282

105:                                              ; preds = %97
  %106 = load i8*, i8** %2, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 9
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %282

113:                                              ; preds = %105
  %114 = load i8*, i8** %2, align 8
  %115 = load i64, i64* %10, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 43
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = call %struct.expression* @alloc_and_hook_expr(%struct.expression** %3, %struct.expression** %4)
  store %struct.expression* %121, %struct.expression** %5, align 8
  %122 = load i64, i64* @TYPE_OP_PLUS, align 8
  %123 = load %struct.expression*, %struct.expression** %5, align 8
  %124 = getelementptr inbounds %struct.expression, %struct.expression* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  br label %277

125:                                              ; preds = %113
  %126 = load i8*, i8** %2, align 8
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 45
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = call %struct.expression* @alloc_and_hook_expr(%struct.expression** %3, %struct.expression** %4)
  store %struct.expression* %133, %struct.expression** %5, align 8
  %134 = load i64, i64* @TYPE_OP_MINUS, align 8
  %135 = load %struct.expression*, %struct.expression** %5, align 8
  %136 = getelementptr inbounds %struct.expression, %struct.expression* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %276

137:                                              ; preds = %125
  %138 = load i8*, i8** %2, align 8
  %139 = load i64, i64* %10, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 47
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = call %struct.expression* @alloc_and_hook_expr(%struct.expression** %3, %struct.expression** %4)
  store %struct.expression* %145, %struct.expression** %5, align 8
  %146 = load i64, i64* @TYPE_OP_DIVIDE, align 8
  %147 = load %struct.expression*, %struct.expression** %5, align 8
  %148 = getelementptr inbounds %struct.expression, %struct.expression* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  br label %275

149:                                              ; preds = %137
  %150 = load i8*, i8** %2, align 8
  %151 = load i64, i64* %10, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 42
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = call %struct.expression* @alloc_and_hook_expr(%struct.expression** %3, %struct.expression** %4)
  store %struct.expression* %157, %struct.expression** %5, align 8
  %158 = load i64, i64* @TYPE_OP_MULT, align 8
  %159 = load %struct.expression*, %struct.expression** %5, align 8
  %160 = getelementptr inbounds %struct.expression, %struct.expression* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  br label %274

161:                                              ; preds = %149
  %162 = call %struct.expression* @alloc_and_hook_expr(%struct.expression** %3, %struct.expression** %4)
  store %struct.expression* %162, %struct.expression** %5, align 8
  %163 = load i8*, i8** %2, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = call i64 @isdigit(i8 signext %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %161
  %170 = load i8*, i8** %2, align 8
  %171 = load i64, i64* %10, align 8
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 46
  br i1 %175, label %176, label %180

176:                                              ; preds = %169, %161
  %177 = load i64, i64* @TYPE_VALUE_CON, align 8
  %178 = load %struct.expression*, %struct.expression** %5, align 8
  %179 = getelementptr inbounds %struct.expression, %struct.expression* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  br label %184

180:                                              ; preds = %169
  %181 = load i64, i64* @TYPE_VALUE_PMC, align 8
  %182 = load %struct.expression*, %struct.expression** %5, align 8
  %183 = getelementptr inbounds %struct.expression, %struct.expression* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %180, %176
  store i64 0, i64* %11, align 8
  br label %185

185:                                              ; preds = %243, %184
  %186 = load i8*, i8** %2, align 8
  %187 = load i64, i64* %10, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 32
  br i1 %191, label %192, label %220

192:                                              ; preds = %185
  %193 = load i8*, i8** %2, align 8
  %194 = load i64, i64* %10, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 9
  br i1 %198, label %199, label %220

199:                                              ; preds = %192
  %200 = load i8*, i8** %2, align 8
  %201 = load i64, i64* %10, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %220

206:                                              ; preds = %199
  %207 = load i8*, i8** %2, align 8
  %208 = load i64, i64* %10, align 8
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp ne i32 %211, 41
  br i1 %212, label %213, label %220

213:                                              ; preds = %206
  %214 = load i8*, i8** %2, align 8
  %215 = load i64, i64* %10, align 8
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp ne i32 %218, 40
  br label %220

220:                                              ; preds = %213, %206, %199, %192, %185
  %221 = phi i1 [ false, %206 ], [ false, %199 ], [ false, %192 ], [ false, %185 ], [ %219, %213 ]
  br i1 %221, label %222, label %244

222:                                              ; preds = %220
  %223 = load i8*, i8** %2, align 8
  %224 = load i64, i64* %10, align 8
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = load %struct.expression*, %struct.expression** %5, align 8
  %228 = getelementptr inbounds %struct.expression, %struct.expression* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = load i64, i64* %11, align 8
  %231 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8 %226, i8* %231, align 1
  %232 = load i64, i64* %10, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %10, align 8
  %234 = load i64, i64* %11, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %11, align 8
  %236 = load i64, i64* %11, align 8
  %237 = icmp uge i64 %236, 7
  br i1 %237, label %238, label %243

238:                                              ; preds = %222
  %239 = load i64, i64* %11, align 8
  %240 = trunc i64 %239 to i32
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %240, i32 7)
  %242 = call i32 @exit(i32 -3) #3
  unreachable

243:                                              ; preds = %222
  br label %185

244:                                              ; preds = %220
  %245 = load i8*, i8** %2, align 8
  %246 = load i64, i64* %10, align 8
  %247 = getelementptr inbounds i8, i8* %245, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %244
  %252 = load i64, i64* %10, align 8
  %253 = add i64 %252, -1
  store i64 %253, i64* %10, align 8
  br label %254

254:                                              ; preds = %251, %244
  %255 = load %struct.expression*, %struct.expression** %5, align 8
  %256 = getelementptr inbounds %struct.expression, %struct.expression* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @TYPE_VALUE_CON, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %270

260:                                              ; preds = %254
  %261 = load i32, i32* @STATE_FILLED, align 4
  %262 = load %struct.expression*, %struct.expression** %5, align 8
  %263 = getelementptr inbounds %struct.expression, %struct.expression* %262, i32 0, i32 3
  store i32 %261, i32* %263, align 4
  %264 = load %struct.expression*, %struct.expression** %5, align 8
  %265 = getelementptr inbounds %struct.expression, %struct.expression* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @strtod(i8* %266, i32* null)
  %268 = load %struct.expression*, %struct.expression** %5, align 8
  %269 = getelementptr inbounds %struct.expression, %struct.expression* %268, i32 0, i32 2
  store i32 %267, i32* %269, align 8
  br label %273

270:                                              ; preds = %254
  %271 = load %struct.expression*, %struct.expression** %5, align 8
  %272 = call i32 @pmc_name_set(%struct.expression* %271)
  br label %273

273:                                              ; preds = %270, %260
  br label %274

274:                                              ; preds = %273, %156
  br label %275

275:                                              ; preds = %274, %144
  br label %276

276:                                              ; preds = %275, %132
  br label %277

277:                                              ; preds = %276, %120
  br label %278

278:                                              ; preds = %277
  br label %279

279:                                              ; preds = %278
  br label %280

280:                                              ; preds = %279, %92
  br label %281

281:                                              ; preds = %280, %80
  br label %282

282:                                              ; preds = %281, %112, %104
  %283 = load i64, i64* %10, align 8
  %284 = add i64 %283, 1
  store i64 %284, i64* %10, align 8
  br label %69

285:                                              ; preds = %69
  %286 = load %struct.expression*, %struct.expression** %3, align 8
  %287 = call i64 @validate_expr(%struct.expression* %286, i32 0, i32 0, i32 0, i32* %8)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %285
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %291 = call i32 @exit(i32 -4) #3
  unreachable

292:                                              ; preds = %285
  %293 = load %struct.expression*, %struct.expression** %3, align 8
  %294 = call i32 @set_math_precidence(%struct.expression** %3, %struct.expression* %293, i32* null)
  %295 = load %struct.expression*, %struct.expression** %3, align 8
  ret %struct.expression* %295
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.expression* @alloc_and_hook_expr(%struct.expression**, %struct.expression**) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strtod(i8*, i32*) #1

declare dso_local i32 @pmc_name_set(%struct.expression*) #1

declare dso_local i64 @validate_expr(%struct.expression*, i32, i32, i32, i32*) #1

declare dso_local i32 @set_math_precidence(%struct.expression**, %struct.expression*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
