; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_printf_doformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_printf_doformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@printf_doformat.skip1 = internal constant [7 x i8] c"#'-+ 0\00", align 1
@digits = common dso_local global i32 0, align 4
@myargc = common dso_local global i32 0, align 4
@myargv = common dso_local global i8** null, align 8
@gargv = common dso_local global i8** null, align 8
@maxargv = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [21 x i8] c"incomplete use of n$\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"missing format character\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"aAeEfFgG\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"bad modifier L for %%%c\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@end_fmt = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"illegal format character %c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @printf_doformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @printf_doformat(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  %31 = alloca x86_fp80, align 16
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %13, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %14, align 8
  store i8* %37, i8** %16, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %16, align 8
  store i8 37, i8* %38, align 1
  %40 = load i8*, i8** %16, align 8
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* @digits, align 4
  %45 = call i32 @strspn(i8* %43, i32 %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %86

48:                                               ; preds = %2
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 36
  br i1 %55, label %56, label %86

56:                                               ; preds = %48
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @atoi(i8* %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @myargc, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i8**, i8*** @myargv, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  store i8** %67, i8*** @gargv, align 8
  br label %73

68:                                               ; preds = %56
  %69 = load i8**, i8*** @myargv, align 8
  %70 = load i32, i32* @myargc, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8** %72, i8*** @gargv, align 8
  br label %73

73:                                               ; preds = %68, %62
  %74 = load i8**, i8*** @gargv, align 8
  %75 = load i8**, i8*** @maxargv, align 8
  %76 = icmp ugt i8** %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i8**, i8*** @gargv, align 8
  store i8** %78, i8*** @maxargv, align 8
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i8*, i8** %4, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %4, align 8
  %85 = load i8**, i8*** @gargv, align 8
  store i8** %85, i8*** %15, align 8
  br label %87

86:                                               ; preds = %48, %2
  store i8** null, i8*** %15, align 8
  br label %87

87:                                               ; preds = %86, %79
  br label %88

88:                                               ; preds = %100, %87
  %89 = load i8*, i8** %4, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i8*, i8** %4, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i32* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @printf_doformat.skip1, i64 0, i64 0), i8 signext %95)
  %97 = icmp ne i32* %96, null
  br label %98

98:                                               ; preds = %93, %88
  %99 = phi i1 [ false, %88 ], [ %97, %93 ]
  br i1 %99, label %100, label %107

100:                                              ; preds = %98
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %4, align 8
  %103 = load i8, i8* %101, align 1
  %104 = load i8*, i8** %16, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %16, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i8*, i8** %16, align 8
  store i8 0, i8* %106, align 1
  br label %88

107:                                              ; preds = %98
  %108 = load i8*, i8** %4, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 42
  br i1 %111, label %112, label %176

112:                                              ; preds = %107
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %4, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = load i32, i32* @digits, align 4
  %117 = call i32 @strspn(i8* %115, i32 %116)
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %156

120:                                              ; preds = %112
  %121 = load i8*, i8** %4, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 36
  br i1 %127, label %128, label %156

128:                                              ; preds = %120
  %129 = load i8*, i8** %4, align 8
  %130 = call i32 @atoi(i8* %129)
  store i32 %130, i32* %19, align 4
  %131 = load i8**, i8*** %15, align 8
  %132 = icmp eq i8** %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %425

135:                                              ; preds = %128
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* @myargc, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load i8**, i8*** @myargv, align 8
  %141 = load i32, i32* %19, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %140, i64 %143
  store i8** %144, i8*** @gargv, align 8
  br label %150

145:                                              ; preds = %135
  %146 = load i8**, i8*** @myargv, align 8
  %147 = load i32, i32* @myargc, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  store i8** %149, i8*** @gargv, align 8
  br label %150

150:                                              ; preds = %145, %139
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 1
  %153 = load i8*, i8** %4, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %4, align 8
  br label %162

156:                                              ; preds = %120, %112
  %157 = load i8**, i8*** %15, align 8
  %158 = icmp ne i8** %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %425

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161, %150
  %163 = call i64 @getint(i32* %6)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %425

166:                                              ; preds = %162
  %167 = load i8**, i8*** @gargv, align 8
  %168 = load i8**, i8*** @maxargv, align 8
  %169 = icmp ugt i8** %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i8**, i8*** @gargv, align 8
  store i8** %171, i8*** @maxargv, align 8
  br label %172

