; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/include/tgmath/extr_tgmath.c_scalblnl.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/include/tgmath/extr_tgmath.c_scalblnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n_long_double = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @scalblnl(x86_fp80 %0, i64 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca i64, align 8
  store x86_fp80 %0, x86_fp80* %4, align 16
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @n_long_double, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @n_long_double, align 4
  %8 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
