; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_hardclockintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_hardclockintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_state = type { i32 }

@busy = common dso_local global i64 0, align 8
@FILTER_HANDLED = common dso_local global i32 0, align 4
@timerstate = common dso_local global i32 0, align 4
@KTR_SPARE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ipi  at %d:    now  %d.%08x\00", align 1
@curcpu = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hardclockintr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcpu_state*, align 8
  %4 = alloca i32, align 4
  %5 = call i64 (...) @doconfigtimer()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* @busy, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7, %0
  %11 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %11, i32* %1, align 4
  br label %34

12:                                               ; preds = %7
  %13 = load i32, i32* @timerstate, align 4
  %14 = call %struct.pcpu_state* @DPCPU_PTR(i32 %13)
  store %struct.pcpu_state* %14, %struct.pcpu_state** %3, align 8
  %15 = load %struct.pcpu_state*, %struct.pcpu_state** %3, align 8
  %16 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* @KTR_SPARE2, align 4
  %19 = load i32, i32* @curcpu, align 4
  %20 = load i32, i32* %2, align 4
  %21 = ashr i32 %20, 32
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @CTR3(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @handleevents(i32 %24, i32 0)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %12
  %29 = load i32, i32* @FILTER_HANDLED, align 4
  br label %32

30:                                               ; preds = %12
  %31 = load i32, i32* @FILTER_STRAY, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %10
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i64 @doconfigtimer(...) #1

declare dso_local %struct.pcpu_state* @DPCPU_PTR(i32) #1

declare dso_local i32 @CTR3(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @handleevents(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
