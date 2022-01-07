; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_doconfigtimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_doconfigtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_state = type { i32, i32 }

@timerstate = common dso_local global i32 0, align 4
@timer = common dso_local global i32 0, align 4
@busy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @doconfigtimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doconfigtimer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcpu_state*, align 8
  %4 = load i32, i32* @timerstate, align 4
  %5 = call %struct.pcpu_state* @DPCPU_PTR(i32 %4)
  store %struct.pcpu_state* %5, %struct.pcpu_state** %3, align 8
  %6 = load %struct.pcpu_state*, %struct.pcpu_state** %3, align 8
  %7 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %6, i32 0, i32 1
  %8 = call i32 @atomic_load_acq_int(i32* %7)
  switch i32 %8, label %34 [
    i32 1, label %9
    i32 2, label %22
  ]

9:                                                ; preds = %0
  %10 = call i32 (...) @sbinuptime()
  store i32 %10, i32* %2, align 4
  %11 = load %struct.pcpu_state*, %struct.pcpu_state** %3, align 8
  %12 = call i32 @ET_HW_LOCK(%struct.pcpu_state* %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @loadtimer(i32 %13, i32 1)
  %15 = load %struct.pcpu_state*, %struct.pcpu_state** %3, align 8
  %16 = call i32 @ET_HW_UNLOCK(%struct.pcpu_state* %15)
  %17 = load %struct.pcpu_state*, %struct.pcpu_state** %3, align 8
  %18 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.pcpu_state*, %struct.pcpu_state** %3, align 8
  %20 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %19, i32 0, i32 1
  %21 = call i32 @atomic_store_rel_int(i32* %20, i32 0)
  store i32 1, i32* %1, align 4
  br label %47

22:                                               ; preds = %0
  %23 = load %struct.pcpu_state*, %struct.pcpu_state** %3, align 8
  %24 = call i32 @ET_HW_LOCK(%struct.pcpu_state* %23)
  %25 = load i32, i32* @timer, align 4
  %26 = call i32 @et_stop(i32 %25)
  %27 = load %struct.pcpu_state*, %struct.pcpu_state** %3, align 8
  %28 = call i32 @ET_HW_UNLOCK(%struct.pcpu_state* %27)
  %29 = load %struct.pcpu_state*, %struct.pcpu_state** %3, align 8
  %30 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.pcpu_state*, %struct.pcpu_state** %3, align 8
  %32 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %31, i32 0, i32 1
  %33 = call i32 @atomic_store_rel_int(i32* %32, i32 0)
  store i32 1, i32* %1, align 4
  br label %47

34:                                               ; preds = %0
  %35 = load %struct.pcpu_state*, %struct.pcpu_state** %3, align 8
  %36 = getelementptr inbounds %struct.pcpu_state, %struct.pcpu_state* %35, i32 0, i32 0
  %37 = call i64 @atomic_readandclear_int(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32, i32* @busy, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = call i32 (...) @sbinuptime()
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @handleevents(i32 %44, i32 0)
  store i32 1, i32* %1, align 4
  br label %47

46:                                               ; preds = %39, %34
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %46, %42, %22, %9
  %48 = load i32, i32* %1, align 4
  ret i32 %48
}

declare dso_local %struct.pcpu_state* @DPCPU_PTR(i32) #1

declare dso_local i32 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @sbinuptime(...) #1

declare dso_local i32 @ET_HW_LOCK(%struct.pcpu_state*) #1

declare dso_local i32 @loadtimer(i32, i32) #1

declare dso_local i32 @ET_HW_UNLOCK(%struct.pcpu_state*) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32 @et_stop(i32) #1

declare dso_local i64 @atomic_readandclear_int(i32*) #1

declare dso_local i32 @handleevents(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