172:                                              ; preds = %170, %166
  store i32 1, i32* %8, align 4
  %173 = load i8*, i8** %16, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %16, align 8
  store i8 42, i8* %173, align 1
  %175 = load i8*, i8** %16, align 8
  store i8 0, i8* %175, align 1
  br label %190

176:                                              ; preds = %107
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %182, %176
  %178 = load i8*, i8** %4, align 8
  %179 = load i8, i8* %178, align 1
  %180 = call i64 @isdigit(i8 signext %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load i8*, i8** %4, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %4, align 8
  %185 = load i8, i8* %183, align 1
  %186 = load i8*, i8** %16, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %16, align 8
  store i8 %185, i8* %186, align 1
  %188 = load i8*, i8** %16, align 8
  store i8 0, i8* %188, align 1
  br label %177

189:                                              ; preds = %177
  br label %190

190:                                              ; preds = %189, %172
  %191 = load i8*, i8** %4, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 46
  br i1 %194, label %195, label %283

195:                                              ; preds = %190
  %196 = load i8*, i8** %4, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %4, align 8
  %198 = load i8*, i8** %16, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %16, align 8
  store i8 46, i8* %198, align 1
  %200 = load i8*, i8** %4, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 42
  br i1 %203, label %204, label %268

204:                                              ; preds = %195
  %205 = load i8*, i8** %4, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %4, align 8
  %207 = load i8*, i8** %4, align 8
  %208 = load i32, i32* @digits, align 4
  %209 = call i32 @strspn(i8* %207, i32 %208)
  store i32 %209, i32* %17, align 4
  %210 = load i32, i32* %17, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %248

212:                                              ; preds = %204
  %213 = load i8*, i8** %4, align 8
  %214 = load i32, i32* %17, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 36
  br i1 %219, label %220, label %248

220:                                              ; preds = %212
  %221 = load i8*, i8** %4, align 8
  %222 = call i32 @atoi(i8* %221)
  store i32 %222, i32* %21, align 4
  %223 = load i8**, i8*** %15, align 8
  %224 = icmp eq i8** %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %425

227:                                              ; preds = %220
  %228 = load i32, i32* %21, align 4
  %229 = load i32, i32* @myargc, align 4
  %230 = icmp sle i32 %228, %229
  br i1 %230, label %231, label %237

231:                                              ; preds = %227
  %232 = load i8**, i8*** @myargv, align 8
  %233 = load i32, i32* %21, align 4
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %232, i64 %235
  store i8** %236, i8*** @gargv, align 8
  br label %242

237:                                              ; preds = %227
  %238 = load i8**, i8*** @myargv, align 8
  %239 = load i32, i32* @myargc, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  store i8** %241, i8*** @gargv, align 8
  br label %242

242:                                              ; preds = %237, %231
  %243 = load i32, i32* %17, align 4
  %244 = add nsw i32 %243, 1
  %245 = load i8*, i8** %4, align 8
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i8, i8* %245, i64 %246
  store i8* %247, i8** %4, align 8
  br label %254

248:                                              ; preds = %212, %204
  %249 = load i8**, i8*** %15, align 8
  %250 = icmp ne i8** %249, null
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %425

253:                                              ; preds = %248
  br label %254

254:                                              ; preds = %253, %242
  %255 = call i64 @getint(i32* %10)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %425

258:                                              ; preds = %254
  %259 = load i8**, i8*** @gargv, align 8
  %260 = load i8**, i8*** @maxargv, align 8
  %261 = icmp ugt i8** %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = load i8**, i8*** @gargv, align 8
  store i8** %263, i8*** @maxargv, align 8
  br label %264

264:                                              ; preds = %262, %258
  store i32 1, i32* %7, align 4
  %265 = load i8*, i8** %16, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %16, align 8
  store i8 42, i8* %265, align 1
  %267 = load i8*, i8** %16, align 8
  store i8 0, i8* %267, align 1
  br label %282

268:                                              ; preds = %195
  store i32 0, i32* %7, align 4
  br label %269

269:                                              ; preds = %274, %268
  %270 = load i8*, i8** %4, align 8
  %271 = load i8, i8* %270, align 1
  %272 = call i64 @isdigit(i8 signext %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %269
  %275 = load i8*, i8** %4, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %4, align 8
  %277 = load i8, i8* %275, align 1
  %278 = load i8*, i8** %16, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %16, align 8
  store i8 %277, i8* %278, align 1
  %280 = load i8*, i8** %16, align 8
  store i8 0, i8* %280, align 1
  br label %269

281:                                              ; preds = %269
  br label %282

282:                                              ; preds = %281, %264
  br label %284

283:                                              ; preds = %190
  store i32 0, i32* %7, align 4
  br label %284

284:                                              ; preds = %283, %282
  %285 = load i8*, i8** %4, align 8
  %286 = load i8, i8* %285, align 1
  %287 = icmp ne i8 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %284
  %289 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %425

290:                                              ; preds = %284
  %291 = load i8*, i8** %4, align 8
  %292 = load i8, i8* %291, align 1
  %293 = load i8*, i8** %16, align 8
  %294 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %294, i8** %16, align 8
  store i8 %292, i8* %293, align 1
  %295 = load i8*, i8** %16, align 8
  store i8 0, i8* %295, align 1
  %296 = load i8*, i8** %4, align 8
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp eq i32 %298, 76
  br i1 %299, label %300, label %313

300:                                              ; preds = %290
  store i32 1, i32* %9, align 4
  %301 = load i8*, i8** %4, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %4, align 8
  %303 = load i8*, i8** %4, align 8
  %304 = load i8, i8* %303, align 1
  %305 = call i32* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8 signext %304)
  %306 = icmp ne i32* %305, null
  br i1 %306, label %312, label %307

307:                                              ; preds = %300
  %308 = load i8*, i8** %4, align 8
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %310)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %425

