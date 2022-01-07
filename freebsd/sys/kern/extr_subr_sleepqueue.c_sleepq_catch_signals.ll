; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sleepqueue.c_sleepq_catch_signals.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sleepqueue.c_sleepq_catch_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32, i32*, i32 }
%struct.proc = type { %struct.sigacts*, i64 }
%struct.sigacts = type { i32, i32 }
%struct.sleepqueue_chain = type { i32 }
%struct.sleepqueue = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@curproc = common dso_local global %struct.proc* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@TDP_WAKEUP = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@TDF_NEEDSIGCHK = common dso_local global i32 0, align 4
@TDF_NEEDSUSPCHK = common dso_local global i32 0, align 4
@KTR_PROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"sleepq catching signals: thread %p (pid %ld, %s)\00", align 1
@ERESTART = common dso_local global i32 0, align 4
@TDF_SBDRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"lost TDF_SBDRY\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"lost TDF_SERESTART of TDF_SEINTR\00", align 1
@TDF_SEINTR = common dso_local global i32 0, align 4
@TDF_SERESTART = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"both TDF_SEINTR and TDF_SERESTART\00", align 1
@TDB_FSTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @sleepq_catch_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sleepq_catch_signals(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sleepqueue_chain*, align 8
  %7 = alloca %struct.sleepqueue*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca %struct.sigacts*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %13, %struct.thread** %8, align 8
  %14 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %14, %struct.proc** %9, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call %struct.sleepqueue_chain* @SC_LOOKUP(i8* %15)
  store %struct.sleepqueue_chain* %16, %struct.sleepqueue_chain** %6, align 8
  %17 = load %struct.sleepqueue_chain*, %struct.sleepqueue_chain** %6, align 8
  %18 = getelementptr inbounds %struct.sleepqueue_chain, %struct.sleepqueue_chain* %17, i32 0, i32 0
  %19 = load i32, i32* @MA_OWNED, align 4
  %20 = call i32 @mtx_assert(i32* %18, i32 %19)
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @MPASS(i32 %23)
  %25 = load %struct.thread*, %struct.thread** %8, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TDP_WAKEUP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = load i32, i32* @TDP_WAKEUP, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.thread*, %struct.thread** %8, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* @EINTR, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.thread*, %struct.thread** %8, align 8
  %40 = call i32 @thread_lock(%struct.thread* %39)
  br label %215

41:                                               ; preds = %2
  %42 = load %struct.thread*, %struct.thread** %8, align 8
  %43 = call i32 @thread_lock(%struct.thread* %42)
  %44 = load %struct.thread*, %struct.thread** %8, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TDF_NEEDSIGCHK, align 4
  %48 = load i32, i32* @TDF_NEEDSUSPCHK, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %207

52:                                               ; preds = %41
  %53 = load %struct.thread*, %struct.thread** %8, align 8
  %54 = call i32 @thread_unlock(%struct.thread* %53)
  %55 = load %struct.sleepqueue_chain*, %struct.sleepqueue_chain** %6, align 8
  %56 = getelementptr inbounds %struct.sleepqueue_chain, %struct.sleepqueue_chain* %55, i32 0, i32 0
  %57 = call i32 @mtx_unlock_spin(i32* %56)
  %58 = load i32, i32* @KTR_PROC, align 4
  %59 = load %struct.thread*, %struct.thread** %8, align 8
  %60 = bitcast %struct.thread* %59 to i8*
  %61 = load %struct.proc*, %struct.proc** %9, align 8
  %62 = getelementptr inbounds %struct.proc, %struct.proc* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.thread*, %struct.thread** %8, align 8
  %65 = getelementptr inbounds %struct.thread, %struct.thread* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @CTR3(i32 %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %60, i64 %63, i32 %66)
  %68 = load %struct.proc*, %struct.proc** %9, align 8
  %69 = call i32 @PROC_LOCK(%struct.proc* %68)
  %70 = load %struct.thread*, %struct.thread** %8, align 8
  %71 = getelementptr inbounds %struct.thread, %struct.thread* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TDF_NEEDSUSPCHK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %52
  %77 = call i32 @thread_suspend_check(i32 1)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @EINTR, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @ERESTART, align 4
  %87 = icmp eq i32 %85, %86
  br label %88

88:                                               ; preds = %84, %80, %76
  %89 = phi i1 [ true, %80 ], [ true, %76 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @MPASS(i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.proc*, %struct.proc** %9, align 8
  %96 = call i32 @PROC_UNLOCK(%struct.proc* %95)
  %97 = load %struct.sleepqueue_chain*, %struct.sleepqueue_chain** %6, align 8
  %98 = getelementptr inbounds %struct.sleepqueue_chain, %struct.sleepqueue_chain* %97, i32 0, i32 0
  %99 = call i32 @mtx_lock_spin(i32* %98)
  %100 = load %struct.thread*, %struct.thread** %8, align 8
  %101 = call i32 @thread_lock(%struct.thread* %100)
  br label %215

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %52
  %104 = load %struct.thread*, %struct.thread** %8, align 8
  %105 = getelementptr inbounds %struct.thread, %struct.thread* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @TDF_NEEDSIGCHK, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %195

110:                                              ; preds = %103
  %111 = load %struct.proc*, %struct.proc** %9, align 8
  %112 = getelementptr inbounds %struct.proc, %struct.proc* %111, i32 0, i32 0
  %113 = load %struct.sigacts*, %struct.sigacts** %112, align 8
  store %struct.sigacts* %113, %struct.sigacts** %10, align 8
  %114 = load %struct.sigacts*, %struct.sigacts** %10, align 8
  %115 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %114, i32 0, i32 0
  %116 = call i32 @mtx_lock(i32* %115)
  %117 = load %struct.thread*, %struct.thread** %8, align 8
  %118 = call i32 @cursig(%struct.thread* %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %151

121:                                              ; preds = %110
  %122 = load %struct.sigacts*, %struct.sigacts** %10, align 8
  %123 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %122, i32 0, i32 0
  %124 = call i32 @mtx_unlock(i32* %123)
  %125 = load %struct.thread*, %struct.thread** %8, align 8
  %126 = getelementptr inbounds %struct.thread, %struct.thread* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @TDF_SBDRY, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @KASSERT(i32 %131, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %133 = load %struct.thread*, %struct.thread** %8, align 8
  %134 = call i32 @TD_SBDRY_INTR(%struct.thread* %133)
  %135 = call i32 @KASSERT(i32 %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %136 = load %struct.thread*, %struct.thread** %8, align 8
  %137 = getelementptr inbounds %struct.thread, %struct.thread* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @TDF_SEINTR, align 4
  %140 = load i32, i32* @TDF_SERESTART, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %138, %141
  %143 = load i32, i32* @TDF_SEINTR, align 4
  %144 = load i32, i32* @TDF_SERESTART, align 4
  %145 = or i32 %143, %144
  %146 = icmp ne i32 %142, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @KASSERT(i32 %147, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %149 = load %struct.thread*, %struct.thread** %8, align 8
  %150 = call i32 @TD_SBDRY_ERRNO(%struct.thread* %149)
  store i32 %150, i32* %12, align 4
  br label %175

151:                                              ; preds = %110
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %151
  %155 = load %struct.sigacts*, %struct.sigacts** %10, align 8
  %156 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %11, align 4
  %159 = call i64 @SIGISMEMBER(i32 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i32, i32* @EINTR, align 4
  br label %165

163:                                              ; preds = %154
  %164 = load i32, i32* @ERESTART, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  store i32 %166, i32* %12, align 4
  %167 = load %struct.sigacts*, %struct.sigacts** %10, align 8
  %168 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %167, i32 0, i32 0
  %169 = call i32 @mtx_unlock(i32* %168)
  br label %174

170:                                              ; preds = %151
  %171 = load %struct.sigacts*, %struct.sigacts** %10, align 8
  %172 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %171, i32 0, i32 0
  %173 = call i32 @mtx_unlock(i32* %172)
  br label %174

174:                                              ; preds = %170, %165
  br label %175

175:                                              ; preds = %174, %121
  %176 = load %struct.thread*, %struct.thread** %8, align 8
  %177 = getelementptr inbounds %struct.thread, %struct.thread* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @TDB_FSTP, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %175
  %183 = load i32, i32* %12, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %182
  %186 = load i32, i32* @EINTR, align 4
  store i32 %186, i32* %12, align 4
  br label %187

187:                                              ; preds = %185, %182
  %188 = load i32, i32* @TDB_FSTP, align 4
  %189 = xor i32 %188, -1
  %190 = load %struct.thread*, %struct.thread** %8, align 8
  %191 = getelementptr inbounds %struct.thread, %struct.thread* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, %189
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %187, %175
  br label %195

195:                                              ; preds = %194, %103
  %196 = load %struct.proc*, %struct.proc** %9, align 8
  %197 = call i32 @PROC_SLOCK(%struct.proc* %196)
  %198 = load %struct.sleepqueue_chain*, %struct.sleepqueue_chain** %6, align 8
  %199 = getelementptr inbounds %struct.sleepqueue_chain, %struct.sleepqueue_chain* %198, i32 0, i32 0
  %200 = call i32 @mtx_lock_spin(i32* %199)
  %201 = load %struct.proc*, %struct.proc** %9, align 8
  %202 = call i32 @PROC_UNLOCK(%struct.proc* %201)
  %203 = load %struct.thread*, %struct.thread** %8, align 8
  %204 = call i32 @thread_lock(%struct.thread* %203)
  %205 = load %struct.proc*, %struct.proc** %9, align 8
  %206 = call i32 @PROC_SUNLOCK(%struct.proc* %205)
  br label %207

207:                                              ; preds = %195, %41
  %208 = load i32, i32* %12, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i8*, i8** %4, align 8
  %212 = load i32, i32* %5, align 4
  %213 = call i32 @sleepq_switch(i8* %211, i32 %212)
  store i32 0, i32* %3, align 4
  br label %241

214:                                              ; preds = %207
  br label %215

215:                                              ; preds = %214, %94, %31
  %216 = load %struct.thread*, %struct.thread** %8, align 8
  %217 = call i64 @TD_ON_SLEEPQ(%struct.thread* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %215
  %220 = load i8*, i8** %4, align 8
  %221 = call %struct.sleepqueue* @sleepq_lookup(i8* %220)
  store %struct.sleepqueue* %221, %struct.sleepqueue** %7, align 8
  %222 = load %struct.sleepqueue*, %struct.sleepqueue** %7, align 8
  %223 = load %struct.thread*, %struct.thread** %8, align 8
  %224 = call i64 @sleepq_resume_thread(%struct.sleepqueue* %222, %struct.thread* %223, i32 0)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  br label %227

227:                                              ; preds = %226, %219
  br label %228

228:                                              ; preds = %227, %215
  %229 = load %struct.sleepqueue_chain*, %struct.sleepqueue_chain** %6, align 8
  %230 = getelementptr inbounds %struct.sleepqueue_chain, %struct.sleepqueue_chain* %229, i32 0, i32 0
  %231 = call i32 @mtx_unlock_spin(i32* %230)
  %232 = load %struct.thread*, %struct.thread** %8, align 8
  %233 = getelementptr inbounds %struct.thread, %struct.thread* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = load %struct.sleepqueue_chain*, %struct.sleepqueue_chain** %6, align 8
  %236 = getelementptr inbounds %struct.sleepqueue_chain, %struct.sleepqueue_chain* %235, i32 0, i32 0
  %237 = icmp ne i32* %234, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @MPASS(i32 %238)
  %240 = load i32, i32* %12, align 4
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %228, %210
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local %struct.sleepqueue_chain* @SC_LOOKUP(i8*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @CTR3(i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @thread_suspend_check(i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cursig(%struct.thread*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TD_SBDRY_INTR(%struct.thread*) #1

declare dso_local i32 @TD_SBDRY_ERRNO(%struct.thread*) #1

declare dso_local i64 @SIGISMEMBER(i32, i32) #1

declare dso_local i32 @PROC_SLOCK(%struct.proc*) #1

declare dso_local i32 @PROC_SUNLOCK(%struct.proc*) #1

declare dso_local i32 @sleepq_switch(i8*, i32) #1

declare dso_local i64 @TD_ON_SLEEPQ(%struct.thread*) #1

declare dso_local %struct.sleepqueue* @sleepq_lookup(i8*) #1

declare dso_local i64 @sleepq_resume_thread(%struct.sleepqueue*, %struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
