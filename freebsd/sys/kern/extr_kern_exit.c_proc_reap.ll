; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_proc_reap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_proc_reap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i64, i64, i32*, i32*, %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_5__*, i64, i64, i32*, i32, i32*, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@proctree_lock = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@PRS_ZOMBIE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"proc_reap: !PRS_ZOMBIE\00", align 1
@WNOWAIT = common dso_local global i32 0, align 4
@KTR_PTRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"wait: traced child %d moved back to parent %d\00", align 1
@SIGCHLD = common dso_local global i32 0, align 4
@p_hash = common dso_local global i32 0, align 4
@p_sibling = common dso_local global i32 0, align 4
@PROC_ID_PID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"proc_reap: no residual thread!\00", align 1
@proc_zone = common dso_local global i32 0, align 4
@nprocs = common dso_local global i32 0, align 4
@RACCT_NPROC = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_reap(%struct.thread* %0, %struct.proc* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc*, align 8
  %10 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @SA_XLOCKED, align 4
  %12 = call i32 @sx_assert(i32* @proctree_lock, i32 %11)
  %13 = load %struct.proc*, %struct.proc** %6, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %13, i32 %14)
  %16 = load %struct.proc*, %struct.proc** %6, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PRS_ZOMBIE, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.proc*, %struct.proc** %6, align 8
  %24 = getelementptr inbounds %struct.proc, %struct.proc* %23, i32 0, i32 17
  %25 = call i32 @mtx_spin_wait_unlocked(i32* %24)
  %26 = load %struct.thread*, %struct.thread** %5, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load %struct.proc*, %struct.proc** %27, align 8
  store %struct.proc* %28, %struct.proc** %9, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load %struct.proc*, %struct.proc** %6, align 8
  %33 = getelementptr inbounds %struct.proc, %struct.proc* %32, i32 0, i32 10
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.proc*, %struct.proc** %6, align 8
  %36 = getelementptr inbounds %struct.proc, %struct.proc* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @KW_EXITCODE(i64 %34, i64 %37)
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %31, %4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @WNOWAIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.proc*, %struct.proc** %6, align 8
  %47 = call i32 @PROC_UNLOCK(%struct.proc* %46)
  %48 = call i32 @sx_xunlock(i32* @proctree_lock)
  br label %214

49:                                               ; preds = %40
  %50 = load %struct.proc*, %struct.proc** %9, align 8
  %51 = call i32 @PROC_LOCK(%struct.proc* %50)
  %52 = load %struct.proc*, %struct.proc** %6, align 8
  %53 = getelementptr inbounds %struct.proc, %struct.proc* %52, i32 0, i32 15
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sigqueue_take(i32 %54)
  %56 = load %struct.proc*, %struct.proc** %9, align 8
  %57 = call i32 @PROC_UNLOCK(%struct.proc* %56)
  %58 = load %struct.proc*, %struct.proc** %6, align 8
  %59 = getelementptr inbounds %struct.proc, %struct.proc* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.proc*, %struct.proc** %6, align 8
  %62 = getelementptr inbounds %struct.proc, %struct.proc* %61, i32 0, i32 16
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %60, %65
  br i1 %66, label %67, label %103

67:                                               ; preds = %49
  %68 = load %struct.proc*, %struct.proc** %6, align 8
  %69 = call i32 @PROC_UNLOCK(%struct.proc* %68)
  %70 = load %struct.proc*, %struct.proc** %6, align 8
  %71 = call %struct.proc* @proc_realparent(%struct.proc* %70)
  store %struct.proc* %71, %struct.proc** %10, align 8
  %72 = load %struct.proc*, %struct.proc** %10, align 8
  %73 = call i32 @PROC_LOCK(%struct.proc* %72)
  %74 = load %struct.proc*, %struct.proc** %6, align 8
  %75 = call i32 @PROC_LOCK(%struct.proc* %74)
  %76 = load i32, i32* @KTR_PTRACE, align 4
  %77 = load %struct.proc*, %struct.proc** %6, align 8
  %78 = getelementptr inbounds %struct.proc, %struct.proc* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.proc*, %struct.proc** %10, align 8
  %81 = getelementptr inbounds %struct.proc, %struct.proc* %80, i32 0, i32 12
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @CTR2(i32 %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82)
  %84 = load %struct.proc*, %struct.proc** %6, align 8
  %85 = load %struct.proc*, %struct.proc** %10, align 8
  %86 = call i32 @proc_reparent(%struct.proc* %84, %struct.proc* %85, i32 0)
  %87 = load %struct.proc*, %struct.proc** %6, align 8
  %88 = call i32 @PROC_UNLOCK(%struct.proc* %87)
  %89 = load %struct.proc*, %struct.proc** %10, align 8
  %90 = load i32, i32* @SIGCHLD, align 4
  %91 = load %struct.proc*, %struct.proc** %6, align 8
  %92 = getelementptr inbounds %struct.proc, %struct.proc* %91, i32 0, i32 15
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pksignal(%struct.proc* %89, i32 %90, i32 %93)
  %95 = load %struct.proc*, %struct.proc** %10, align 8
  %96 = call i32 @wakeup(%struct.proc* %95)
  %97 = load %struct.proc*, %struct.proc** %6, align 8
  %98 = getelementptr inbounds %struct.proc, %struct.proc* %97, i32 0, i32 14
  %99 = call i32 @cv_broadcast(i32* %98)
  %100 = load %struct.proc*, %struct.proc** %10, align 8
  %101 = call i32 @PROC_UNLOCK(%struct.proc* %100)
  %102 = call i32 @sx_xunlock(i32* @proctree_lock)
  br label %214

