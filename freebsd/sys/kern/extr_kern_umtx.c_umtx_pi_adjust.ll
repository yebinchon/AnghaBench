; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_pi_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_pi_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.umtx_q* }
%struct.umtx_q = type { %struct.umtx_pi* }
%struct.umtx_pi = type { i32 }

@umtx_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @umtx_pi_adjust(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umtx_q*, align 8
  %6 = alloca %struct.umtx_pi*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load %struct.umtx_q*, %struct.umtx_q** %8, align 8
  store %struct.umtx_q* %9, %struct.umtx_q** %5, align 8
  %10 = call i32 @mtx_lock(i32* @umtx_lock)
  %11 = load %struct.umtx_q*, %struct.umtx_q** %5, align 8
  %12 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %11, i32 0, i32 0
  %13 = load %struct.umtx_pi*, %struct.umtx_pi** %12, align 8
  store %struct.umtx_pi* %13, %struct.umtx_pi** %6, align 8
  %14 = load %struct.umtx_pi*, %struct.umtx_pi** %6, align 8
  %15 = icmp ne %struct.umtx_pi* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.umtx_pi*, %struct.umtx_pi** %6, align 8
  %18 = load %struct.thread*, %struct.thread** %3, align 8
  %19 = call i32 @umtx_pi_adjust_thread(%struct.umtx_pi* %17, %struct.thread* %18)
  %20 = load %struct.umtx_pi*, %struct.umtx_pi** %6, align 8
  %21 = call i32 @umtx_repropagate_priority(%struct.umtx_pi* %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = call i32 @mtx_unlock(i32* @umtx_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @umtx_pi_adjust_thread(%struct.umtx_pi*, %struct.thread*) #1

declare dso_local i32 @umtx_repropagate_priority(%struct.umtx_pi*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
