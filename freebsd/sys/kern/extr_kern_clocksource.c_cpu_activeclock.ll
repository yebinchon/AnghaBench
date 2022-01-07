; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_cpu_activeclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_cpu_activeclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.pcpu_state = type { i64, i32 }

@timerstate = common dso_local global i32 0, align 4
@busy = common dso_local global i64 0, align 8
@periodic = common dso_local global i64 0, align 8
@KTR_SPARE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"active at %d:  now  %d.%08x\00", align 1
@curcpu = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_activeclock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pcpu_state*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = load i32, i32* @timerstate, align 4
  %5 = call %struct.pcpu_state* @DPCPU_PTR(i32 %4)
  store %struct.pcpu_state* %5, %struct.pcpu_state** %2, align 8
  %6 = load %struct.pcpu_state*, %struct.pcpu_state** %2, align 8
  %7 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i64, i64* @busy, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %0
  br label %43

14:                                               ; preds = %10
  %15 = load i64, i64* @periodic, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.pcpu_state*, %struct.pcpu_state** %2, align 8
  %19 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %1, align 4
  br label %23

21:                                               ; preds = %14
  %22 = call i32 (...) @sbinuptime()
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* @KTR_SPARE2, align 4
  %25 = load i32, i32* @curcpu, align 4
  %26 = load i32, i32* %1, align 4
  %27 = ashr i32 %26, 32
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @CTR3(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27, i32 %28)
  %30 = call i32 (...) @spinlock_enter()
  %31 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %31, %struct.thread** %3, align 8
  %32 = load %struct.thread*, %struct.thread** %3, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @handleevents(i32 %36, i32 1)
  %38 = load %struct.thread*, %struct.thread** %3, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = call i32 (...) @spinlock_exit()
  br label %43

43:                                               ; preds = %23, %13
  ret void
}

declare dso_local %struct.pcpu_state* @DPCPU_PTR(i32) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @CTR3(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spinlock_enter(...) #1

declare dso_local i32 @handleevents(i32, i32) #1

declare dso_local i32 @spinlock_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
