; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_fork1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fork.c_fork1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.thread = type { i64, i32, %struct.ucred*, %struct.proc* }
%struct.ucred = type { i32, i32 }
%struct.proc = type { i32, i32*, i32, i32, i32, i32 }
%struct.fork_req = type { i32, i32, i32, i32*, i32, i64*, i32** }
%struct.vmspace = type { i32 }
%struct.file = type { i32 }

@fork1.curfail = internal global i32 0, align 4
@fork1.lastfail = internal global %struct.timeval zeroinitializer, align 4
@RFSTOPPED = common dso_local global i32 0, align 4
@RFFLAGS = common dso_local global i32 0, align 4
@RFTSIGMASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RFTSIGZMB = common dso_local global i32 0, align 4
@RFFDG = common dso_local global i32 0, align 4
@RFCFDG = common dso_local global i32 0, align 4
@_SIG_MAXSIG = common dso_local global i64 0, align 8
@RFPROCDESC = common dso_local global i32 0, align 4
@RFPROC = common dso_local global i32 0, align 4
@PD_ALLOWED_AT_FORK = common dso_local global i32 0, align 4
@nprocs = common dso_local global i32 0, align 4
@maxproc = common dso_local global i32 0, align 4
@PRIV_MAXPROC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@allproc_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"maxproc limit exceeded by uid %u (pid %d); see tuning(7) and login.conf(5)\0A\00", align 1
@kstack_pages = common dso_local global i32 0, align 4
@proc_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RFMEM = common dso_local global i32 0, align 4
@RLIMIT_NPROC = common dso_local global i32 0, align 4
@PRIV_PROC_LIMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fork1(%struct.thread* %0, %struct.fork_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.fork_req*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.vmspace*, align 8
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.fork_req* %1, %struct.fork_req** %5, align 8
  %17 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %18 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %15, align 4
  %20 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %21 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @RFSTOPPED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %2
  %28 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %29 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %28, i32 0, i32 6
  %30 = load i32**, i32*** %29, align 8
  %31 = icmp ne i32** %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %34 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %33, i32 0, i32 5
  %35 = load i64*, i64** %34, align 8
  %36 = icmp eq i64* %35, null
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @MPASS(i32 %39)
  br label %48

41:                                               ; preds = %2
  %42 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %43 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %42, i32 0, i32 6
  %44 = load i32**, i32*** %43, align 8
  %45 = icmp eq i32** %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @MPASS(i32 %46)
  br label %48

48:                                               ; preds = %41, %37
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @RFFLAGS, align 4
  %51 = load i32, i32* @RFTSIGMASK, align 4
  %52 = call i32 @RFTSIGFLAGS(i32 %51)
  %53 = or i32 %50, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %49, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %3, align 4
  br label %388

59:                                               ; preds = %48
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @RFTSIGMASK, align 4
  %62 = call i32 @RFTSIGFLAGS(i32 %61)
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @RFTSIGZMB, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %3, align 4
  br label %388

72:                                               ; preds = %65, %59
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @RFFDG, align 4
  %75 = load i32, i32* @RFCFDG, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = load i32, i32* @RFFDG, align 4
  %79 = load i32, i32* @RFCFDG, align 4
  %80 = or i32 %78, %79
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %3, align 4
  br label %388

84:                                               ; preds = %72
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* @RFTSIGZMB, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* %15, align 4
  %91 = call i64 @RFTSIGNUM(i32 %90)
  %92 = load i64, i64* @_SIG_MAXSIG, align 8
  %93 = icmp sgt i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %3, align 4
  br label %388

96:                                               ; preds = %89, %84
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @RFPROCDESC, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %96
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @RFPROC, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @EINVAL, align 4
  store i32 %107, i32* %3, align 4
  br label %388

108:                                              ; preds = %101
  %109 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %110 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @EINVAL, align 4
  store i32 %114, i32* %3, align 4
  br label %388

115:                                              ; preds = %108
  %116 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %117 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @PD_ALLOWED_AT_FORK, align 4
  %120 = xor i32 %119, -1
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i32, i32* @EINVAL, align 4
  store i32 %124, i32* %3, align 4
  br label %388

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %96
  %127 = load %struct.thread*, %struct.thread** %4, align 8
  %128 = getelementptr inbounds %struct.thread, %struct.thread* %127, i32 0, i32 3
  %129 = load %struct.proc*, %struct.proc** %128, align 8
  store %struct.proc* %129, %struct.proc** %6, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* @RFPROC, align 4
  %132 = and i32 %130, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %126
  %135 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %136 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %135, i32 0, i32 6
  %137 = load i32**, i32*** %136, align 8
  %138 = icmp ne i32** %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %141 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %140, i32 0, i32 6
  %142 = load i32**, i32*** %141, align 8
  store i32* null, i32** %142, align 8
  br label %153

143:                                              ; preds = %134
  %144 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %145 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %144, i32 0, i32 5
  %146 = load i64*, i64** %145, align 8
  %147 = icmp ne i64* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %150 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %149, i32 0, i32 5
  %151 = load i64*, i64** %150, align 8
  store i64 0, i64* %151, align 8
  br label %152

152:                                              ; preds = %148, %143
  br label %153

153:                                              ; preds = %152, %139
  %154 = load %struct.thread*, %struct.thread** %4, align 8
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @fork_norfproc(%struct.thread* %154, i32 %155)
  store i32 %156, i32* %3, align 4
  br label %388

157:                                              ; preds = %126
  store %struct.file* null, %struct.file** %11, align 8
  store %struct.proc* null, %struct.proc** %7, align 8
  store %struct.vmspace* null, %struct.vmspace** %9, align 8
  %158 = call i32 @atomic_fetchadd_int(i32* @nprocs, i32 1)
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* @maxproc, align 4
  %162 = sub nsw i32 %161, 10
  %163 = icmp sge i32 %160, %162
  br i1 %163, label %164, label %193

164:                                              ; preds = %157
  %165 = load %struct.thread*, %struct.thread** %4, align 8
  %166 = getelementptr inbounds %struct.thread, %struct.thread* %165, i32 0, i32 2
  %167 = load %struct.ucred*, %struct.ucred** %166, align 8
  %168 = load i32, i32* @PRIV_MAXPROC, align 4
  %169 = call i64 @priv_check_cred(%struct.ucred* %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %164
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* @maxproc, align 4
  %174 = icmp sge i32 %172, %173
  br i1 %174, label %175, label %192

175:                                              ; preds = %171, %164
  %176 = load i32, i32* @EAGAIN, align 4
  store i32 %176, i32* %13, align 4
  %177 = call i32 @sx_xlock(i32* @allproc_lock)
  %178 = call i64 @ppsratecheck(%struct.timeval* @fork1.lastfail, i32* @fork1.curfail, i32 1)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %175
  %181 = load %struct.thread*, %struct.thread** %4, align 8
  %182 = getelementptr inbounds %struct.thread, %struct.thread* %181, i32 0, i32 2
  %183 = load %struct.ucred*, %struct.ucred** %182, align 8
  %184 = getelementptr inbounds %struct.ucred, %struct.ucred* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.proc*, %struct.proc** %6, align 8
  %187 = getelementptr inbounds %struct.proc, %struct.proc* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %185, i32 %188)
  br label %190

190:                                              ; preds = %180, %175
  %191 = call i32 @sx_xunlock(i32* @allproc_lock)
  br label %354

192:                                              ; preds = %171
  br label %193

193:                                              ; preds = %192, %157
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* @RFPROCDESC, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %214

198:                                              ; preds = %193
  %199 = load %struct.thread*, %struct.thread** %4, align 8
  %200 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %201 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %204 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %207 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @procdesc_falloc(%struct.thread* %199, %struct.file** %11, i32* %202, i32 %205, i32 %208)
  store i32 %209, i32* %13, align 4
  %210 = load i32, i32* %13, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %198
  br label %354

213:                                              ; preds = %198
  br label %214

214:                                              ; preds = %213, %193
  store i64 0, i64* %12, align 8
  %215 = load i32, i32* %16, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = load i32, i32* @kstack_pages, align 4
  store i32 %218, i32* %16, align 4
  br label %219

219:                                              ; preds = %217, %214
  %220 = load i32, i32* @proc_zone, align 4
  %221 = load i32, i32* @M_WAITOK, align 4
  %222 = call %struct.proc* @uma_zalloc(i32 %220, i32 %221)
  store %struct.proc* %222, %struct.proc** %7, align 8
  %223 = load %struct.proc*, %struct.proc** %7, align 8
  %224 = call %struct.thread* @FIRST_THREAD_IN_PROC(%struct.proc* %223)
  store %struct.thread* %224, %struct.thread** %8, align 8
  %225 = load %struct.thread*, %struct.thread** %8, align 8
  %226 = icmp eq %struct.thread* %225, null
  br i1 %226, label %227, label %238

227:                                              ; preds = %219
  %228 = load i32, i32* %16, align 4
  %229 = call %struct.thread* @thread_alloc(i32 %228)
  store %struct.thread* %229, %struct.thread** %8, align 8
  %230 = load %struct.thread*, %struct.thread** %8, align 8
  %231 = icmp eq %struct.thread* %230, null
  br i1 %231, label %232, label %234

232:                                              ; preds = %227
  %233 = load i32, i32* @ENOMEM, align 4
  store i32 %233, i32* %13, align 4
  br label %354

234:                                              ; preds = %227
  %235 = load %struct.proc*, %struct.proc** %7, align 8
  %236 = load %struct.thread*, %struct.thread** %8, align 8
  %237 = call i32 @proc_linkup(%struct.proc* %235, %struct.thread* %236)
  br label %266

238:                                              ; preds = %219
  %239 = load %struct.thread*, %struct.thread** %8, align 8
  %240 = getelementptr inbounds %struct.thread, %struct.thread* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %249, label %243

243:                                              ; preds = %238
  %244 = load %struct.thread*, %struct.thread** %8, align 8
  %245 = getelementptr inbounds %struct.thread, %struct.thread* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %16, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %265

249:                                              ; preds = %243, %238
  %250 = load %struct.thread*, %struct.thread** %8, align 8
  %251 = getelementptr inbounds %struct.thread, %struct.thread* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = load %struct.thread*, %struct.thread** %8, align 8
  %256 = call i32 @vm_thread_dispose(%struct.thread* %255)
  br label %257

257:                                              ; preds = %254, %249
  %258 = load %struct.thread*, %struct.thread** %8, align 8
  %259 = load i32, i32* %16, align 4
  %260 = call i32 @thread_alloc_stack(%struct.thread* %258, i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %257
  %263 = load i32, i32* @ENOMEM, align 4
  store i32 %263, i32* %13, align 4
  br label %354

264:                                              ; preds = %257
  br label %265

265:                                              ; preds = %264, %243
  br label %266

266:                                              ; preds = %265, %234
  %267 = load i32, i32* %15, align 4
  %268 = load i32, i32* @RFMEM, align 4
  %269 = and i32 %267, %268
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %289

271:                                              ; preds = %266
  %272 = load %struct.proc*, %struct.proc** %6, align 8
  %273 = getelementptr inbounds %struct.proc, %struct.proc* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 4
  %275 = call %struct.vmspace* @vmspace_fork(i32 %274, i64* %12)
  store %struct.vmspace* %275, %struct.vmspace** %9, align 8
  %276 = load %struct.vmspace*, %struct.vmspace** %9, align 8
  %277 = icmp eq %struct.vmspace* %276, null
  br i1 %277, label %278, label %280

278:                                              ; preds = %271
  %279 = load i32, i32* @ENOMEM, align 4
  store i32 %279, i32* %13, align 4
  br label %354

280:                                              ; preds = %271
  %281 = load i64, i64* %12, align 8
  %282 = call i32 @swap_reserve(i64 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %280
  %285 = load i64, i64* %12, align 8
  %286 = call i32 @swap_reserve_force(i64 %285)
  %287 = load i32, i32* @ENOMEM, align 4
  store i32 %287, i32* %13, align 4
  br label %354

288:                                              ; preds = %280
  br label %290

289:                                              ; preds = %266
  store %struct.vmspace* null, %struct.vmspace** %9, align 8
  br label %290

290:                                              ; preds = %289, %288
  %291 = load %struct.proc*, %struct.proc** %7, align 8
  %292 = load %struct.thread*, %struct.thread** %4, align 8
  %293 = getelementptr inbounds %struct.thread, %struct.thread* %292, i32 0, i32 2
  %294 = load %struct.ucred*, %struct.ucred** %293, align 8
  %295 = call i32 @crhold(%struct.ucred* %294)
  %296 = call i32 @proc_set_cred_init(%struct.proc* %291, i32 %295)
  %297 = load %struct.proc*, %struct.proc** %6, align 8
  %298 = load %struct.proc*, %struct.proc** %7, align 8
  %299 = call i32 @racct_proc_fork(%struct.proc* %297, %struct.proc* %298)
  store i32 %299, i32* %13, align 4
  %300 = load i32, i32* %13, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %290
  %303 = load i32, i32* @EAGAIN, align 4
  store i32 %303, i32* %13, align 4
  br label %347

304:                                              ; preds = %290
  %305 = load %struct.proc*, %struct.proc** %7, align 8
  %306 = getelementptr inbounds %struct.proc, %struct.proc* %305, i32 0, i32 3
  %307 = call i32 @knlist_alloc(i32* %306)
  %308 = load %struct.proc*, %struct.proc** %7, align 8
  %309 = getelementptr inbounds %struct.proc, %struct.proc* %308, i32 0, i32 4
  store i32 %307, i32* %309, align 8
  %310 = load %struct.proc*, %struct.proc** %7, align 8
  %311 = getelementptr inbounds %struct.proc, %struct.proc* %310, i32 0, i32 2
  %312 = call i32 @STAILQ_INIT(i32* %311)
  %313 = load %struct.thread*, %struct.thread** %4, align 8
  %314 = getelementptr inbounds %struct.thread, %struct.thread* %313, i32 0, i32 2
  %315 = load %struct.ucred*, %struct.ucred** %314, align 8
  store %struct.ucred* %315, %struct.ucred** %10, align 8
  %316 = load %struct.ucred*, %struct.ucred** %10, align 8
  %317 = getelementptr inbounds %struct.ucred, %struct.ucred* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.thread*, %struct.thread** %4, align 8
  %320 = load i32, i32* @RLIMIT_NPROC, align 4
  %321 = call i32 @lim_cur(%struct.thread* %319, i32 %320)
  %322 = call i32 @chgproccnt(i32 %318, i32 1, i32 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %335, label %324

324:                                              ; preds = %304
  %325 = load %struct.ucred*, %struct.ucred** %10, align 8
  %326 = load i32, i32* @PRIV_PROC_LIMIT, align 4
  %327 = call i64 @priv_check_cred(%struct.ucred* %325, i32 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %324
  br label %343

330:                                              ; preds = %324
  %331 = load %struct.ucred*, %struct.ucred** %10, align 8
  %332 = getelementptr inbounds %struct.ucred, %struct.ucred* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @chgproccnt(i32 %333, i32 1, i32 0)
  br label %335

335:                                              ; preds = %330, %304
  %336 = load %struct.thread*, %struct.thread** %4, align 8
  %337 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %338 = load %struct.proc*, %struct.proc** %7, align 8
  %339 = load %struct.thread*, %struct.thread** %8, align 8
  %340 = load %struct.vmspace*, %struct.vmspace** %9, align 8
  %341 = load %struct.file*, %struct.file** %11, align 8
  %342 = call i32 @do_fork(%struct.thread* %336, %struct.fork_req* %337, %struct.proc* %338, %struct.thread* %339, %struct.vmspace* %340, %struct.file* %341)
  store i32 0, i32* %3, align 4
  br label %388

343:                                              ; preds = %329
  %344 = load i32, i32* @EAGAIN, align 4
  store i32 %344, i32* %13, align 4
  %345 = load %struct.proc*, %struct.proc** %7, align 8
  %346 = call i32 @racct_proc_exit(%struct.proc* %345)
  br label %347

347:                                              ; preds = %343, %302
  %348 = load %struct.proc*, %struct.proc** %7, align 8
  %349 = getelementptr inbounds %struct.proc, %struct.proc* %348, i32 0, i32 1
  %350 = load i32*, i32** %349, align 8
  %351 = call i32 @crfree(i32* %350)
  %352 = load %struct.proc*, %struct.proc** %7, align 8
  %353 = getelementptr inbounds %struct.proc, %struct.proc* %352, i32 0, i32 1
  store i32* null, i32** %353, align 8
  br label %354

354:                                              ; preds = %347, %284, %278, %262, %232, %212, %190
  %355 = load %struct.vmspace*, %struct.vmspace** %9, align 8
  %356 = icmp ne %struct.vmspace* %355, null
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  %358 = load %struct.vmspace*, %struct.vmspace** %9, align 8
  %359 = call i32 @vmspace_free(%struct.vmspace* %358)
  br label %360

360:                                              ; preds = %357, %354
  %361 = load i32, i32* @proc_zone, align 4
  %362 = load %struct.proc*, %struct.proc** %7, align 8
  %363 = call i32 @uma_zfree(i32 %361, %struct.proc* %362)
  %364 = load i32, i32* %15, align 4
  %365 = load i32, i32* @RFPROCDESC, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %382

368:                                              ; preds = %360
  %369 = load %struct.file*, %struct.file** %11, align 8
  %370 = icmp ne %struct.file* %369, null
  br i1 %370, label %371, label %382

371:                                              ; preds = %368
  %372 = load %struct.thread*, %struct.thread** %4, align 8
  %373 = load %struct.file*, %struct.file** %11, align 8
  %374 = load %struct.fork_req*, %struct.fork_req** %5, align 8
  %375 = getelementptr inbounds %struct.fork_req, %struct.fork_req* %374, i32 0, i32 3
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @fdclose(%struct.thread* %372, %struct.file* %373, i32 %377)
  %379 = load %struct.file*, %struct.file** %11, align 8
  %380 = load %struct.thread*, %struct.thread** %4, align 8
  %381 = call i32 @fdrop(%struct.file* %379, %struct.thread* %380)
  br label %382

382:                                              ; preds = %371, %368, %360
  %383 = call i32 @atomic_add_int(i32* @nprocs, i32 -1)
  %384 = load i32, i32* @hz, align 4
  %385 = sdiv i32 %384, 2
  %386 = call i32 @pause(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %385)
  %387 = load i32, i32* %13, align 4
  store i32 %387, i32* %3, align 4
  br label %388

388:                                              ; preds = %382, %335, %153, %123, %113, %106, %94, %82, %70, %57
  %389 = load i32, i32* %3, align 4
  ret i32 %389
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @RFTSIGFLAGS(i32) #1

declare dso_local i64 @RFTSIGNUM(i32) #1

declare dso_local i32 @fork_norfproc(%struct.thread*, i32) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i64 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i64 @ppsratecheck(%struct.timeval*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @procdesc_falloc(%struct.thread*, %struct.file**, i32*, i32, i32) #1

declare dso_local %struct.proc* @uma_zalloc(i32, i32) #1

declare dso_local %struct.thread* @FIRST_THREAD_IN_PROC(%struct.proc*) #1

declare dso_local %struct.thread* @thread_alloc(i32) #1

declare dso_local i32 @proc_linkup(%struct.proc*, %struct.thread*) #1

declare dso_local i32 @vm_thread_dispose(%struct.thread*) #1

declare dso_local i32 @thread_alloc_stack(%struct.thread*, i32) #1

declare dso_local %struct.vmspace* @vmspace_fork(i32, i64*) #1

declare dso_local i32 @swap_reserve(i64) #1

declare dso_local i32 @swap_reserve_force(i64) #1

declare dso_local i32 @proc_set_cred_init(%struct.proc*, i32) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local i32 @racct_proc_fork(%struct.proc*, %struct.proc*) #1

declare dso_local i32 @knlist_alloc(i32*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @chgproccnt(i32, i32, i32) #1

declare dso_local i32 @lim_cur(%struct.thread*, i32) #1

declare dso_local i32 @do_fork(%struct.thread*, %struct.fork_req*, %struct.proc*, %struct.thread*, %struct.vmspace*, %struct.file*) #1

declare dso_local i32 @racct_proc_exit(%struct.proc*) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @vmspace_free(%struct.vmspace*) #1

declare dso_local i32 @uma_zfree(i32, %struct.proc*) #1

declare dso_local i32 @fdclose(%struct.thread*, %struct.file*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
