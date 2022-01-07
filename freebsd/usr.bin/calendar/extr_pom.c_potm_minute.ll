; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_pom.c_potm_minute.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_pom.c_potm_minute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSECSPERDAY = common dso_local global double 0.000000e+00, align 8
@SECSPERDAY = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, i32)* @potm_minute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @potm_minute(double %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load double, double* @FSECSPERDAY, align 8
  %12 = fdiv double %11, 2.000000e+00
  store double %12, double* %5, align 8
  %13 = load double, double* %3, align 8
  %14 = load double, double* %5, align 8
  %15 = load double, double* @SECSPERDAY, align 8
  %16 = fdiv double %14, %15
  %17 = fadd double %13, %16
  store double %17, double* %6, align 8
  %18 = load double, double* %5, align 8
  %19 = fdiv double %18, 2.000000e+00
  store double %19, double* %5, align 8
  br label %20

20:                                               ; preds = %52, %2
  %21 = load double, double* %5, align 8
  %22 = fcmp ogt double %21, 3.000000e+01
  br i1 %22, label %23, label %55

23:                                               ; preds = %20
  %24 = load double, double* %6, align 8
  %25 = load double, double* @SECSPERDAY, align 8
  %26 = fdiv double 2.000000e+00, %25
  %27 = fadd double %24, %26
  store double %27, double* %7, align 8
  %28 = load double, double* %6, align 8
  %29 = call double @potm(double %28)
  store double %29, double* %8, align 8
  %30 = load double, double* %7, align 8
  %31 = call double @potm(double %30)
  store double %31, double* %9, align 8
  %32 = load double, double* %8, align 8
  %33 = load double, double* %9, align 8
  %34 = fcmp olt double %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 -1, i32 1
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %23
  %41 = load double, double* %5, align 8
  %42 = load double, double* @SECSPERDAY, align 8
  %43 = fdiv double %41, %42
  %44 = load double, double* %6, align 8
  %45 = fadd double %44, %43
  store double %45, double* %6, align 8
  br label %52

46:                                               ; preds = %23
  %47 = load double, double* %5, align 8
  %48 = load double, double* @SECSPERDAY, align 8
  %49 = fdiv double %47, %48
  %50 = load double, double* %6, align 8
  %51 = fsub double %50, %49
  store double %51, double* %6, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load double, double* %5, align 8
  %54 = fdiv double %53, 2.000000e+00
  store double %54, double* %5, align 8
  br label %20

55:                                               ; preds = %20
  %56 = load double, double* %6, align 8
  %57 = call i64 @floor(double %56)
  %58 = sitofp i64 %57 to double
  %59 = load double, double* %6, align 8
  %60 = fsub double %59, %58
  store double %60, double* %6, align 8
  %61 = load double, double* %6, align 8
  ret double %61
}

declare dso_local double @potm(double) #1

declare dso_local i64 @floor(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
