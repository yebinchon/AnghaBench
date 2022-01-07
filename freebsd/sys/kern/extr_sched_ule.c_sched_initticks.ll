; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_initticks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_initticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stathz = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@realstathz = common dso_local global i32 0, align 4
@SCHED_SLICE_DEFAULT_DIVISOR = common dso_local global i32 0, align 4
@sched_slice = common dso_local global i32 0, align 4
@SCHED_SLICE_MIN_DIVISOR = common dso_local global i32 0, align 4
@sched_slice_min = common dso_local global i32 0, align 4
@hogticks = common dso_local global i32 0, align 4
@SCHED_TICK_SHIFT = common dso_local global i32 0, align 4
@tickincr = common dso_local global i32 0, align 4
@sched_idlespinthresh = common dso_local global i32 0, align 4
@SCHED_AFFINITY_DEFAULT = common dso_local global i32 0, align 4
@affinity = common dso_local global i32 0, align 4
@balance_interval = common dso_local global i32 0, align 4
@balance_ticks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sched_initticks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_initticks(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @stathz, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @stathz, align 4
  br label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @hz, align 4
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  store i32 %11, i32* @realstathz, align 4
  %12 = load i32, i32* @realstathz, align 4
  %13 = load i32, i32* @SCHED_SLICE_DEFAULT_DIVISOR, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* @sched_slice, align 4
  %15 = load i32, i32* @sched_slice, align 4
  %16 = load i32, i32* @SCHED_SLICE_MIN_DIVISOR, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* @sched_slice_min, align 4
  %18 = load i32, i32* @hz, align 4
  %19 = mul nsw i32 2, %18
  %20 = load i32, i32* @sched_slice, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* @realstathz, align 4
  %23 = sdiv i32 %22, 2
  %24 = add nsw i32 %21, %23
  %25 = load i32, i32* @realstathz, align 4
  %26 = sdiv i32 %24, %25
  %27 = call i32 @imax(i32 1, i32 %26)
  store i32 %27, i32* @hogticks, align 4
  %28 = load i32, i32* @hz, align 4
  %29 = load i32, i32* @SCHED_TICK_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* @realstathz, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %10
  %37 = load i32, i32* %3, align 4
  store i32 %37, i32* @tickincr, align 4
  %38 = load i32, i32* @sched_idlespinthresh, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, i32* @hz, align 4
  %42 = mul nsw i32 6, %41
  %43 = call i32 @max(i32 10000, i32 %42)
  %44 = mul nsw i32 2, %43
  %45 = load i32, i32* @realstathz, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* @sched_idlespinthresh, align 4
  br label %47

47:                                               ; preds = %40, %36
  ret void
}

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
