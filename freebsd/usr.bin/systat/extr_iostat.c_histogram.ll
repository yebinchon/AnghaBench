; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_histogram.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_histogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%5.2Lf\00", align 1
@wnd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (x86_fp80, i32, double)* @histogram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @histogram(x86_fp80 %0, i32 %1, double %2) #0 {
  %4 = alloca x86_fp80, align 16
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %4, align 16
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %10 = load x86_fp80, x86_fp80* %4, align 16
  %11 = load double, double* %6, align 8
  %12 = fpext double %11 to x86_fp80
  %13 = fmul x86_fp80 %10, %12
  %14 = fptosi x86_fp80 %13 to i32
  %15 = sitofp i32 %14 to double
  %16 = fadd double %15, 5.000000e-01
  %17 = fptosi double %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @MIN(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %3
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %26 = load x86_fp80, x86_fp80* %4, align 16
  %27 = call i32 @snprintf(i8* %25, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), x86_fp80 %26)
  %28 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %29 = call i64 @strlen(i8* %28)
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %38, %24
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @wnd, align 4
  %40 = call i32 @waddch(i32 %39, i8 signext 88)
  br label %34

41:                                               ; preds = %34
  %42 = load i32, i32* @wnd, align 4
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %44 = call i32 @waddstr(i32 %42, i8* %43)
  br label %56

45:                                               ; preds = %3
  br label %46

46:                                               ; preds = %50, %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %8, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @wnd, align 4
  %52 = call i32 @waddch(i32 %51, i8 signext 88)
  br label %46

53:                                               ; preds = %46
  %54 = load i32, i32* @wnd, align 4
  %55 = call i32 @wclrtoeol(i32 %54)
  br label %56

56:                                               ; preds = %53, %41
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, x86_fp80) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @waddch(i32, i8 signext) #1

declare dso_local i32 @waddstr(i32, i8*) #1

declare dso_local i32 @wclrtoeol(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
