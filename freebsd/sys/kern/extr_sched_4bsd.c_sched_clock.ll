; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_4bsd.c_sched_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.pcpuidlestat = type { i64, i64 }
%struct.td_sched = type { i32, i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@INVERSE_ESTCPU_WEIGHT = common dso_local global i32 0, align 4
@sched_slice = common dso_local global i64 0, align 8
@TDF_NEEDRESCHED = common dso_local global i32 0, align 4
@TDF_SLICEEND = common dso_local global i32 0, align 4
@idlestat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_clock(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.pcpuidlestat*, align 8
  %4 = alloca %struct.td_sched*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %5 = load %struct.thread*, %struct.thread** %2, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @THREAD_LOCK_ASSERT(%struct.thread* %5, i32 %6)
  %8 = load %struct.thread*, %struct.thread** %2, align 8
  %9 = call %struct.td_sched* @td_get_sched(%struct.thread* %8)
  store %struct.td_sched* %9, %struct.td_sched** %4, align 8
  %10 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %11 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %15 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  %18 = call i32 @ESTCPULIM(i32 %17)
  %19 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %20 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %22 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @INVERSE_ESTCPU_WEIGHT, align 4
  %25 = srem i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.thread*, %struct.thread** %2, align 8
  %29 = call i32 @resetpriority(%struct.thread* %28)
  %30 = load %struct.thread*, %struct.thread** %2, align 8
  %31 = call i32 @resetpriority_thread(%struct.thread* %30)
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.thread*, %struct.thread** %2, align 8
  %34 = call i32 @TD_IS_IDLETHREAD(%struct.thread* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %32
  %37 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %38 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load i64, i64* @sched_slice, align 8
  %44 = load %struct.td_sched*, %struct.td_sched** %4, align 8
  %45 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @TDF_NEEDRESCHED, align 4
  %47 = load i32, i32* @TDF_SLICEEND, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.thread*, %struct.thread** %2, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %42, %36, %32
  %54 = load i32, i32* @idlestat, align 4
  %55 = call %struct.pcpuidlestat* @DPCPU_PTR(i32 %54)
  store %struct.pcpuidlestat* %55, %struct.pcpuidlestat** %3, align 8
  %56 = load %struct.pcpuidlestat*, %struct.pcpuidlestat** %3, align 8
  %57 = getelementptr inbounds %struct.pcpuidlestat, %struct.pcpuidlestat* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.pcpuidlestat*, %struct.pcpuidlestat** %3, align 8
  %60 = getelementptr inbounds %struct.pcpuidlestat, %struct.pcpuidlestat* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.pcpuidlestat*, %struct.pcpuidlestat** %3, align 8
  %62 = getelementptr inbounds %struct.pcpuidlestat, %struct.pcpuidlestat* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  ret void
}

declare dso_local i32 @THREAD_LOCK_ASSERT(%struct.thread*, i32) #1

declare dso_local %struct.td_sched* @td_get_sched(%struct.thread*) #1

declare dso_local i32 @ESTCPULIM(i32) #1

declare dso_local i32 @resetpriority(%struct.thread*) #1

declare dso_local i32 @resetpriority_thread(%struct.thread*) #1

declare dso_local i32 @TD_IS_IDLETHREAD(%struct.thread*) #1

declare dso_local %struct.pcpuidlestat* @DPCPU_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
