; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_clock.c_DELAY.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_clock.c_DELAY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ps_per_tick = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DELAY(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @TSENTER()
  %6 = call i64 (...) @mftb()
  store volatile i64 %6, i64* %3, align 8
  %7 = load volatile i64, i64* %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = mul nsw i32 %8, 1000000
  %10 = load i32, i32* @ps_per_tick, align 4
  %11 = call i64 @howmany(i32 %9, i32 %10)
  %12 = add nsw i64 %7, %11
  store volatile i64 %12, i64* %4, align 8
  %13 = call i32 (...) @nop_prio_vlow()
  br label %14

14:                                               ; preds = %18, %1
  %15 = load volatile i64, i64* %3, align 8
  %16 = load volatile i64, i64* %4, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i64 (...) @mftb()
  store volatile i64 %19, i64* %3, align 8
  br label %14

20:                                               ; preds = %14
  %21 = call i32 (...) @nop_prio_medium()
  %22 = call i32 (...) @TSEXIT()
  ret void
}

declare dso_local i32 @TSENTER(...) #1

declare dso_local i64 @mftb(...) #1

declare dso_local i64 @howmany(i32, i32) #1

declare dso_local i32 @nop_prio_vlow(...) #1

declare dso_local i32 @nop_prio_medium(...) #1

declare dso_local i32 @TSEXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
