; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_lend_user_prio_cond.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_lend_user_prio_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_lend_user_prio_cond(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = getelementptr inbounds %struct.thread, %struct.thread* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.thread*, %struct.thread** %3, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.thread*, %struct.thread** %3, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @min(i32 %15, i32 %18)
  %20 = icmp ne i64 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %32

22:                                               ; preds = %11
  %23 = load %struct.thread*, %struct.thread** %3, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.thread*, %struct.thread** %3, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %32

31:                                               ; preds = %22
  br label %40

32:                                               ; preds = %30, %21, %10
  %33 = load %struct.thread*, %struct.thread** %3, align 8
  %34 = call i32 @thread_lock(%struct.thread* %33)
  %35 = load %struct.thread*, %struct.thread** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @sched_lend_user_prio(%struct.thread* %35, i32 %36)
  %38 = load %struct.thread*, %struct.thread** %3, align 8
  %39 = call i32 @thread_unlock(%struct.thread* %38)
  br label %40

40:                                               ; preds = %32, %31
  ret void
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @sched_lend_user_prio(%struct.thread*, i32) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
