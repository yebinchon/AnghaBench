; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_huge_plus.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_huge_plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERANGE = common dso_local global i32 0, align 4
@HUGE_VAL = common dso_local global double 0.000000e+00, align 8
@HUGE_VALF = common dso_local global double 0.000000e+00, align 8
@HUGE_VALL = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, i32)* @huge_plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @huge_plus(double %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ERANGE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load double, double* %4, align 8
  %11 = load double, double* @HUGE_VAL, align 8
  %12 = fcmp oeq double %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load double, double* %4, align 8
  %15 = load double, double* @HUGE_VALF, align 8
  %16 = fcmp oeq double %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load double, double* %4, align 8
  %19 = load double, double* @HUGE_VALL, align 8
  %20 = fcmp oeq double %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13, %9
  store i32 1, i32* %3, align 4
  br label %24

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %21
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
