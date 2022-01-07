; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cmp/extr_cmp.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cmp/extr_cmp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"+hlsxz\00", align 1
@long_opts = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@lflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@zflag = common dso_local global i32 0, align 4
@xflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@ERR_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"specifying -s with -l or -x is not permitted\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@CAPH_WRITE = common dso_local global i32 0, align 4
@CAPH_IGNORE_EBADF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"unable to limit rights on stdout\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"unable to limit rights on stderr\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@errno = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"standard input may only be specified once\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%s: Not a symbolic link\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s %s differ: size\0A\00", align 1
@DIFF_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  store i32 %17, i32* %13, align 4
  br label %18

18:                                               ; preds = %37, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* @long_opts, align 4
  %22 = call i32 @getopt_long(i32 %19, i8** %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21, i32* null)
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %35 [
    i32 104, label %26
    i32 108, label %30
    i32 115, label %31
    i32 120, label %32
    i32 122, label %33
    i32 63, label %34
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @O_NOFOLLOW, align 4
  %28 = load i32, i32* %13, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %13, align 4
  br label %37

30:                                               ; preds = %24
  store i32 1, i32* @lflag, align 4
  br label %37

31:                                               ; preds = %24
  store i32 1, i32* @sflag, align 4
  store i32 1, i32* @zflag, align 4
  br label %37

32:                                               ; preds = %24
  store i32 1, i32* @lflag, align 4
  store i32 1, i32* @xflag, align 4
  br label %37

33:                                               ; preds = %24
  store i32 1, i32* @zflag, align 4
  br label %37

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %24, %34
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %35, %33, %32, %31, %30, %26
  br label %18

38:                                               ; preds = %18
  %39 = load i64, i64* @optind, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 %39
  store i8** %41, i8*** %5, align 8
  %42 = load i64, i64* @optind, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @lflag, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load i32, i32* @sflag, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @ERR_EXIT, align 4
  %54 = call i32 (i32, i8*, ...) @errx(i32 %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49, %38
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = icmp sgt i32 %59, 4
  br i1 %60, label %61, label %63

61:                                               ; preds = %58, %55
  %62 = call i32 (...) @usage()
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32, i32* @STDOUT_FILENO, align 4
  %65 = load i32, i32* @CAPH_WRITE, align 4
  %66 = load i32, i32* @CAPH_IGNORE_EBADF, align 4
  %67 = or i32 %65, %66
  %68 = call i64 @caph_limit_stream(i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @ERR_EXIT, align 4
  %72 = call i32 (i32, i8*, ...) @err(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %63
  %74 = load i32, i32* @STDERR_FILENO, align 4
  %75 = load i32, i32* @CAPH_WRITE, align 4
  %76 = load i32, i32* @CAPH_IGNORE_EBADF, align 4
  %77 = or i32 %75, %76
  %78 = call i64 @caph_limit_stream(i32 %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* @ERR_EXIT, align 4
  %82 = call i32 (i32, i8*, ...) @err(i32 %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %73
  store i32 0, i32* %14, align 4
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %15, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  store i32 1, i32* %14, align 4
  %90 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %90, i32* %11, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %15, align 8
  br label %112

91:                                               ; preds = %83
  %92 = load i8*, i8** %15, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @open(i8* %92, i32 %93, i32 0)
  store i32 %94, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load i64, i64* @errno, align 8
  %98 = load i64, i64* @EMLINK, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load i32, i32* @sflag, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @ERR_EXIT, align 4
  %105 = load i8*, i8** %15, align 8
  %106 = call i32 (i32, i8*, ...) @err(i32 %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %105)
  br label %110

107:                                              ; preds = %100
  %108 = load i32, i32* @ERR_EXIT, align 4
  %109 = call i32 @exit(i32 %108) #3
  unreachable

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %96, %91
  br label %112

112:                                              ; preds = %111, %89
  %113 = load i8**, i8*** %5, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %16, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* @ERR_EXIT, align 4
  %123 = call i32 (i32, i8*, ...) @errx(i32 %122, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %118
  store i32 1, i32* %14, align 4
  %125 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %125, i32* %12, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %147

126:                                              ; preds = %112
  %127 = load i8*, i8** %16, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @open(i8* %127, i32 %128, i32 0)
  store i32 %129, i32* %12, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %126
  %132 = load i64, i64* @errno, align 8
  %133 = load i64, i64* @EMLINK, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  %136 = load i32, i32* @sflag, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* @ERR_EXIT, align 4
  %140 = load i8*, i8** %16, align 8
  %141 = call i32 (i32, i8*, ...) @err(i32 %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %140)
  br label %145

142:                                              ; preds = %135
  %143 = load i32, i32* @ERR_EXIT, align 4
  %144 = call i32 @exit(i32 %143) #3
  unreachable

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145, %131, %126
  br label %147

147:                                              ; preds = %146, %124
  %148 = load i32, i32* %4, align 4
  %149 = icmp sgt i32 %148, 2
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i8**, i8*** %5, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 2
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strtol(i8* %153, i32* null, i32 0)
  br label %156

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %150
  %157 = phi i32 [ %154, %150 ], [ 0, %155 ]
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp eq i32 %158, 4
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i8**, i8*** %5, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 3
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @strtol(i8* %163, i32* null, i32 0)
  br label %166

165:                                              ; preds = %156
  br label %166

166:                                              ; preds = %165, %160
  %167 = phi i32 [ %164, %160 ], [ 0, %165 ]
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %192

170:                                              ; preds = %166
  %171 = load i32, i32* %12, align 4
  %172 = icmp eq i32 %171, -1
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load i8*, i8** %15, align 8
  %175 = load i32, i32* %8, align 4
  %176 = load i8*, i8** %16, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @c_link(i8* %174, i32 %175, i8* %176, i32 %177)
  %179 = call i32 @exit(i32 0) #3
  unreachable

180:                                              ; preds = %170
  %181 = load i32, i32* @sflag, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* @ERR_EXIT, align 4
  %185 = load i8*, i8** %16, align 8
  %186 = call i32 (i32, i8*, ...) @errx(i32 %184, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %185)
  br label %190

187:                                              ; preds = %180
  %188 = load i32, i32* @ERR_EXIT, align 4
  %189 = call i32 @exit(i32 %188) #3
  unreachable

190:                                              ; preds = %183
  br label %191

191:                                              ; preds = %190
  br label %207

192:                                              ; preds = %166
  %193 = load i32, i32* %12, align 4
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = load i32, i32* @sflag, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* @ERR_EXIT, align 4
  %200 = load i8*, i8** %15, align 8
  %201 = call i32 (i32, i8*, ...) @errx(i32 %199, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %200)
  br label %205

202:                                              ; preds = %195
  %203 = load i32, i32* @ERR_EXIT, align 4
  %204 = call i32 @exit(i32 %203) #3
  unreachable

205:                                              ; preds = %198
  br label %206

206:                                              ; preds = %205, %192
  br label %207

207:                                              ; preds = %206, %191
  %208 = call i32 (...) @caph_cache_catpages()
  %209 = load i32, i32* %14, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %255, label %211

211:                                              ; preds = %207
  %212 = load i32, i32* %11, align 4
  %213 = call i64 @fstat(i32 %212, %struct.stat* %6)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %211
  %216 = load i32, i32* @sflag, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* @ERR_EXIT, align 4
  %220 = load i8*, i8** %15, align 8
  %221 = call i32 (i32, i8*, ...) @err(i32 %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %220)
  br label %225

222:                                              ; preds = %215
  %223 = load i32, i32* @ERR_EXIT, align 4
  %224 = call i32 @exit(i32 %223) #3
  unreachable

225:                                              ; preds = %218
  br label %226

226:                                              ; preds = %225, %211
  %227 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @S_ISREG(i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %226
  store i32 1, i32* %14, align 4
  br label %254

232:                                              ; preds = %226
  %233 = load i32, i32* %12, align 4
  %234 = call i64 @fstat(i32 %233, %struct.stat* %7)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %247

236:                                              ; preds = %232
  %237 = load i32, i32* @sflag, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %243, label %239

239:                                              ; preds = %236
  %240 = load i32, i32* @ERR_EXIT, align 4
  %241 = load i8*, i8** %16, align 8
  %242 = call i32 (i32, i8*, ...) @err(i32 %240, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %241)
  br label %246

243:                                              ; preds = %236
  %244 = load i32, i32* @ERR_EXIT, align 4
  %245 = call i32 @exit(i32 %244) #3
  unreachable

246:                                              ; preds = %239
  br label %247

247:                                              ; preds = %246, %232
  %248 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @S_ISREG(i32 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %247
  store i32 1, i32* %14, align 4
  br label %253

253:                                              ; preds = %252, %247
  br label %254

254:                                              ; preds = %253, %231
  br label %255

255:                                              ; preds = %254, %207
  %256 = load i32, i32* %14, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %255
  %259 = load i32, i32* %11, align 4
  %260 = load i8*, i8** %15, align 8
  %261 = load i32, i32* %8, align 4
  %262 = load i32, i32* %12, align 4
  %263 = load i8*, i8** %16, align 8
  %264 = load i32, i32* %9, align 4
  %265 = call i32 @c_special(i32 %259, i8* %260, i32 %261, i32 %262, i8* %263, i32 %264)
  br label %297

266:                                              ; preds = %255
  %267 = load i32, i32* @zflag, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %285

269:                                              ; preds = %266
  %270 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %271, %273
  br i1 %274, label %275, label %285

275:                                              ; preds = %269
  %276 = load i32, i32* @sflag, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %275
  %279 = load i8*, i8** %15, align 8
  %280 = load i8*, i8** %16, align 8
  %281 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %279, i8* %280)
  br label %282

282:                                              ; preds = %278, %275
  %283 = load i32, i32* @DIFF_EXIT, align 4
  %284 = call i32 @exit(i32 %283) #3
  unreachable

285:                                              ; preds = %269, %266
  %286 = load i32, i32* %11, align 4
  %287 = load i8*, i8** %15, align 8
  %288 = load i32, i32* %8, align 4
  %289 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* %12, align 4
  %292 = load i8*, i8** %16, align 8
  %293 = load i32, i32* %9, align 4
  %294 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = call i32 @c_regular(i32 %286, i8* %287, i32 %288, i64 %290, i32 %291, i8* %292, i32 %293, i64 %295)
  br label %297

297:                                              ; preds = %285, %258
  %298 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @caph_limit_stream(i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @c_link(i8*, i32, i8*, i32) #1

declare dso_local i32 @caph_cache_catpages(...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @c_special(i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @c_regular(i32, i8*, i32, i64, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
