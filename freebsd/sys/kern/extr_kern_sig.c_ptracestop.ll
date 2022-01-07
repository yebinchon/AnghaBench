; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_ptracestop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sig.c_ptracestop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32, i32*, i32, %struct.proc* }
%struct.proc = type { i32, i32, i32, %struct.thread*, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@P_WEXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Stopping exiting process\00", align 1
@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Stopping for traced signal\00", align 1
@KSI_PTRACE = common dso_local global i32 0, align 4
@TDB_XSIG = common dso_local global i32 0, align 4
@KTR_PTRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"ptracestop: tid %d (pid %d) flags %#x sig %d\00", align 1
@P_TRACED = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@P_SINGLE_EXIT = common dso_local global i32 0, align 4
@TDB_EXIT = common dso_local global i32 0, align 4
@TDB_FSTP = common dso_local global i32 0, align 4
@P2_PTRACE_FSTP = common dso_local global i32 0, align 4
@P_STOPPED_SIG = common dso_local global i32 0, align 4
@P_STOPPED_TRACE = common dso_local global i32 0, align 4
@TDB_STOPATFORK = common dso_local global i32 0, align 4
@TDB_SUSPEND = common dso_local global i32 0, align 4
@KSI_HEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptracestop(%struct.thread* %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.thread*, %struct.thread** %5, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 5
  %14 = load %struct.proc*, %struct.proc** %13, align 8
  store %struct.proc* %14, %struct.proc** %8, align 8
  %15 = load %struct.proc*, %struct.proc** %8, align 8
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %15, i32 %16)
  %18 = load %struct.proc*, %struct.proc** %8, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @P_WEXIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @WARN_GIANTOK, align 4
  %28 = load i32, i32* @WARN_SLEEPOK, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.proc*, %struct.proc** %8, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = call i32 @WITNESS_WARN(i32 %29, i32* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.thread*, %struct.thread** %5, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = icmp eq %struct.TYPE_8__* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %3
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @KSI_PTRACE, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %230

46:                                               ; preds = %39, %3
  %47 = load i32, i32* @TDB_XSIG, align 4
  %48 = load %struct.thread*, %struct.thread** %5, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @KTR_PTRACE, align 4
  %53 = load %struct.thread*, %struct.thread** %5, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.proc*, %struct.proc** %8, align 8
  %57 = getelementptr inbounds %struct.proc, %struct.proc* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.thread*, %struct.thread** %5, align 8
  %60 = getelementptr inbounds %struct.thread, %struct.thread* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @CTR4(i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %58, i32 %61, i32 %62)
  %64 = load %struct.proc*, %struct.proc** %8, align 8
  %65 = call i32 @PROC_SLOCK(%struct.proc* %64)
  br label %66

66:                                               ; preds = %226, %46
  %67 = load %struct.proc*, %struct.proc** %8, align 8
  %68 = getelementptr inbounds %struct.proc, %struct.proc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @P_TRACED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.thread*, %struct.thread** %5, align 8
  %75 = getelementptr inbounds %struct.thread, %struct.thread* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @TDB_XSIG, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %73, %66
  %81 = phi i1 [ false, %66 ], [ %79, %73 ]
  br i1 %81, label %82, label %227

82:                                               ; preds = %80
  %83 = load %struct.proc*, %struct.proc** %8, align 8
  %84 = call i64 @P_KILLED(%struct.proc* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load i32, i32* @TDB_XSIG, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.thread*, %struct.thread** %5, align 8
  %90 = getelementptr inbounds %struct.thread, %struct.thread* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @SIGKILL, align 4
  %94 = load %struct.thread*, %struct.thread** %5, align 8
  %95 = getelementptr inbounds %struct.thread, %struct.thread* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.proc*, %struct.proc** %8, align 8
  %97 = getelementptr inbounds %struct.proc, %struct.proc* %96, i32 0, i32 4
  store i64 0, i64* %97, align 8
  br label %227

98:                                               ; preds = %82
  %99 = load %struct.proc*, %struct.proc** %8, align 8
  %100 = getelementptr inbounds %struct.proc, %struct.proc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @P_SINGLE_EXIT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %98
  %106 = load %struct.thread*, %struct.thread** %5, align 8
  %107 = getelementptr inbounds %struct.thread, %struct.thread* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @TDB_EXIT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %105
  %113 = load i32, i32* @TDB_XSIG, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.thread*, %struct.thread** %5, align 8
  %116 = getelementptr inbounds %struct.thread, %struct.thread* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.proc*, %struct.proc** %8, align 8
  %120 = call i32 @PROC_SUNLOCK(%struct.proc* %119)
  store i32 0, i32* %4, align 4
  br label %296

121:                                              ; preds = %105, %98
  %122 = load %struct.thread*, %struct.thread** %5, align 8
  %123 = getelementptr inbounds %struct.thread, %struct.thread* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @TDB_FSTP, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %121
  %129 = load %struct.proc*, %struct.proc** %8, align 8
  %130 = getelementptr inbounds %struct.proc, %struct.proc* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @P2_PTRACE_FSTP, align 4
  %133 = and i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %175

135:                                              ; preds = %128
  %136 = load %struct.proc*, %struct.proc** %8, align 8
  %137 = getelementptr inbounds %struct.proc, %struct.proc* %136, i32 0, i32 3
  %138 = load %struct.thread*, %struct.thread** %137, align 8
  %139 = icmp eq %struct.thread* %138, null
  br i1 %139, label %140, label %175

140:                                              ; preds = %135, %121
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.proc*, %struct.proc** %8, align 8
  %143 = getelementptr inbounds %struct.proc, %struct.proc* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.thread*, %struct.thread** %5, align 8
  %145 = load %struct.proc*, %struct.proc** %8, align 8
  %146 = getelementptr inbounds %struct.proc, %struct.proc* %145, i32 0, i32 3
  store %struct.thread* %144, %struct.thread** %146, align 8
  %147 = load %struct.thread*, %struct.thread** %5, align 8
  %148 = getelementptr inbounds %struct.thread, %struct.thread* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %140
  %152 = load i32, i32* @TDB_FSTP, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.thread*, %struct.thread** %5, align 8
  %155 = getelementptr inbounds %struct.thread, %struct.thread* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %151, %140
  %159 = load i32, i32* @P2_PTRACE_FSTP, align 4
  %160 = xor i32 %159, -1
  %161 = load %struct.proc*, %struct.proc** %8, align 8
  %162 = getelementptr inbounds %struct.proc, %struct.proc* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* @P_STOPPED_SIG, align 4
  %166 = load i32, i32* @P_STOPPED_TRACE, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.proc*, %struct.proc** %8, align 8
  %169 = getelementptr inbounds %struct.proc, %struct.proc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.thread*, %struct.thread** %5, align 8
  %173 = load %struct.proc*, %struct.proc** %8, align 8
  %174 = call i32 @sig_suspend_threads(%struct.thread* %172, %struct.proc* %173, i32 0)
  br label %175

175:                                              ; preds = %158, %135, %128
  %176 = load %struct.thread*, %struct.thread** %5, align 8
  %177 = getelementptr inbounds %struct.thread, %struct.thread* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @TDB_STOPATFORK, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %175
  %183 = load i32, i32* @TDB_STOPATFORK, align 4
  %184 = xor i32 %183, -1
  %185 = load %struct.thread*, %struct.thread** %5, align 8
  %186 = getelementptr inbounds %struct.thread, %struct.thread* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %182, %175
  br label %190

190:                                              ; preds = %225, %189
  %191 = load %struct.thread*, %struct.thread** %5, align 8
  %192 = load %struct.proc*, %struct.proc** %8, align 8
  %193 = call i32 @thread_suspend_switch(%struct.thread* %191, %struct.proc* %192)
  %194 = load %struct.proc*, %struct.proc** %8, align 8
  %195 = getelementptr inbounds %struct.proc, %struct.proc* %194, i32 0, i32 3
  %196 = load %struct.thread*, %struct.thread** %195, align 8
  %197 = load %struct.thread*, %struct.thread** %5, align 8
  %198 = icmp eq %struct.thread* %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %190
  %200 = load %struct.proc*, %struct.proc** %8, align 8
  %201 = getelementptr inbounds %struct.proc, %struct.proc* %200, i32 0, i32 3
  store %struct.thread* null, %struct.thread** %201, align 8
  br label %202

202:                                              ; preds = %199, %190
  %203 = load %struct.proc*, %struct.proc** %8, align 8
  %204 = getelementptr inbounds %struct.proc, %struct.proc* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @P_TRACED, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %202
  br label %227

210:                                              ; preds = %202
  %211 = load %struct.thread*, %struct.thread** %5, align 8
  %212 = getelementptr inbounds %struct.thread, %struct.thread* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @TDB_SUSPEND, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %210
  %218 = load %struct.proc*, %struct.proc** %8, align 8
  %219 = getelementptr inbounds %struct.proc, %struct.proc* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @P_SINGLE_EXIT, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  br label %227

225:                                              ; preds = %217
  br label %190

226:                                              ; preds = %210
  br label %66

227:                                              ; preds = %224, %209, %86, %80
  %228 = load %struct.proc*, %struct.proc** %8, align 8
  %229 = call i32 @PROC_SUNLOCK(%struct.proc* %228)
  br label %230

230:                                              ; preds = %227, %39
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %232 = icmp ne %struct.TYPE_8__* %231, null
  br i1 %232, label %233, label %255

233:                                              ; preds = %230
  %234 = load i32, i32* %6, align 4
  %235 = load %struct.thread*, %struct.thread** %5, align 8
  %236 = getelementptr inbounds %struct.thread, %struct.thread* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp eq i32 %234, %237
  br i1 %238, label %239, label %255

239:                                              ; preds = %233
  %240 = load i32, i32* @KSI_HEAD, align 4
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 4
  %245 = load %struct.thread*, %struct.thread** %5, align 8
  %246 = getelementptr inbounds %struct.thread, %struct.thread* %245, i32 0, i32 2
  %247 = load i32, i32* %6, align 4
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %249 = call i64 @sigqueue_add(i32* %246, i32 %247, %struct.TYPE_8__* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %239
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  store i32 0, i32* %253, align 4
  br label %254

254:                                              ; preds = %251, %239
  br label %292

255:                                              ; preds = %233, %230
  %256 = load %struct.thread*, %struct.thread** %5, align 8
  %257 = getelementptr inbounds %struct.thread, %struct.thread* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %291

260:                                              ; preds = %255
  %261 = call i32 @ksiginfo_init(%struct.TYPE_8__* %10)
  %262 = load %struct.thread*, %struct.thread** %5, align 8
  %263 = getelementptr inbounds %struct.thread, %struct.thread* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i32 %264, i32* %265, align 4
  %266 = load i32, i32* @KSI_PTRACE, align 4
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, %266
  store i32 %269, i32* %267, align 4
  %270 = load %struct.thread*, %struct.thread** %5, align 8
  %271 = getelementptr inbounds %struct.thread, %struct.thread* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @sigprop(i32 %272)
  store i32 %273, i32* %11, align 4
  %274 = load %struct.proc*, %struct.proc** %8, align 8
  %275 = load %struct.thread*, %struct.thread** %5, align 8
  %276 = getelementptr inbounds %struct.thread, %struct.thread* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %11, align 4
  %279 = call %struct.thread* @sigtd(%struct.proc* %274, i32 %277, i32 %278)
  store %struct.thread* %279, %struct.thread** %9, align 8
  %280 = load %struct.proc*, %struct.proc** %8, align 8
  %281 = load %struct.thread*, %struct.thread** %9, align 8
  %282 = load %struct.thread*, %struct.thread** %5, align 8
  %283 = getelementptr inbounds %struct.thread, %struct.thread* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @tdsendsignal(%struct.proc* %280, %struct.thread* %281, i32 %284, %struct.TYPE_8__* %10)
  %286 = load %struct.thread*, %struct.thread** %5, align 8
  %287 = load %struct.thread*, %struct.thread** %9, align 8
  %288 = icmp ne %struct.thread* %286, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %260
  store i32 0, i32* %4, align 4
  br label %296

290:                                              ; preds = %260
  br label %291

291:                                              ; preds = %290, %255
  br label %292

292:                                              ; preds = %291, %254
  %293 = load %struct.thread*, %struct.thread** %5, align 8
  %294 = getelementptr inbounds %struct.thread, %struct.thread* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  store i32 %295, i32* %4, align 4
  br label %296

296:                                              ; preds = %292, %289, %112
  %297 = load i32, i32* %4, align 4
  ret i32 %297
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i32 @CTR4(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @PROC_SLOCK(%struct.proc*) #1

declare dso_local i64 @P_KILLED(%struct.proc*) #1

declare dso_local i32 @PROC_SUNLOCK(%struct.proc*) #1

declare dso_local i32 @sig_suspend_threads(%struct.thread*, %struct.proc*, i32) #1

declare dso_local i32 @thread_suspend_switch(%struct.thread*, %struct.proc*) #1

declare dso_local i64 @sigqueue_add(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ksiginfo_init(%struct.TYPE_8__*) #1

declare dso_local i32 @sigprop(i32) #1

declare dso_local %struct.thread* @sigtd(%struct.proc*, i32, i32) #1

declare dso_local i32 @tdsendsignal(%struct.proc*, %struct.thread*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
