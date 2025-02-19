; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_shouldpreempt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_shouldpreempt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRI_MIN_IDLE = common dso_local global i32 0, align 4
@preempt_thresh = common dso_local global i32 0, align 4
@PRI_MAX_INTERACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @sched_shouldpreempt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sched_shouldpreempt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PRI_MIN_IDLE, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %39

17:                                               ; preds = %12
  %18 = load i32, i32* @preempt_thresh, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %39

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @preempt_thresh, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %39

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @PRI_MAX_INTERACT, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PRI_MAX_INTERACT, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %39

38:                                               ; preds = %33, %29, %26
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %37, %25, %20, %16, %11
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
