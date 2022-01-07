; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_ksched.c_ksched_setparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_ksched.c_ksched_setparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksched = type { i32 }
%struct.thread = type { i32 }
%struct.sched_param = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ksched_setparam(%struct.ksched* %0, %struct.thread* %1, %struct.sched_param* %2) #0 {
  %4 = alloca %struct.ksched*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.sched_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ksched* %0, %struct.ksched** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  store %struct.sched_param* %2, %struct.sched_param** %6, align 8
  %9 = load %struct.ksched*, %struct.ksched** %4, align 8
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = call i32 @getscheduler(%struct.ksched* %9, %struct.thread* %10, i32* %8)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.ksched*, %struct.ksched** %4, align 8
  %16 = load %struct.thread*, %struct.thread** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.sched_param*, %struct.sched_param** %6, align 8
  %19 = call i32 @ksched_setscheduler(%struct.ksched* %15, %struct.thread* %16, i32 %17, %struct.sched_param* %18)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %14, %3
  %21 = load i32, i32* %7, align 4
  ret i32 %21
}

declare dso_local i32 @getscheduler(%struct.ksched*, %struct.thread*, i32*) #1

declare dso_local i32 @ksched_setscheduler(%struct.ksched*, %struct.thread*, i32, %struct.sched_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
