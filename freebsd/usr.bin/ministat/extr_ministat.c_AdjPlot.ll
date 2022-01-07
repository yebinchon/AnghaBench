; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_AdjPlot.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_AdjPlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plot = type { double, double, double, double, double, double }

@plot = common dso_local global %struct.plot zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double)* @AdjPlot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AdjPlot(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.plot*, align 8
  store double %0, double* %2, align 8
  store %struct.plot* @plot, %struct.plot** %3, align 8
  %4 = load double, double* %2, align 8
  %5 = load %struct.plot*, %struct.plot** %3, align 8
  %6 = getelementptr inbounds %struct.plot, %struct.plot* %5, i32 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = fcmp olt double %4, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load double, double* %2, align 8
  %11 = load %struct.plot*, %struct.plot** %3, align 8
  %12 = getelementptr inbounds %struct.plot, %struct.plot* %11, i32 0, i32 0
  store double %10, double* %12, align 8
  br label %13

13:                                               ; preds = %9, %1
  %14 = load double, double* %2, align 8
  %15 = load %struct.plot*, %struct.plot** %3, align 8
  %16 = getelementptr inbounds %struct.plot, %struct.plot* %15, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = fcmp ogt double %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load double, double* %2, align 8
  %21 = load %struct.plot*, %struct.plot** %3, align 8
  %22 = getelementptr inbounds %struct.plot, %struct.plot* %21, i32 0, i32 1
  store double %20, double* %22, align 8
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.plot*, %struct.plot** %3, align 8
  %25 = getelementptr inbounds %struct.plot, %struct.plot* %24, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = load %struct.plot*, %struct.plot** %3, align 8
  %28 = getelementptr inbounds %struct.plot, %struct.plot* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = fsub double %26, %29
  %31 = load %struct.plot*, %struct.plot** %3, align 8
  %32 = getelementptr inbounds %struct.plot, %struct.plot* %31, i32 0, i32 2
  store double %30, double* %32, align 8
  %33 = load %struct.plot*, %struct.plot** %3, align 8
  %34 = getelementptr inbounds %struct.plot, %struct.plot* %33, i32 0, i32 2
  %35 = load double, double* %34, align 8
  %36 = load %struct.plot*, %struct.plot** %3, align 8
  %37 = getelementptr inbounds %struct.plot, %struct.plot* %36, i32 0, i32 4
  %38 = load double, double* %37, align 8
  %39 = fsub double %38, 1.000000e+00
  %40 = fdiv double %35, %39
  %41 = load %struct.plot*, %struct.plot** %3, align 8
  %42 = getelementptr inbounds %struct.plot, %struct.plot* %41, i32 0, i32 3
  store double %40, double* %42, align 8
  %43 = load %struct.plot*, %struct.plot** %3, align 8
  %44 = getelementptr inbounds %struct.plot, %struct.plot* %43, i32 0, i32 0
  %45 = load double, double* %44, align 8
  %46 = load %struct.plot*, %struct.plot** %3, align 8
  %47 = getelementptr inbounds %struct.plot, %struct.plot* %46, i32 0, i32 3
  %48 = load double, double* %47, align 8
  %49 = fmul double 5.000000e-01, %48
  %50 = fsub double %45, %49
  %51 = load %struct.plot*, %struct.plot** %3, align 8
  %52 = getelementptr inbounds %struct.plot, %struct.plot* %51, i32 0, i32 5
  store double %50, double* %52, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
