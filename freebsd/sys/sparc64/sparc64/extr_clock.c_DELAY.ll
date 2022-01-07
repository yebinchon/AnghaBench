; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_clock.c_DELAY.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_clock.c_DELAY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tick = common dso_local global i32 0, align 4
@clock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DELAY(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %28

7:                                                ; preds = %1
  %8 = call i32 (...) @TSENTER()
  %9 = call i32 (...) @sched_pin()
  %10 = load i32, i32* @tick, align 4
  %11 = call i32 @rd(i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @clock, align 4
  %14 = call i32 @PCPU_GET(i32 %13)
  %15 = mul nsw i32 %12, %14
  %16 = sdiv i32 %15, 1000000
  %17 = add nsw i32 %11, %16
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %23, %7
  %19 = load i32, i32* @tick, align 4
  %20 = call i32 @rd(i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (...) @cpu_spinwait()
  br label %18

25:                                               ; preds = %18
  %26 = call i32 (...) @sched_unpin()
  %27 = call i32 (...) @TSEXIT()
  br label %28

28:                                               ; preds = %25, %6
  ret void
}

declare dso_local i32 @TSENTER(...) #1

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32 @rd(i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @sched_unpin(...) #1

declare dso_local i32 @TSEXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
