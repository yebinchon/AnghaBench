; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/wc/extr_wc.c_cnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/wc/extr_wc.c_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@MAXBSIZE = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@fa = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s: open\00", align 1
@doword = common dso_local global i64 0, align 8
@domulti = common dso_local global i64 0, align 8
@MB_CUR_MAX = common dso_local global i32 0, align 4
@doline = common dso_local global i64 0, align 8
@dolongline = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%s: fstat\00", align 1
@tcharct = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s: read\00", align 1
@siginfo = common dso_local global i64 0, align 8
@tlinect = common dso_local global i32 0, align 4
@dochar = common dso_local global i64 0, align 8
@tlongline = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@twordct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i16, align 2
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %21 = load i32, i32* @MAXBSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %28, i32* %10, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load i32, i32* @fa, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @fileargs_open(i32 %30, i8* %31)
  store i32 %32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @xo_warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %377

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i64, i64* @doword, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* @domulti, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @MB_CUR_MAX, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %38
  br label %185

48:                                               ; preds = %44, %41
  %49 = load i64, i64* @doline, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %48
  %52 = load i64, i64* @dolongline, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @fstat(i32 %55, %struct.stat* %4)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @xo_warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @close(i32 %61)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %377

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @S_ISREG(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = call i32 (...) @reset_siginfo()
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %7, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @show_cnt(i8* %72, i64 %73, i64 %74, i64 %75, i64 %76)
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* @tcharct, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* @tcharct, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @close(i32 %83)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %377

85:                                               ; preds = %63
  br label %86

86:                                               ; preds = %85, %51, %48
  br label %87

87:                                               ; preds = %147, %86
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @MAXBSIZE, align 4
  %90 = call i32 @read(i32 %88, i8* %24, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %148

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @xo_warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @close(i32 %98)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %377

100:                                              ; preds = %92
  %101 = load i64, i64* @siginfo, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i8*, i8** %3, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @show_cnt(i8* %104, i64 %105, i64 %106, i64 %107, i64 %108)
  br label %110

110:                                              ; preds = %103, %100
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %7, align 8
  %114 = add nsw i64 %113, %112
  store i64 %114, i64* %7, align 8
  %115 = load i64, i64* @doline, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %110
  %118 = load i64, i64* @dolongline, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %117, %110
  store i8* %24, i8** %15, align 8
  br label %121

121:                                              ; preds = %143, %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %11, align 4
  %124 = icmp ne i32 %122, 0
  br i1 %124, label %125, label %146

125:                                              ; preds = %121
  %126 = load i8*, i8** %15, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 10
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* %8, align 8
  %133 = icmp sgt i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i64, i64* %9, align 8
  store i64 %135, i64* %8, align 8
  br label %136

136:                                              ; preds = %134, %130
  store i64 0, i64* %9, align 8
  %137 = load i64, i64* %5, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %5, align 8
  br label %142

139:                                              ; preds = %125
  %140 = load i64, i64* %9, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %9, align 8
  br label %142

142:                                              ; preds = %139, %136
  br label %143

143:                                              ; preds = %142
  %144 = load i8*, i8** %15, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %15, align 8
  br label %121

146:                                              ; preds = %121
  br label %147

147:                                              ; preds = %146, %117
  br label %87

148:                                              ; preds = %87
  %149 = call i32 (...) @reset_siginfo()
  %150 = load i64, i64* @doline, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = load i64, i64* %5, align 8
  %154 = load i32, i32* @tlinect, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* @tlinect, align 4
  br label %158

158:                                              ; preds = %152, %148
  %159 = load i64, i64* @dochar, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i64, i64* %7, align 8
  %163 = load i32, i32* @tcharct, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* @tcharct, align 4
  br label %167

167:                                              ; preds = %161, %158
  %168 = load i64, i64* @dolongline, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load i64, i64* %8, align 8
  %172 = load i64, i64* @tlongline, align 8
  %173 = icmp sgt i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i64, i64* %8, align 8
  store i64 %175, i64* @tlongline, align 8
  br label %176

176:                                              ; preds = %174, %170, %167
  %177 = load i8*, i8** %3, align 8
  %178 = load i64, i64* %5, align 8
  %179 = load i64, i64* %6, align 8
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* %8, align 8
  %182 = call i32 @show_cnt(i8* %177, i64 %178, i64 %179, i64 %180, i64 %181)
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @close(i32 %183)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %377

185:                                              ; preds = %47
  store i16 1, i16* %14, align 2
  store i32 0, i32* %12, align 4
  %186 = call i32 @memset(i32* %19, i32 0, i32 4)
  br label %187

187:                                              ; preds = %305, %185
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @MAXBSIZE, align 4
  %190 = call i32 @read(i32 %188, i8* %24, i32 %189)
  store i32 %190, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %306

192:                                              ; preds = %187
  %193 = load i32, i32* %11, align 4
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = load i8*, i8** %3, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = load i8*, i8** %3, align 8
  br label %201

200:                                              ; preds = %195
  br label %201

201:                                              ; preds = %200, %198
  %202 = phi i8* [ %199, %198 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %200 ]
  %203 = call i32 @xo_warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %202)
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @close(i32 %204)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %377

206:                                              ; preds = %192
  store i8* %24, i8** %15, align 8
  br label %207

207:                                              ; preds = %304, %206
  %208 = load i32, i32* %11, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %305

210:                                              ; preds = %207
  %211 = load i64, i64* @siginfo, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %210
  %214 = load i8*, i8** %3, align 8
  %215 = load i64, i64* %5, align 8
  %216 = load i64, i64* %6, align 8
  %217 = load i64, i64* %7, align 8
  %218 = load i64, i64* %8, align 8
  %219 = call i32 @show_cnt(i8* %214, i64 %215, i64 %216, i64 %217, i64 %218)
  br label %220

220:                                              ; preds = %213, %210
  %221 = load i64, i64* @domulti, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32, i32* @MB_CUR_MAX, align 4
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %230

226:                                              ; preds = %223, %220
  store i64 1, i64* %13, align 8
  %227 = load i8*, i8** %15, align 8
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  store i32 %229, i32* %18, align 4
  br label %264

230:                                              ; preds = %223
  %231 = load i8*, i8** %15, align 8
  %232 = load i32, i32* %11, align 4
  %233 = call i64 @mbrtowc(i32* %18, i8* %231, i32 %232, i32* %19)
  store i64 %233, i64* %13, align 8
  %234 = icmp eq i64 %233, -1
  br i1 %234, label %235, label %253

235:                                              ; preds = %230
  %236 = load i32, i32* %12, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %248, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* @EILSEQ, align 4
  store i32 %239, i32* @errno, align 4
  %240 = load i8*, i8** %3, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = load i8*, i8** %3, align 8
  br label %245

244:                                              ; preds = %238
  br label %245

245:                                              ; preds = %244, %242
  %246 = phi i8* [ %243, %242 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %244 ]
  %247 = call i32 @xo_warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %246)
  store i32 1, i32* %12, align 4
  br label %248

