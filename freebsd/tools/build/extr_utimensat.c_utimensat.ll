; ModuleID = '/home/carl/AnghaBench/freebsd/tools/build/extr_utimensat.c_utimensat.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/build/extr_utimensat.c_utimensat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.timeval = type { i32, i32 }
%struct.stat = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@UTIME_NOW = common dso_local global i32 0, align 4
@UTIME_OMIT = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utimensat(i32 %0, i8* %1, %struct.timespec* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 4
  %11 = alloca [2 x %struct.timeval], align 16
  %12 = alloca %struct.timeval*, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.timespec* %2, %struct.timespec** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %272

22:                                               ; preds = %4
  %23 = load %struct.timespec*, %struct.timespec** %8, align 8
  %24 = icmp eq %struct.timespec* %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = load %struct.timespec*, %struct.timespec** %8, align 8
  %27 = getelementptr inbounds %struct.timespec, %struct.timespec* %26, i64 0
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UTIME_NOW, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.timespec*, %struct.timespec** %8, align 8
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %33, i64 1
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @UTIME_NOW, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32, %22
  store %struct.timeval* null, %struct.timeval** %12, align 8
  br label %241

40:                                               ; preds = %32, %25
  %41 = load %struct.timespec*, %struct.timespec** %8, align 8
  %42 = getelementptr inbounds %struct.timespec, %struct.timespec* %41, i64 0
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @UTIME_OMIT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.timespec*, %struct.timespec** %8, align 8
  %49 = getelementptr inbounds %struct.timespec, %struct.timespec* %48, i64 1
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @UTIME_OMIT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %272

55:                                               ; preds = %47, %40
  %56 = load %struct.timespec*, %struct.timespec** %8, align 8
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %56, i64 0
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.timespec*, %struct.timespec** %8, align 8
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %62, i64 0
  %64 = getelementptr inbounds %struct.timespec, %struct.timespec* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 999999999
  br i1 %66, label %67, label %83

67:                                               ; preds = %61, %55
  %68 = load %struct.timespec*, %struct.timespec** %8, align 8
  %69 = getelementptr inbounds %struct.timespec, %struct.timespec* %68, i64 0
  %70 = getelementptr inbounds %struct.timespec, %struct.timespec* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @UTIME_NOW, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.timespec*, %struct.timespec** %8, align 8
  %76 = getelementptr inbounds %struct.timespec, %struct.timespec* %75, i64 0
  %77 = getelementptr inbounds %struct.timespec, %struct.timespec* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @UTIME_OMIT, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %272

83:                                               ; preds = %74, %67, %61
  %84 = load %struct.timespec*, %struct.timespec** %8, align 8
  %85 = getelementptr inbounds %struct.timespec, %struct.timespec* %84, i64 1
  %86 = getelementptr inbounds %struct.timespec, %struct.timespec* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.timespec*, %struct.timespec** %8, align 8
  %91 = getelementptr inbounds %struct.timespec, %struct.timespec* %90, i64 1
  %92 = getelementptr inbounds %struct.timespec, %struct.timespec* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %93, 999999999
  br i1 %94, label %95, label %111

95:                                               ; preds = %89, %83
  %96 = load %struct.timespec*, %struct.timespec** %8, align 8
  %97 = getelementptr inbounds %struct.timespec, %struct.timespec* %96, i64 1
  %98 = getelementptr inbounds %struct.timespec, %struct.timespec* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @UTIME_NOW, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load %struct.timespec*, %struct.timespec** %8, align 8
  %104 = getelementptr inbounds %struct.timespec, %struct.timespec* %103, i64 1
  %105 = getelementptr inbounds %struct.timespec, %struct.timespec* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @UTIME_OMIT, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %272

111:                                              ; preds = %102, %95, %89
  %112 = load %struct.timespec*, %struct.timespec** %8, align 8
  %113 = getelementptr inbounds %struct.timespec, %struct.timespec* %112, i64 0
  %114 = getelementptr inbounds %struct.timespec, %struct.timespec* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %11, i64 0, i64 0
  %117 = getelementptr inbounds %struct.timeval, %struct.timeval* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.timespec*, %struct.timespec** %8, align 8
  %119 = getelementptr inbounds %struct.timespec, %struct.timespec* %118, i64 0
  %120 = getelementptr inbounds %struct.timespec, %struct.timespec* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sdiv i32 %121, 1000
  %123 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %11, i64 0, i64 0
  %124 = getelementptr inbounds %struct.timeval, %struct.timeval* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 16
  %125 = load %struct.timespec*, %struct.timespec** %8, align 8
  %126 = getelementptr inbounds %struct.timespec, %struct.timespec* %125, i64 1
  %127 = getelementptr inbounds %struct.timespec, %struct.timespec* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %11, i64 0, i64 1
  %130 = getelementptr inbounds %struct.timeval, %struct.timeval* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.timespec*, %struct.timespec** %8, align 8
  %132 = getelementptr inbounds %struct.timespec, %struct.timespec* %131, i64 1
  %133 = getelementptr inbounds %struct.timespec, %struct.timespec* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sdiv i32 %134, 1000
  %136 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %11, i64 0, i64 1
  %137 = getelementptr inbounds %struct.timeval, %struct.timeval* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %11, i64 0, i64 0
  store %struct.timeval* %138, %struct.timeval** %12, align 8
  %139 = load %struct.timespec*, %struct.timespec** %8, align 8
  %140 = getelementptr inbounds %struct.timespec, %struct.timespec* %139, i64 0
  %141 = getelementptr inbounds %struct.timespec, %struct.timespec* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @UTIME_OMIT, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %152, label %145

145:                                              ; preds = %111
  %146 = load %struct.timespec*, %struct.timespec** %8, align 8
  %147 = getelementptr inbounds %struct.timespec, %struct.timespec* %146, i64 1
  %148 = getelementptr inbounds %struct.timespec, %struct.timespec* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @UTIME_OMIT, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %198

152:                                              ; preds = %145, %111
  %153 = load i32, i32* %6, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @fstatat(i32 %153, i8* %154, %struct.stat* %13, i32 %155)
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  store i32 -1, i32* %5, align 4
  br label %272

159:                                              ; preds = %152
  %160 = load %struct.timespec*, %struct.timespec** %8, align 8
  %161 = getelementptr inbounds %struct.timespec, %struct.timespec* %160, i64 0
  %162 = getelementptr inbounds %struct.timespec, %struct.timespec* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @UTIME_OMIT, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %11, i64 0, i64 0
  %171 = getelementptr inbounds %struct.timeval, %struct.timeval* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = sdiv i32 %174, 1000
  %176 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %11, i64 0, i64 0
  %177 = getelementptr inbounds %struct.timeval, %struct.timeval* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 16
  br label %178

178:                                              ; preds = %166, %159
  %179 = load %struct.timespec*, %struct.timespec** %8, align 8
  %180 = getelementptr inbounds %struct.timespec, %struct.timespec* %179, i64 1
  %181 = getelementptr inbounds %struct.timespec, %struct.timespec* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @UTIME_OMIT, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %11, i64 0, i64 1
  %190 = getelementptr inbounds %struct.timeval, %struct.timeval* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sdiv i32 %193, 1000
  %195 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %11, i64 0, i64 1
  %196 = getelementptr inbounds %struct.timeval, %struct.timeval* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  br label %197

197:                                              ; preds = %185, %178
  br label %198

198:                                              ; preds = %197, %145
  %199 = load %struct.timespec*, %struct.timespec** %8, align 8
  %200 = getelementptr inbounds %struct.timespec, %struct.timespec* %199, i64 0
  %201 = getelementptr inbounds %struct.timespec, %struct.timespec* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @UTIME_NOW, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %212, label %205

205:                                              ; preds = %198
  %206 = load %struct.timespec*, %struct.timespec** %8, align 8
  %207 = getelementptr inbounds %struct.timespec, %struct.timespec* %206, i64 1
  %208 = getelementptr inbounds %struct.timespec, %struct.timespec* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @UTIME_NOW, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %239

212:                                              ; preds = %205, %198
  %213 = call i32 @gettimeofday(%struct.timeval* %10, i32* null)
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  store i32 -1, i32* %5, align 4
  br label %272

216:                                              ; preds = %212
  %217 = load %struct.timespec*, %struct.timespec** %8, align 8
  %218 = getelementptr inbounds %struct.timespec, %struct.timespec* %217, i64 0
  %219 = getelementptr inbounds %struct.timespec, %struct.timespec* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @UTIME_NOW, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %216
  %224 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %11, i64 0, i64 0
  %225 = bitcast %struct.timeval* %224 to i8*
  %226 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %225, i8* align 4 %226, i64 8, i1 false)
  br label %227

