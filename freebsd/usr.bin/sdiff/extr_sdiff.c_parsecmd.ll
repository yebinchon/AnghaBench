; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_sdiff.c_parsecmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_sdiff.c_parsecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"file1 start is %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"file1 end is %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid line range in file1: %s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ed command not recognized: %c: %s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"file2 start is %s: %s\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"invalid line range in file2: %c: %s\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"file2 end is %s: %s\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"invalid line range in file2: %s\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"append cannot have a file1 range: %s\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"file1 line range too high: %s\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"delete cannot have a file2 range: %s\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"file2 line range too high: %s\00", align 1
@file1ln = common dso_local global i64 0, align 8
@file2ln = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [28 x i8] c"file1 shorter than expected\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"file2 shorter than expected\00", align 1
@lflag = common dso_local global i64 0, align 8
@Iflag = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [29 x i8] c"invalid diff command: %c: %s\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"diff ended early\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @parsecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parsecmd(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i8* @xfgets(i32* %23)
  store i8* %24, i8** %13, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EOF, align 4
  store i32 %27, i32* %4, align 4
  br label %359

28:                                               ; preds = %3
  %29 = load i8*, i8** %13, align 8
  store i8* %29, i8** %14, align 8
  br label %30

30:                                               ; preds = %35, %28
  %31 = load i8*, i8** %14, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isdigit(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %14, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %14, align 8
  br label %30

38:                                               ; preds = %30
  %39 = load i8*, i8** %14, align 8
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %17, align 1
  %41 = load i8*, i8** %14, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %14, align 8
  store i8 0, i8* %41, align 1
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* @INT_MAX, align 4
  %45 = call i64 @strtonum(i8* %43, i32 0, i32 %44, i8** %16)
  store i64 %45, i64* %8, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i8*, i8** %16, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %38
  %53 = load i8, i8* %17, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 44
  br i1 %55, label %56, label %88

56:                                               ; preds = %52
  %57 = load i8*, i8** %14, align 8
  store i8* %57, i8** %15, align 8
  br label %58

58:                                               ; preds = %63, %56
  %59 = load i8*, i8** %14, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @isdigit(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %14, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %14, align 8
  br label %58

66:                                               ; preds = %58
  %67 = load i8*, i8** %14, align 8
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %17, align 1
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %14, align 8
  store i8 0, i8* %69, align 1
  %71 = load i8*, i8** %15, align 8
  %72 = load i32, i32* @INT_MAX, align 4
  %73 = call i64 @strtonum(i8* %71, i32 0, i32 %72, i8** %16)
  store i64 %73, i64* %9, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load i8*, i8** %16, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %66
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %84, %80
  br label %90

88:                                               ; preds = %52
  %89 = load i64, i64* %8, align 8
  store i64 %89, i64* %9, align 8
  br label %90

90:                                               ; preds = %88, %87
  %91 = load i8, i8* %17, align 1
  store i8 %91, i8* %18, align 1
  %92 = load i8, i8* %18, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 97
  br i1 %94, label %108, label %95

95:                                               ; preds = %90
  %96 = load i8, i8* %18, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 99
  br i1 %98, label %108, label %99

99:                                               ; preds = %95
  %100 = load i8, i8* %18, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 100
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load i8, i8* %18, align 1
  %105 = sext i8 %104 to i32
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %105, i8* %106)
  br label %108

108:                                              ; preds = %103, %99, %95, %90
  %109 = load i8*, i8** %14, align 8
  store i8* %109, i8** %15, align 8
  br label %110

110:                                              ; preds = %115, %108
  %111 = load i8*, i8** %14, align 8
  %112 = load i8, i8* %111, align 1
  %113 = call i64 @isdigit(i8 signext %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i8*, i8** %14, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %14, align 8
  br label %110

118:                                              ; preds = %110
  %119 = load i8*, i8** %14, align 8
  %120 = load i8, i8* %119, align 1
  store i8 %120, i8* %17, align 1
  %121 = load i8*, i8** %14, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %14, align 8
  store i8 0, i8* %121, align 1
  %123 = load i8*, i8** %15, align 8
  %124 = load i32, i32* @INT_MAX, align 4
  %125 = call i64 @strtonum(i8* %123, i32 0, i32 %124, i8** %16)
  store i64 %125, i64* %10, align 8
  %126 = load i8*, i8** %16, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %118
  %129 = load i8*, i8** %16, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %129, i8* %130)
  br label %132

132:                                              ; preds = %128, %118
  %133 = load i8, i8* %17, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp ne i32 %134, 44
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load i8, i8* %17, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load i8, i8* %17, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8*, i8** %13, align 8
  %144 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %142, i8* %143)
  br label %145

145:                                              ; preds = %140, %136, %132
  %146 = load i8, i8* %17, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 44
  br i1 %148, label %149, label %167

149:                                              ; preds = %145
  %150 = load i8*, i8** %14, align 8
  %151 = load i32, i32* @INT_MAX, align 4
  %152 = call i64 @strtonum(i8* %150, i32 0, i32 %151, i8** %16)
  store i64 %152, i64* %11, align 8
  %153 = load i8*, i8** %16, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i8*, i8** %16, align 8
  %157 = load i8*, i8** %13, align 8
  %158 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %156, i8* %157)
  br label %159

