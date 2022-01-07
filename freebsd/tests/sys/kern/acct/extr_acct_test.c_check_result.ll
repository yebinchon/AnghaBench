; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/acct/extr_acct_test.c_check_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/acct/extr_acct_test.c_check_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cf = type { double }

@FLT_EPSILON = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [13 x i8] c"Error in %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Got      0x%08x %12g\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Expected 0x%08x %12g (%.15lg)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Epsilon=%lg, rather than %g\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float, double)* @check_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_result(i8* %0, float %1, double %2) #0 {
  %4 = alloca %union.cf, align 8
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca double, align 8
  %8 = getelementptr inbounds %union.cf, %union.cf* %4, i32 0, i32 0
  store double %2, double* %8, align 8
  store i8* %0, i8** %5, align 8
  store float %1, float* %6, align 4
  %9 = load float, float* %6, align 4
  %10 = bitcast %union.cf* %4 to float*
  %11 = load float, float* %10, align 8
  %12 = fsub float %9, %11
  %13 = call float @fabs(float %12)
  %14 = load float, float* %6, align 4
  %15 = fdiv float %13, %14
  %16 = fpext float %15 to double
  store double %16, double* %7, align 8
  %17 = load double, double* %7, align 8
  %18 = load double, double* @FLT_EPSILON, align 8
  %19 = fcmp ole double %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ATF_CHECK(i32 %20)
  %22 = load double, double* %7, align 8
  %23 = load double, double* @FLT_EPSILON, align 8
  %24 = fcmp ogt double %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = bitcast %union.cf* %4 to double*
  %29 = load double, double* %28, align 8
  %30 = bitcast %union.cf* %4 to float*
  %31 = load float, float* %30, align 8
  %32 = fpext float %31 to double
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), double %29, double %32)
  %34 = load float, float* %6, align 4
  %35 = bitcast %union.cf* %4 to float*
  store float %34, float* %35, align 8
  %36 = bitcast %union.cf* %4 to double*
  %37 = load double, double* %36, align 8
  %38 = bitcast %union.cf* %4 to float*
  %39 = load float, float* %38, align 8
  %40 = fpext float %39 to double
  %41 = load float, float* %6, align 4
  %42 = fpext float %41 to double
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), double %37, double %40, double %42)
  %44 = load double, double* %7, align 8
  %45 = load double, double* @FLT_EPSILON, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), double %44, double %45)
  br label %47

47:                                               ; preds = %25, %3
  ret void
}

declare dso_local float @fabs(float) #1

declare dso_local i32 @ATF_CHECK(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