248:                                              ; preds = %245, %235
  %249 = call i32 @memset(i32* %19, i32 0, i32 4)
  store i64 1, i64* %13, align 8
  %250 = load i8*, i8** %15, align 8
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  store i32 %252, i32* %18, align 4
  br label %263

253:                                              ; preds = %230
  %254 = load i64, i64* %13, align 8
  %255 = icmp eq i64 %254, -2
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  br label %305

257:                                              ; preds = %253
  %258 = load i64, i64* %13, align 8
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  store i64 1, i64* %13, align 8
  br label %261

261:                                              ; preds = %260, %257
  br label %262

262:                                              ; preds = %261
  br label %263

263:                                              ; preds = %262, %248
  br label %264

264:                                              ; preds = %263, %226
  %265 = load i64, i64* %7, align 8
  %266 = add nsw i64 %265, 1
  store i64 %266, i64* %7, align 8
  %267 = load i32, i32* %18, align 4
  %268 = icmp ne i32 %267, 10
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = load i64, i64* %9, align 8
  %271 = add nsw i64 %270, 1
  store i64 %271, i64* %9, align 8
  br label %272

272:                                              ; preds = %269, %264
  %273 = load i64, i64* %13, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = sub i64 %275, %273
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %11, align 4
  %278 = load i64, i64* %13, align 8
  %279 = load i8*, i8** %15, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 %278
  store i8* %280, i8** %15, align 8
  %281 = load i32, i32* %18, align 4
  %282 = icmp eq i32 %281, 10
  br i1 %282, label %283, label %292

283:                                              ; preds = %272
  %284 = load i64, i64* %9, align 8
  %285 = load i64, i64* %8, align 8
  %286 = icmp sgt i64 %284, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %283
  %288 = load i64, i64* %9, align 8
  store i64 %288, i64* %8, align 8
  br label %289

289:                                              ; preds = %287, %283
  store i64 0, i64* %9, align 8
  %290 = load i64, i64* %5, align 8
  %291 = add nsw i64 %290, 1
  store i64 %291, i64* %5, align 8
  br label %292

