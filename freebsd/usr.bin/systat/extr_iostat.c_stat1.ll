; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_stat1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_stat1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double* }

@CPUSTATES = common dso_local global i32 0, align 4
@cur_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@wnd = common dso_local global i32 0, align 4
@INSET = common dso_local global i32 0, align 4
@CPUSCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @stat1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stat1(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store double 0.000000e+00, double* %6, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %19, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @CPUSTATES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur_dev, i32 0, i32 0), align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double, double* %12, i64 %14
  %16 = load double, double* %15, align 8
  %17 = load double, double* %6, align 8
  %18 = fadd double %17, %16
  store double %18, double* %6, align 8
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %7

22:                                               ; preds = %7
  %23 = load double, double* %6, align 8
  %24 = fcmp oeq double %23, 0.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store double 1.000000e+00, double* %6, align 8
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* @wnd, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @INSET, align 4
  %30 = call i32 @wmove(i32 %27, i32 %28, i32 %29)
  %31 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur_dev, i32 0, i32 0), align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %31, i64 %33
  %35 = load double, double* %34, align 8
  %36 = fmul double 1.000000e+02, %35
  %37 = load double, double* %6, align 8
  %38 = fdiv double %36, %37
  %39 = call i32 @histogram(double %38, i32 50, i32 0)
  ret void
}

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @histogram(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
