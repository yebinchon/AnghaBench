; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_switch_migrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_sched_switch_migrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i32 }
%struct.tdq = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"sched_switch_migrate: thread %s queued on absent CPU %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtx* (%struct.tdq*, %struct.thread*, i32)* @sched_switch_migrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtx* @sched_switch_migrate(%struct.tdq* %0, %struct.thread* %1, i32 %2) #0 {
  %4 = alloca %struct.tdq*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tdq*, align 8
  store %struct.tdq* %0, %struct.tdq** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.thread*, %struct.thread** %5, align 8
  %9 = call %struct.TYPE_2__* @td_get_sched(%struct.thread* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @CPU_ABSENT(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.thread*, %struct.thread** %5, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.thread*, %struct.thread** %5, align 8
  %20 = call %struct.TYPE_2__* @td_get_sched(%struct.thread* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %15, i8* %24)
  %26 = load %struct.thread*, %struct.thread** %5, align 8
  %27 = call %struct.TYPE_2__* @td_get_sched(%struct.thread* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.tdq* @TDQ_CPU(i32 %29)
  store %struct.tdq* %30, %struct.tdq** %7, align 8
  %31 = load %struct.tdq*, %struct.tdq** %7, align 8
  %32 = call %struct.mtx* @TDQ_LOCKPTR(%struct.tdq* %31)
  ret %struct.mtx* %32
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CPU_ABSENT(i32) #1

declare dso_local %struct.TYPE_2__* @td_get_sched(%struct.thread*) #1

declare dso_local %struct.tdq* @TDQ_CPU(i32) #1

declare dso_local %struct.mtx* @TDQ_LOCKPTR(%struct.tdq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
