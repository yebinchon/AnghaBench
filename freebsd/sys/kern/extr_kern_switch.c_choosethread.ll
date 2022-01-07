; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_switch.c_choosethread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_switch.c_choosethread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@panicstr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thread* @choosethread() #0 {
  %1 = alloca %struct.thread*, align 8
  %2 = alloca %struct.thread*, align 8
  %3 = call %struct.thread* (...) @sched_choose()
  store %struct.thread* %3, %struct.thread** %2, align 8
  %4 = load i32*, i32** @panicstr, align 8
  %5 = icmp ne i32* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i64 @__predict_false(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load %struct.thread*, %struct.thread** %2, align 8
  %11 = call %struct.thread* @choosethread_panic(%struct.thread* %10)
  store %struct.thread* %11, %struct.thread** %1, align 8
  br label %16

12:                                               ; preds = %0
  %13 = load %struct.thread*, %struct.thread** %2, align 8
  %14 = call i32 @TD_SET_RUNNING(%struct.thread* %13)
  %15 = load %struct.thread*, %struct.thread** %2, align 8
  store %struct.thread* %15, %struct.thread** %1, align 8
  br label %16

16:                                               ; preds = %12, %9
  %17 = load %struct.thread*, %struct.thread** %1, align 8
  ret %struct.thread* %17
}

declare dso_local %struct.thread* @sched_choose(...) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local %struct.thread* @choosethread_panic(%struct.thread*) #1

declare dso_local i32 @TD_SET_RUNNING(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
