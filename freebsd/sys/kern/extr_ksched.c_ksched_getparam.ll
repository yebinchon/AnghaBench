; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_ksched.c_ksched_getparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_ksched.c_ksched_getparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksched = type { i32 }
%struct.thread = type { i32 }
%struct.sched_param = type { i64 }
%struct.rtprio = type { i64, i32 }

@PRI_MIN_TIMESHARE = common dso_local global i64 0, align 8
@PRI_MAX_TIMESHARE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ksched_getparam(%struct.ksched* %0, %struct.thread* %1, %struct.sched_param* %2) #0 {
  %4 = alloca %struct.ksched*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.sched_param*, align 8
  %7 = alloca %struct.rtprio, align 8
  store %struct.ksched* %0, %struct.ksched** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  store %struct.sched_param* %2, %struct.sched_param** %6, align 8
  %8 = load %struct.thread*, %struct.thread** %5, align 8
  %9 = call i32 @pri_to_rtp(%struct.thread* %8, %struct.rtprio* %7)
  %10 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %7, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @RTP_PRIO_IS_REALTIME(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @rtpprio_to_p4prio(i64 %16)
  %18 = load %struct.sched_param*, %struct.sched_param** %6, align 8
  %19 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %38

20:                                               ; preds = %3
  %21 = load i64, i64* @PRI_MIN_TIMESHARE, align 8
  %22 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i64, i64* @PRI_MAX_TIMESHARE, align 8
  %27 = load i64, i64* @PRI_MIN_TIMESHARE, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load %struct.sched_param*, %struct.sched_param** %6, align 8
  %30 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %37

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %7, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @tsprio_to_p4prio(i64 %33)
  %35 = load %struct.sched_param*, %struct.sched_param** %6, align 8
  %36 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %25
  br label %38

38:                                               ; preds = %37, %14
  ret i32 0
}

declare dso_local i32 @pri_to_rtp(%struct.thread*, %struct.rtprio*) #1

declare dso_local i64 @RTP_PRIO_IS_REALTIME(i32) #1

declare dso_local i64 @rtpprio_to_p4prio(i64) #1

declare dso_local i64 @tsprio_to_p4prio(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
