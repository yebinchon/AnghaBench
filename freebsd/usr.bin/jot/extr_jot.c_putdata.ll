; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/jot/extr_jot.c_putdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/jot/extr_jot.c_putdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boring = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@format = common dso_local global i8* null, align 8
@longdata = common dso_local global i64 0, align 8
@nosign = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@LONG_MIN = common dso_local global i64 0, align 8
@chardata = common dso_local global i64 0, align 8
@intdata = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@sepstring = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, i32)* @putdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @putdata(double %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double %0, double* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i64, i64* @boring, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8*, i8** @format, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %104

11:                                               ; preds = %2
  %12 = load i64, i64* @longdata, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load i64, i64* @nosign, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load double, double* %4, align 8
  %19 = load i64, i64* @ULONG_MAX, align 8
  %20 = sitofp i64 %19 to double
  %21 = fcmp ole double %18, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load double, double* %4, align 8
  %24 = fcmp oge double %23, 0.000000e+00
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i8*, i8** @format, align 8
  %27 = load double, double* %4, align 8
  %28 = fptoui double %27 to i64
  %29 = call i32 (i8*, ...) @printf(i8* %26, i64 %28)
  br label %31

30:                                               ; preds = %22, %17
  store i32 1, i32* %3, align 4
  br label %112

31:                                               ; preds = %25
  br label %103

32:                                               ; preds = %14, %11
  %33 = load i64, i64* @longdata, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load double, double* %4, align 8
  %37 = load i64, i64* @LONG_MAX, align 8
  %38 = sitofp i64 %37 to double
  %39 = fcmp ole double %36, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load double, double* %4, align 8
  %42 = load i64, i64* @LONG_MIN, align 8
  %43 = sitofp i64 %42 to double
  %44 = fcmp oge double %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i8*, i8** @format, align 8
  %47 = load double, double* %4, align 8
  %48 = fptosi double %47 to i64
  %49 = call i32 (i8*, ...) @printf(i8* %46, i64 %48)
  br label %51

50:                                               ; preds = %40, %35
  store i32 1, i32* %3, align 4
  br label %112

51:                                               ; preds = %45
  br label %102

52:                                               ; preds = %32
  %53 = load i64, i64* @chardata, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @intdata, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load i64, i64* @nosign, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %58, %52
  %62 = load double, double* %4, align 8
  %63 = load i64, i64* @INT_MAX, align 8
  %64 = sitofp i64 %63 to double
  %65 = fcmp ole double %62, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load double, double* %4, align 8
  %68 = load i64, i64* @INT_MIN, align 8
  %69 = sitofp i64 %68 to double
  %70 = fcmp oge double %67, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8*, i8** @format, align 8
  %73 = load double, double* %4, align 8
  %74 = fptosi double %73 to i32
  %75 = call i32 (i8*, ...) @printf(i8* %72, i32 %74)
  br label %77

76:                                               ; preds = %66, %61
  store i32 1, i32* %3, align 4
  br label %112

77:                                               ; preds = %71
  br label %101

78:                                               ; preds = %58, %55
  %79 = load i64, i64* @intdata, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load double, double* %4, align 8
  %83 = load i64, i64* @UINT_MAX, align 8
  %84 = sitofp i64 %83 to double
  %85 = fcmp ole double %82, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load double, double* %4, align 8
  %88 = fcmp oge double %87, 0.000000e+00
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i8*, i8** @format, align 8
  %91 = load double, double* %4, align 8
  %92 = fptoui double %91 to i32
  %93 = call i32 (i8*, ...) @printf(i8* %90, i32 %92)
  br label %95

94:                                               ; preds = %86, %81
  store i32 1, i32* %3, align 4
  br label %112

95:                                               ; preds = %89
  br label %100

96:                                               ; preds = %78
  %97 = load i8*, i8** @format, align 8
  %98 = load double, double* %4, align 8
  %99 = call i32 (i8*, ...) @printf(i8* %97, double %98)
  br label %100

100:                                              ; preds = %96, %95
  br label %101

101:                                              ; preds = %100, %77
  br label %102

102:                                              ; preds = %101, %51
  br label %103

103:                                              ; preds = %102, %31
  br label %104

104:                                              ; preds = %103, %8
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @sepstring, align 4
  %109 = load i32, i32* @stdout, align 4
  %110 = call i32 @fputs(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %104
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %94, %76, %50, %30
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fputs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
