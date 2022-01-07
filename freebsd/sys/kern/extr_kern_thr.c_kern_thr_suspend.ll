; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_kern_thr_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_thr.c_kern_thr_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.proc* }
%struct.proc = type { i32 }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i32 }

@TDP_WAKEUP = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@TDF_THRWAKEUP = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lthr\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_thr_suspend(%struct.thread* %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 2
  %12 = load %struct.proc*, %struct.proc** %11, align 8
  store %struct.proc* %12, %struct.proc** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TDP_WAKEUP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @TDP_WAKEUP, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  store i32 0, i32* %3, align 4
  br label %107

26:                                               ; preds = %2
  %27 = load %struct.timespec*, %struct.timespec** %5, align 8
  %28 = icmp ne %struct.timespec* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load %struct.timespec*, %struct.timespec** %5, align 8
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.timespec*, %struct.timespec** %5, align 8
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %40, i32* %8, align 4
  br label %45

41:                                               ; preds = %34, %29
  %42 = load %struct.timespec*, %struct.timespec** %5, align 8
  %43 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %7, %struct.timespec* %42)
  %44 = call i32 @tvtohz(%struct.timeval* %7)
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %39
  br label %46

46:                                               ; preds = %45, %26
  %47 = load %struct.proc*, %struct.proc** %6, align 8
  %48 = call i32 @PROC_LOCK(%struct.proc* %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load %struct.thread*, %struct.thread** %4, align 8
  %53 = getelementptr inbounds %struct.thread, %struct.thread* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TDF_THRWAKEUP, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.thread*, %struct.thread** %4, align 8
  %60 = bitcast %struct.thread* %59 to i8*
  %61 = load %struct.proc*, %struct.proc** %6, align 8
  %62 = getelementptr inbounds %struct.proc, %struct.proc* %61, i32 0, i32 0
  %63 = load i32, i32* @PCATCH, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @msleep(i8* %60, i32* %62, i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %58, %51, %46
  %67 = load %struct.thread*, %struct.thread** %4, align 8
  %68 = getelementptr inbounds %struct.thread, %struct.thread* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @TDF_THRWAKEUP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load %struct.thread*, %struct.thread** %4, align 8
  %75 = call i32 @thread_lock(%struct.thread* %74)
  %76 = load i32, i32* @TDF_THRWAKEUP, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.thread*, %struct.thread** %4, align 8
  %79 = getelementptr inbounds %struct.thread, %struct.thread* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.thread*, %struct.thread** %4, align 8
  %83 = call i32 @thread_unlock(%struct.thread* %82)
  %84 = load %struct.proc*, %struct.proc** %6, align 8
  %85 = call i32 @PROC_UNLOCK(%struct.proc* %84)
  store i32 0, i32* %3, align 4
  br label %107

86:                                               ; preds = %66
  %87 = load %struct.proc*, %struct.proc** %6, align 8
  %88 = call i32 @PROC_UNLOCK(%struct.proc* %87)
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @EWOULDBLOCK, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %93, i32* %8, align 4
  br label %105

94:                                               ; preds = %86
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @ERESTART, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @EINTR, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %101, %98
  br label %104

104:                                              ; preds = %103, %94
  br label %105

105:                                              ; preds = %104, %92
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %73, %19
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @msleep(i8*, i32*, i32, i8*, i32) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
