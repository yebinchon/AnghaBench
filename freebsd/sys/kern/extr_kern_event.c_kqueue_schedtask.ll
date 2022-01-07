; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_schedtask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_kqueue_schedtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32, i32 }

@KQ_TASKDRAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"scheduling kqueue task while draining\00", align 1
@KQ_TASKSCHED = common dso_local global i32 0, align 4
@taskqueue_kqueue_ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kqueue*)* @kqueue_schedtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqueue_schedtask(%struct.kqueue* %0) #0 {
  %2 = alloca %struct.kqueue*, align 8
  store %struct.kqueue* %0, %struct.kqueue** %2, align 8
  %3 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %4 = call i32 @KQ_OWNED(%struct.kqueue* %3)
  %5 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %6 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @KQ_TASKDRAIN, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @KQ_TASKDRAIN, align 4
  %11 = icmp ne i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %15 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @KQ_TASKSCHED, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @KQ_TASKSCHED, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load i32, i32* @taskqueue_kqueue_ctx, align 4
  %23 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %24 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %23, i32 0, i32 1
  %25 = call i32 @taskqueue_enqueue(i32 %22, i32* %24)
  %26 = load i32, i32* @KQ_TASKSCHED, align 4
  %27 = load %struct.kqueue*, %struct.kqueue** %2, align 8
  %28 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @KQ_OWNED(%struct.kqueue*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
