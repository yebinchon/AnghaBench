; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_run_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_run_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.TYPE_28__ = type { i64, i64, i64, i64, i64, i32, i32, i32, i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* (%struct.TYPE_26__*, %struct.svc_req*)* }
%struct.TYPE_26__ = type { i32, i32, i32, %struct.TYPE_25__*, %struct.TYPE_27__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_26__*, i64 }
%struct.svc_req = type { i64, %struct.TYPE_26__* }

@.str = private unnamed_addr constant [8 x i8] c"st_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"rpcsvc\00", align 1
@SVCPOOL_THREADSTARTING = common dso_local global i64 0, align 8
@SVCPOOL_ACTIVE = common dso_local global i64 0, align 8
@SVCPOOL_CLOSING = common dso_local global i64 0, align 8
@SVCPOOL_THREADWANTED = common dso_local global i64 0, align 8
@time_uptime = common dso_local global i64 0, align 8
@xp_alink = common dso_local global i32 0, align 4
@st_ilink = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"non-signal error %d\00", align 1
@curproc = common dso_local global %struct.proc* null, align 8
@P_TOTAL_STOP = common dso_local global i32 0, align 4
@rq_link = common dso_local global i32 0, align 4
@XPRT_MOREREQS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"stray reqs on exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, i64)* @svc_run_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_run_internal(%struct.TYPE_28__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.svc_req*, align 8
  %11 = alloca %struct.proc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 9
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %16, %struct.TYPE_27__** %5, align 8
  %17 = call %struct.TYPE_26__* @mem_alloc(i32 32)
  store %struct.TYPE_26__* %17, %struct.TYPE_26__** %6, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 1
  %20 = load i32, i32* @MTX_DEF, align 4
  %21 = call i32 @mtx_init(i32* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %20)
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 4
  store %struct.TYPE_27__* %22, %struct.TYPE_27__** %24, align 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 3
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %26, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 2
  %29 = call i32 @STAILQ_INIT(i32* %28)
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 0
  %32 = call i32 @cv_init(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 5
  %35 = call i32 @mtx_lock(i32* %34)
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SVCPOOL_THREADSTARTING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load i64, i64* @SVCPOOL_ACTIVE, align 8
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %2
  br label %46

46:                                               ; preds = %379, %241, %112, %58, %45
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SVCPOOL_CLOSING, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %386

52:                                               ; preds = %46
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SVCPOOL_THREADWANTED, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = load i64, i64* @SVCPOOL_THREADSTARTING, align 8
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* @time_uptime, align 8
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 8
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 5
  %67 = call i32 @mtx_unlock(i32* %66)
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %69 = call i32 @svc_new_thread(%struct.TYPE_28__* %68)
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 5
  %72 = call i32 @mtx_lock(i32* %71)
  br label %46

73:                                               ; preds = %52
  %74 = load i64, i64* @time_uptime, align 8
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i64, i64* @time_uptime, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %84 = call i32 @svc_checkidle(%struct.TYPE_28__* %83)
  br label %85

85:                                               ; preds = %79, %73
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %87, align 8
  store %struct.TYPE_25__* %88, %struct.TYPE_25__** %8, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %90 = icmp ne %struct.TYPE_25__* %89, null
  br i1 %90, label %242, label %91

91:                                               ; preds = %85
  %92 = load i64, i64* %4, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %91
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %386

103:                                              ; preds = %94, %91
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %105 = call i64 @svc_request_space_available(%struct.TYPE_27__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %103
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 6
  %110 = call %struct.TYPE_25__* @TAILQ_FIRST(i32* %109)
  store %struct.TYPE_25__* %110, %struct.TYPE_25__** %8, align 8
  %111 = icmp ne %struct.TYPE_25__* %110, null
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 6
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %116 = load i32, i32* @xp_alink, align 4
  %117 = call i32 @TAILQ_REMOVE(i32* %114, %struct.TYPE_25__* %115, i32 %116)
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %119 = call i32 @SVC_ACQUIRE(%struct.TYPE_25__* %118)
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 1
  store %struct.TYPE_26__* %120, %struct.TYPE_26__** %122, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 3
  store %struct.TYPE_25__* %123, %struct.TYPE_25__** %125, align 8
  br label %46

126:                                              ; preds = %107, %103
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 7
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %130 = load i32, i32* @st_ilink, align 4
  %131 = call i32 @LIST_INSERT_HEAD(i32* %128, %struct.TYPE_26__* %129, i32 %130)
  %132 = load i64, i64* %4, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %126
  %135 = load i64, i64* %4, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %153, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %140, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %137, %126
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 5
  %150 = load i32, i32* @hz, align 4
  %151 = mul nsw i32 5, %150
  %152 = call i32 @cv_timedwait_sig(i32* %147, i32* %149, i32 %151)
  store i32 %152, i32* %13, align 4
  br label %159

153:                                              ; preds = %137, %134
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 5
  %158 = call i32 @cv_wait_sig(i32* %155, i32* %157)
  store i32 %158, i32* %13, align 4
  br label %159

159:                                              ; preds = %153, %145
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %161, align 8
  %163 = icmp eq %struct.TYPE_25__* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %166 = load i32, i32* @st_ilink, align 4
  %167 = call i32 @LIST_REMOVE(%struct.TYPE_26__* %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %159
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* @EWOULDBLOCK, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %190

172:                                              ; preds = %168
  %173 = load i64, i64* %4, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %189, label %175

175:                                              ; preds = %172
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %178, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %175
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %185, align 8
  %187 = icmp ne %struct.TYPE_25__* %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %183
  br label %386

189:                                              ; preds = %183, %175, %172
  br label %241

190:                                              ; preds = %168
  %191 = load i32, i32* %13, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %240

193:                                              ; preds = %190
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* @EINTR, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* @ERESTART, align 4
  %200 = icmp eq i32 %198, %199
  br label %201

201:                                              ; preds = %197, %193
  %202 = phi i1 [ true, %193 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to i8*
  %207 = call i32 @KASSERT(i32 %203, i8* %206)
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 5
  %210 = call i32 @mtx_unlock(i32* %209)
  %211 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %211, %struct.proc** %11, align 8
  %212 = load %struct.proc*, %struct.proc** %11, align 8
  %213 = call i32 @PROC_LOCK(%struct.proc* %212)
  %214 = load %struct.proc*, %struct.proc** %11, align 8
  %215 = call i64 @P_SHOULDSTOP(%struct.proc* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %201
  %218 = load %struct.proc*, %struct.proc** %11, align 8
  %219 = getelementptr inbounds %struct.proc, %struct.proc* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @P_TOTAL_STOP, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %217, %201
  %225 = call i32 @thread_suspend_check(i32 0)
  %226 = load %struct.proc*, %struct.proc** %11, align 8
  %227 = call i32 @PROC_UNLOCK(%struct.proc* %226)
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 5
  %230 = call i32 @mtx_lock(i32* %229)
  br label %239

231:                                              ; preds = %217
  %232 = load %struct.proc*, %struct.proc** %11, align 8
  %233 = call i32 @PROC_UNLOCK(%struct.proc* %232)
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %235 = call i32 @svc_exit(%struct.TYPE_27__* %234)
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 5
  %238 = call i32 @mtx_lock(i32* %237)
  br label %386

239:                                              ; preds = %224
  br label %240

240:                                              ; preds = %239, %190
  br label %241

241:                                              ; preds = %240, %189
  br label %46

242:                                              ; preds = %85
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 5
  %245 = call i32 @mtx_unlock(i32* %244)
  %246 = load i64, i64* @time_uptime, align 8
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 2
  store i64 %246, i64* %248, align 8
  br label %249

249:                                              ; preds = %316, %242
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %251 = call i64 @svc_request_space_available(%struct.TYPE_27__* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %249
  br label %318

254:                                              ; preds = %249
  store %struct.svc_req* null, %struct.svc_req** %10, align 8
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %256 = call i32 @svc_getreq(%struct.TYPE_25__* %255, %struct.svc_req** %10)
  store i32 %256, i32* %9, align 4
  %257 = load %struct.svc_req*, %struct.svc_req** %10, align 8
  %258 = icmp ne %struct.svc_req* %257, null
  br i1 %258, label %259, label %302

259:                                              ; preds = %254
  %260 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %261 = load %struct.svc_req*, %struct.svc_req** %10, align 8
  %262 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @svc_change_space_used(%struct.TYPE_27__* %260, i64 %263)
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_26__* (%struct.TYPE_26__*, %struct.svc_req*)*, %struct.TYPE_26__* (%struct.TYPE_26__*, %struct.svc_req*)** %266, align 8
  %268 = icmp ne %struct.TYPE_26__* (%struct.TYPE_26__*, %struct.svc_req*)* %267, null
  br i1 %268, label %269, label %292

269:                                              ; preds = %259
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_26__* (%struct.TYPE_26__*, %struct.svc_req*)*, %struct.TYPE_26__* (%struct.TYPE_26__*, %struct.svc_req*)** %271, align 8
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %274 = load %struct.svc_req*, %struct.svc_req** %10, align 8
  %275 = call %struct.TYPE_26__* %272(%struct.TYPE_26__* %273, %struct.svc_req* %274)
  store %struct.TYPE_26__* %275, %struct.TYPE_26__** %7, align 8
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %277 = load %struct.svc_req*, %struct.svc_req** %10, align 8
  %278 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %277, i32 0, i32 1
  store %struct.TYPE_26__* %276, %struct.TYPE_26__** %278, align 8
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 2
  %281 = load %struct.svc_req*, %struct.svc_req** %10, align 8
  %282 = load i32, i32* @rq_link, align 4
  %283 = call i32 @STAILQ_INSERT_TAIL(i32* %280, %struct.svc_req* %281, i32 %282)
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 1
  %286 = call i32 @mtx_unlock(i32* %285)
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %289 = icmp ne %struct.TYPE_26__* %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %269
  store %struct.svc_req* null, %struct.svc_req** %10, align 8
  br label %291

291:                                              ; preds = %290, %269
  br label %301

292:                                              ; preds = %259
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %294 = load %struct.svc_req*, %struct.svc_req** %10, align 8
  %295 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %294, i32 0, i32 1
  store %struct.TYPE_26__* %293, %struct.TYPE_26__** %295, align 8
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i32 0, i32 2
  %298 = load %struct.svc_req*, %struct.svc_req** %10, align 8
  %299 = load i32, i32* @rq_link, align 4
  %300 = call i32 @STAILQ_INSERT_TAIL(i32* %297, %struct.svc_req* %298, i32 %299)
  br label %301

301:                                              ; preds = %292, %291
  br label %302

302:                                              ; preds = %301, %254
  br label %303

303:                                              ; preds = %302
  %304 = load %struct.svc_req*, %struct.svc_req** %10, align 8
  %305 = icmp eq %struct.svc_req* %304, null
  br i1 %305, label %306, label %316

306:                                              ; preds = %303
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* @XPRT_MOREREQS, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %316

310:                                              ; preds = %306
  %311 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @SVCPOOL_CLOSING, align 8
  %315 = icmp ne i64 %313, %314
  br label %316

316:                                              ; preds = %310, %306, %303
  %317 = phi i1 [ false, %306 ], [ false, %303 ], [ %315, %310 ]
  br i1 %317, label %249, label %318

318:                                              ; preds = %316, %253
  %319 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %319, i32 0, i32 5
  %321 = call i32 @mtx_lock(i32* %320)
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %322, i32 0, i32 1
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %323, align 8
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %324, i32 0, i32 3
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %325, align 8
  %326 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %345

330:                                              ; preds = %318
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %332 = call i64 @svc_request_space_available(%struct.TYPE_27__* %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %330
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %336 = call i32 @xprt_assignthread(%struct.TYPE_25__* %335)
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %344, label %338

338:                                              ; preds = %334, %330
  %339 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %339, i32 0, i32 6
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %342 = load i32, i32* @xp_alink, align 4
  %343 = call i32 @TAILQ_INSERT_TAIL(i32* %340, %struct.TYPE_25__* %341, i32 %342)
  br label %344

344:                                              ; preds = %338, %334
  br label %345

345:                                              ; preds = %344, %318
  %346 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %346, i32 0, i32 5
  %348 = call i32 @mtx_unlock(i32* %347)
  %349 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %350 = call i32 @SVC_RELEASE(%struct.TYPE_25__* %349)
  %351 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %351, i32 0, i32 1
  %353 = call i32 @mtx_lock(i32* %352)
  br label %354

354:                                              ; preds = %359, %345
  %355 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %355, i32 0, i32 2
  %357 = call %struct.svc_req* @STAILQ_FIRST(i32* %356)
  store %struct.svc_req* %357, %struct.svc_req** %10, align 8
  %358 = icmp ne %struct.svc_req* %357, null
  br i1 %358, label %359, label %379

359:                                              ; preds = %354
  %360 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %360, i32 0, i32 2
  %362 = load i32, i32* @rq_link, align 4
  %363 = call i32 @STAILQ_REMOVE_HEAD(i32* %361, i32 %362)
  %364 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %364, i32 0, i32 1
  %366 = call i32 @mtx_unlock(i32* %365)
  %367 = load %struct.svc_req*, %struct.svc_req** %10, align 8
  %368 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  store i64 %369, i64* %12, align 8
  %370 = load %struct.svc_req*, %struct.svc_req** %10, align 8
  %371 = call i32 @svc_executereq(%struct.svc_req* %370)
  %372 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %373 = load i64, i64* %12, align 8
  %374 = sub nsw i64 0, %373
  %375 = call i32 @svc_change_space_used(%struct.TYPE_27__* %372, i64 %374)
  %376 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %376, i32 0, i32 1
  %378 = call i32 @mtx_lock(i32* %377)
  br label %354

379:                                              ; preds = %354
  %380 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %380, i32 0, i32 1
  %382 = call i32 @mtx_unlock(i32* %381)
  %383 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %383, i32 0, i32 5
  %385 = call i32 @mtx_lock(i32* %384)
  br label %46

386:                                              ; preds = %231, %188, %102, %46
  %387 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %387, i32 0, i32 3
  %389 = load %struct.TYPE_25__*, %struct.TYPE_25__** %388, align 8
  %390 = icmp ne %struct.TYPE_25__* %389, null
  br i1 %390, label %391, label %399

391:                                              ; preds = %386
  %392 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %392, i32 0, i32 3
  %394 = load %struct.TYPE_25__*, %struct.TYPE_25__** %393, align 8
  store %struct.TYPE_25__* %394, %struct.TYPE_25__** %8, align 8
  %395 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %395, i32 0, i32 3
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %396, align 8
  %397 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %398 = call i32 @SVC_RELEASE(%struct.TYPE_25__* %397)
  br label %399

399:                                              ; preds = %391, %386
  %400 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %400, i32 0, i32 2
  %402 = call i32 @STAILQ_EMPTY(i32* %401)
  %403 = call i32 @KASSERT(i32 %402, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %404 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %404, i32 0, i32 1
  %406 = call i32 @mtx_destroy(i32* %405)
  %407 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %408 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %407, i32 0, i32 0
  %409 = call i32 @cv_destroy(i32* %408)
  %410 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %411 = call i32 @mem_free(%struct.TYPE_26__* %410, i32 32)
  %412 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %412, i32 0, i32 2
  %414 = load i64, i64* %413, align 8
  %415 = add nsw i64 %414, -1
  store i64 %415, i64* %413, align 8
  %416 = load i64, i64* %4, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %421, label %418

418:                                              ; preds = %399
  %419 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %420 = call i32 @wakeup(%struct.TYPE_28__* %419)
  br label %421

421:                                              ; preds = %418, %399
  %422 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %423 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %422, i32 0, i32 5
  %424 = call i32 @mtx_unlock(i32* %423)
  ret void
}

declare dso_local %struct.TYPE_26__* @mem_alloc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @svc_new_thread(%struct.TYPE_28__*) #1

declare dso_local i32 @svc_checkidle(%struct.TYPE_28__*) #1

declare dso_local i64 @svc_request_space_available(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_25__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @SVC_ACQUIRE(%struct.TYPE_25__*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @cv_timedwait_sig(i32*, i32*, i32) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i64 @P_SHOULDSTOP(%struct.proc*) #1

declare dso_local i32 @thread_suspend_check(i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @svc_exit(%struct.TYPE_27__*) #1

declare dso_local i32 @svc_getreq(%struct.TYPE_25__*, %struct.svc_req**) #1

declare dso_local i32 @svc_change_space_used(%struct.TYPE_27__*, i64) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.svc_req*, i32) #1

declare dso_local i32 @xprt_assignthread(%struct.TYPE_25__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @SVC_RELEASE(%struct.TYPE_25__*) #1

declare dso_local %struct.svc_req* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @svc_executereq(%struct.svc_req*) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @mem_free(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @wakeup(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
