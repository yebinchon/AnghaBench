; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_dodebug.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_dodebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"UTCOffset: %g\0A\00", align 1
@UTCOffset = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"eastlongitude: %d\0A\00", align 1
@EastLongitude = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"moon\00", align 1
@MAXMOONS = common dso_local global i32 0, align 4
@year1 = common dso_local global i32 0, align 4
@year2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Full moon %d:\09\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%g (%s) \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\0ANew moon %d:\09\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"sun\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Sun in %d:\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"e[0] - %g (%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"e[1] - %g (%s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"s[0] - %g (%s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"s[1] - %g (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dodebug(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x double], align 16
  %9 = alloca [2 x double], align 16
  store i8* %0, i8** %2, align 8
  %10 = load double, double* @UTCOffset, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), double %10)
  %12 = load i32, i32* @EastLongitude, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %88

17:                                               ; preds = %1
  %18 = load i32, i32* @MAXMOONS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %4, align 8
  %21 = alloca double, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %22 = load i32, i32* @MAXMOONS, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca double, i64 %23, align 16
  store i64 %23, i64* %6, align 8
  %25 = load i32, i32* @year1, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %83, %17
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @year2, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %86

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = load double, double* @UTCOffset, align 8
  %33 = call i32 @fpom(i32 %31, double %32, double* %21, double* %24)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %54, %30
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %21, i64 %38
  %40 = load double, double* %39, align 8
  %41 = fcmp oge double %40, 0.000000e+00
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %21, i64 %44
  %46 = load double, double* %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %21, i64 %49
  %51 = load double, double* %50, align 8
  %52 = call i8* @floattoday(i32 %47, double %51)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), double %46, i8* %52)
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %36

57:                                               ; preds = %36
  %58 = load i32, i32* %3, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %78, %57
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %24, i64 %62
  %64 = load double, double* %63, align 8
  %65 = fcmp oge double %64, 0.000000e+00
  br i1 %65, label %66, label %81

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %24, i64 %68
  %70 = load double, double* %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %24, i64 %73
  %75 = load double, double* %74, align 8
  %76 = call i8* @floattoday(i32 %71, double %75)
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), double %70, i8* %76)
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %60

81:                                               ; preds = %60
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %26

86:                                               ; preds = %26
  %87 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %87)
  br label %138

88:                                               ; preds = %1
  %89 = load i8*, i8** %2, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %138

92:                                               ; preds = %88
  %93 = load i32, i32* @year1, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %134, %92
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @year2, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %137

98:                                               ; preds = %94
  %99 = load i32, i32* %3, align 4
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %3, align 4
  %102 = load double, double* @UTCOffset, align 8
  %103 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 0
  %104 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %105 = call i32 @fequinoxsolstice(i32 %101, double %102, double* %103, double* %104)
  %106 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 0
  %107 = load double, double* %106, align 16
  %108 = load i32, i32* %3, align 4
  %109 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 0
  %110 = load double, double* %109, align 16
  %111 = call i8* @floattoday(i32 %108, double %110)
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), double %107, i8* %111)
  %113 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 1
  %114 = load double, double* %113, align 8
  %115 = load i32, i32* %3, align 4
  %116 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 1
  %117 = load double, double* %116, align 8
  %118 = call i8* @floattoday(i32 %115, double %117)
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), double %114, i8* %118)
  %120 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %121 = load double, double* %120, align 16
  %122 = load i32, i32* %3, align 4
  %123 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %124 = load double, double* %123, align 16
  %125 = call i8* @floattoday(i32 %122, double %124)
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), double %121, i8* %125)
  %127 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  %128 = load double, double* %127, align 8
  %129 = load i32, i32* %3, align 4
  %130 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  %131 = load double, double* %130, align 8
  %132 = call i8* @floattoday(i32 %129, double %131)
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), double %128, i8* %132)
  br label %134

134:                                              ; preds = %98
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %94

137:                                              ; preds = %94
  br label %138

138:                                              ; preds = %86, %137, %88
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fpom(i32, double, double*, double*) #1

declare dso_local i8* @floattoday(i32, double) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @fequinoxsolstice(i32, double, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
