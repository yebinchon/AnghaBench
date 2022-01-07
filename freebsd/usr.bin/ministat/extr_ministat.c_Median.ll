; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_Median.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_Median.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataset = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.dataset*)* @Median to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @Median(%struct.dataset* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.dataset*, align 8
  %4 = alloca i32, align 4
  store %struct.dataset* %0, %struct.dataset** %3, align 8
  %5 = load %struct.dataset*, %struct.dataset** %3, align 8
  %6 = getelementptr inbounds %struct.dataset, %struct.dataset* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sdiv i32 %7, 2
  store i32 %8, i32* %4, align 4
  %9 = load %struct.dataset*, %struct.dataset** %3, align 8
  %10 = getelementptr inbounds %struct.dataset, %struct.dataset* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = srem i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %1
  %15 = load %struct.dataset*, %struct.dataset** %3, align 8
  %16 = getelementptr inbounds %struct.dataset, %struct.dataset* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dataset*, %struct.dataset** %3, align 8
  %23 = getelementptr inbounds %struct.dataset, %struct.dataset* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sub i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %21, %29
  %31 = sdiv i32 %30, 2
  %32 = sitofp i32 %31 to double
  store double %32, double* %2, align 8
  br label %42

33:                                               ; preds = %1
  %34 = load %struct.dataset*, %struct.dataset** %3, align 8
  %35 = getelementptr inbounds %struct.dataset, %struct.dataset* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sitofp i32 %40 to double
  store double %41, double* %2, align 8
  br label %42

42:                                               ; preds = %33, %14
  %43 = load double, double* %2, align 8
  ret double %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
