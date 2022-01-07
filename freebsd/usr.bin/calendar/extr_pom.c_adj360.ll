; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_pom.c_adj360.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_pom.c_adj360.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*)* @adj360 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adj360(double* %0) #0 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  br label %3

3:                                                ; preds = %21, %1
  %4 = load double*, double** %2, align 8
  %5 = load double, double* %4, align 8
  %6 = fcmp olt double %5, 0.000000e+00
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load double*, double** %2, align 8
  %9 = load double, double* %8, align 8
  %10 = fadd double %9, 3.600000e+02
  store double %10, double* %8, align 8
  br label %21

11:                                               ; preds = %3
  %12 = load double*, double** %2, align 8
  %13 = load double, double* %12, align 8
  %14 = fcmp ogt double %13, 3.600000e+02
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load double*, double** %2, align 8
  %17 = load double, double* %16, align 8
  %18 = fsub double %17, 3.600000e+02
  store double %18, double* %16, align 8
  br label %20

19:                                               ; preds = %11
  br label %22

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %7
  br label %3

22:                                               ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
