; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_Var.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_Var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataset = type { double, i32, double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.dataset*)* @Var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @Var(%struct.dataset* %0) #0 {
  %2 = alloca %struct.dataset*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store %struct.dataset* %0, %struct.dataset** %2, align 8
  %5 = load %struct.dataset*, %struct.dataset** %2, align 8
  %6 = call double @Avg(%struct.dataset* %5)
  store double %6, double* %4, align 8
  %7 = load %struct.dataset*, %struct.dataset** %2, align 8
  %8 = getelementptr inbounds %struct.dataset, %struct.dataset* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = call i64 @isnan(double %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %1
  %13 = load %struct.dataset*, %struct.dataset** %2, align 8
  %14 = getelementptr inbounds %struct.dataset, %struct.dataset* %13, i32 0, i32 0
  store double 0.000000e+00, double* %14, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %45, %12
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.dataset*, %struct.dataset** %2, align 8
  %18 = getelementptr inbounds %struct.dataset, %struct.dataset* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load %struct.dataset*, %struct.dataset** %2, align 8
  %23 = getelementptr inbounds %struct.dataset, %struct.dataset* %22, i32 0, i32 2
  %24 = load double*, double** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  %28 = load double, double* %27, align 8
  %29 = load double, double* %4, align 8
  %30 = fsub double %28, %29
  %31 = load %struct.dataset*, %struct.dataset** %2, align 8
  %32 = getelementptr inbounds %struct.dataset, %struct.dataset* %31, i32 0, i32 2
  %33 = load double*, double** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = load double, double* %36, align 8
  %38 = load double, double* %4, align 8
  %39 = fsub double %37, %38
  %40 = fmul double %30, %39
  %41 = load %struct.dataset*, %struct.dataset** %2, align 8
  %42 = getelementptr inbounds %struct.dataset, %struct.dataset* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = fadd double %43, %40
  store double %44, double* %42, align 8
  br label %45

45:                                               ; preds = %21
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %15

48:                                               ; preds = %15
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.dataset*, %struct.dataset** %2, align 8
  %51 = getelementptr inbounds %struct.dataset, %struct.dataset* %50, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = load %struct.dataset*, %struct.dataset** %2, align 8
  %54 = getelementptr inbounds %struct.dataset, %struct.dataset* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = uitofp i32 %55 to double
  %57 = fsub double %56, 1.000000e+00
  %58 = fdiv double %52, %57
  ret double %58
}

declare dso_local double @Avg(%struct.dataset*) #1

declare dso_local i64 @isnan(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