103:                                              ; preds = %49
  %104 = load %struct.proc*, %struct.proc** %6, align 8
  %105 = call i32 @PROC_UNLOCK(%struct.proc* %104)
  %106 = load %struct.proc*, %struct.proc** %6, align 8
  %107 = getelementptr inbounds %struct.proc, %struct.proc* %106, i32 0, i32 12
  %108 = load i32, i32* %107, align 8
  %109 = call i32* @PIDHASHLOCK(i32 %108)
  %110 = call i32 @sx_xlock(i32* %109)
  %111 = load %struct.proc*, %struct.proc** %6, align 8
  %112 = load i32, i32* @p_hash, align 4
  %113 = call i32 @LIST_REMOVE(%struct.proc* %111, i32 %112)
  %114 = load %struct.proc*, %struct.proc** %6, align 8
  %115 = getelementptr inbounds %struct.proc, %struct.proc* %114, i32 0, i32 12
  %116 = load i32, i32* %115, align 8
  %117 = call i32* @PIDHASHLOCK(i32 %116)
  %118 = call i32 @sx_xunlock(i32* %117)
  %119 = load %struct.proc*, %struct.proc** %6, align 8
  %120 = load i32, i32* @p_sibling, align 4
  %121 = call i32 @LIST_REMOVE(%struct.proc* %119, i32 %120)
  %122 = load %struct.proc*, %struct.proc** %6, align 8
  %123 = call i32 @reaper_abandon_children(%struct.proc* %122, i32 1)
  %124 = load %struct.proc*, %struct.proc** %6, align 8
  %125 = call i32 @reaper_clear(%struct.proc* %124)
  %126 = load %struct.proc*, %struct.proc** %6, align 8
  %127 = call i32 @PROC_LOCK(%struct.proc* %126)
  %128 = load %struct.proc*, %struct.proc** %6, align 8
  %129 = call i32 @proc_clear_orphan(%struct.proc* %128)
  %130 = load %struct.proc*, %struct.proc** %6, align 8
  %131 = call i32 @PROC_UNLOCK(%struct.proc* %130)
  %132 = load %struct.proc*, %struct.proc** %6, align 8
  %133 = call i32 @leavepgrp(%struct.proc* %132)
  %134 = load %struct.proc*, %struct.proc** %6, align 8
  %135 = getelementptr inbounds %struct.proc, %struct.proc* %134, i32 0, i32 13
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %103
  %139 = load %struct.proc*, %struct.proc** %6, align 8
  %140 = call i32 @procdesc_reap(%struct.proc* %139)
  br label %141

