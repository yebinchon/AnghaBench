; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_grouptaskqueue_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_gtaskqueue.c_grouptaskqueue_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtaskqueue = type { i32, i32, i32 (i32)*, i32 }
%struct.gtask = type { i32 }

@TASK_ENQUEUED = common dso_local global i32 0, align 4
@TASK_NOENQUEUE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ta_link = common dso_local global i32 0, align 4
@TQ_FLAGS_BLOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @grouptaskqueue_enqueue(%struct.gtaskqueue* %0, %struct.gtask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gtaskqueue*, align 8
  %5 = alloca %struct.gtask*, align 8
  store %struct.gtaskqueue* %0, %struct.gtaskqueue** %4, align 8
  store %struct.gtask* %1, %struct.gtask** %5, align 8
  %6 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %7 = call i32 @TQ_LOCK(%struct.gtaskqueue* %6)
  %8 = load %struct.gtask*, %struct.gtask** %5, align 8
  %9 = getelementptr inbounds %struct.gtask, %struct.gtask* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TASK_ENQUEUED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %16 = call i32 @TQ_UNLOCK(%struct.gtaskqueue* %15)
  store i32 0, i32* %3, align 4
  br label %56

17:                                               ; preds = %2
  %18 = load %struct.gtask*, %struct.gtask** %5, align 8
  %19 = getelementptr inbounds %struct.gtask, %struct.gtask* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TASK_NOENQUEUE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %26 = call i32 @TQ_UNLOCK(%struct.gtaskqueue* %25)
  %27 = load i32, i32* @EAGAIN, align 4
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %17
  %29 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %30 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %29, i32 0, i32 3
  %31 = load %struct.gtask*, %struct.gtask** %5, align 8
  %32 = load i32, i32* @ta_link, align 4
  %33 = call i32 @STAILQ_INSERT_TAIL(i32* %30, %struct.gtask* %31, i32 %32)
  %34 = load i32, i32* @TASK_ENQUEUED, align 4
  %35 = load %struct.gtask*, %struct.gtask** %5, align 8
  %36 = getelementptr inbounds %struct.gtask, %struct.gtask* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %40 = call i32 @TQ_UNLOCK(%struct.gtaskqueue* %39)
  %41 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %42 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TQ_FLAGS_BLOCKED, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %28
  %48 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %49 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %48, i32 0, i32 2
  %50 = load i32 (i32)*, i32 (i32)** %49, align 8
  %51 = load %struct.gtaskqueue*, %struct.gtaskqueue** %4, align 8
  %52 = getelementptr inbounds %struct.gtaskqueue, %struct.gtaskqueue* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 %50(i32 %53)
  br label %55

55:                                               ; preds = %47, %28
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %24, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @TQ_LOCK(%struct.gtaskqueue*) #1

declare dso_local i32 @TQ_UNLOCK(%struct.gtaskqueue*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.gtask*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
