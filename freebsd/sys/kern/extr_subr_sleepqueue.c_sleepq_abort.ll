; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sleepqueue.c_sleepq_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sleepqueue.c_sleepq_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i8*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sleepqueue = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@TDF_SINTR = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@TDF_TIMEOUT = common dso_local global i32 0, align 4
@KTR_PROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"sleepq_abort: thread %p (pid %ld, %s)\00", align 1
@TDF_SLEEPABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sleepq_abort(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sleepqueue*, align 8
  %7 = alloca i8*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %8, i32 %9)
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = call i32 @TD_ON_SLEEPQ(%struct.thread* %11)
  %13 = call i32 @MPASS(i32 %12)
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TDF_SINTR, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @MPASS(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @EINTR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ERESTART, align 4
  %26 = icmp eq i32 %24, %25
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i1 [ true, %2 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @MPASS(i32 %29)
  %31 = load %struct.thread*, %struct.thread** %4, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TDF_TIMEOUT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %81

38:                                               ; preds = %27
  %39 = load i32, i32* @KTR_PROC, align 4
  %40 = load %struct.thread*, %struct.thread** %4, align 8
  %41 = bitcast %struct.thread* %40 to i8*
  %42 = load %struct.thread*, %struct.thread** %4, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.thread*, %struct.thread** %4, align 8
  %48 = getelementptr inbounds %struct.thread, %struct.thread* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @CTR3(i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %41, i64 %46, i8* %50)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.thread*, %struct.thread** %4, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @TDF_SLEEPABORT, align 4
  %56 = load %struct.thread*, %struct.thread** %4, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.thread*, %struct.thread** %4, align 8
  %61 = call i32 @TD_IS_SLEEPING(%struct.thread* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %81

64:                                               ; preds = %38
  %65 = load %struct.thread*, %struct.thread** %4, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %7, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @MPASS(i32 %70)
  %72 = load i8*, i8** %7, align 8
  %73 = call %struct.sleepqueue* @sleepq_lookup(i8* %72)
  store %struct.sleepqueue* %73, %struct.sleepqueue** %6, align 8
  %74 = load %struct.sleepqueue*, %struct.sleepqueue** %6, align 8
  %75 = icmp ne %struct.sleepqueue* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @MPASS(i32 %76)
  %78 = load %struct.sleepqueue*, %struct.sleepqueue** %6, align 8
  %79 = load %struct.thread*, %struct.thread** %4, align 8
  %80 = call i32 @sleepq_resume_thread(%struct.sleepqueue* %78, %struct.thread* %79, i32 0)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %64, %63, %37
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @TD_ON_SLEEPQ(%struct.thread*) #1

declare dso_local i32 @CTR3(i32, i8*, i8*, i64, i8*) #1

declare dso_local i32 @TD_IS_SLEEPING(%struct.thread*) #1

declare dso_local %struct.sleepqueue* @sleepq_lookup(i8*) #1

declare dso_local i32 @sleepq_resume_thread(%struct.sleepqueue*, %struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
