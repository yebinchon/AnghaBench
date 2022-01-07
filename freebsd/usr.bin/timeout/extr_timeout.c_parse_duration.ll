; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/timeout/extr_timeout.c_parse_duration.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/timeout/extr_timeout.c_parse_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"invalid duration\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*)* @parse_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @parse_duration(i8* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call double @strtod(i8* %6, i8** %5)
  store double %7, double* %4, align 8
  %8 = load double, double* %4, align 8
  %9 = fcmp oeq double %8, 0.000000e+00
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @errx(i32 125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %10, %1
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %16
  %25 = load double, double* %4, align 8
  store double %25, double* %2, align 8
  br label %64

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EX_USAGE, align 4
  %37 = call i32 @errx(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %29, %26
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %52 [
    i32 115, label %42
    i32 109, label %43
    i32 104, label %46
    i32 100, label %49
  ]

42:                                               ; preds = %38
  br label %54

43:                                               ; preds = %38
  %44 = load double, double* %4, align 8
  %45 = fmul double %44, 6.000000e+01
  store double %45, double* %4, align 8
  br label %54

46:                                               ; preds = %38
  %47 = load double, double* %4, align 8
  %48 = fmul double %47, 3.600000e+03
  store double %48, double* %4, align 8
  br label %54

49:                                               ; preds = %38
  %50 = load double, double* %4, align 8
  %51 = fmul double %50, 8.640000e+04
  store double %51, double* %4, align 8
  br label %54

52:                                               ; preds = %38
  %53 = call i32 @errx(i32 125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49, %46, %43, %42
  %55 = load double, double* %4, align 8
  %56 = fcmp olt double %55, 0.000000e+00
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load double, double* %4, align 8
  %59 = fcmp oge double %58, 1.000000e+08
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %54
  %61 = call i32 @errx(i32 125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load double, double* %4, align 8
  store double %63, double* %2, align 8
  br label %64

64:                                               ; preds = %62, %24
  %65 = load double, double* %2, align 8
  ret double %65
}

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
