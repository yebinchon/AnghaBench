; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_schedinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sched_ule.c_schedinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.td_sched = type { i32, i64, i8*, i8* }

@thread0 = common dso_local global i32 0, align 4
@ticks = common dso_local global i8* null, align 8
@curcpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @schedinit() #0 {
  %1 = alloca %struct.td_sched*, align 8
  %2 = call %struct.td_sched* @td_get_sched(i32* @thread0)
  store %struct.td_sched* %2, %struct.td_sched** %1, align 8
  %3 = load i8*, i8** @ticks, align 8
  %4 = load %struct.td_sched*, %struct.td_sched** %1, align 8
  %5 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %4, i32 0, i32 3
  store i8* %3, i8** %5, align 8
  %6 = load i8*, i8** @ticks, align 8
  %7 = load %struct.td_sched*, %struct.td_sched** %1, align 8
  %8 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %7, i32 0, i32 2
  store i8* %6, i8** %8, align 8
  %9 = load %struct.td_sched*, %struct.td_sched** %1, align 8
  %10 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @curcpu, align 4
  %12 = load %struct.td_sched*, %struct.td_sched** %1, align 8
  %13 = getelementptr inbounds %struct.td_sched, %struct.td_sched* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  ret void
}

declare dso_local %struct.td_sched* @td_get_sched(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
