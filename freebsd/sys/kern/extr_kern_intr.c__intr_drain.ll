; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c__intr_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c__intr_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_event = type { %struct.intr_thread* }
%struct.intr_thread = type { i32, %struct.thread* }
%struct.thread = type { i32 }

@IT_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"idrain\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_intr_drain(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intr_event*, align 8
  %4 = alloca %struct.intr_thread*, align 8
  %5 = alloca %struct.thread*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.intr_event* @intr_lookup(i32 %6)
  store %struct.intr_event* %7, %struct.intr_event** %3, align 8
  %8 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %9 = icmp eq %struct.intr_event* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %13 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %12, i32 0, i32 0
  %14 = load %struct.intr_thread*, %struct.intr_thread** %13, align 8
  %15 = icmp eq %struct.intr_thread* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %52

17:                                               ; preds = %11
  %18 = load %struct.intr_event*, %struct.intr_event** %3, align 8
  %19 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %18, i32 0, i32 0
  %20 = load %struct.intr_thread*, %struct.intr_thread** %19, align 8
  store %struct.intr_thread* %20, %struct.intr_thread** %4, align 8
  %21 = load %struct.intr_thread*, %struct.intr_thread** %4, align 8
  %22 = getelementptr inbounds %struct.intr_thread, %struct.intr_thread* %21, i32 0, i32 1
  %23 = load %struct.thread*, %struct.thread** %22, align 8
  store %struct.thread* %23, %struct.thread** %5, align 8
  %24 = load %struct.thread*, %struct.thread** %5, align 8
  %25 = call i32 @thread_lock(%struct.thread* %24)
  %26 = load %struct.thread*, %struct.thread** %5, align 8
  %27 = call i32 @TD_AWAITING_INTR(%struct.thread* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* @IT_WAIT, align 4
  %31 = load %struct.intr_thread*, %struct.intr_thread** %4, align 8
  %32 = getelementptr inbounds %struct.intr_thread, %struct.intr_thread* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %42, %29
  %36 = load %struct.intr_thread*, %struct.intr_thread** %4, align 8
  %37 = getelementptr inbounds %struct.intr_thread, %struct.intr_thread* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IT_WAIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.thread*, %struct.thread** %5, align 8
  %44 = call i32 @thread_unlock(%struct.thread* %43)
  %45 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1)
  %46 = load %struct.thread*, %struct.thread** %5, align 8
  %47 = call i32 @thread_lock(%struct.thread* %46)
  br label %35

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %17
  %50 = load %struct.thread*, %struct.thread** %5, align 8
  %51 = call i32 @thread_unlock(%struct.thread* %50)
  br label %52

52:                                               ; preds = %49, %16, %10
  ret void
}

declare dso_local %struct.intr_event* @intr_lookup(i32) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @TD_AWAITING_INTR(%struct.thread*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
