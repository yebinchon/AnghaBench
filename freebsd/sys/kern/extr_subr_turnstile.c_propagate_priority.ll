; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_propagate_priority.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_propagate_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.turnstile*, i32, i32, %struct.TYPE_3__* }
%struct.turnstile = type { i32, %struct.TYPE_4__*, %struct.thread* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MTX_DUPOK = common dso_local global i32 0, align 4
@P_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Sleeping thread (tid %d, pid %d) owns a non-sleepable lock\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"sleeping thread\00", align 1
@curthread = common dso_local global %struct.thread* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Deadlock detected\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"thread %d(%s):%d holds %s but isn't blocked on a lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @propagate_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @propagate_priority(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.turnstile*, align 8
  %4 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %5, i32 %6)
  %8 = load %struct.thread*, %struct.thread** %2, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 2
  %13 = load %struct.turnstile*, %struct.turnstile** %12, align 8
  store %struct.turnstile* %13, %struct.turnstile** %3, align 8
  %14 = load %struct.thread*, %struct.thread** %2, align 8
  %15 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %16 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %15, i32 0, i32 0
  %17 = call i32 @THREAD_LOCKPTR_ASSERT(%struct.thread* %14, i32* %16)
  %18 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %19 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %18, i32 0, i32 0
  %20 = call i32 @mtx_lock_spin(i32* %19)
  br label %21

21:                                               ; preds = %142, %1
  %22 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %23 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %22, i32 0, i32 2
  %24 = load %struct.thread*, %struct.thread** %23, align 8
  store %struct.thread* %24, %struct.thread** %2, align 8
  %25 = load %struct.thread*, %struct.thread** %2, align 8
  %26 = icmp eq %struct.thread* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %29 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %28, i32 0, i32 0
  %30 = call i32 @mtx_unlock_spin(i32* %29)
  br label %143

31:                                               ; preds = %21
  %32 = load %struct.thread*, %struct.thread** %2, align 8
  %33 = load i32, i32* @MTX_DUPOK, align 4
  %34 = call i32 @thread_lock_flags(%struct.thread* %32, i32 %33)
  %35 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %36 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %35, i32 0, i32 0
  %37 = call i32 @mtx_unlock_spin(i32* %36)
  %38 = load %struct.thread*, %struct.thread** %2, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 5
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @MPASS(i32 %42)
  %44 = load %struct.thread*, %struct.thread** %2, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 5
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @P_MAGIC, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @MPASS(i32 %51)
  %53 = load %struct.thread*, %struct.thread** %2, align 8
  %54 = call i64 @TD_IS_SLEEPING(%struct.thread* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %31
  %57 = load %struct.thread*, %struct.thread** %2, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.thread*, %struct.thread** %2, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 5
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %64)
  %66 = load %struct.thread*, %struct.thread** %2, align 8
  %67 = call i32 @kdb_backtrace_thread(%struct.thread* %66)
  %68 = call i32 @panic(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %56, %31
  %70 = load %struct.thread*, %struct.thread** %2, align 8
  %71 = getelementptr inbounds %struct.thread, %struct.thread* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.thread*, %struct.thread** %2, align 8
  %77 = call i32 @thread_unlock(%struct.thread* %76)
  br label %143

78:                                               ; preds = %69
  %79 = load %struct.thread*, %struct.thread** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @sched_lend_prio(%struct.thread* %79, i32 %80)
  %82 = load %struct.thread*, %struct.thread** %2, align 8
  %83 = call i64 @TD_IS_RUNNING(%struct.thread* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = load %struct.thread*, %struct.thread** %2, align 8
  %87 = call i64 @TD_ON_RUNQ(%struct.thread* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %85, %78
  %90 = load %struct.thread*, %struct.thread** %2, align 8
  %91 = getelementptr inbounds %struct.thread, %struct.thread* %90, i32 0, i32 2
  %92 = load %struct.turnstile*, %struct.turnstile** %91, align 8
  %93 = icmp eq %struct.turnstile* %92, null
  %94 = zext i1 %93 to i32
  %95 = call i32 @MPASS(i32 %94)
  %96 = load %struct.thread*, %struct.thread** %2, align 8
  %97 = call i32 @thread_unlock(%struct.thread* %96)
  br label %143

98:                                               ; preds = %85
  %99 = load %struct.thread*, %struct.thread** %2, align 8
  %100 = load %struct.thread*, %struct.thread** @curthread, align 8
  %101 = icmp ne %struct.thread* %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @KASSERT(i32 %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.thread*, %struct.thread** %2, align 8
  %105 = call i32 @TD_ON_LOCK(%struct.thread* %104)
  %106 = load %struct.thread*, %struct.thread** %2, align 8
  %107 = getelementptr inbounds %struct.thread, %struct.thread* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.thread*, %struct.thread** %2, align 8
  %110 = getelementptr inbounds %struct.thread, %struct.thread* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.thread*, %struct.thread** %2, align 8
  %113 = getelementptr inbounds %struct.thread, %struct.thread* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %116 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = call i32 @KASSERT(i32 %105, i8* %121)
  %123 = load %struct.thread*, %struct.thread** %2, align 8
  %124 = getelementptr inbounds %struct.thread, %struct.thread* %123, i32 0, i32 2
  %125 = load %struct.turnstile*, %struct.turnstile** %124, align 8
  store %struct.turnstile* %125, %struct.turnstile** %3, align 8
  %126 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %127 = icmp ne %struct.turnstile* %126, null
  %128 = zext i1 %127 to i32
  %129 = call i32 @MPASS(i32 %128)
  %130 = load %struct.thread*, %struct.thread** %2, align 8
  %131 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %132 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %131, i32 0, i32 0
  %133 = call i32 @THREAD_LOCKPTR_ASSERT(%struct.thread* %130, i32* %132)
  %134 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %135 = load %struct.thread*, %struct.thread** %2, align 8
  %136 = call i32 @turnstile_adjust_thread(%struct.turnstile* %134, %struct.thread* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %98
  %139 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %140 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %139, i32 0, i32 0
  %141 = call i32 @mtx_unlock_spin(i32* %140)
  br label %143

142:                                              ; preds = %98
  br label %21

143:                                              ; preds = %138, %89, %75, %27
  ret void
}

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local i32 @THREAD_LOCKPTR_ASSERT(%struct.thread*, i32*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @thread_lock_flags(%struct.thread*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @TD_IS_SLEEPING(%struct.thread*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @kdb_backtrace_thread(%struct.thread*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @sched_lend_prio(%struct.thread*, i32) #1

declare dso_local i64 @TD_IS_RUNNING(%struct.thread*) #1

declare dso_local i64 @TD_ON_RUNQ(%struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TD_ON_LOCK(%struct.thread*) #1

declare dso_local i32 @turnstile_adjust_thread(%struct.turnstile*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
