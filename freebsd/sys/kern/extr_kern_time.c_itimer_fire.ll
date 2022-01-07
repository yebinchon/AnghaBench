; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_itimer_fire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_itimer_fire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimer = type { i64, %struct.TYPE_8__, %struct.TYPE_9__, i32, %struct.TYPE_7__, %struct.proc* }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.proc = type { i32 }
%struct.thread = type { i32 }

@SIGEV_SIGNAL = common dso_local global i64 0, align 8
@SIGEV_THREAD_ID = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @itimer_fire(%struct.itimer* %0) #0 {
  %2 = alloca %struct.itimer*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.thread*, align 8
  store %struct.itimer* %0, %struct.itimer** %2, align 8
  %5 = load %struct.itimer*, %struct.itimer** %2, align 8
  %6 = getelementptr inbounds %struct.itimer, %struct.itimer* %5, i32 0, i32 5
  %7 = load %struct.proc*, %struct.proc** %6, align 8
  store %struct.proc* %7, %struct.proc** %3, align 8
  %8 = load %struct.itimer*, %struct.itimer** %2, align 8
  %9 = getelementptr inbounds %struct.itimer, %struct.itimer* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SIGEV_SIGNAL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.itimer*, %struct.itimer** %2, align 8
  %16 = getelementptr inbounds %struct.itimer, %struct.itimer* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SIGEV_THREAD_ID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %86

21:                                               ; preds = %14, %1
  %22 = load %struct.proc*, %struct.proc** %3, align 8
  %23 = load %struct.itimer*, %struct.itimer** %2, align 8
  %24 = getelementptr inbounds %struct.itimer, %struct.itimer* %23, i32 0, i32 2
  %25 = call i64 @sigev_findtd(%struct.proc* %22, %struct.TYPE_9__* %24, %struct.thread** %4)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.itimer*, %struct.itimer** %2, align 8
  %29 = call i32 @ITIMER_LOCK(%struct.itimer* %28)
  %30 = load %struct.itimer*, %struct.itimer** %2, align 8
  %31 = getelementptr inbounds %struct.itimer, %struct.itimer* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = call i32 @timespecclear(i32* %32)
  %34 = load %struct.itimer*, %struct.itimer** %2, align 8
  %35 = getelementptr inbounds %struct.itimer, %struct.itimer* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i32 @timespecclear(i32* %36)
  %38 = load %struct.itimer*, %struct.itimer** %2, align 8
  %39 = getelementptr inbounds %struct.itimer, %struct.itimer* %38, i32 0, i32 3
  %40 = call i32 @callout_stop(i32* %39)
  %41 = load %struct.itimer*, %struct.itimer** %2, align 8
  %42 = call i32 @ITIMER_UNLOCK(%struct.itimer* %41)
  br label %86

43:                                               ; preds = %21
  %44 = load %struct.itimer*, %struct.itimer** %2, align 8
  %45 = getelementptr inbounds %struct.itimer, %struct.itimer* %44, i32 0, i32 1
  %46 = call i32 @KSI_ONQ(%struct.TYPE_8__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %43
  %49 = load %struct.itimer*, %struct.itimer** %2, align 8
  %50 = getelementptr inbounds %struct.itimer, %struct.itimer* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.itimer*, %struct.itimer** %2, align 8
  %53 = getelementptr inbounds %struct.itimer, %struct.itimer* %52, i32 0, i32 1
  %54 = load %struct.itimer*, %struct.itimer** %2, align 8
  %55 = getelementptr inbounds %struct.itimer, %struct.itimer* %54, i32 0, i32 2
  %56 = call i32 @ksiginfo_set_sigev(%struct.TYPE_8__* %53, %struct.TYPE_9__* %55)
  %57 = load %struct.proc*, %struct.proc** %3, align 8
  %58 = load %struct.thread*, %struct.thread** %4, align 8
  %59 = load %struct.itimer*, %struct.itimer** %2, align 8
  %60 = getelementptr inbounds %struct.itimer, %struct.itimer* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.itimer*, %struct.itimer** %2, align 8
  %64 = getelementptr inbounds %struct.itimer, %struct.itimer* %63, i32 0, i32 1
  %65 = call i32 @tdsendsignal(%struct.proc* %57, %struct.thread* %58, i32 %62, %struct.TYPE_8__* %64)
  br label %83

66:                                               ; preds = %43
  %67 = load %struct.itimer*, %struct.itimer** %2, align 8
  %68 = getelementptr inbounds %struct.itimer, %struct.itimer* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @INT_MAX, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.itimer*, %struct.itimer** %2, align 8
  %74 = getelementptr inbounds %struct.itimer, %struct.itimer* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %82

77:                                               ; preds = %66
  %78 = load i64, i64* @ERANGE, align 8
  %79 = load %struct.itimer*, %struct.itimer** %2, align 8
  %80 = getelementptr inbounds %struct.itimer, %struct.itimer* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  br label %82

82:                                               ; preds = %77, %72
  br label %83

83:                                               ; preds = %82, %48
  %84 = load %struct.proc*, %struct.proc** %3, align 8
  %85 = call i32 @PROC_UNLOCK(%struct.proc* %84)
  br label %86

86:                                               ; preds = %27, %83, %14
  ret void
}

declare dso_local i64 @sigev_findtd(%struct.proc*, %struct.TYPE_9__*, %struct.thread**) #1

declare dso_local i32 @ITIMER_LOCK(%struct.itimer*) #1

declare dso_local i32 @timespecclear(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @ITIMER_UNLOCK(%struct.itimer*) #1

declare dso_local i32 @KSI_ONQ(%struct.TYPE_8__*) #1

declare dso_local i32 @ksiginfo_set_sigev(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @tdsendsignal(%struct.proc*, %struct.thread*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
