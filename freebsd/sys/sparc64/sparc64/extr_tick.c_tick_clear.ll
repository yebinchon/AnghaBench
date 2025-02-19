; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tick.c_tick_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_tick.c_tick_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_IMPL_SPARC64V = common dso_local global i64 0, align 8
@CPU_IMPL_ULTRASPARCIII = common dso_local global i64 0, align 8
@tick = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tick_clear(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @CPU_IMPL_SPARC64V, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @CPU_IMPL_ULTRASPARCIII, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %1
  %11 = call i32 @wrstick(i32 0, i32 0)
  br label %12

12:                                               ; preds = %10, %6
  %13 = load i32, i32* @tick, align 4
  %14 = call i32 @wrpr(i32 %13, i32 0, i32 0)
  ret void
}

declare dso_local i32 @wrstick(i32, i32) #1

declare dso_local i32 @wrpr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
