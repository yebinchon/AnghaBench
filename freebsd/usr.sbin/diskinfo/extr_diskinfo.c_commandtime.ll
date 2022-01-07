; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/diskinfo/extr_diskinfo.c_commandtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/diskinfo/extr_diskinfo.c_commandtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"I/O command overhead:\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"\09time to read 10MB block    %10.6f sec\09= %8.3f msec/sector\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"\09time to read 20480 sectors %10.6f sec\09= %8.3f msec/sector\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"\09calculated command overhead\09\09\09= %8.3f msec/sector\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @commandtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commandtime(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @rdsect(i32 %12, i32 0, i32 %13)
  %15 = call i32 (...) @T0()
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %22, %3
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @rdmega(i32 %20)
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %16

25:                                               ; preds = %16
  %26 = call double (...) @delta_t()
  store double %26, double* %7, align 8
  %27 = load double, double* %7, align 8
  %28 = load double, double* %7, align 8
  %29 = fmul double %28, 1.000000e+02
  %30 = fdiv double %29, 2.048000e+03
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), double %27, double %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @rdsect(i32 %32, i32 0, i32 %33)
  %35 = call i32 (...) @T0()
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %43, %25
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 20480
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @rdsect(i32 %40, i32 0, i32 %41)
  br label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %36

46:                                               ; preds = %36
  %47 = call double (...) @delta_t()
  store double %47, double* %8, align 8
  %48 = load double, double* %8, align 8
  %49 = load double, double* %8, align 8
  %50 = fmul double %49, 1.000000e+02
  %51 = fdiv double %50, 2.048000e+03
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), double %48, double %51)
  %53 = load double, double* %8, align 8
  %54 = load double, double* %7, align 8
  %55 = fsub double %53, %54
  %56 = fmul double %55, 1.000000e+02
  %57 = fdiv double %56, 2.048000e+03
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), double %57)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @rdsect(i32, i32, i32) #1

declare dso_local i32 @T0(...) #1

declare dso_local i32 @rdmega(i32) #1

declare dso_local double @delta_t(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
