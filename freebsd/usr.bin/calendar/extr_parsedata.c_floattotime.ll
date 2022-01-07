; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_floattotime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_parsedata.c_floattotime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@floattotime.buf = internal global [100 x i8] zeroinitializer, align 16
@SECSPERDAY = common dso_local global double 0.000000e+00, align 8
@SECSPERHOUR = common dso_local global i32 0, align 4
@SECSPERMINUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (double)* @floattotime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @floattotime(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store double %0, double* %2, align 8
  %7 = load double, double* %2, align 8
  %8 = call i64 @floor(double %7)
  %9 = sitofp i64 %8 to double
  %10 = load double, double* %2, align 8
  %11 = fsub double %10, %9
  store double %11, double* %2, align 8
  %12 = load double, double* %2, align 8
  %13 = load double, double* @SECSPERDAY, align 8
  %14 = fmul double %12, %13
  %15 = fptosi double %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SECSPERHOUR, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @SECSPERHOUR, align 4
  %20 = load i32, i32* %6, align 4
  %21 = srem i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SECSPERMINUTE, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @SECSPERMINUTE, align 4
  %26 = load i32, i32* %6, align 4
  %27 = srem i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @floattotime.buf, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  ret i8* getelementptr inbounds ([100 x i8], [100 x i8]* @floattotime.buf, i64 0, i64 0)
}

declare dso_local i64 @floor(double) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
