; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_splitstore.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_splitstore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counters = type { double*, double }

@.str = private unnamed_addr constant [30 x i8] c"MEM_UOPS_RETIRED.SPLIT_STORES\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"MEM_UOPS_RETIRED.ALL_STORES\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%1.3f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counters*, i32)* @splitstore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splitstore(%struct.counters* %0, i32 %1) #0 {
  %3 = alloca %struct.counters*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.counters*, align 8
  %7 = alloca %struct.counters*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.counters* %0, %struct.counters** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.counters*, %struct.counters** %3, align 8
  %12 = call %struct.counters* @find_counter(%struct.counters* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store %struct.counters* %12, %struct.counters** %6, align 8
  %13 = load %struct.counters*, %struct.counters** %3, align 8
  %14 = call %struct.counters* @find_counter(%struct.counters* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store %struct.counters* %14, %struct.counters** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.counters*, %struct.counters** %6, align 8
  %19 = getelementptr inbounds %struct.counters, %struct.counters* %18, i32 0, i32 0
  %20 = load double*, double** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, double* %20, i64 %22
  %24 = load double, double* %23, align 8
  %25 = fmul double %24, 1.000000e+00
  store double %25, double* %8, align 8
  %26 = load %struct.counters*, %struct.counters** %7, align 8
  %27 = getelementptr inbounds %struct.counters, %struct.counters* %26, i32 0, i32 0
  %28 = load double*, double** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %28, i64 %30
  %32 = load double, double* %31, align 8
  %33 = fmul double %32, 1.000000e+00
  store double %33, double* %9, align 8
  br label %43

34:                                               ; preds = %2
  %35 = load %struct.counters*, %struct.counters** %6, align 8
  %36 = getelementptr inbounds %struct.counters, %struct.counters* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = fmul double %37, 1.000000e+00
  store double %38, double* %8, align 8
  %39 = load %struct.counters*, %struct.counters** %7, align 8
  %40 = getelementptr inbounds %struct.counters, %struct.counters* %39, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = fmul double %41, 1.000000e+00
  store double %42, double* %9, align 8
  br label %43

43:                                               ; preds = %34, %17
  %44 = load double, double* %8, align 8
  %45 = load double, double* %9, align 8
  %46 = fdiv double %44, %45
  store double %46, double* %10, align 8
  %47 = load double, double* %10, align 8
  %48 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), double %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.counters* @find_counter(%struct.counters*, i8*) #1

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
