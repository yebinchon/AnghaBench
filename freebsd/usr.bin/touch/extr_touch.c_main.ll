; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/touch/extr_touch.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/touch/extr_touch.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { %struct.timespec, %struct.timespec }
%struct.timespec = type { i64, i8* }

@UTIME_NOW = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"A:acd:fhmr:t:\00", align 1
@optarg = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@UTIME_OMIT = common dso_local global i8* null, align 8
@AT_FDCWD = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@DEFFILEMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca [2 x %struct.timespec], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @basename(i8* %22)
  store i8* %23, i8** %19, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %24 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 0
  store i64 0, i64* %25, align 16
  %26 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %26, i32 0, i32 0
  store i64 0, i64* %27, align 16
  %28 = load i8*, i8** @UTIME_NOW, align 8
  %29 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %31, i32 0, i32 1
  store i8* %28, i8** %32, align 8
  br label %33

33:                                               ; preds = %64, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = call i32 @getopt(i32 %34, i8** %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %13, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %65

38:                                               ; preds = %33
  %39 = load i32, i32* %13, align 4
  switch i32 %39, label %61 [
    i32 65, label %40
    i32 97, label %43
    i32 99, label %44
    i32 100, label %45
    i32 102, label %49
    i32 104, label %50
    i32 109, label %52
    i32 114, label %53
    i32 116, label %57
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* @optarg, align 4
  %42 = call i32 @timeoffset(i32 %41)
  store i32 %42, i32* %9, align 4
  br label %64

43:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %64

44:                                               ; preds = %38
  store i32 1, i32* %11, align 4
  br label %64

45:                                               ; preds = %38
  store i32 1, i32* %17, align 4
  %46 = load i32, i32* @optarg, align 4
  %47 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %48 = call i32 @stime_darg(i32 %46, %struct.timespec* %47)
  br label %64

49:                                               ; preds = %38
  br label %64

50:                                               ; preds = %38
  store i32 1, i32* %11, align 4
  %51 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  store i32 %51, i32* %8, align 4
  br label %64

52:                                               ; preds = %38
  store i32 1, i32* %12, align 4
  br label %64

53:                                               ; preds = %38
  store i32 1, i32* %17, align 4
  %54 = load i32, i32* @optarg, align 4
  %55 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %56 = call i32 @stime_file(i32 %54, %struct.timespec* %55)
  br label %64

57:                                               ; preds = %38
  store i32 1, i32* %17, align 4
  %58 = load i32, i32* @optarg, align 4
  %59 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %60 = call i32 @stime_arg1(i32 %58, %struct.timespec* %59)
  br label %64

61:                                               ; preds = %38
  %62 = load i8*, i8** %19, align 8
  %63 = call i32 @usage(i8* %62)
  br label %64

64:                                               ; preds = %61, %57, %53, %52, %50, %49, %45, %44, %43, %40
  br label %33

65:                                               ; preds = %33
  %66 = load i64, i64* @optind, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %4, align 4
  %71 = load i64, i64* @optind, align 8
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 %71
  store i8** %73, i8*** %5, align 8
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = load i32, i32* %12, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 1, i32* %12, align 4
  store i32 1, i32* %10, align 4
  br label %80

80:                                               ; preds = %79, %76, %65
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %93 = getelementptr inbounds %struct.timespec, %struct.timespec* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 16
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 16
  br label %96

96:                                               ; preds = %89, %86
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %103 = getelementptr inbounds %struct.timespec, %struct.timespec* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 16
  %105 = add nsw i64 %104, %101
  store i64 %105, i64* %103, align 16
  br label %106

106:                                              ; preds = %99, %96
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %106, %83
  br label %150

108:                                              ; preds = %80
  %109 = load i32, i32* %4, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %145

111:                                              ; preds = %108
  %112 = load i8**, i8*** %5, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @strtol(i8* %114, i8** %18, i32 10)
  %116 = load i8*, i8** %18, align 8
  %117 = load i8**, i8*** %5, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 0
  %119 = load i8*, i8** %118, align 8
  %120 = ptrtoint i8* %116 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %15, align 4
  %124 = load i8*, i8** %18, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %111
  %129 = load i32, i32* %15, align 4
  %130 = icmp eq i32 %129, 8
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %15, align 4
  %133 = icmp eq i32 %132, 10
  br i1 %133, label %134, label %144

134:                                              ; preds = %131, %128
  store i32 1, i32* %17, align 4
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i32 1
  store i8** %136, i8*** %5, align 8
  %137 = load i8*, i8** %135, align 8
  %138 = ptrtoint i8* %137 to i32
  %139 = load i32, i32* %15, align 4
  %140 = icmp eq i32 %139, 10
  %141 = zext i1 %140 to i32
  %142 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %143 = call i32 @stime_arg2(i32 %138, i32 %141, %struct.timespec* %142)
  br label %144

144:                                              ; preds = %134, %131, %111
  br label %145

145:                                              ; preds = %144, %108
  %146 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %147 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %148 = bitcast %struct.timespec* %146 to i8*
  %149 = bitcast %struct.timespec* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %148, i8* align 16 %149, i64 16, i1 false)
  br label %150

150:                                              ; preds = %145, %107
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %150
  %154 = load i8*, i8** @UTIME_OMIT, align 8
  %155 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %156 = getelementptr inbounds %struct.timespec, %struct.timespec* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %153, %150
  %158 = load i32, i32* %12, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = load i8*, i8** @UTIME_OMIT, align 8
  %162 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %163 = getelementptr inbounds %struct.timespec, %struct.timespec* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %160, %157
  %165 = load i8**, i8*** %5, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i8*, i8** %19, align 8
  %170 = call i32 @usage(i8* %169)
  br label %171

171:                                              ; preds = %168, %164
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  store i32 1, i32* %11, align 4
  br label %175

175:                                              ; preds = %174, %171
  store i32 0, i32* %16, align 4
  br label %176

176:                                              ; preds = %272, %175
  %177 = load i8**, i8*** %5, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %275

180:                                              ; preds = %176
  %181 = load i32, i32* @AT_FDCWD, align 4
  %182 = load i8**, i8*** %5, align 8
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i64 @fstatat(i32 %181, i8* %183, %struct.stat* %6, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %227

187:                                              ; preds = %180
  %188 = load i64, i64* @errno, align 8
  %189 = load i64, i64* @ENOENT, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  store i32 1, i32* %16, align 4
  %192 = load i8**, i8*** %5, align 8
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %193)
  br label %272

195:                                              ; preds = %187
  %196 = load i32, i32* %11, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %225, label %198

198:                                              ; preds = %195
  %199 = load i8**, i8*** %5, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* @O_WRONLY, align 4
  %202 = load i32, i32* @O_CREAT, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @DEFFILEMODE, align 4
  %205 = call i32 @open(i8* %200, i32 %203, i32 %204)
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %14, align 4
  %207 = icmp eq i32 %206, -1
  br i1 %207, label %216, label %208

208:                                              ; preds = %198
  %209 = load i32, i32* %14, align 4
  %210 = call i64 @fstat(i32 %209, %struct.stat* %6)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load i32, i32* %14, align 4
  %214 = call i64 @close(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %212, %208, %198
  store i32 1, i32* %16, align 4
  %217 = load i8**, i8*** %5, align 8
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %218)
  br label %272

220:                                              ; preds = %212
  %221 = load i32, i32* %17, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  br label %272

224:                                              ; preds = %220
  br label %226

225:                                              ; preds = %195
  br label %272

226:                                              ; preds = %224
  br label %227

227:                                              ; preds = %226, %180
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %259

230:                                              ; preds = %227
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %244

233:                                              ; preds = %230
  %234 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %235 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %236 = bitcast %struct.timespec* %234 to i8*
  %237 = bitcast %struct.timespec* %235 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %236, i8* align 8 %237, i64 16, i1 false)
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %241 = getelementptr inbounds %struct.timespec, %struct.timespec* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 16
  %243 = add nsw i64 %242, %239
  store i64 %243, i64* %241, align 16
  br label %244

