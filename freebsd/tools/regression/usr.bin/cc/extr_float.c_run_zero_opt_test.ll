; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/usr.bin/cc/extr_float.c_run_zero_opt_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/usr.bin/cc/extr_float.c_run_zero_opt_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"optimizations don't break the sign of 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_zero_opt_test(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fsub double %5, %6
  %8 = call i64 @fpequal(double %7, double 0.000000e+00)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = load double, double* %3, align 8
  %12 = fneg double %11
  %13 = fadd double %12, 0.000000e+00
  %14 = call i64 @fpequal(double %13, double 0.000000e+00)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load double, double* %3, align 8
  %18 = fneg double %17
  %19 = load double, double* %4, align 8
  %20 = fsub double %18, %19
  %21 = call i64 @fpequal(double %20, double -0.000000e+00)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load double, double* %3, align 8
  %25 = load double, double* %4, align 8
  %26 = fsub double %24, %25
  %27 = fneg double %26
  %28 = call i64 @fpequal(double %27, double -0.000000e+00)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load double, double* %3, align 8
  %32 = fneg double %31
  %33 = load double, double* %4, align 8
  %34 = fneg double %33
  %35 = fsub double %32, %34
  %36 = call i64 @fpequal(double %35, double 0.000000e+00)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %30, %23, %16, %10, %2
  %39 = phi i1 [ false, %23 ], [ false, %16 ], [ false, %10 ], [ false, %2 ], [ %37, %30 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @test(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %40)
  ret void
}

declare dso_local i32 @test(i8*, i32) #1

declare dso_local i64 @fpequal(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
