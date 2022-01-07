; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_cpu_idleclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_cpu_idleclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pcpu_state = type { i32, i32, i32 }

@idletick = common dso_local global i64 0, align 8
@busy = common dso_local global i64 0, align 8
@periodic = common dso_local global i64 0, align 8
@timer = common dso_local global %struct.TYPE_2__* null, align 8
@ET_FLAGS_PERCPU = common dso_local global i32 0, align 4
@timerstate = common dso_local global i32 0, align 4
@KTR_SPARE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"idle at %d:    now  %d.%08x\00", align 1
@curcpu = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_idleclock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcpu_state*, align 8
  %5 = load i64, i64* @idletick, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* @busy, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = load i64, i64* @periodic, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @timer, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ET_FLAGS_PERCPU, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %7, %0
  store i32 -1, i32* %1, align 4
  br label %59

21:                                               ; preds = %13, %10
  %22 = load i32, i32* @timerstate, align 4
  %23 = call %struct.pcpu_state* @DPCPU_PTR(i32 %22)
  store %struct.pcpu_state* %23, %struct.pcpu_state** %4, align 8
  %24 = load i64, i64* @periodic, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.pcpu_state*, %struct.pcpu_state** %4, align 8
  %28 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  br label %32

30:                                               ; preds = %21
  %31 = call i32 (...) @sbinuptime()
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* @KTR_SPARE2, align 4
  %34 = load i64, i64* @curcpu, align 8
  %35 = load i32, i32* %2, align 4
  %36 = ashr i32 %35, 32
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @CTR3(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %36, i32 %37)
  %39 = call i32 @getnextcpuevent(i32 1)
  store i32 %39, i32* %3, align 4
  %40 = load %struct.pcpu_state*, %struct.pcpu_state** %4, align 8
  %41 = call i32 @ET_HW_LOCK(%struct.pcpu_state* %40)
  %42 = load %struct.pcpu_state*, %struct.pcpu_state** %4, align 8
  %43 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.pcpu_state*, %struct.pcpu_state** %4, align 8
  %46 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* @periodic, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @loadtimer(i32 %50, i32 0)
  br label %52

52:                                               ; preds = %49, %32
  %53 = load %struct.pcpu_state*, %struct.pcpu_state** %4, align 8
  %54 = call i32 @ET_HW_UNLOCK(%struct.pcpu_state* %53)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %2, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 @MAX(i32 %57, i32 0)
  store i32 %58, i32* %1, align 4
  br label %59

59:                                               ; preds = %52, %20
  %60 = load i32, i32* %1, align 4
  ret i32 %60
}

declare dso_local %struct.pcpu_state* @DPCPU_PTR(i32) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @CTR3(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @getnextcpuevent(i32) #1

declare dso_local i32 @ET_HW_LOCK(%struct.pcpu_state*) #1

declare dso_local i32 @loadtimer(i32, i32) #1

declare dso_local i32 @ET_HW_UNLOCK(%struct.pcpu_state*) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
