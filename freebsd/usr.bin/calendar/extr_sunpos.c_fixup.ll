; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_sunpos.c_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_sunpos.c_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double*)* @fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @fixup(double* %0) #0 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  %3 = load double*, double** %2, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp olt double %4, 0.000000e+00
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %11, %6
  %8 = load double*, double** %2, align 8
  %9 = load double, double* %8, align 8
  %10 = fcmp olt double %9, 0.000000e+00
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load double*, double** %2, align 8
  %13 = load double, double* %12, align 8
  %14 = fadd double %13, 3.600000e+02
  store double %14, double* %12, align 8
  br label %7

15:                                               ; preds = %7
  br label %26

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %21, %16
  %18 = load double*, double** %2, align 8
  %19 = load double, double* %18, align 8
  %20 = fcmp ogt double %19, 3.600000e+02
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load double*, double** %2, align 8
  %23 = load double, double* %22, align 8
  %24 = fsub double %23, 3.600000e+02
  store double %24, double* %22, align 8
  br label %17

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %15
  %27 = load double*, double** %2, align 8
  %28 = load double, double* %27, align 8
  ret double %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
