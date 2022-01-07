; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_kern_shm_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_kern_shm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.filecaps = type { i32 }
%struct.shmfd = type { i32, i32, i32, i32 }
%struct.file = type { i32 }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@F_SEAL_SEAL = common dso_local global i32 0, align 4
@ACCESSPERMS = common dso_local global i32 0, align 4
@SHM_ANON = common dso_local global i8* null, align 8
@MAXPATHLEN = common dso_local global i64 0, align 8
@M_SHMFD = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@FNV1_32_INIT = common dso_local global i32 0, align 4
@shm_dict_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@OFF_MAX = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@DTYPE_SHM = common dso_local global i32 0, align 4
@shm_ops = common dso_local global i32 0, align 4
@ECAPMODE = common dso_local global i32 0, align 4
@KTR_NAMEI = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_shm_open(%struct.thread* %0, i8* %1, i32 %2, i32 %3, %struct.filecaps* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.filecaps*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.filedesc*, align 8
  %15 = alloca %struct.shmfd*, align 8
  %16 = alloca %struct.file*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.filecaps* %4, %struct.filecaps** %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @AUDIT_ARG_FFLAGS(i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @AUDIT_ARG_MODE(i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @O_ACCMODE, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @O_RDONLY, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %6
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @O_ACCMODE, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @O_RDWR, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %7, align 4
  br label %335

42:                                               ; preds = %34, %6
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @O_ACCMODE, align 4
  %45 = load i32, i32* @O_CREAT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @O_EXCL, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @O_TRUNC, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @O_CLOEXEC, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %43, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %7, align 4
  br label %335

58:                                               ; preds = %42
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @F_SEAL_SEAL, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %7, align 4
  br label %335

66:                                               ; preds = %58
  %67 = load %struct.thread*, %struct.thread** %8, align 8
  %68 = getelementptr inbounds %struct.thread, %struct.thread* %67, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.filedesc*, %struct.filedesc** %70, align 8
  store %struct.filedesc* %71, %struct.filedesc** %14, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  %74 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %72, %76
  %78 = load i32, i32* @ACCESSPERMS, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %22, align 4
  %80 = load %struct.thread*, %struct.thread** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @O_CLOEXEC, align 4
  %83 = and i32 %81, %82
  %84 = load %struct.filecaps*, %struct.filecaps** %12, align 8
  %85 = call i32 @falloc_caps(%struct.thread* %80, %struct.file** %16, i32* %23, i32 %83, %struct.filecaps* %84)
  store i32 %85, i32* %24, align 4
  %86 = load i32, i32* %24, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %66
  %89 = load i32, i32* %24, align 4
  store i32 %89, i32* %7, align 4
  br label %335

90:                                               ; preds = %66
  %91 = load i8*, i8** %9, align 8
  %92 = load i8*, i8** @SHM_ANON, align 8
  %93 = icmp eq i8* %91, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @O_ACCMODE, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @O_RDONLY, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load %struct.thread*, %struct.thread** %8, align 8
  %102 = load %struct.file*, %struct.file** %16, align 8
  %103 = load i32, i32* %23, align 4
  %104 = call i32 @fdclose(%struct.thread* %101, %struct.file* %102, i32 %103)
  %105 = load %struct.file*, %struct.file** %16, align 8
  %106 = load %struct.thread*, %struct.thread** %8, align 8
  %107 = call i32 @fdrop(%struct.file* %105, %struct.thread* %106)
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %7, align 4
  br label %335

109:                                              ; preds = %94
  %110 = load %struct.thread*, %struct.thread** %8, align 8
  %111 = getelementptr inbounds %struct.thread, %struct.thread* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = load i32, i32* %22, align 4
  %114 = call %struct.shmfd* @shm_alloc(%struct.TYPE_10__* %112, i32 %113)
  store %struct.shmfd* %114, %struct.shmfd** %15, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %117 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  br label %318

118:                                              ; preds = %90
  %119 = load i64, i64* @MAXPATHLEN, align 8
  %120 = load i32, i32* @M_SHMFD, align 4
  %121 = load i32, i32* @M_WAITOK, align 4
  %122 = call i8* @malloc(i64 %119, i32 %120, i32 %121)
  store i8* %122, i8** %17, align 8
  %123 = load %struct.thread*, %struct.thread** %8, align 8
  %124 = getelementptr inbounds %struct.thread, %struct.thread* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %18, align 8
  %130 = load i8*, i8** %18, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %118
  br label %139

134:                                              ; preds = %118
  %135 = load i8*, i8** %17, align 8
  %136 = load i8*, i8** %18, align 8
  %137 = load i64, i64* @MAXPATHLEN, align 8
  %138 = call i64 @strlcpy(i8* %135, i8* %136, i64 %137)
  br label %139

139:                                              ; preds = %134, %133
  %140 = phi i64 [ 0, %133 ], [ %138, %134 ]
  store i64 %140, i64* %20, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = load i8*, i8** %17, align 8
  %143 = load i64, i64* %20, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  %145 = load i64, i64* @MAXPATHLEN, align 8
  %146 = load i64, i64* %20, align 8
  %147 = sub i64 %145, %146
  %148 = call i32 @copyinstr(i8* %141, i8* %144, i64 %147, i32* null)
  store i32 %148, i32* %24, align 4
  %149 = load i32, i32* %24, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %139
  %152 = load i8*, i8** %17, align 8
  %153 = load i64, i64* %20, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 47
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load i32, i32* @EINVAL, align 4
  store i32 %159, i32* %24, align 4
  br label %160

160:                                              ; preds = %158, %151, %139
  %161 = load i32, i32* %24, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %160
  %164 = load %struct.thread*, %struct.thread** %8, align 8
  %165 = load %struct.file*, %struct.file** %16, align 8
  %166 = load i32, i32* %23, align 4
  %167 = call i32 @fdclose(%struct.thread* %164, %struct.file* %165, i32 %166)
  %168 = load %struct.file*, %struct.file** %16, align 8
  %169 = load %struct.thread*, %struct.thread** %8, align 8
  %170 = call i32 @fdrop(%struct.file* %168, %struct.thread* %169)
  %171 = load i8*, i8** %17, align 8
  %172 = load i32, i32* @M_SHMFD, align 4
  %173 = call i32 @free(i8* %171, i32 %172)
  %174 = load i32, i32* %24, align 4
  store i32 %174, i32* %7, align 4
  br label %335

175:                                              ; preds = %160
  %176 = load i8*, i8** %17, align 8
  %177 = call i32 @AUDIT_ARG_UPATH1_CANON(i8* %176)
  %178 = load i8*, i8** %17, align 8
  %179 = load i32, i32* @FNV1_32_INIT, align 4
  %180 = call i32 @fnv_32_str(i8* %178, i32 %179)
  store i32 %180, i32* %21, align 4
  %181 = call i32 @sx_xlock(i32* @shm_dict_lock)
  %182 = load i8*, i8** %17, align 8
  %183 = load i32, i32* %21, align 4
  %184 = call %struct.shmfd* @shm_lookup(i8* %182, i32 %183)
  store %struct.shmfd* %184, %struct.shmfd** %15, align 8
  %185 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %186 = icmp eq %struct.shmfd* %185, null
  br i1 %186, label %187, label %211

187:                                              ; preds = %175
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @O_CREAT, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %187
  %193 = load %struct.thread*, %struct.thread** %8, align 8
  %194 = getelementptr inbounds %struct.thread, %struct.thread* %193, i32 0, i32 1
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = load i32, i32* %22, align 4
  %197 = call %struct.shmfd* @shm_alloc(%struct.TYPE_10__* %195, i32 %196)
  store %struct.shmfd* %197, %struct.shmfd** %15, align 8
  %198 = load i32, i32* %13, align 4
  %199 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %200 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 4
  %201 = load i8*, i8** %17, align 8
  %202 = load i32, i32* %21, align 4
  %203 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %204 = call i32 @shm_insert(i8* %201, i32 %202, %struct.shmfd* %203)
  br label %210

205:                                              ; preds = %187
  %206 = load i8*, i8** %17, align 8
  %207 = load i32, i32* @M_SHMFD, align 4
  %208 = call i32 @free(i8* %206, i32 %207)
  %209 = load i32, i32* @ENOENT, align 4
  store i32 %209, i32* %24, align 4
  br label %210

210:                                              ; preds = %205, %192
  br label %304

211:                                              ; preds = %175
  %212 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %213 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %212, i32 0, i32 2
  %214 = load i32, i32* @OFF_MAX, align 4
  %215 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %216 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %215, i32 0, i32 1
  %217 = call i8* @rangelock_wlock(i32* %213, i32 0, i32 %214, i32* %216)
  store i8* %217, i8** %19, align 8
  %218 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %219 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %13, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %13, align 4
  %224 = load i8*, i8** %17, align 8
  %225 = load i32, i32* @M_SHMFD, align 4
  %226 = call i32 @free(i8* %224, i32 %225)
  %227 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %228 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @F_SEAL_SEAL, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %211
  %234 = load i32, i32* %13, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = load i32, i32* @EPERM, align 4
  store i32 %237, i32* %24, align 4
  br label %261

238:                                              ; preds = %233, %211
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @O_CREAT, align 4
  %241 = load i32, i32* @O_EXCL, align 4
  %242 = or i32 %240, %241
  %243 = and i32 %239, %242
  %244 = load i32, i32* @O_CREAT, align 4
  %245 = load i32, i32* @O_EXCL, align 4
  %246 = or i32 %244, %245
  %247 = icmp eq i32 %243, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %238
  %249 = load i32, i32* @EEXIST, align 4
  store i32 %249, i32* %24, align 4
  br label %260

250:                                              ; preds = %238
  %251 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %252 = load %struct.thread*, %struct.thread** %8, align 8
  %253 = getelementptr inbounds %struct.thread, %struct.thread* %252, i32 0, i32 1
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %253, align 8
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* @O_ACCMODE, align 4
  %257 = and i32 %255, %256
  %258 = call i32 @FFLAGS(i32 %257)
  %259 = call i32 @shm_access(%struct.shmfd* %251, %struct.TYPE_10__* %254, i32 %258)
  store i32 %259, i32* %24, align 4
  br label %260

260:                                              ; preds = %250, %248
  br label %261

261:                                              ; preds = %260, %236
  %262 = load i32, i32* %24, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %286

264:                                              ; preds = %261
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* @O_ACCMODE, align 4
  %267 = load i32, i32* @O_TRUNC, align 4
  %268 = or i32 %266, %267
  %269 = and i32 %265, %268
  %270 = load i32, i32* @O_RDWR, align 4
  %271 = load i32, i32* @O_TRUNC, align 4
  %272 = or i32 %270, %271
  %273 = icmp eq i32 %269, %272
  br i1 %273, label %274, label %286

274:                                              ; preds = %264
  %275 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %276 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @VM_OBJECT_WLOCK(i32 %277)
  %279 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %280 = load i8*, i8** %19, align 8
  %281 = call i32 @shm_dotruncate_locked(%struct.shmfd* %279, i32 0, i8* %280)
  store i32 %281, i32* %24, align 4
  %282 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %283 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @VM_OBJECT_WUNLOCK(i32 %284)
  br label %286

286:                                              ; preds = %274, %264, %261
  %287 = load i32, i32* %24, align 4
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %297

289:                                              ; preds = %286
  %290 = load i32, i32* %13, align 4
  %291 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %292 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %293, %290
  store i32 %294, i32* %292, align 4
  %295 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %296 = call i32 @shm_hold(%struct.shmfd* %295)
  br label %297

297:                                              ; preds = %289, %286
  %298 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %299 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %298, i32 0, i32 2
  %300 = load i8*, i8** %19, align 8
  %301 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %302 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %301, i32 0, i32 1
  %303 = call i32 @rangelock_unlock(i32* %299, i8* %300, i32* %302)
  br label %304

304:                                              ; preds = %297, %210
  %305 = call i32 @sx_xunlock(i32* @shm_dict_lock)
  %306 = load i32, i32* %24, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %317

308:                                              ; preds = %304
  %309 = load %struct.thread*, %struct.thread** %8, align 8
  %310 = load %struct.file*, %struct.file** %16, align 8
  %311 = load i32, i32* %23, align 4
  %312 = call i32 @fdclose(%struct.thread* %309, %struct.file* %310, i32 %311)
  %313 = load %struct.file*, %struct.file** %16, align 8
  %314 = load %struct.thread*, %struct.thread** %8, align 8
  %315 = call i32 @fdrop(%struct.file* %313, %struct.thread* %314)
  %316 = load i32, i32* %24, align 4
  store i32 %316, i32* %7, align 4
  br label %335

317:                                              ; preds = %304
  br label %318

318:                                              ; preds = %317, %109
  %319 = load %struct.file*, %struct.file** %16, align 8
  %320 = load i32, i32* %10, align 4
  %321 = load i32, i32* @O_ACCMODE, align 4
  %322 = and i32 %320, %321
  %323 = call i32 @FFLAGS(i32 %322)
  %324 = load i32, i32* @DTYPE_SHM, align 4
  %325 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  %326 = call i32 @finit(%struct.file* %319, i32 %323, i32 %324, %struct.shmfd* %325, i32* @shm_ops)
  %327 = load i32, i32* %23, align 4
  %328 = load %struct.thread*, %struct.thread** %8, align 8
  %329 = getelementptr inbounds %struct.thread, %struct.thread* %328, i32 0, i32 0
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 0
  store i32 %327, i32* %331, align 4
  %332 = load %struct.file*, %struct.file** %16, align 8
  %333 = load %struct.thread*, %struct.thread** %8, align 8
  %334 = call i32 @fdrop(%struct.file* %332, %struct.thread* %333)
  store i32 0, i32* %7, align 4
  br label %335

335:                                              ; preds = %318, %308, %163, %100, %88, %64, %56, %40
  %336 = load i32, i32* %7, align 4
  ret i32 %336
}

declare dso_local i32 @AUDIT_ARG_FFLAGS(i32) #1

declare dso_local i32 @AUDIT_ARG_MODE(i32) #1

declare dso_local i32 @falloc_caps(%struct.thread*, %struct.file**, i32*, i32, %struct.filecaps*) #1

declare dso_local i32 @fdclose(%struct.thread*, %struct.file*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local %struct.shmfd* @shm_alloc(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @copyinstr(i8*, i8*, i64, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @AUDIT_ARG_UPATH1_CANON(i8*) #1

declare dso_local i32 @fnv_32_str(i8*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.shmfd* @shm_lookup(i8*, i32) #1

declare dso_local i32 @shm_insert(i8*, i32, %struct.shmfd*) #1

declare dso_local i8* @rangelock_wlock(i32*, i32, i32, i32*) #1

declare dso_local i32 @shm_access(%struct.shmfd*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @FFLAGS(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32 @shm_dotruncate_locked(%struct.shmfd*, i32, i8*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i32 @shm_hold(%struct.shmfd*) #1

declare dso_local i32 @rangelock_unlock(i32*, i8*, i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.shmfd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
