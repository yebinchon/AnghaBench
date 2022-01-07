; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_floattoday.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_floattoday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@floattoday.buf = internal global [100 x i8] zeroinitializer, align 16
@cumdaytab = common dso_local global i32** null, align 8
@SECSPERDAY = common dso_local global double 0.000000e+00, align 8
@SECSPERHOUR = common dso_local global i32 0, align 4
@SECSPERMINUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%02d-%02d %02d:%02d:%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, double)* @floattoday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @floattoday(i32 %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  %12 = load i32**, i32*** @cumdaytab, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @isleap(i32 %13)
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %11, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %28, %2
  %18 = load i32*, i32** %11, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 1, %22
  %24 = sitofp i32 %23 to double
  %25 = load double, double* %4, align 8
  %26 = fcmp olt double %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %17

31:                                               ; preds = %17
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %5, align 4
  store i32 %33, i32* %6, align 4
  %34 = load double, double* %4, align 8
  %35 = fsub double %34, 1.000000e+00
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sitofp i32 %40 to double
  %42 = fsub double %35, %41
  %43 = call double @llvm.floor.f64(double %42)
  %44 = fptosi double %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load double, double* %4, align 8
  %46 = call double @llvm.floor.f64(double %45)
  %47 = load double, double* %4, align 8
  %48 = fsub double %47, %46
  store double %48, double* %4, align 8
  %49 = load double, double* %4, align 8
  %50 = load double, double* @SECSPERDAY, align 8
  %51 = fmul double %49, %50
  %52 = fptosi double %51 to i32
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SECSPERHOUR, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @SECSPERHOUR, align 4
  %57 = load i32, i32* %5, align 4
  %58 = srem i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SECSPERMINUTE, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @SECSPERMINUTE, align 4
  %63 = load i32, i32* %5, align 4
  %64 = srem i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @floattoday.buf, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  ret i8* getelementptr inbounds ([100 x i8], [100 x i8]* @floattoday.buf, i64 0, i64 0)
}

declare dso_local i64 @isleap(i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
