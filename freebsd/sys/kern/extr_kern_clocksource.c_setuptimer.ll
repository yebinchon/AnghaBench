; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_setuptimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_setuptimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@periodic = common dso_local global i32 0, align 4
@timer = common dso_local global %struct.TYPE_3__* null, align 8
@ET_FLAGS_PERIODIC = common dso_local global i32 0, align 4
@ET_FLAGS_ONESHOT = common dso_local global i32 0, align 4
@singlemul = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@profiling = common dso_local global i64 0, align 8
@profhz = common dso_local global i32 0, align 4
@stathz = common dso_local global i32 0, align 4
@SBT_1S = common dso_local global i32 0, align 4
@timerperiod = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setuptimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setuptimer() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @periodic, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timer, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ET_FLAGS_PERIODIC, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  store i32 0, i32* @periodic, align 4
  br label %24

12:                                               ; preds = %4, %0
  %13 = load i32, i32* @periodic, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timer, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ET_FLAGS_ONESHOT, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, i32* @periodic, align 4
  br label %23

23:                                               ; preds = %22, %15, %12
  br label %24

24:                                               ; preds = %23, %11
  %25 = load i32, i32* @singlemul, align 4
  %26 = call i32 @MAX(i32 %25, i32 1)
  %27 = call i32 @MIN(i32 %26, i32 20)
  store i32 %27, i32* @singlemul, align 4
  %28 = load i32, i32* @hz, align 4
  %29 = load i32, i32* @singlemul, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %42, %24
  %32 = load i32, i32* %1, align 4
  %33 = load i64, i64* @profiling, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @profhz, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @stathz, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = icmp slt i32 %32, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @hz, align 4
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %1, align 4
  br label %31

46:                                               ; preds = %39
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timer, align 8
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @round_freq(%struct.TYPE_3__* %47, i32 %48)
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* @SBT_1S, align 4
  %51 = load i32, i32* %1, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* @timerperiod, align 4
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @round_freq(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
