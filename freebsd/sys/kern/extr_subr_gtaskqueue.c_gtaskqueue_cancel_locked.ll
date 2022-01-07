; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_gtaskqueue_cancel_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_gtaskqueue_cancel_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtaskqueue = type { i32 }
%struct.gtask = type { i32 }

@TASK_ENQUEUED = common dso_local global i32 0, align 4
@ta_link = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gtaskqueue*, %struct.gtask*)* @gtaskqueue_cancel_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtaskqueue_cancel_locked(%struct.gtaskqueue* %0, %struct.gtask* %1) #0 {
  %3 = alloca %struct.gtaskqueue*, align 8
  %4 = alloca %struct.gtask*, align 8
  store %struct.gtaskqueue* %0, %struct.gtaskqueue** %3, align 8
  store %struct.gtask* %1, %struct.gtask** %4, align 8
  %5 = load %struct.gtask*, %struct.gtask** %4, align 8
  %6 = getelementptr inbounds %struct.gtask, %struct.gtask* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TASK_ENQUEUED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.gtaskqueue*, %struct.gtaskqueue** %3, align 8
  %13 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %12, i32 0, i32 0
  %14 = load %struct.gtask*, %struct.gtask** %4, align 8
  %15 = load %struct.gtask*, %struct.gtask** %4, align 8
  %16 = load i32, i32* @ta_link, align 4
  %17 = call i32 @STAILQ_REMOVE(i32* %13, %struct.gtask* %14, %struct.gtask* %15, i32 %16)
  br label %18

18:                                               ; preds = %11, %2
  %19 = load i32, i32* @TASK_ENQUEUED, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.gtask*, %struct.gtask** %4, align 8
  %22 = getelementptr inbounds %struct.gtask, %struct.gtask* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.gtaskqueue*, %struct.gtaskqueue** %3, align 8
  %26 = load %struct.gtask*, %struct.gtask** %4, align 8
  %27 = call i64 @task_is_running(%struct.gtaskqueue* %25, %struct.gtask* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @EBUSY, align 4
  br label %32

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  ret i32 %33
}

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.gtask*, %struct.gtask*, i32) #1

declare dso_local i64 @task_is_running(%struct.gtaskqueue*, %struct.gtask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
