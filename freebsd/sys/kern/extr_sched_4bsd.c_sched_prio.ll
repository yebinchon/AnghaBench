; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_prio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i64, i64 }

@TDF_BORROWING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_prio(%struct.thread* %0, i64 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 2
  store i64 %6, i64* %8, align 8
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TDF_BORROWING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.thread*, %struct.thread** %3, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %40

22:                                               ; preds = %15, %2
  %23 = load %struct.thread*, %struct.thread** %3, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %5, align 8
  %26 = load %struct.thread*, %struct.thread** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @sched_priority(%struct.thread* %26, i64 %27)
  %29 = load %struct.thread*, %struct.thread** %3, align 8
  %30 = call i64 @TD_ON_LOCK(%struct.thread* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.thread*, %struct.thread** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @turnstile_adjust(%struct.thread* %37, i64 %38)
  br label %40

40:                                               ; preds = %21, %36, %32, %22
  ret void
}

declare dso_local i32 @sched_priority(%struct.thread*, i64) #1

declare dso_local i64 @TD_ON_LOCK(%struct.thread*) #1

declare dso_local i32 @turnstile_adjust(%struct.thread*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
