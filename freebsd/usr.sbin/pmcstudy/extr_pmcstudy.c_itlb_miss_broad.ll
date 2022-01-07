; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_itlb_miss_broad.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_itlb_miss_broad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counters = type { double*, double }

@.str = private unnamed_addr constant [26 x i8] c"CPU_CLK_UNHALTED.THREAD_P\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ITLB_MISSES.WALK_DURATION\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"ITLB_MISSES.STLB_HIT_4K\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%1.3f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counters*, i32)* @itlb_miss_broad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itlb_miss_broad(%struct.counters* %0, i32 %1) #0 {
  %3 = alloca %struct.counters*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.counters*, align 8
  %7 = alloca %struct.counters*, align 8
  %8 = alloca %struct.counters*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.counters* %0, %struct.counters** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.counters*, %struct.counters** %3, align 8
  %14 = call %struct.counters* @find_counter(%struct.counters* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.counters* %14, %struct.counters** %7, align 8
  %15 = load %struct.counters*, %struct.counters** %3, align 8
  %16 = call %struct.counters* @find_counter(%struct.counters* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.counters* %16, %struct.counters** %6, align 8
  %17 = load %struct.counters*, %struct.counters** %3, align 8
  %18 = call %struct.counters* @find_counter(%struct.counters* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store %struct.counters* %18, %struct.counters** %8, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %46

21:                                               ; preds = %2
  %22 = load %struct.counters*, %struct.counters** %6, align 8
  %23 = getelementptr inbounds %struct.counters, %struct.counters* %22, i32 0, i32 0
  %24 = load double*, double** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  %28 = load double, double* %27, align 8
  %29 = fmul double %28, 1.000000e+00
  store double %29, double* %10, align 8
  %30 = load %struct.counters*, %struct.counters** %7, align 8
  %31 = getelementptr inbounds %struct.counters, %struct.counters* %30, i32 0, i32 0
  %32 = load double*, double** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %32, i64 %34
  %36 = load double, double* %35, align 8
  %37 = fmul double %36, 1.000000e+00
  store double %37, double* %9, align 8
  %38 = load %struct.counters*, %struct.counters** %8, align 8
  %39 = getelementptr inbounds %struct.counters, %struct.counters* %38, i32 0, i32 0
  %40 = load double*, double** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %40, i64 %42
  %44 = load double, double* %43, align 8
  %45 = fmul double %44, 1.000000e+00
  store double %45, double* %12, align 8
  br label %59

46:                                               ; preds = %2
  %47 = load %struct.counters*, %struct.counters** %6, align 8
  %48 = getelementptr inbounds %struct.counters, %struct.counters* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fmul double %49, 1.000000e+00
  store double %50, double* %10, align 8
  %51 = load %struct.counters*, %struct.counters** %7, align 8
  %52 = getelementptr inbounds %struct.counters, %struct.counters* %51, i32 0, i32 1
  %53 = load double, double* %52, align 8
  %54 = fmul double %53, 1.000000e+00
  store double %54, double* %9, align 8
  %55 = load %struct.counters*, %struct.counters** %8, align 8
  %56 = getelementptr inbounds %struct.counters, %struct.counters* %55, i32 0, i32 1
  %57 = load double, double* %56, align 8
  %58 = fmul double %57, 1.000000e+00
  store double %58, double* %12, align 8
  br label %59

59:                                               ; preds = %46, %21
  %60 = load double, double* %12, align 8
  %61 = fmul double 7.000000e+00, %60
  %62 = load double, double* %10, align 8
  %63 = fadd double %61, %62
  %64 = load double, double* %9, align 8
  %65 = fdiv double %63, %64
  store double %65, double* %11, align 8
  %66 = load double, double* %11, align 8
  %67 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), double %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.counters* @find_counter(%struct.counters*, i8*) #1

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