141:                                              ; preds = %138, %103
  %142 = call i32 @sx_xunlock(i32* @proctree_lock)
  %143 = load i32, i32* @PROC_ID_PID, align 4
  %144 = load %struct.proc*, %struct.proc** %6, align 8
  %145 = getelementptr inbounds %struct.proc, %struct.proc* %144, i32 0, i32 12
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @proc_id_clear(i32 %143, i32 %146)
  %148 = load %struct.proc*, %struct.proc** %6, align 8
  %149 = call i32 @PROC_LOCK(%struct.proc* %148)
  %150 = load %struct.proc*, %struct.proc** %6, align 8
  %151 = getelementptr inbounds %struct.proc, %struct.proc* %150, i32 0, i32 11
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @knlist_detach(i32* %152)
  %154 = load %struct.proc*, %struct.proc** %6, align 8
  %155 = getelementptr inbounds %struct.proc, %struct.proc* %154, i32 0, i32 11
  store i32* null, i32** %155, align 8
  %156 = load %struct.proc*, %struct.proc** %6, align 8
  %157 = call i32 @PROC_UNLOCK(%struct.proc* %156)
  %158 = load %struct.proc*, %struct.proc** %6, align 8
  %159 = getelementptr inbounds %struct.proc, %struct.proc* %158, i32 0, i32 9
  store i64 0, i64* %159, align 8
  %160 = load %struct.proc*, %struct.proc** %6, align 8
  %161 = getelementptr inbounds %struct.proc, %struct.proc* %160, i32 0, i32 10
  store i64 0, i64* %161, align 8
  %162 = load %struct.proc*, %struct.proc** %9, align 8
  %163 = call i32 @PROC_LOCK(%struct.proc* %162)
  %164 = load %struct.proc*, %struct.proc** %9, align 8
  %165 = getelementptr inbounds %struct.proc, %struct.proc* %164, i32 0, i32 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load %struct.proc*, %struct.proc** %9, align 8
  %169 = getelementptr inbounds %struct.proc, %struct.proc* %168, i32 0, i32 7
  %170 = load %struct.proc*, %struct.proc** %6, align 8
  %171 = getelementptr inbounds %struct.proc, %struct.proc* %170, i32 0, i32 6
  %172 = load %struct.proc*, %struct.proc** %6, align 8
  %173 = getelementptr inbounds %struct.proc, %struct.proc* %172, i32 0, i32 5
  %174 = call i32 @ruadd(i32* %167, i32* %169, i32* %171, i32* %173)
  %175 = load %struct.proc*, %struct.proc** %9, align 8
  %176 = call i32 @PROC_UNLOCK(%struct.proc* %175)
  %177 = load %struct.proc*, %struct.proc** %6, align 8
  %178 = getelementptr inbounds %struct.proc, %struct.proc* %177, i32 0, i32 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @chgproccnt(i32 %181, i32 -1, i32 0)
  %183 = load %struct.proc*, %struct.proc** %6, align 8
  %184 = call i32 @racct_proc_exit(%struct.proc* %183)
  %185 = load %struct.proc*, %struct.proc** %6, align 8
  %186 = getelementptr inbounds %struct.proc, %struct.proc* %185, i32 0, i32 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = call i32 @crfree(%struct.TYPE_6__* %187)
  %189 = load %struct.proc*, %struct.proc** %6, align 8
  %190 = call i32 @proc_set_cred(%struct.proc* %189, i32* null)
  %191 = load %struct.proc*, %struct.proc** %6, align 8
  %192 = getelementptr inbounds %struct.proc, %struct.proc* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @pargs_drop(i32* %193)
  %195 = load %struct.proc*, %struct.proc** %6, align 8
  %196 = getelementptr inbounds %struct.proc, %struct.proc* %195, i32 0, i32 3
  store i32* null, i32** %196, align 8
  %197 = load %struct.proc*, %struct.proc** %6, align 8
  %198 = getelementptr inbounds %struct.proc, %struct.proc* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @sigacts_free(i32* %199)
  %201 = load %struct.proc*, %struct.proc** %6, align 8
  %202 = getelementptr inbounds %struct.proc, %struct.proc* %201, i32 0, i32 2
  store i32* null, i32** %202, align 8
  %203 = load %struct.proc*, %struct.proc** %6, align 8
  %204 = call i32 @thread_wait(%struct.proc* %203)
  %205 = load %struct.proc*, %struct.proc** %6, align 8
  %206 = call i32 @vm_waitproc(%struct.proc* %205)
  %207 = load %struct.proc*, %struct.proc** %6, align 8
  %208 = call i32 @FIRST_THREAD_IN_PROC(%struct.proc* %207)
  %209 = call i32 @KASSERT(i32 %208, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %210 = load i32, i32* @proc_zone, align 4
  %211 = load %struct.proc*, %struct.proc** %6, align 8
  %212 = call i32 @uma_zfree(i32 %210, %struct.proc* %211)
  %213 = call i32 @atomic_add_int(i32* @nprocs, i32 -1)
  br label %214

214:                                              ; preds = %141, %67, %45
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_spin_wait_unlocked(i32*) #1

declare dso_local i32 @KW_EXITCODE(i64, i64) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @sigqueue_take(i32) #1

declare dso_local %struct.proc* @proc_realparent(%struct.proc*) #1

declare dso_local i32 @CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @proc_reparent(%struct.proc*, %struct.proc*, i32) #1

declare dso_local i32 @pksignal(%struct.proc*, i32, i32) #1

declare dso_local i32 @wakeup(%struct.proc*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32* @PIDHASHLOCK(i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.proc*, i32) #1

declare dso_local i32 @reaper_abandon_children(%struct.proc*, i32) #1

declare dso_local i32 @reaper_clear(%struct.proc*) #1

declare dso_local i32 @proc_clear_orphan(%struct.proc*) #1

declare dso_local i32 @leavepgrp(%struct.proc*) #1

declare dso_local i32 @procdesc_reap(%struct.proc*) #1

declare dso_local i32 @proc_id_clear(i32, i32) #1

declare dso_local i32 @knlist_detach(i32*) #1

declare dso_local i32 @ruadd(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @chgproccnt(i32, i32, i32) #1

declare dso_local i32 @racct_proc_exit(%struct.proc*) #1

declare dso_local i32 @crfree(%struct.TYPE_6__*) #1

declare dso_local i32 @proc_set_cred(%struct.proc*, i32*) #1

declare dso_local i32 @pargs_drop(i32*) #1

declare dso_local i32 @sigacts_free(i32*) #1

declare dso_local i32 @thread_wait(%struct.proc*) #1

declare dso_local i32 @vm_waitproc(%struct.proc*) #1

declare dso_local i32 @FIRST_THREAD_IN_PROC(%struct.proc*) #1

declare dso_local i32 @uma_zfree(i32, %struct.proc*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