244:                                              ; preds = %233, %230
  %245 = load i32, i32* %12, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %244
  %248 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %249 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %250 = bitcast %struct.timespec* %248 to i8*
  %251 = bitcast %struct.timespec* %249 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %250, i8* align 8 %251, i64 16, i1 false)
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %255 = getelementptr inbounds %struct.timespec, %struct.timespec* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 16
  %257 = add nsw i64 %256, %253
  store i64 %257, i64* %255, align 16
  br label %258

258:                                              ; preds = %247, %244
  br label %259

259:                                              ; preds = %258, %227
  %260 = load i32, i32* @AT_FDCWD, align 4
  %261 = load i8**, i8*** %5, align 8
  %262 = load i8*, i8** %261, align 8
  %263 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %264 = load i32, i32* %8, align 4
  %265 = call i32 @utimensat(i32 %260, i8* %262, %struct.timespec* %263, i32 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %259
  br label %272

268:                                              ; preds = %259
  store i32 1, i32* %16, align 4
  %269 = load i8**, i8*** %5, align 8
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %270)
  br label %272

272:                                              ; preds = %268, %267, %225, %223, %216, %191
  %273 = load i8**, i8*** %5, align 8
  %274 = getelementptr inbounds i8*, i8** %273, i32 1
  store i8** %274, i8*** %5, align 8
  br label %176

275:                                              ; preds = %176
  %276 = load i32, i32* %16, align 4
  %277 = call i32 @exit(i32 %276) #4
  unreachable
}

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @timeoffset(i32) #1

declare dso_local i32 @stime_darg(i32, %struct.timespec*) #1

declare dso_local i32 @stime_file(i32, %struct.timespec*) #1

declare dso_local i32 @stime_arg1(i32, %struct.timespec*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @stime_arg2(i32, i32, %struct.timespec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fstatat(i32, i8*, %struct.stat*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @utimensat(i32, i8*, %struct.timespec*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