312:                                              ; preds = %300
  br label %314

313:                                              ; preds = %290
  store i32 0, i32* %9, align 4
  br label %314

314:                                              ; preds = %313, %312
  %315 = load i8**, i8*** %15, align 8
  %316 = icmp ne i8** %315, null
  br i1 %316, label %317, label %319

317:                                              ; preds = %314
  %318 = load i8**, i8*** %15, align 8
  store i8** %318, i8*** @gargv, align 8
  br label %319

319:                                              ; preds = %317, %314
  %320 = load i8*, i8** %4, align 8
  %321 = load i8, i8* %320, align 1
  store i8 %321, i8* %11, align 1
  %322 = load i8*, i8** %4, align 8
  %323 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %323, i8** %4, align 8
  %324 = load i8, i8* %323, align 1
  store i8 %324, i8* %12, align 1
  %325 = load i8*, i8** %4, align 8
  store i8 0, i8* %325, align 1
  %326 = load i8, i8* %11, align 1
  %327 = sext i8 %326 to i32
  switch i32 %327, label %417 [
    i32 98, label %328
    i32 99, label %353
    i32 115, label %363
    i32 100, label %367
    i32 105, label %367
    i32 111, label %367
    i32 117, label %367
    i32 120, label %367
    i32 88, label %367
    i32 101, label %400
    i32 69, label %400
    i32 102, label %400
    i32 70, label %400
    i32 103, label %400
    i32 71, label %400
    i32 97, label %400
    i32 65, label %400
  ]

328:                                              ; preds = %319
  %329 = call i32 @strlen(i8* %37)
  %330 = sub nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8, i8* %37, i64 %331
  store i8 115, i8* %332, align 1
  %333 = call i8* (...) @getstr()
  %334 = call i8* @strdup(i8* %333)
  store i8* %334, i8** %23, align 8
  %335 = icmp eq i8* %334, null
  br i1 %335, label %336, label %341

336:                                              ; preds = %328
  %337 = load i32, i32* @ENOMEM, align 4
  %338 = call signext i8 @strerror(i32 %337)
  %339 = sext i8 %338 to i32
  %340 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %339)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %425

341:                                              ; preds = %328
  %342 = load i8*, i8** %23, align 8
  %343 = call i32 @escape(i8* %342, i32 0, i64* %22)
  store i32 %343, i32* %24, align 4
  %344 = load i8*, i8** %23, align 8
  %345 = call i32 (i8*, ...) @PF(i8* %37, i8* %344)
  %346 = load i8*, i8** %23, align 8
  %347 = call i32 @free(i8* %346)
  %348 = load i32, i32* %24, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %341
  %351 = load i8*, i8** @end_fmt, align 8
  store i8* %351, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %425

352:                                              ; preds = %341
  br label %421