227:                                              ; preds = %223, %216
  %228 = load %struct.timespec*, %struct.timespec** %8, align 8
  %229 = getelementptr inbounds %struct.timespec, %struct.timespec* %228, i64 1
  %230 = getelementptr inbounds %struct.timespec, %struct.timespec* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @UTIME_NOW, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %227
  %235 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %11, i64 0, i64 1
  %236 = bitcast %struct.timeval* %235 to i8*
  %237 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %236, i8* align 4 %237, i64 8, i1 false)
  br label %238

238:                                              ; preds = %234, %227
  br label %239

239:                                              ; preds = %238, %205
  br label %240

240:                                              ; preds = %239
  br label %241

241:                                              ; preds = %240, %39
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %244 = and i32 %242, %243
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %241
  %247 = load i32, i32* %6, align 4
  %248 = load i8*, i8** %7, align 8
  %249 = load %struct.timeval*, %struct.timeval** %12, align 8
  %250 = call i32 @futimesat(i32 %247, i8* %248, %struct.timeval* %249)
  store i32 %250, i32* %5, align 4
  br label %272

251:                                              ; preds = %241
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %270

256:                                              ; preds = %251
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* @AT_FDCWD, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %266, label %260

260:                                              ; preds = %256
  %261 = load i8*, i8** %7, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 0
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 47
  br i1 %265, label %266, label %270

266:                                              ; preds = %260, %256
  %267 = load i8*, i8** %7, align 8
  %268 = load %struct.timeval*, %struct.timeval** %12, align 8
  %269 = call i32 @lutimes(i8* %267, %struct.timeval* %268)
  store i32 %269, i32* %5, align 4
  br label %272

270:                                              ; preds = %260, %251
  %271 = load i32, i32* @ENOTSUP, align 4
  store i32 %271, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %272

272:                                              ; preds = %270, %266, %246, %215, %158, %109, %81, %54, %20
  %273 = load i32, i32* %5, align 4
  ret i32 %273
}

declare dso_local i32 @fstatat(i32, i8*, %struct.stat*, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @futimesat(i32, i8*, %struct.timeval*) #1

declare dso_local i32 @lutimes(i8*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
