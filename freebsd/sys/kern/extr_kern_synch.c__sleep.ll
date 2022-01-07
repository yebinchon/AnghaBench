; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_synch.c__sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_synch.c__sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.lock_object }
%struct.lock_object = type { i32 }
%struct.lock_class = type { i64 (%struct.lock_object*)*, i32, i32 (%struct.lock_object*, i64)* }

@lock_witness = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Sleeping on \22%s\22\00", align 1
@Giant = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"sleeping without a lock\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"_sleep: NULL ident\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"_sleep: curthread not running\00", align 1
@PDROP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"PDROP requires a non-Giant lock\00", align 1
@PCATCH = common dso_local global i32 0, align 4
@PRIMASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"recursive sleep\00", align 1
@pause_wchan = common dso_local global i32* null, align 8
@MAXCPU = common dso_local global i32 0, align 4
@SLEEPQ_PAUSE = common dso_local global i32 0, align 4
@SLEEPQ_SLEEP = common dso_local global i32 0, align 4
@SLEEPQ_INTERRUPTIBLE = common dso_local global i32 0, align 4
@KTR_PROC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"sleep: thread %ld (pid %ld, %s) on %s (%p)\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@LC_SLEEPABLE = common dso_local global i32 0, align 4
@KTR_CSW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_sleep(i8* %0, %struct.lock_object* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lock_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.thread*, align 8
  %17 = alloca %struct.lock_class*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store %struct.lock_object* %1, %struct.lock_object** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load i32, i32* @lock_witness, align 4
  %24 = call i32 @WITNESS_SAVE_DECL(i32 %23)
  %25 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %25, %struct.thread** %16, align 8
  %26 = load i32, i32* @WARN_GIANTOK, align 4
  %27 = load i32, i32* @WARN_SLEEPOK, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 @WITNESS_WARN(i32 %28, %struct.lock_object* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %7
  %35 = call i64 @mtx_owned(%struct.TYPE_6__* @Giant)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %39 = icmp ne %struct.lock_object* %38, null
  br label %40

40:                                               ; preds = %37, %34, %7
  %41 = phi i1 [ true, %34 ], [ true, %7 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @KASSERT(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.thread*, %struct.thread** %16, align 8
  %49 = call i32 @TD_IS_RUNNING(%struct.thread* %48)
  %50 = call i32 @KASSERT(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @PDROP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %40
  %56 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %57 = icmp ne %struct.lock_object* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %60 = icmp ne %struct.lock_object* %59, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Giant, i32 0, i32 0)
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i1 [ false, %55 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @KASSERT(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %40
  %66 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %67 = icmp ne %struct.lock_object* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %70 = call %struct.lock_class* @LOCK_CLASS(%struct.lock_object* %69)
  store %struct.lock_class* %70, %struct.lock_class** %17, align 8
  br label %72

71:                                               ; preds = %65
  store %struct.lock_class* null, %struct.lock_class** %17, align 8
  br label %72

72:                                               ; preds = %71, %68
  %73 = load %struct.thread*, %struct.thread** %16, align 8
  %74 = call i64 @SCHEDULER_STOPPED_TD(%struct.thread* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %78 = icmp ne %struct.lock_object* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @PDROP, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.lock_class*, %struct.lock_class** %17, align 8
  %86 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %85, i32 0, i32 0
  %87 = load i64 (%struct.lock_object*)*, i64 (%struct.lock_object*)** %86, align 8
  %88 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %89 = call i64 %87(%struct.lock_object* %88)
  br label %90

90:                                               ; preds = %84, %79, %76
  store i32 0, i32* %8, align 4
  br label %267

91:                                               ; preds = %72
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @PCATCH, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @PRIMASK, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %20, align 4
  %98 = load %struct.thread*, %struct.thread** %16, align 8
  %99 = call i32 @TD_ON_SLEEPQ(%struct.thread* %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @KASSERT(i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %104 = load i8*, i8** %9, align 8
  %105 = bitcast i8* %104 to i32*
  %106 = load i32*, i32** @pause_wchan, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = icmp uge i32* %105, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %91
  %110 = load i8*, i8** %9, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load i32*, i32** @pause_wchan, align 8
  %113 = load i32, i32* @MAXCPU, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = icmp ule i32* %111, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* @SLEEPQ_PAUSE, align 4
  store i32 %119, i32* %22, align 4
  br label %122

120:                                              ; preds = %109, %91
  %121 = load i32, i32* @SLEEPQ_SLEEP, align 4
  store i32 %121, i32* %22, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = load i32, i32* %19, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32, i32* @SLEEPQ_INTERRUPTIBLE, align 4
  %127 = load i32, i32* %22, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %22, align 4
  br label %129

129:                                              ; preds = %125, %122
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 @sleepq_lock(i8* %130)
  %132 = load i32, i32* @KTR_PROC, align 4
  %133 = load %struct.thread*, %struct.thread** %16, align 8
  %134 = getelementptr inbounds %struct.thread, %struct.thread* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.thread*, %struct.thread** %16, align 8
  %137 = getelementptr inbounds %struct.thread, %struct.thread* %136, i32 0, i32 1
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.thread*, %struct.thread** %16, align 8
  %142 = getelementptr inbounds %struct.thread, %struct.thread* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = call i32 @CTR5(i32 %132, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %135, i32 %140, i32 %143, i8* %144, i8* %145)
  %147 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %148 = icmp eq %struct.lock_object* %147, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Giant, i32 0, i32 0)
  br i1 %148, label %149, label %152

149:                                              ; preds = %129
  %150 = load i32, i32* @MA_OWNED, align 4
  %151 = call i32 @mtx_assert(%struct.TYPE_6__* @Giant, i32 %150)
  br label %152

152:                                              ; preds = %149, %129
  %153 = call i32 (...) @DROP_GIANT()
  %154 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %155 = icmp ne %struct.lock_object* %154, null
  br i1 %155, label %156, label %175

156:                                              ; preds = %152
  %157 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %158 = icmp ne %struct.lock_object* %157, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Giant, i32 0, i32 0)
  br i1 %158, label %159, label %175

159:                                              ; preds = %156
  %160 = load %struct.lock_class*, %struct.lock_class** %17, align 8
  %161 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @LC_SLEEPABLE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %159
  %167 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %168 = load i32, i32* @lock_witness, align 4
  %169 = call i32 @WITNESS_SAVE(%struct.lock_object* %167, i32 %168)
  %170 = load %struct.lock_class*, %struct.lock_class** %17, align 8
  %171 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %170, i32 0, i32 0
  %172 = load i64 (%struct.lock_object*)*, i64 (%struct.lock_object*)** %171, align 8
  %173 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %174 = call i64 %172(%struct.lock_object* %173)
  store i64 %174, i64* %18, align 8
  br label %176

175:                                              ; preds = %159, %156, %152
  store i64 -1, i64* %18, align 8
  br label %176

176:                                              ; preds = %175, %166
  %177 = load i8*, i8** %9, align 8
  %178 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %179 = load i8*, i8** %12, align 8
  %180 = load i32, i32* %22, align 4
  %181 = call i32 @sleepq_add(i8* %177, %struct.lock_object* %178, i8* %179, i32 %180, i32 0)
  %182 = load i32, i32* %13, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %176
  %185 = load i8*, i8** %9, align 8
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %15, align 4
  %189 = call i32 @sleepq_set_timeout_sbt(i8* %185, i32 %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %184, %176
  %191 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %192 = icmp ne %struct.lock_object* %191, null
  br i1 %192, label %193, label %213

193:                                              ; preds = %190
  %194 = load %struct.lock_class*, %struct.lock_class** %17, align 8
  %195 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @LC_SLEEPABLE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %193
  %201 = load i8*, i8** %9, align 8
  %202 = call i32 @sleepq_release(i8* %201)
  %203 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %204 = load i32, i32* @lock_witness, align 4
  %205 = call i32 @WITNESS_SAVE(%struct.lock_object* %203, i32 %204)
  %206 = load %struct.lock_class*, %struct.lock_class** %17, align 8
  %207 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %206, i32 0, i32 0
  %208 = load i64 (%struct.lock_object*)*, i64 (%struct.lock_object*)** %207, align 8
  %209 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %210 = call i64 %208(%struct.lock_object* %209)
  store i64 %210, i64* %18, align 8
  %211 = load i8*, i8** %9, align 8
  %212 = call i32 @sleepq_lock(i8* %211)
  br label %213

213:                                              ; preds = %200, %193, %190
  %214 = load i32, i32* %13, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = load i32, i32* %19, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load i8*, i8** %9, align 8
  %221 = load i32, i32* %20, align 4
  %222 = call i32 @sleepq_timedwait_sig(i8* %220, i32 %221)
  store i32 %222, i32* %21, align 4
  br label %243

223:                                              ; preds = %216, %213
  %224 = load i32, i32* %13, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i8*, i8** %9, align 8
  %228 = load i32, i32* %20, align 4
  %229 = call i32 @sleepq_timedwait(i8* %227, i32 %228)
  store i32 %229, i32* %21, align 4
  br label %242

230:                                              ; preds = %223
  %231 = load i32, i32* %19, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load i8*, i8** %9, align 8
  %235 = load i32, i32* %20, align 4
  %236 = call i32 @sleepq_wait_sig(i8* %234, i32 %235)
  store i32 %236, i32* %21, align 4
  br label %241

237:                                              ; preds = %230
  %238 = load i8*, i8** %9, align 8
  %239 = load i32, i32* %20, align 4
  %240 = call i32 @sleepq_wait(i8* %238, i32 %239)
  store i32 0, i32* %21, align 4
  br label %241

241:                                              ; preds = %237, %233
  br label %242

242:                                              ; preds = %241, %226
  br label %243

243:                                              ; preds = %242, %219
  %244 = call i32 (...) @PICKUP_GIANT()
  %245 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %246 = icmp ne %struct.lock_object* %245, null
  br i1 %246, label %247, label %265

247:                                              ; preds = %243
  %248 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %249 = icmp ne %struct.lock_object* %248, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Giant, i32 0, i32 0)
  br i1 %249, label %250, label %265

250:                                              ; preds = %247
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* @PDROP, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %265, label %255

255:                                              ; preds = %250
  %256 = load %struct.lock_class*, %struct.lock_class** %17, align 8
  %257 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %256, i32 0, i32 2
  %258 = load i32 (%struct.lock_object*, i64)*, i32 (%struct.lock_object*, i64)** %257, align 8
  %259 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %260 = load i64, i64* %18, align 8
  %261 = call i32 %258(%struct.lock_object* %259, i64 %260)
  %262 = load %struct.lock_object*, %struct.lock_object** %10, align 8
  %263 = load i32, i32* @lock_witness, align 4
  %264 = call i32 @WITNESS_RESTORE(%struct.lock_object* %262, i32 %263)
  br label %265

265:                                              ; preds = %255, %250, %247, %243
  %266 = load i32, i32* %21, align 4
  store i32 %266, i32* %8, align 4
  br label %267

267:                                              ; preds = %265, %90
  %268 = load i32, i32* %8, align 4
  ret i32 %268
}

declare dso_local i32 @WITNESS_SAVE_DECL(i32) #1

declare dso_local i32 @WITNESS_WARN(i32, %struct.lock_object*, i8*, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @mtx_owned(%struct.TYPE_6__*) #1

declare dso_local i32 @TD_IS_RUNNING(%struct.thread*) #1

declare dso_local %struct.lock_class* @LOCK_CLASS(%struct.lock_object*) #1

declare dso_local i64 @SCHEDULER_STOPPED_TD(%struct.thread*) #1

declare dso_local i32 @TD_ON_SLEEPQ(%struct.thread*) #1

declare dso_local i32 @sleepq_lock(i8*) #1

declare dso_local i32 @CTR5(i32, i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @mtx_assert(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @DROP_GIANT(...) #1

declare dso_local i32 @WITNESS_SAVE(%struct.lock_object*, i32) #1

declare dso_local i32 @sleepq_add(i8*, %struct.lock_object*, i8*, i32, i32) #1

declare dso_local i32 @sleepq_set_timeout_sbt(i8*, i32, i32, i32) #1

declare dso_local i32 @sleepq_release(i8*) #1

declare dso_local i32 @sleepq_timedwait_sig(i8*, i32) #1

declare dso_local i32 @sleepq_timedwait(i8*, i32) #1

declare dso_local i32 @sleepq_wait_sig(i8*, i32) #1

declare dso_local i32 @sleepq_wait(i8*, i32) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

declare dso_local i32 @WITNESS_RESTORE(%struct.lock_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