353:                                              ; preds = %319
  %354 = call signext i8 (...) @getchr()
  store i8 %354, i8* %25, align 1
  %355 = load i8, i8* %25, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %353
  %359 = load i8, i8* %25, align 1
  %360 = sext i8 %359 to i32
  %361 = call i32 (i8*, ...) @PF(i8* %37, i32 %360)
  br label %362

362:                                              ; preds = %358, %353
  br label %421

363:                                              ; preds = %319
  %364 = call i8* (...) @getstr()
  store i8* %364, i8** %26, align 8
  %365 = load i8*, i8** %26, align 8
  %366 = call i32 (i8*, ...) @PF(i8* %37, i8* %365)
  br label %421

367:                                              ; preds = %319, %319, %319, %319, %319, %319
  %368 = load i8, i8* %11, align 1
  %369 = sext i8 %368 to i32
  %370 = icmp eq i32 %369, 100
  br i1 %370, label %375, label %371

371:                                              ; preds = %367
  %372 = load i8, i8* %11, align 1
  %373 = sext i8 %372 to i32
  %374 = icmp eq i32 %373, 105
  br label %375

375:                                              ; preds = %371, %367
  %376 = phi i1 [ true, %367 ], [ %374, %371 ]
  %377 = zext i1 %376 to i32
  store i32 %377, i32* %30, align 4
  %378 = load i8, i8* %11, align 1
  %379 = call i8* @mknum(i8* %37, i8 signext %378)
  store i8* %379, i8** %27, align 8
  %380 = icmp eq i8* %379, null
  br i1 %380, label %381, label %382

381:                                              ; preds = %375
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %425

382:                                              ; preds = %375
  %383 = load i32, i32* %30, align 4
  %384 = call i32 @getnum(double* %28, double* %29, i32 %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %382
  %387 = load i32*, i32** %5, align 8
  store i32 1, i32* %387, align 4
  br label %388

388:                                              ; preds = %386, %382
  %389 = load i32, i32* %30, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %395

391:                                              ; preds = %388
  %392 = load i8*, i8** %27, align 8
  %393 = load double, double* %28, align 8
  %394 = call i32 (i8*, ...) @PF(i8* %392, double %393)
  br label %399

395:                                              ; preds = %388
  %396 = load i8*, i8** %27, align 8
  %397 = load double, double* %29, align 8
  %398 = call i32 (i8*, ...) @PF(i8* %396, double %397)
  br label %399

399:                                              ; preds = %395, %391
  br label %421

400:                                              ; preds = %319, %319, %319, %319, %319, %319, %319, %319
  %401 = load i32, i32* %9, align 4
  %402 = call i32 @getfloating(x86_fp80* %31, i32 %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %400
  %405 = load i32*, i32** %5, align 8
  store i32 1, i32* %405, align 4
  br label %406

406:                                              ; preds = %404, %400
  %407 = load i32, i32* %9, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %406
  %410 = load x86_fp80, x86_fp80* %31, align 16
  %411 = call i32 (i8*, ...) @PF(i8* %37, x86_fp80 %410)
  br label %416

412:                                              ; preds = %406
  %413 = load x86_fp80, x86_fp80* %31, align 16
  %414 = fptrunc x86_fp80 %413 to double
  %415 = call i32 (i8*, ...) @PF(i8* %37, double %414)
  br label %416

416:                                              ; preds = %412, %409
  br label %421

417:                                              ; preds = %319
  %418 = load i8, i8* %11, align 1
  %419 = sext i8 %418 to i32
  %420 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %419)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %425

421:                                              ; preds = %416, %399, %363, %362, %352
  %422 = load i8, i8* %12, align 1
  %423 = load i8*, i8** %4, align 8
  store i8 %422, i8* %423, align 1
  %424 = load i8*, i8** %4, align 8
  store i8* %424, i8** %3, align 8
  store i32 1, i32* %20, align 4
  br label %425

425:                                              ; preds = %421, %417, %381, %350, %336, %307, %288, %257, %251, %225, %165, %159, %133
  %426 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %426)
  %427 = load i8*, i8** %3, align 8
  ret i8* %427
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @getint(i32*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @getstr(...) #1

declare dso_local signext i8 @strerror(i32) #1

declare dso_local i32 @escape(i8*, i32, i64*) #1

declare dso_local i32 @PF(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local signext i8 @getchr(...) #1

declare dso_local i8* @mknum(i8*, i8 signext) #1

declare dso_local i32 @getnum(double*, double*, i32) #1

declare dso_local i32 @getfloating(x86_fp80*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
