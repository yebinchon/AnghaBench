; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/whereis/extr_whereis.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/whereis/extr_whereis.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@BUFSIZ = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mandirs = common dso_local global i32* null, align 8
@opt_m = common dso_local global i64 0, align 8
@bindirs = common dso_local global i8** null, align 8
@opt_b = common dso_local global i64 0, align 8
@sourcedirs = common dso_local global i8** null, align 8
@opt_s = common dso_local global i64 0, align 8
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"no directories to search\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"MANPATH\00", align 1
@MANWHEREISMATCH = common dso_local global i8* null, align 8
@REG_EXTENDED = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"regcomp(%s) failed: %s\00", align 1
@query = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"s.\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c",v\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c".z\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c".Z\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@NO_BIN_FOUND = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@opt_a = common dso_local global i64 0, align 8
@NO_MAN_FOUND = common dso_local global i32 0, align 4
@MANWHEREISALLCMD = common dso_local global i8* null, align 8
@MANWHEREISCMD = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@NO_SRC_FOUND = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@opt_x = common dso_local global i64 0, align 8
@LOCATECMD = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"/[^/]+/\00", align 1
@REG_NOSUB = common dso_local global i32 0, align 4
@opt_u = common dso_local global i64 0, align 8
@opt_q = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.stat, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [2 x %struct.TYPE_3__], align 16
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %27 = load i32, i32* @BUFSIZ, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %10, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  %31 = load i32, i32* @LC_ALL, align 4
  %32 = call i32 @setlocale(i32 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = call i32 @scanopts(i32 %33, i8** %34)
  %36 = call i32 (...) @defaults()
  %37 = load i32*, i32** @mandirs, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  store i64 0, i64* @opt_m, align 8
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i8**, i8*** @bindirs, align 8
  %42 = icmp eq i8** %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i64 0, i64* @opt_b, align 8
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i8**, i8*** @sourcedirs, align 8
  %46 = icmp eq i8** %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i64 0, i64* @opt_s, align 8
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i64, i64* @opt_m, align 8
  %50 = load i64, i64* @opt_b, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* @opt_s, align 8
  %53 = add nsw i64 %51, %52
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EX_DATAERR, align 4
  %57 = call i32 (i32, i8*, ...) @errx(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %48
  %59 = load i64, i64* @opt_m, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load i32*, i32** @mandirs, align 8
  %63 = call i32 @colonify(i32* %62)
  %64 = call i32 @setenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 1)
  %65 = load i8*, i8** @MANWHEREISMATCH, align 8
  %66 = load i32, i32* @REG_EXTENDED, align 4
  %67 = call i32 @regcomp(i32* %22, i8* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @BUFSIZ, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @regerror(i32 %70, i32* %22, i8* %30, i32 %72)
  %74 = load i32, i32* @EX_UNAVAILABLE, align 4
  %75 = load i8*, i8** @MANWHEREISMATCH, align 8
  %76 = call i32 (i32, i8*, ...) @errx(i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %75, i8* %30)
  br label %77

77:                                               ; preds = %69, %61
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %717, %78
  %80 = load i8**, i8*** @query, align 8
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %15, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %720

83:                                               ; preds = %79
  %84 = load i8*, i8** %15, align 8
  %85 = call i8* @strrchr(i8* %84, i8 signext 47)
  store i8* %85, i8** %12, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i8*, i8** %12, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %15, align 8
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i8*, i8** %15, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = icmp sgt i32 %92, 2
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i8*, i8** %15, align 8
  %96 = call i64 @strncmp(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i8*, i8** %15, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  store i8* %100, i8** %15, align 8
  br label %101

101:                                              ; preds = %98, %94, %90
  %102 = load i8*, i8** %15, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %20, align 8
  %105 = icmp ugt i64 %104, 2
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load i8*, i8** %15, align 8
  %108 = load i64, i64* %20, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = getelementptr inbounds i8, i8* %109, i64 -2
  %111 = call i64 @strcmp(i8* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i8*, i8** %15, align 8
  %115 = load i64, i64* %20, align 8
  %116 = sub i64 %115, 2
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 0, i8* %117, align 1
  br label %118

118:                                              ; preds = %113, %106, %101
  %119 = load i8*, i8** %15, align 8
  %120 = call i32 @strlen(i8* %119)
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %20, align 8
  %122 = load i64, i64* %20, align 8
  %123 = icmp ugt i64 %122, 2
  br i1 %123, label %124, label %143

124:                                              ; preds = %118
  %125 = load i8*, i8** %15, align 8
  %126 = load i64, i64* %20, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = getelementptr inbounds i8, i8* %127, i64 -2
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %124
  %132 = load i8*, i8** %15, align 8
  %133 = load i64, i64* %20, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = getelementptr inbounds i8, i8* %134, i64 -2
  %136 = call i64 @strcmp(i8* %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %131, %124
  %139 = load i8*, i8** %15, align 8
  %140 = load i64, i64* %20, align 8
  %141 = sub i64 %140, 2
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  store i8 0, i8* %142, align 1
  br label %175

143:                                              ; preds = %131, %118
  %144 = load i64, i64* %20, align 8
  %145 = icmp ugt i64 %144, 3
  br i1 %145, label %146, label %158

146:                                              ; preds = %143
  %147 = load i8*, i8** %15, align 8
  %148 = load i64, i64* %20, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  %150 = getelementptr inbounds i8, i8* %149, i64 -3
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load i8*, i8** %15, align 8
  %155 = load i64, i64* %20, align 8
  %156 = sub i64 %155, 3
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 0, i8* %157, align 1
  br label %174

158:                                              ; preds = %146, %143
  %159 = load i64, i64* %20, align 8
  %160 = icmp ugt i64 %159, 4
  br i1 %160, label %161, label %173

161:                                              ; preds = %158
  %162 = load i8*, i8** %15, align 8
  %163 = load i64, i64* %20, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = getelementptr inbounds i8, i8* %164, i64 -4
  %166 = call i64 @strcmp(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %161
  %169 = load i8*, i8** %15, align 8
  %170 = load i64, i64* %20, align 8
  %171 = sub i64 %170, 4
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  store i8 0, i8* %172, align 1
  br label %173

173:                                              ; preds = %168, %161, %158
  br label %174

174:                                              ; preds = %173, %153
  br label %175

175:                                              ; preds = %174, %138
  store i32 0, i32* %6, align 4
  store i8* null, i8** %16, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %9, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = call i32 @strlen(i8* %176)
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %20, align 8
  %179 = load i64, i64* @opt_b, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %282

181:                                              ; preds = %175
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @NO_BIN_FOUND, align 4
  %184 = or i32 %182, %183
  store i32 %184, i32* %6, align 4
  %185 = load i8**, i8*** @bindirs, align 8
  store i8** %185, i8*** %17, align 8
  br label %186

186:                                              ; preds = %278, %181
  %187 = load i8**, i8*** %17, align 8
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %281

190:                                              ; preds = %186
  %191 = load i8**, i8*** %17, align 8
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @strlen(i8* %192)
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %20, align 8
  %197 = add i64 %195, %196
  %198 = add i64 %197, 1
  %199 = trunc i64 %198 to i32
  %200 = call i8* @malloc(i32 %199)
  store i8* %200, i8** %12, align 8
  %201 = load i8*, i8** %12, align 8
  %202 = icmp eq i8* %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %190
  %204 = call i32 (...) @abort() #4
  unreachable

205:                                              ; preds = %190
  %206 = load i8*, i8** %12, align 8
  %207 = load i8**, i8*** %17, align 8
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @strcpy(i8* %206, i8* %208)
  %210 = load i8*, i8** %12, align 8
  %211 = call i32 @strcat(i8* %210, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %212 = load i8*, i8** %12, align 8
  %213 = load i8*, i8** %15, align 8
  %214 = call i32 @strcat(i8* %212, i8* %213)
  %215 = load i8*, i8** %12, align 8
  %216 = call i64 @stat(i8* %215, %struct.stat* %21)
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %275

218:                                              ; preds = %205
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @S_IFMT, align 4
  %222 = and i32 %220, %221
  %223 = load i32, i32* @S_IFREG, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %275

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @S_IXUSR, align 4
  %229 = load i32, i32* @S_IXGRP, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @S_IXOTH, align 4
  %232 = or i32 %230, %231
  %233 = and i32 %227, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %275

235:                                              ; preds = %225
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* @NO_BIN_FOUND, align 4
  %238 = xor i32 %237, -1
  %239 = and i32 %236, %238
  store i32 %239, i32* %6, align 4
  %240 = load i8*, i8** %9, align 8
  %241 = icmp eq i8* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %235
  %243 = load i8*, i8** %12, align 8
  %244 = call i8* @strdup(i8* %243)
  store i8* %244, i8** %9, align 8
  br label %268

245:                                              ; preds = %235
  %246 = load i8*, i8** %9, align 8
  %247 = call i32 @strlen(i8* %246)
  %248 = sext i32 %247 to i64
  store i64 %248, i64* %19, align 8
  %249 = load i8*, i8** %12, align 8
  %250 = call i32 @strlen(i8* %249)
  %251 = sext i32 %250 to i64
  store i64 %251, i64* %18, align 8
  %252 = load i8*, i8** %9, align 8
  %253 = load i64, i64* %19, align 8
  %254 = load i64, i64* %18, align 8
  %255 = add i64 %253, %254
  %256 = add i64 %255, 2
  %257 = call i8* @realloc(i8* %252, i64 %256)
  store i8* %257, i8** %9, align 8
  %258 = load i8*, i8** %9, align 8
  %259 = icmp eq i8* %258, null
  br i1 %259, label %260, label %262

260:                                              ; preds = %245
  %261 = call i32 (...) @abort() #4
  unreachable

262:                                              ; preds = %245
  %263 = load i8*, i8** %9, align 8
  %264 = call i32 @strcat(i8* %263, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %265 = load i8*, i8** %9, align 8
  %266 = load i8*, i8** %12, align 8
  %267 = call i32 @strcat(i8* %265, i8* %266)
  br label %268

268:                                              ; preds = %262, %242
  %269 = load i64, i64* @opt_a, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %268
  %272 = load i8*, i8** %12, align 8
  %273 = call i32 @free(i8* %272)
  br label %281

274:                                              ; preds = %268
  br label %275

275:                                              ; preds = %274, %225, %218, %205
  %276 = load i8*, i8** %12, align 8
  %277 = call i32 @free(i8* %276)
  br label %278

278:                                              ; preds = %275
  %279 = load i8**, i8*** %17, align 8
  %280 = getelementptr inbounds i8*, i8** %279, i32 1
  store i8** %280, i8*** %17, align 8
  br label %186

281:                                              ; preds = %271, %186
  br label %282

282:                                              ; preds = %281, %175
  %283 = load i64, i64* @opt_m, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %421

285:                                              ; preds = %282
  %286 = load i32, i32* %6, align 4
  %287 = load i32, i32* @NO_MAN_FOUND, align 4
  %288 = or i32 %286, %287
  store i32 %288, i32* %6, align 4
  %289 = load i64, i64* @opt_a, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %285
  %292 = load i64, i64* %20, align 8
  %293 = add i64 6, %292
  %294 = trunc i64 %293 to i32
  %295 = call i8* @malloc(i32 %294)
  store i8* %295, i8** %12, align 8
  br label %301

296:                                              ; preds = %285
  %297 = load i64, i64* %20, align 8
  %298 = add i64 6, %297
  %299 = trunc i64 %298 to i32
  %300 = call i8* @malloc(i32 %299)
  store i8* %300, i8** %12, align 8
  br label %301

301:                                              ; preds = %296, %291
  %302 = load i8*, i8** %12, align 8
  %303 = icmp eq i8* %302, null
  br i1 %303, label %304, label %306

304:                                              ; preds = %301
  %305 = call i32 (...) @abort() #4
  unreachable

306:                                              ; preds = %301
  %307 = load i64, i64* @opt_a, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %306
  %310 = load i8*, i8** %12, align 8
  %311 = load i8*, i8** @MANWHEREISALLCMD, align 8
  %312 = load i8*, i8** %15, align 8
  %313 = call i32 @sprintf(i8* %310, i8* %311, i8* %312)
  br label %319

314:                                              ; preds = %306
  %315 = load i8*, i8** %12, align 8
  %316 = load i8*, i8** @MANWHEREISCMD, align 8
  %317 = load i8*, i8** %15, align 8
  %318 = call i32 @sprintf(i8* %315, i8* %316, i8* %317)
  br label %319

319:                                              ; preds = %314, %309
  %320 = load i8*, i8** %12, align 8
  %321 = call i32* @popen(i8* %320, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32* %321, i32** %26, align 8
  %322 = icmp ne i32* %321, null
  br i1 %322, label %323, label %420

323:                                              ; preds = %319
  br label %324

324:                                              ; preds = %414, %323
  %325 = load i32, i32* @BUFSIZ, align 4
  %326 = sub nsw i32 %325, 1
  %327 = load i32*, i32** %26, align 8
  %328 = call i32* @fgets(i8* %30, i32 %326, i32* %327)
  %329 = icmp ne i32* %328, null
  br i1 %329, label %330, label %415

330:                                              ; preds = %324
  %331 = load i32, i32* %6, align 4
  %332 = load i32, i32* @NO_MAN_FOUND, align 4
  %333 = xor i32 %332, -1
  %334 = and i32 %331, %333
  store i32 %334, i32* %6, align 4
  %335 = call i8* @strchr(i8* %30, i8 signext 10)
  store i8* %335, i8** %13, align 8
  %336 = icmp ne i8* %335, null
  br i1 %336, label %337, label %339

337:                                              ; preds = %330
  %338 = load i8*, i8** %13, align 8
  store i8 0, i8* %338, align 1
  br label %339

339:                                              ; preds = %337, %330
  %340 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %24, i64 0, i64 0
  %341 = call i64 @regexec(i32* %22, i8* %30, i32 2, %struct.TYPE_3__* %340, i32 0)
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %343, label %372

343:                                              ; preds = %339
  %344 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %24, i64 0, i64 1
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 16
  %347 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %24, i64 0, i64 1
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = sub nsw i64 %346, %349
  store i64 %350, i64* %25, align 8
  %351 = icmp sgt i64 %350, 0
  br i1 %351, label %352, label %372

352:                                              ; preds = %343
  %353 = load i64, i64* %25, align 8
  %354 = add nsw i64 %353, 1
  %355 = trunc i64 %354 to i32
  %356 = call i8* @malloc(i32 %355)
  store i8* %356, i8** %13, align 8
  %357 = load i8*, i8** %13, align 8
  %358 = icmp eq i8* %357, null
  br i1 %358, label %359, label %361

359:                                              ; preds = %352
  %360 = call i32 (...) @abort() #4
  unreachable

361:                                              ; preds = %352
  %362 = load i8*, i8** %13, align 8
  %363 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %24, i64 0, i64 1
  %364 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = getelementptr inbounds i8, i8* %30, i64 %365
  %367 = load i64, i64* %25, align 8
  %368 = call i32 @memcpy(i8* %362, i8* %366, i64 %367)
  %369 = load i8*, i8** %13, align 8
  %370 = load i64, i64* %25, align 8
  %371 = getelementptr inbounds i8, i8* %369, i64 %370
  store i8 0, i8* %371, align 1
  br label %379

372:                                              ; preds = %343, %339
  %373 = call i8* @strdup(i8* %30)
  store i8* %373, i8** %13, align 8
  %374 = load i8*, i8** %13, align 8
  %375 = icmp eq i8* %374, null
  br i1 %375, label %376, label %378

376:                                              ; preds = %372
  %377 = call i32 (...) @abort() #4
  unreachable

378:                                              ; preds = %372
  br label %379

379:                                              ; preds = %378, %361
  %380 = load i8*, i8** %14, align 8
  %381 = icmp eq i8* %380, null
  br i1 %381, label %382, label %385

382:                                              ; preds = %379
  %383 = load i8*, i8** %13, align 8
  %384 = call i8* @strdup(i8* %383)
  store i8* %384, i8** %14, align 8
  br label %408

385:                                              ; preds = %379
  %386 = load i8*, i8** %14, align 8
  %387 = call i32 @strlen(i8* %386)
  %388 = sext i32 %387 to i64
  store i64 %388, i64* %19, align 8
  %389 = load i8*, i8** %13, align 8
  %390 = call i32 @strlen(i8* %389)
  %391 = sext i32 %390 to i64
  store i64 %391, i64* %18, align 8
  %392 = load i8*, i8** %14, align 8
  %393 = load i64, i64* %19, align 8
  %394 = load i64, i64* %18, align 8
  %395 = add i64 %393, %394
  %396 = add i64 %395, 2
  %397 = call i8* @realloc(i8* %392, i64 %396)
  store i8* %397, i8** %14, align 8
  %398 = load i8*, i8** %14, align 8
  %399 = icmp eq i8* %398, null
  br i1 %399, label %400, label %402

400:                                              ; preds = %385
  %401 = call i32 (...) @abort() #4
  unreachable

402:                                              ; preds = %385
  %403 = load i8*, i8** %14, align 8
  %404 = call i32 @strcat(i8* %403, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %405 = load i8*, i8** %14, align 8
  %406 = load i8*, i8** %13, align 8
  %407 = call i32 @strcat(i8* %405, i8* %406)
  br label %408

408:                                              ; preds = %402, %382
  %409 = load i8*, i8** %13, align 8
  %410 = call i32 @free(i8* %409)
  %411 = load i64, i64* @opt_a, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %414, label %413

413:                                              ; preds = %408
  br label %415

414:                                              ; preds = %408
  br label %324

415:                                              ; preds = %413, %324
  %416 = load i32*, i32** %26, align 8
  %417 = call i32 @pclose(i32* %416)
  %418 = load i8*, i8** %12, align 8
  %419 = call i32 @free(i8* %418)
  br label %420

420:                                              ; preds = %415, %319
  br label %421

421:                                              ; preds = %420, %282
  %422 = load i64, i64* @opt_s, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %656

424:                                              ; preds = %421
  %425 = load i32, i32* %6, align 4
  %426 = load i32, i32* @NO_SRC_FOUND, align 4
  %427 = or i32 %425, %426
  store i32 %427, i32* %6, align 4
  %428 = load i8**, i8*** @sourcedirs, align 8
  store i8** %428, i8*** %17, align 8
  br label %429

429:                                              ; preds = %511, %424
  %430 = load i8**, i8*** %17, align 8
  %431 = load i8*, i8** %430, align 8
  %432 = icmp ne i8* %431, null
  br i1 %432, label %433, label %514

433:                                              ; preds = %429
  %434 = load i8**, i8*** %17, align 8
  %435 = load i8*, i8** %434, align 8
  %436 = call i32 @strlen(i8* %435)
  %437 = add nsw i32 %436, 1
  %438 = sext i32 %437 to i64
  %439 = load i64, i64* %20, align 8
  %440 = add i64 %438, %439
  %441 = add i64 %440, 1
  %442 = trunc i64 %441 to i32
  %443 = call i8* @malloc(i32 %442)
  store i8* %443, i8** %12, align 8
  %444 = load i8*, i8** %12, align 8
  %445 = icmp eq i8* %444, null
  br i1 %445, label %446, label %448

446:                                              ; preds = %433
  %447 = call i32 (...) @abort() #4
  unreachable

448:                                              ; preds = %433
  %449 = load i8*, i8** %12, align 8
  %450 = load i8**, i8*** %17, align 8
  %451 = load i8*, i8** %450, align 8
  %452 = call i32 @strcpy(i8* %449, i8* %451)
  %453 = load i8*, i8** %12, align 8
  %454 = call i32 @strcat(i8* %453, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %455 = load i8*, i8** %12, align 8
  %456 = load i8*, i8** %15, align 8
  %457 = call i32 @strcat(i8* %455, i8* %456)
  %458 = load i8*, i8** %12, align 8
  %459 = call i64 @stat(i8* %458, %struct.stat* %21)
  %460 = icmp eq i64 %459, 0
  br i1 %460, label %461, label %508

461:                                              ; preds = %448
  %462 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* @S_IFMT, align 4
  %465 = and i32 %463, %464
  %466 = load i32, i32* @S_IFDIR, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %468, label %508

468:                                              ; preds = %461
  %469 = load i32, i32* %6, align 4
  %470 = load i32, i32* @NO_SRC_FOUND, align 4
  %471 = xor i32 %470, -1
  %472 = and i32 %469, %471
  store i32 %472, i32* %6, align 4
  %473 = load i8*, i8** %16, align 8
  %474 = icmp eq i8* %473, null
  br i1 %474, label %475, label %478

475:                                              ; preds = %468
  %476 = load i8*, i8** %12, align 8
  %477 = call i8* @strdup(i8* %476)
  store i8* %477, i8** %16, align 8
  br label %501

478:                                              ; preds = %468
  %479 = load i8*, i8** %16, align 8
  %480 = call i32 @strlen(i8* %479)
  %481 = sext i32 %480 to i64
  store i64 %481, i64* %19, align 8
  %482 = load i8*, i8** %12, align 8
  %483 = call i32 @strlen(i8* %482)
  %484 = sext i32 %483 to i64
  store i64 %484, i64* %18, align 8
  %485 = load i8*, i8** %16, align 8
  %486 = load i64, i64* %19, align 8
  %487 = load i64, i64* %18, align 8
  %488 = add i64 %486, %487
  %489 = add i64 %488, 2
  %490 = call i8* @realloc(i8* %485, i64 %489)
  store i8* %490, i8** %16, align 8
  %491 = load i8*, i8** %16, align 8
  %492 = icmp eq i8* %491, null
  br i1 %492, label %493, label %495

493:                                              ; preds = %478
  %494 = call i32 (...) @abort() #4
  unreachable

495:                                              ; preds = %478
  %496 = load i8*, i8** %16, align 8
  %497 = call i32 @strcat(i8* %496, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %498 = load i8*, i8** %16, align 8
  %499 = load i8*, i8** %12, align 8
  %500 = call i32 @strcat(i8* %498, i8* %499)
  br label %501

501:                                              ; preds = %495, %475
  %502 = load i64, i64* @opt_a, align 8
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %507, label %504

504:                                              ; preds = %501
  %505 = load i8*, i8** %12, align 8
  %506 = call i32 @free(i8* %505)
  br label %514

507:                                              ; preds = %501
  br label %508

508:                                              ; preds = %507, %461, %448
  %509 = load i8*, i8** %12, align 8
  %510 = call i32 @free(i8* %509)
  br label %511

511:                                              ; preds = %508
  %512 = load i8**, i8*** %17, align 8
  %513 = getelementptr inbounds i8*, i8** %512, i32 1
  store i8** %513, i8*** %17, align 8
  br label %429

514:                                              ; preds = %504, %429
  %515 = load i64, i64* @opt_x, align 8
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %523, label %517

517:                                              ; preds = %514
  %518 = load i8*, i8** %16, align 8
  %519 = icmp ne i8* %518, null
  br i1 %519, label %520, label %524

520:                                              ; preds = %517
  %521 = load i64, i64* @opt_a, align 8
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %524, label %523

523:                                              ; preds = %520, %514
  br label %657

524:                                              ; preds = %520, %517
  %525 = load i64, i64* %20, align 8
  %526 = add i64 6, %525
  %527 = trunc i64 %526 to i32
  %528 = call i8* @malloc(i32 %527)
  store i8* %528, i8** %12, align 8
  %529 = load i8*, i8** %12, align 8
  %530 = icmp eq i8* %529, null
  br i1 %530, label %531, label %533

531:                                              ; preds = %524
  %532 = call i32 (...) @abort() #4
  unreachable

533:                                              ; preds = %524
  %534 = load i8*, i8** %12, align 8
  %535 = load i8*, i8** @LOCATECMD, align 8
  %536 = load i8*, i8** %15, align 8
  %537 = call i32 @sprintf(i8* %534, i8* %535, i8* %536)
  %538 = load i8*, i8** %12, align 8
  %539 = call i32* @popen(i8* %538, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32* %539, i32** %26, align 8
  %540 = icmp eq i32* %539, null
  br i1 %540, label %541, label %542

541:                                              ; preds = %533
  br label %657

542:                                              ; preds = %533
  br label %543

543:                                              ; preds = %650, %542
  %544 = load i8*, i8** %16, align 8
  %545 = icmp eq i8* %544, null
  br i1 %545, label %549, label %546

546:                                              ; preds = %543
  %547 = load i64, i64* @opt_a, align 8
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %555

549:                                              ; preds = %546, %543
  %550 = load i32, i32* @BUFSIZ, align 4
  %551 = sub nsw i32 %550, 1
  %552 = load i32*, i32** %26, align 8
  %553 = call i32* @fgets(i8* %30, i32 %551, i32* %552)
  %554 = icmp ne i32* %553, null
  br label %555

555:                                              ; preds = %549, %546
  %556 = phi i1 [ false, %546 ], [ %554, %549 ]
  br i1 %556, label %557, label %651

557:                                              ; preds = %555
  %558 = call i8* @strchr(i8* %30, i8 signext 10)
  store i8* %558, i8** %13, align 8
  %559 = icmp ne i8* %558, null
  br i1 %559, label %560, label %562

560:                                              ; preds = %557
  %561 = load i8*, i8** %13, align 8
  store i8 0, i8* %561, align 1
  br label %562

562:                                              ; preds = %560, %557
  %563 = load i8**, i8*** @sourcedirs, align 8
  store i8** %563, i8*** %17, align 8
  br label %564

564:                                              ; preds = %647, %562
  %565 = load i8*, i8** %16, align 8
  %566 = icmp eq i8* %565, null
  br i1 %566, label %570, label %567

567:                                              ; preds = %564
  %568 = load i64, i64* @opt_a, align 8
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %570, label %574

570:                                              ; preds = %567, %564
  %571 = load i8**, i8*** %17, align 8
  %572 = load i8*, i8** %571, align 8
  %573 = icmp ne i8* %572, null
  br label %574

574:                                              ; preds = %570, %567
  %575 = phi i1 [ false, %567 ], [ %573, %570 ]
  br i1 %575, label %576, label %650

576:                                              ; preds = %574
  %577 = load i8**, i8*** %17, align 8
  %578 = load i8*, i8** %577, align 8
  %579 = call i32 @strlen(i8* %578)
  %580 = add nsw i32 %579, 9
  %581 = call i8* @malloc(i32 %580)
  store i8* %581, i8** %13, align 8
  %582 = load i8*, i8** %13, align 8
  %583 = icmp eq i8* %582, null
  br i1 %583, label %584, label %586

584:                                              ; preds = %576
  %585 = call i32 (...) @abort() #4
  unreachable

586:                                              ; preds = %576
  %587 = load i8*, i8** %13, align 8
  %588 = call i32 @strcpy(i8* %587, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %589 = load i8*, i8** %13, align 8
  %590 = load i8**, i8*** %17, align 8
  %591 = load i8*, i8** %590, align 8
  %592 = call i32 @strcat(i8* %589, i8* %591)
  %593 = load i8*, i8** %13, align 8
  %594 = call i32 @strcat(i8* %593, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %595 = load i8*, i8** %13, align 8
  %596 = load i32, i32* @REG_EXTENDED, align 4
  %597 = load i32, i32* @REG_NOSUB, align 4
  %598 = or i32 %596, %597
  %599 = call i32 @regcomp(i32* %23, i8* %595, i32 %598)
  store i32 %599, i32* %7, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %609

601:                                              ; preds = %586
  %602 = load i32, i32* %7, align 4
  %603 = load i32, i32* @BUFSIZ, align 4
  %604 = sub nsw i32 %603, 1
  %605 = call i32 @regerror(i32 %602, i32* %22, i8* %30, i32 %604)
  %606 = load i32, i32* @EX_UNAVAILABLE, align 4
  %607 = load i8*, i8** %13, align 8
  %608 = call i32 (i32, i8*, ...) @errx(i32 %606, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %607, i8* %30)
  br label %609

609:                                              ; preds = %601, %586
  %610 = load i8*, i8** %13, align 8
  %611 = call i32 @free(i8* %610)
  %612 = call i64 @regexec(i32* %23, i8* %30, i32 0, %struct.TYPE_3__* null, i32 0)
  %613 = icmp eq i64 %612, 0
  br i1 %613, label %614, label %645

614:                                              ; preds = %609
  %615 = load i32, i32* %6, align 4
  %616 = load i32, i32* @NO_SRC_FOUND, align 4
  %617 = xor i32 %616, -1
  %618 = and i32 %615, %617
  store i32 %618, i32* %6, align 4
  %619 = load i8*, i8** %16, align 8
  %620 = icmp eq i8* %619, null
  br i1 %620, label %621, label %623

621:                                              ; preds = %614
  %622 = call i8* @strdup(i8* %30)
  store i8* %622, i8** %16, align 8
  br label %644

623:                                              ; preds = %614
  %624 = load i8*, i8** %16, align 8
  %625 = call i32 @strlen(i8* %624)
  %626 = sext i32 %625 to i64
  store i64 %626, i64* %19, align 8
  %627 = call i32 @strlen(i8* %30)
  %628 = sext i32 %627 to i64
  store i64 %628, i64* %18, align 8
  %629 = load i8*, i8** %16, align 8
  %630 = load i64, i64* %19, align 8
  %631 = load i64, i64* %18, align 8
  %632 = add i64 %630, %631
  %633 = add i64 %632, 2
  %634 = call i8* @realloc(i8* %629, i64 %633)
  store i8* %634, i8** %16, align 8
  %635 = load i8*, i8** %16, align 8
  %636 = icmp eq i8* %635, null
  br i1 %636, label %637, label %639

637:                                              ; preds = %623
  %638 = call i32 (...) @abort() #4
  unreachable

639:                                              ; preds = %623
  %640 = load i8*, i8** %16, align 8
  %641 = call i32 @strcat(i8* %640, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %642 = load i8*, i8** %16, align 8
  %643 = call i32 @strcat(i8* %642, i8* %30)
  br label %644

644:                                              ; preds = %639, %621
  br label %645

645:                                              ; preds = %644, %609
  %646 = call i32 @regfree(i32* %23)
  br label %647

647:                                              ; preds = %645
  %648 = load i8**, i8*** %17, align 8
  %649 = getelementptr inbounds i8*, i8** %648, i32 1
  store i8** %649, i8*** %17, align 8
  br label %564

650:                                              ; preds = %574
  br label %543

651:                                              ; preds = %555
  %652 = load i32*, i32** %26, align 8
  %653 = call i32 @pclose(i32* %652)
  %654 = load i8*, i8** %12, align 8
  %655 = call i32 @free(i8* %654)
  br label %656

656:                                              ; preds = %651, %421
  br label %657

657:                                              ; preds = %656, %541, %523
  %658 = load i64, i64* @opt_u, align 8
  %659 = icmp ne i64 %658, 0
  br i1 %659, label %660, label %664

660:                                              ; preds = %657
  %661 = load i32, i32* %6, align 4
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %664, label %663

663:                                              ; preds = %660
  br label %717

664:                                              ; preds = %660, %657
  store i32 0, i32* %8, align 4
  %665 = load i32, i32* @opt_q, align 4
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %672, label %667

667:                                              ; preds = %664
  %668 = load i8*, i8** %15, align 8
  %669 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %668)
  %670 = load i32, i32* %8, align 4
  %671 = add nsw i32 %670, 1
  store i32 %671, i32* %8, align 4
  br label %672

672:                                              ; preds = %667, %664
  %673 = load i8*, i8** %9, align 8
  %674 = icmp ne i8* %673, null
  br i1 %674, label %675, label %685

675:                                              ; preds = %672
  %676 = load i32, i32* %8, align 4
  %677 = add nsw i32 %676, 1
  store i32 %677, i32* %8, align 4
  %678 = icmp ne i32 %676, 0
  br i1 %678, label %679, label %681

679:                                              ; preds = %675
  %680 = call i32 @putchar(i8 signext 32)
  br label %681

681:                                              ; preds = %679, %675
  %682 = load i8*, i8** %9, align 8
  %683 = load i32, i32* @stdout, align 4
  %684 = call i32 @fputs(i8* %682, i32 %683)
  br label %685

685:                                              ; preds = %681, %672
  %686 = load i8*, i8** %14, align 8
  %687 = icmp ne i8* %686, null
  br i1 %687, label %688, label %698

688:                                              ; preds = %685
  %689 = load i32, i32* %8, align 4
  %690 = add nsw i32 %689, 1
  store i32 %690, i32* %8, align 4
  %691 = icmp ne i32 %689, 0
  br i1 %691, label %692, label %694

692:                                              ; preds = %688
  %693 = call i32 @putchar(i8 signext 32)
  br label %694

694:                                              ; preds = %692, %688
  %695 = load i8*, i8** %14, align 8
  %696 = load i32, i32* @stdout, align 4
  %697 = call i32 @fputs(i8* %695, i32 %696)
  br label %698

698:                                              ; preds = %694, %685
  %699 = load i8*, i8** %16, align 8
  %700 = icmp ne i8* %699, null
  br i1 %700, label %701, label %711

701:                                              ; preds = %698
  %702 = load i32, i32* %8, align 4
  %703 = add nsw i32 %702, 1
  store i32 %703, i32* %8, align 4
  %704 = icmp ne i32 %702, 0
  br i1 %704, label %705, label %707

705:                                              ; preds = %701
  %706 = call i32 @putchar(i8 signext 32)
  br label %707

707:                                              ; preds = %705, %701
  %708 = load i8*, i8** %16, align 8
  %709 = load i32, i32* @stdout, align 4
  %710 = call i32 @fputs(i8* %708, i32 %709)
  br label %711

711:                                              ; preds = %707, %698
  %712 = load i32, i32* %8, align 4
  %713 = icmp ne i32 %712, 0
  br i1 %713, label %714, label %716

714:                                              ; preds = %711
  %715 = call i32 @putchar(i8 signext 10)
  br label %716

716:                                              ; preds = %714, %711
  br label %717

717:                                              ; preds = %716, %663
  %718 = load i8**, i8*** @query, align 8
  %719 = getelementptr inbounds i8*, i8** %718, i32 1
  store i8** %719, i8*** @query, align 8
  br label %79

720:                                              ; preds = %79
  %721 = load i64, i64* @opt_m, align 8
  %722 = icmp ne i64 %721, 0
  br i1 %722, label %723, label %725

723:                                              ; preds = %720
  %724 = call i32 @regfree(i32* %22)
  br label %725

725:                                              ; preds = %723, %720
  store i32 0, i32* %3, align 4
  %726 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %726)
  %727 = load i32, i32* %3, align 4
  ret i32 %727
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @setlocale(i32, i8*) #2

declare dso_local i32 @scanopts(i32, i8**) #2

declare dso_local i32 @defaults(...) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @setenv(i8*, i32, i32) #2

declare dso_local i32 @colonify(i32*) #2

declare dso_local i32 @regcomp(i32*, i8*, i32) #2

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @malloc(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @realloc(i8*, i64) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32* @popen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @regexec(i32*, i8*, i32, %struct.TYPE_3__*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @pclose(i32*) #2

declare dso_local i32 @regfree(i32*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @putchar(i8 signext) #2

declare dso_local i32 @fputs(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
