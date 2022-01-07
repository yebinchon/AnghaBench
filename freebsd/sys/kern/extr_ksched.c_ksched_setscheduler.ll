; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_ksched.c_ksched_setscheduler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_ksched.c_ksched_setscheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksched = type { i32 }
%struct.thread = type { i32 }
%struct.sched_param = type { i64 }
%struct.rtprio = type { i32, i32 }

@P1B_PRIO_MIN = common dso_local global i64 0, align 8
@P1B_PRIO_MAX = common dso_local global i64 0, align 8
@RTP_PRIO_FIFO = common dso_local global i32 0, align 4
@RTP_PRIO_REALTIME = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PRI_MAX_TIMESHARE = common dso_local global i64 0, align 8
@PRI_MIN_TIMESHARE = common dso_local global i64 0, align 8
@RTP_PRIO_NORMAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ksched_setscheduler(%struct.ksched* %0, %struct.thread* %1, i32 %2, %struct.sched_param* %3) #0 {
  %5 = alloca %struct.ksched*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sched_param*, align 8
  %9 = alloca %struct.rtprio, align 4
  %10 = alloca i32, align 4
  store %struct.ksched* %0, %struct.ksched** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sched_param* %3, %struct.sched_param** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %70 [
    i32 128, label %12
    i32 130, label %12
    i32 129, label %44
  ]

12:                                               ; preds = %4, %4
  %13 = load %struct.sched_param*, %struct.sched_param** %8, align 8
  %14 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @P1B_PRIO_MIN, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load %struct.sched_param*, %struct.sched_param** %8, align 8
  %20 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @P1B_PRIO_MAX, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load %struct.sched_param*, %struct.sched_param** %8, align 8
  %26 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @p4prio_to_rtpprio(i64 %27)
  %29 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 130
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @RTP_PRIO_FIFO, align 4
  br label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @RTP_PRIO_REALTIME, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %9, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.thread*, %struct.thread** %6, align 8
  %40 = call i32 @rtp_to_pri(%struct.rtprio* %9, %struct.thread* %39)
  br label %43

41:                                               ; preds = %18, %12
  %42 = load i32, i32* @EPERM, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %41, %36
  br label %72

44:                                               ; preds = %4
  %45 = load %struct.sched_param*, %struct.sched_param** %8, align 8
  %46 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load %struct.sched_param*, %struct.sched_param** %8, align 8
  %51 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PRI_MAX_TIMESHARE, align 8
  %54 = load i64, i64* @PRI_MIN_TIMESHARE, align 8
  %55 = sub nsw i64 %53, %54
  %56 = icmp sle i64 %52, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load i32, i32* @RTP_PRIO_NORMAL, align 4
  %59 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %9, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load %struct.sched_param*, %struct.sched_param** %8, align 8
  %61 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @p4prio_to_tsprio(i64 %62)
  %64 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %9, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load %struct.thread*, %struct.thread** %6, align 8
  %66 = call i32 @rtp_to_pri(%struct.rtprio* %9, %struct.thread* %65)
  br label %69

67:                                               ; preds = %49, %44
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %67, %57
  br label %72

70:                                               ; preds = %4
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %70, %69, %43
  %73 = load i32, i32* %10, align 4
  ret i32 %73
}

declare dso_local i32 @p4prio_to_rtpprio(i64) #1

declare dso_local i32 @rtp_to_pri(%struct.rtprio*, %struct.thread*) #1

declare dso_local i32 @p4prio_to_tsprio(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
