; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_synch.c_msleep_spin_sbt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_synch.c_msleep_spin_sbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mtx = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"sleeping without a mutex\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"msleep_spin_sbt: NULL ident\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"msleep_spin_sbt: curthread not running\00", align 1
@KTR_PROC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"msleep_spin: thread %ld (pid %ld, %s) on %s (%p)\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@MA_NOTRECURSED = common dso_local global i32 0, align 4
@SLEEPQ_SLEEP = common dso_local global i32 0, align 4
@KTR_CSW = common dso_local global i32 0, align 4
@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msleep_spin_sbt(i8* %0, %struct.mtx* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mtx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.thread*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.mtx* %1, %struct.mtx** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.mtx*, %struct.mtx** %9, align 8
  %17 = call i32 @WITNESS_SAVE_DECL(%struct.mtx* %16)
  %18 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %18, %struct.thread** %14, align 8
  %19 = load %struct.mtx*, %struct.mtx** %9, align 8
  %20 = icmp ne %struct.mtx* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.thread*, %struct.thread** %14, align 8
  %28 = call i32 @TD_IS_RUNNING(%struct.thread* %27)
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.thread*, %struct.thread** %14, align 8
  %31 = call i64 @SCHEDULER_STOPPED_TD(%struct.thread* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %96

34:                                               ; preds = %6
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @sleepq_lock(i8* %35)
  %37 = load i32, i32* @KTR_PROC, align 4
  %38 = load %struct.thread*, %struct.thread** %14, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.thread*, %struct.thread** %14, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.thread*, %struct.thread** %14, align 8
  %47 = getelementptr inbounds %struct.thread, %struct.thread* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @CTR5(i32 %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %45, i32 %48, i8* %49, i8* %50)
  %52 = call i32 (...) @DROP_GIANT()
  %53 = load %struct.mtx*, %struct.mtx** %9, align 8
  %54 = load i32, i32* @MA_OWNED, align 4
  %55 = load i32, i32* @MA_NOTRECURSED, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @mtx_assert(%struct.mtx* %53, i32 %56)
  %58 = load %struct.mtx*, %struct.mtx** %9, align 8
  %59 = getelementptr inbounds %struct.mtx, %struct.mtx* %58, i32 0, i32 0
  %60 = load %struct.mtx*, %struct.mtx** %9, align 8
  %61 = call i32 @WITNESS_SAVE(i32* %59, %struct.mtx* %60)
  %62 = load %struct.mtx*, %struct.mtx** %9, align 8
  %63 = call i32 @mtx_unlock_spin(%struct.mtx* %62)
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.mtx*, %struct.mtx** %9, align 8
  %66 = getelementptr inbounds %struct.mtx, %struct.mtx* %65, i32 0, i32 0
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* @SLEEPQ_SLEEP, align 4
  %69 = call i32 @sleepq_add(i8* %64, i32* %66, i8* %67, i32 %68, i32 0)
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %34
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @sleepq_set_timeout_sbt(i8* %73, i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %34
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @sleepq_timedwait(i8* %82, i32 0)
  store i32 %83, i32* %15, align 4
  br label %87

84:                                               ; preds = %78
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @sleepq_wait(i8* %85, i32 0)
  store i32 0, i32* %15, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = call i32 (...) @PICKUP_GIANT()
  %89 = load %struct.mtx*, %struct.mtx** %9, align 8
  %90 = call i32 @mtx_lock_spin(%struct.mtx* %89)
  %91 = load %struct.mtx*, %struct.mtx** %9, align 8
  %92 = getelementptr inbounds %struct.mtx, %struct.mtx* %91, i32 0, i32 0
  %93 = load %struct.mtx*, %struct.mtx** %9, align 8
  %94 = call i32 @WITNESS_RESTORE(i32* %92, %struct.mtx* %93)
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %87, %33
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @WITNESS_SAVE_DECL(%struct.mtx*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TD_IS_RUNNING(%struct.thread*) #1

declare dso_local i64 @SCHEDULER_STOPPED_TD(%struct.thread*) #1

declare dso_local i32 @sleepq_lock(i8*) #1

declare dso_local i32 @CTR5(i32, i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @DROP_GIANT(...) #1

declare dso_local i32 @mtx_assert(%struct.mtx*, i32) #1

declare dso_local i32 @WITNESS_SAVE(i32*, %struct.mtx*) #1

declare dso_local i32 @mtx_unlock_spin(%struct.mtx*) #1

declare dso_local i32 @sleepq_add(i8*, i32*, i8*, i32, i32) #1

declare dso_local i32 @sleepq_set_timeout_sbt(i8*, i32, i32, i32) #1

declare dso_local i32 @sleepq_timedwait(i8*, i32) #1

declare dso_local i32 @sleepq_wait(i8*, i32) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

declare dso_local i32 @mtx_lock_spin(%struct.mtx*) #1

declare dso_local i32 @WITNESS_RESTORE(i32*, %struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
