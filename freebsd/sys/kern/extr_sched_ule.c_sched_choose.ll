; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_choose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.tdq = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PRI_MAX_IDLE = common dso_local global i32 0, align 4
@idlethread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thread* @sched_choose() #0 {
  %1 = alloca %struct.thread*, align 8
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.tdq*, align 8
  %4 = call %struct.tdq* (...) @TDQ_SELF()
  store %struct.tdq* %4, %struct.tdq** %3, align 8
  %5 = load %struct.tdq*, %struct.tdq** %3, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @TDQ_LOCK_ASSERT(%struct.tdq* %5, i32 %6)
  %8 = load %struct.tdq*, %struct.tdq** %3, align 8
  %9 = call %struct.thread* @tdq_choose(%struct.tdq* %8)
  store %struct.thread* %9, %struct.thread** %2, align 8
  %10 = load %struct.thread*, %struct.thread** %2, align 8
  %11 = icmp ne %struct.thread* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %0
  %13 = load %struct.tdq*, %struct.tdq** %3, align 8
  %14 = load %struct.thread*, %struct.thread** %2, align 8
  %15 = call i32 @tdq_runq_rem(%struct.tdq* %13, %struct.thread* %14)
  %16 = load %struct.thread*, %struct.thread** %2, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tdq*, %struct.tdq** %3, align 8
  %20 = getelementptr inbounds %struct.tdq, %struct.tdq* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.thread*, %struct.thread** %2, align 8
  store %struct.thread* %21, %struct.thread** %1, align 8
  br label %28

22:                                               ; preds = %0
  %23 = load i32, i32* @PRI_MAX_IDLE, align 4
  %24 = load %struct.tdq*, %struct.tdq** %3, align 8
  %25 = getelementptr inbounds %struct.tdq, %struct.tdq* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @idlethread, align 4
  %27 = call %struct.thread* @PCPU_GET(i32 %26)
  store %struct.thread* %27, %struct.thread** %1, align 8
  br label %28

28:                                               ; preds = %22, %12
  %29 = load %struct.thread*, %struct.thread** %1, align 8
  ret %struct.thread* %29
}

declare dso_local %struct.tdq* @TDQ_SELF(...) #1

declare dso_local i32 @TDQ_LOCK_ASSERT(%struct.tdq*, i32) #1

declare dso_local %struct.thread* @tdq_choose(%struct.tdq*) #1

declare dso_local i32 @tdq_runq_rem(%struct.tdq*, %struct.thread*) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