159:                                              ; preds = %155, %149
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* %11, align 8
  %162 = icmp uge i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i8*, i8** %13, align 8
  %165 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %164)
  br label %166

166:                                              ; preds = %163, %159
  br label %169

167:                                              ; preds = %145
  %168 = load i64, i64* %10, align 8
  store i64 %168, i64* %11, align 8
  br label %169

169:                                              ; preds = %167, %166
  %170 = load i8, i8* %18, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 97
  br i1 %172, label %173, label %190

173:                                              ; preds = %169
  %174 = load i64, i64* %8, align 8
  %175 = load i64, i64* %9, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i8*, i8** %13, align 8
  %179 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %178)
  br label %180

180:                                              ; preds = %177, %173
  %181 = load i64, i64* %8, align 8
  %182 = load i64, i64* @SIZE_MAX, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i8*, i8** %13, align 8
  %186 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %185)
  br label %187

187:                                              ; preds = %184, %180
  %188 = load i64, i64* %9, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %9, align 8
  store i64 %189, i64* %8, align 8
  br label %212

190:                                              ; preds = %169
  %191 = load i8, i8* %18, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 100
  br i1 %193, label %194, label %211

194:                                              ; preds = %190
  %195 = load i64, i64* %10, align 8
  %196 = load i64, i64* %11, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = load i8*, i8** %13, align 8
  %200 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %199)
  br label %201

201:                                              ; preds = %198, %194
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* @SIZE_MAX, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i8*, i8** %13, align 8
  %207 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %206)
  br label %208

208:                                              ; preds = %205, %201
  %209 = load i64, i64* %11, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %11, align 8
  store i64 %210, i64* %10, align 8
  br label %211

211:                                              ; preds = %208, %190
  br label %212

212:                                              ; preds = %211, %187
  br label %213

213:                                              ; preds = %255, %212
  %214 = load i64, i64* @file1ln, align 8
  %215 = load i64, i64* %8, align 8
  %216 = icmp ult i64 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %213
  %218 = load i64, i64* @file2ln, align 8
  %219 = load i64, i64* %10, align 8
  %220 = icmp ult i64 %218, %219
  br label %221

221:                                              ; preds = %217, %213
  %222 = phi i1 [ false, %213 ], [ %220, %217 ]
  br i1 %222, label %223, label %260

223:                                              ; preds = %221
  %224 = load i32*, i32** %6, align 8
  %225 = call i8* @xfgets(i32* %224)
  store i8* %225, i8** %19, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %229, label %227

227:                                              ; preds = %223
  %228 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %229

229:                                              ; preds = %227, %223
  %230 = load i32*, i32** %7, align 8
  %231 = call i8* @xfgets(i32* %230)
  store i8* %231, i8** %20, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %235, label %233

233:                                              ; preds = %229
  %234 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233, %229
  %236 = load i64, i64* @lflag, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %235
  %239 = load i8*, i8** %20, align 8
  %240 = call i32 @free(i8* %239)
  %241 = load i64, i64* @Iflag, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = load i8*, i8** %19, align 8
  %245 = call i32 @enqueue(i8* %244, i8 signext 40, i8* null)
  br label %249

246:                                              ; preds = %238
  %247 = load i8*, i8** %19, align 8
  %248 = call i32 @enqueue(i8* %247, i8 signext 32, i8* null)
  br label %249

249:                                              ; preds = %246, %243
  br label %254

250:                                              ; preds = %235
  %251 = load i8*, i8** %19, align 8
  %252 = load i8*, i8** %20, align 8
  %253 = call i32 @enqueue(i8* %251, i8 signext 32, i8* %252)
  br label %254

254:                                              ; preds = %250, %249
  br label %255

255:                                              ; preds = %254
  %256 = load i64, i64* @file1ln, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* @file1ln, align 8
  %258 = load i64, i64* @file2ln, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* @file2ln, align 8
  br label %213

260:                                              ; preds = %221
  br label %261

261:                                              ; preds = %274, %260
  %262 = load i64, i64* @file1ln, align 8
  %263 = load i64, i64* %8, align 8
  %264 = icmp ult i64 %262, %263
  br i1 %264, label %265, label %277

265:                                              ; preds = %261
  %266 = load i32*, i32** %6, align 8
  %267 = call i8* @xfgets(i32* %266)
  store i8* %267, i8** %21, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %265
  %270 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %271

271:                                              ; preds = %269, %265
  %272 = load i8*, i8** %21, align 8
  %273 = call i32 @enqueue(i8* %272, i8 signext 40, i8* null)
  br label %274

