; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unexpand/extr_unexpand.c_tabify.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unexpand/extr_unexpand.c_tabify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nstops = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@tabstops = common dso_local global i32* null, align 8
@WEOF = common dso_local global i8 0, align 1
@all = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tabify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tabify(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %11 = load i32, i32* @nstops, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @INT_MAX, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load i32*, i32** @tabstops, align 8
  %17 = load i32, i32* @nstops, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  br label %23

23:                                               ; preds = %15, %13
  %24 = phi i32 [ %14, %13 ], [ %22, %15 ]
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %278, %222, %97, %52, %44, %23
  %26 = call signext i8 (...) @getwchar()
  store i8 %26, i8* %10, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @WEOF, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %279

31:                                               ; preds = %25
  %32 = load i8, i8* %10, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %38
  br label %25

45:                                               ; preds = %35, %31
  %46 = load i8, i8* %10, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %49, label %105

49:                                               ; preds = %45
  %50 = load i32, i32* @nstops, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = load i32*, i32** @tabstops, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %53, %56
  %58 = add nsw i32 1, %57
  %59 = load i32*, i32** @tabstops, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  store i32 %62, i32* %4, align 4
  br label %25

63:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %80, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @nstops, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32*, i32** @tabstops, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %74, %75
  br label %77

77:                                               ; preds = %68, %64
  %78 = phi i1 [ false, %64 ], [ %76, %68 ]
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %64

83:                                               ; preds = %77
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @nstops, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load i32*, i32** @tabstops, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load i32*, i32** @tabstops, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %4, align 4
  br label %25

103:                                              ; preds = %88, %83
  store i32 1, i32* %5, align 4
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %45
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* @nstops, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %145

109:                                              ; preds = %106
  br label %110

110:                                              ; preds = %132, %109
  %111 = load i32, i32* %8, align 4
  %112 = load i32*, i32** @tabstops, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %111, %114
  %116 = load i32*, i32** @tabstops, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = sdiv i32 %115, %118
  %120 = load i32, i32* %4, align 4
  %121 = load i32*, i32** @tabstops, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = sdiv i32 %120, %123
  %125 = icmp sle i32 %119, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %110
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %8, align 4
  %129 = sub nsw i32 %127, %128
  %130 = icmp slt i32 %129, 2
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %144

132:                                              ; preds = %126
  %133 = call i32 @putwchar(i8 signext 9)
  %134 = load i32, i32* %8, align 4
  %135 = load i32*, i32** @tabstops, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = sdiv i32 %134, %137
  %139 = add nsw i32 1, %138
  %140 = load i32*, i32** @tabstops, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %139, %142
  store i32 %143, i32* %8, align 4
  br label %110

144:                                              ; preds = %131, %110
  br label %189

145:                                              ; preds = %106
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %162, %145
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @nstops, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load i32*, i32** @tabstops, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, 1
  %157 = load i32, i32* %8, align 4
  %158 = icmp slt i32 %156, %157
  br label %159

159:                                              ; preds = %150, %146
  %160 = phi i1 [ false, %146 ], [ %158, %150 ]
  br i1 %160, label %161, label %165

161:                                              ; preds = %159
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %146

165:                                              ; preds = %159
  br label %166

166:                                              ; preds = %180, %165
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %4, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %166
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @nstops, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp slt i32 %175, %176
  br label %178

178:                                              ; preds = %174, %170, %166
  %179 = phi i1 [ false, %170 ], [ false, %166 ], [ %177, %174 ]
  br i1 %179, label %180, label %188

180:                                              ; preds = %178
  %181 = call i32 @putwchar(i8 signext 9)
  %182 = load i32*, i32** @tabstops, align 8
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %8, align 4
  br label %166

188:                                              ; preds = %178
  br label %189

189:                                              ; preds = %188, %144
  br label %190

190:                                              ; preds = %200, %189
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %4, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp slt i32 %195, %196
  br label %198

198:                                              ; preds = %194, %190
  %199 = phi i1 [ false, %190 ], [ %197, %194 ]
  br i1 %199, label %200, label %204

200:                                              ; preds = %198
  %201 = call i32 @putwchar(i8 signext 32)
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %190

204:                                              ; preds = %198
  %205 = load i8, i8* %10, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 8
  br i1 %207, label %208, label %218

208:                                              ; preds = %204
  %209 = call i32 @putwchar(i8 signext 8)
  %210 = load i32, i32* %8, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %208
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, -1
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %4, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %212, %208
  br label %248

218:                                              ; preds = %204
  %219 = load i8, i8* %10, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 %220, 10
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = call i32 @putwchar(i8 signext 10)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %25

224:                                              ; preds = %218
  %225 = load i8, i8* %10, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp ne i32 %226, 32
  br i1 %227, label %232, label %228

228:                                              ; preds = %224
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* %6, align 4
  %231 = icmp sgt i32 %229, %230
  br i1 %231, label %232, label %246

232:                                              ; preds = %228, %224
  %233 = load i8, i8* %10, align 1
  %234 = call i32 @putwchar(i8 signext %233)
  %235 = load i8, i8* %10, align 1
  %236 = call i32 @wcwidth(i8 signext %235)
  store i32 %236, i32* %9, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %232
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %8, align 4
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %4, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %4, align 4
  br label %245

245:                                              ; preds = %238, %232
  br label %246

246:                                              ; preds = %245, %228
  br label %247

247:                                              ; preds = %246
  br label %248

248:                                              ; preds = %247, %217
  %249 = load i32, i32* @all, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = load i32, i32* %4, align 4
  %253 = load i32, i32* %6, align 4
  %254 = icmp sge i32 %252, %253
  br i1 %254, label %255, label %278

255:                                              ; preds = %251, %248
  br label %256

256:                                              ; preds = %268, %255
  %257 = call signext i8 (...) @getwchar()
  store i8 %257, i8* %10, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp ne i32 %258, 10
  br i1 %259, label %260, label %266

260:                                              ; preds = %256
  %261 = load i8, i8* %10, align 1
  %262 = sext i8 %261 to i32
  %263 = load i8, i8* @WEOF, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp ne i32 %262, %264
  br label %266

266:                                              ; preds = %260, %256
  %267 = phi i1 [ false, %256 ], [ %265, %260 ]
  br i1 %267, label %268, label %271

268:                                              ; preds = %266
  %269 = load i8, i8* %10, align 1
  %270 = call i32 @putwchar(i8 signext %269)
  br label %256

271:                                              ; preds = %266
  %272 = load i8, i8* %10, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp eq i32 %273, 10
  br i1 %274, label %275, label %277

275:                                              ; preds = %271
  %276 = call i32 @putwchar(i8 signext 10)
  br label %277

277:                                              ; preds = %275, %271
  store i32 0, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %278

278:                                              ; preds = %277, %251
  br label %25

279:                                              ; preds = %25
  %280 = load i32, i32* @stdin, align 4
  %281 = call i64 @ferror(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = load i8*, i8** %3, align 8
  %285 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %284)
  store i32 1, i32* %2, align 4
  br label %287

286:                                              ; preds = %279
  store i32 0, i32* %2, align 4
  br label %287

287:                                              ; preds = %286, %283
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local signext i8 @getwchar(...) #1

declare dso_local i32 @putwchar(i8 signext) #1

declare dso_local i32 @wcwidth(i8 signext) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