292:                                              ; preds = %289, %272
  %293 = load i32, i32* %18, align 4
  %294 = call i64 @iswspace(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %292
  store i16 1, i16* %14, align 2
  br label %304

297:                                              ; preds = %292
  %298 = load i16, i16* %14, align 2
  %299 = icmp ne i16 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  store i16 0, i16* %14, align 2
  %301 = load i64, i64* %6, align 8
  %302 = add nsw i64 %301, 1
  store i64 %302, i64* %6, align 8
  br label %303

303:                                              ; preds = %300, %297
  br label %304

304:                                              ; preds = %303, %296
  br label %207

305:                                              ; preds = %256, %207
  br label %187

306:                                              ; preds = %187
  %307 = call i32 (...) @reset_siginfo()
  %308 = load i64, i64* @domulti, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %329

310:                                              ; preds = %306
  %311 = load i32, i32* @MB_CUR_MAX, align 4
  %312 = icmp sgt i32 %311, 1
  br i1 %312, label %313, label %329

313:                                              ; preds = %310
  %314 = call i64 @mbrtowc(i32* null, i8* null, i32 0, i32* %19)
  %315 = icmp eq i64 %314, -1
  br i1 %315, label %316, label %328

316:                                              ; preds = %313
  %317 = load i32, i32* %12, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %328, label %319

319:                                              ; preds = %316
  %320 = load i8*, i8** %3, align 8
  %321 = icmp ne i8* %320, null
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  %323 = load i8*, i8** %3, align 8
  br label %325

324:                                              ; preds = %319
  br label %325

325:                                              ; preds = %324, %322
  %326 = phi i8* [ %323, %322 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %324 ]
  %327 = call i32 @xo_warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %326)
  br label %328

328:                                              ; preds = %325, %316, %313
  br label %329

329:                                              ; preds = %328, %310, %306
  %330 = load i64, i64* @doline, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %329
  %333 = load i64, i64* %5, align 8
  %334 = load i32, i32* @tlinect, align 4
  %335 = sext i32 %334 to i64
  %336 = add nsw i64 %335, %333
  %337 = trunc i64 %336 to i32
  store i32 %337, i32* @tlinect, align 4
  br label %338

338:                                              ; preds = %332, %329
  %339 = load i64, i64* @doword, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %338
  %342 = load i64, i64* %6, align 8
  %343 = load i32, i32* @twordct, align 4
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %344, %342
  %346 = trunc i64 %345 to i32
  store i32 %346, i32* @twordct, align 4
  br label %347

347:                                              ; preds = %341, %338
  %348 = load i64, i64* @dochar, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %353, label %350

350:                                              ; preds = %347
  %351 = load i64, i64* @domulti, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %350, %347
  %354 = load i64, i64* %7, align 8
  %355 = load i32, i32* @tcharct, align 4
  %356 = sext i32 %355 to i64
  %357 = add nsw i64 %356, %354
  %358 = trunc i64 %357 to i32
  store i32 %358, i32* @tcharct, align 4
  br label %359

359:                                              ; preds = %353, %350
  %360 = load i64, i64* @dolongline, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %359
  %363 = load i64, i64* %8, align 8
  %364 = load i64, i64* @tlongline, align 8
  %365 = icmp sgt i64 %363, %364
  br i1 %365, label %366, label %368

366:                                              ; preds = %362
  %367 = load i64, i64* %8, align 8
  store i64 %367, i64* @tlongline, align 8
  br label %368

368:                                              ; preds = %366, %362, %359
  %369 = load i8*, i8** %3, align 8
  %370 = load i64, i64* %5, align 8
  %371 = load i64, i64* %6, align 8
  %372 = load i64, i64* %7, align 8
  %373 = load i64, i64* %8, align 8
  %374 = call i32 @show_cnt(i8* %369, i64 %370, i64 %371, i64 %372, i64 %373)
  %375 = load i32, i32* %10, align 4
  %376 = call i32 @close(i32 %375)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %377

377:                                              ; preds = %368, %201, %176, %95, %68, %58, %34
  %378 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %378)
  %379 = load i32, i32* %2, align 4
  ret i32 %379
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fileargs_open(i32, i8*) #2

declare dso_local i32 @xo_warn(i8*, i8*) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i32 @reset_siginfo(...) #2

declare dso_local i32 @show_cnt(i8*, i64, i64, i64, i64) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @mbrtowc(i32*, i8*, i32, i32*) #2

declare dso_local i64 @iswspace(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