274:                                              ; preds = %271
  %275 = load i64, i64* @file1ln, align 8
  %276 = add i64 %275, 1
  store i64 %276, i64* @file1ln, align 8
  br label %261

277:                                              ; preds = %261
  br label %278

278:                                              ; preds = %298, %277
  %279 = load i64, i64* @file2ln, align 8
  %280 = load i64, i64* %10, align 8
  %281 = icmp ult i64 %279, %280
  br i1 %281, label %282, label %301

282:                                              ; preds = %278
  %283 = load i32*, i32** %7, align 8
  %284 = call i8* @xfgets(i32* %283)
  store i8* %284, i8** %22, align 8
  %285 = icmp ne i8* %284, null
  br i1 %285, label %288, label %286

286:                                              ; preds = %282
  %287 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %288

288:                                              ; preds = %286, %282
  %289 = load i64, i64* @lflag, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = load i8*, i8** %22, align 8
  %293 = call i32 @free(i8* %292)
  br label %297

294:                                              ; preds = %288
  %295 = load i8*, i8** %22, align 8
  %296 = call i32 @enqueue(i8* null, i8 signext 41, i8* %295)
  br label %297

297:                                              ; preds = %294, %291
  br label %298

298:                                              ; preds = %297
  %299 = load i64, i64* @file2ln, align 8
  %300 = add i64 %299, 1
  store i64 %300, i64* @file2ln, align 8
  br label %278

301:                                              ; preds = %278
  %302 = call i32 (...) @processq()
  %303 = load i8, i8* %18, align 1
  %304 = sext i8 %303 to i32
  switch i32 %304, label %337 [
    i32 97, label %305
    i32 99, label %313
    i32 100, label %329
  ]

305:                                              ; preds = %301
  %306 = load i32*, i32** %7, align 8
  %307 = load i64, i64* %11, align 8
  %308 = call i32 @printa(i32* %306, i64 %307)
  %309 = load i64, i64* %11, align 8
  %310 = load i64, i64* %10, align 8
  %311 = sub i64 %309, %310
  %312 = add i64 %311, 1
  store i64 %312, i64* %12, align 8
  br label %342

313:                                              ; preds = %301
  %314 = load i32*, i32** %6, align 8
  %315 = load i64, i64* %9, align 8
  %316 = load i32*, i32** %7, align 8
  %317 = load i64, i64* %11, align 8
  %318 = call i32 @printc(i32* %314, i64 %315, i32* %316, i64 %317)
  %319 = load i64, i64* %9, align 8
  %320 = load i64, i64* %8, align 8
  %321 = sub i64 %319, %320
  %322 = add i64 %321, 1
  %323 = add i64 %322, 1
  %324 = load i64, i64* %11, align 8
  %325 = add i64 %323, %324
  %326 = load i64, i64* %10, align 8
  %327 = sub i64 %325, %326
  %328 = add i64 %327, 1
  store i64 %328, i64* %12, align 8
  br label %342

329:                                              ; preds = %301
  %330 = load i32*, i32** %6, align 8
  %331 = load i64, i64* %9, align 8
  %332 = call i32 @printd(i32* %330, i64 %331)
  %333 = load i64, i64* %9, align 8
  %334 = load i64, i64* %8, align 8
  %335 = sub i64 %333, %334
  %336 = add i64 %335, 1
  store i64 %336, i64* %12, align 8
  br label %342

337:                                              ; preds = %301
  %338 = load i8, i8* %18, align 1
  %339 = sext i8 %338 to i32
  %340 = load i8*, i8** %13, align 8
  %341 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %339, i8* %340)
  br label %342

342:                                              ; preds = %337, %329, %313, %305
  %343 = load i8*, i8** %13, align 8
  %344 = call i32 @free(i8* %343)
  br label %345

345:                                              ; preds = %355, %342
  %346 = load i64, i64* %12, align 8
  %347 = add i64 %346, -1
  store i64 %347, i64* %12, align 8
  %348 = icmp ne i64 %346, 0
  br i1 %348, label %349, label %358

349:                                              ; preds = %345
  %350 = load i32*, i32** %5, align 8
  %351 = call i8* @xfgets(i32* %350)
  store i8* %351, i8** %13, align 8
  %352 = icmp ne i8* %351, null
  br i1 %352, label %355, label %353

353:                                              ; preds = %349
  %354 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  br label %355

355:                                              ; preds = %353, %349
  %356 = load i8*, i8** %13, align 8
  %357 = call i32 @free(i8* %356)
  br label %345

358:                                              ; preds = %345
  store i32 0, i32* %4, align 4
  br label %359

359:                                              ; preds = %358, %26
  %360 = load i32, i32* %4, align 4
  ret i32 %360
}

declare dso_local i8* @xfgets(i32*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @enqueue(i8*, i8 signext, i8*) #1

declare dso_local i32 @processq(...) #1

declare dso_local i32 @printa(i32*, i64) #1

declare dso_local i32 @printc(i32*, i64, i32*, i64) #1

declare dso_local i32 @printd(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
