; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_splitloadib.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_splitloadib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counters = type { double*, double }

@.str = private unnamed_addr constant [26 x i8] c"CPU_CLK_UNHALTED.THREAD_P\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"MEM_LOAD_UOPS_RETIRED.L1_MISS\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"L1D_PEND_MISS.PENDING\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"LD_BLOCKS.NO_SR\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%1.3f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counters*, i32)* @splitloadib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splitloadib(%struct.counters* %0, i32 %1) #0 {
  %3 = alloca %struct.counters*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.counters*, align 8
  %7 = alloca %struct.counters*, align 8
  %8 = alloca %struct.counters*, align 8
  %9 = alloca %struct.counters*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.counters* %0, %struct.counters** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.counters*, %struct.counters** %3, align 8
  %16 = call %struct.counters* @find_counter(%struct.counters* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.counters* %16, %struct.counters** %9, align 8
  %17 = load %struct.counters*, %struct.counters** %3, align 8
  %18 = call %struct.counters* @find_counter(%struct.counters* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store %struct.counters* %18, %struct.counters** %6, align 8
  %19 = load %struct.counters*, %struct.counters** %3, align 8
  %20 = call %struct.counters* @find_counter(%struct.counters* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store %struct.counters* %20, %struct.counters** %7, align 8
  %21 = load %struct.counters*, %struct.counters** %3, align 8
  %22 = call %struct.counters* @find_counter(%struct.counters* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store %struct.counters* %22, %struct.counters** %8, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %58

25:                                               ; preds = %2
  %26 = load %struct.counters*, %struct.counters** %6, align 8
  %27 = getelementptr inbounds %struct.counters, %struct.counters* %26, i32 0, i32 0
  %28 = load double*, double** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %28, i64 %30
  %32 = load double, double* %31, align 8
  %33 = fmul double %32, 1.000000e+00
  store double %33, double* %11, align 8
  %34 = load %struct.counters*, %struct.counters** %7, align 8
  %35 = getelementptr inbounds %struct.counters, %struct.counters* %34, i32 0, i32 0
  %36 = load double*, double** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  %40 = load double, double* %39, align 8
  %41 = fmul double %40, 1.000000e+00
  store double %41, double* %13, align 8
  %42 = load %struct.counters*, %struct.counters** %8, align 8
  %43 = getelementptr inbounds %struct.counters, %struct.counters* %42, i32 0, i32 0
  %44 = load double*, double** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %44, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fmul double %48, 1.000000e+00
  store double %49, double* %14, align 8
  %50 = load %struct.counters*, %struct.counters** %9, align 8
  %51 = getelementptr inbounds %struct.counters, %struct.counters* %50, i32 0, i32 0
  %52 = load double*, double** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  %56 = load double, double* %55, align 8
  %57 = fmul double %56, 1.000000e+00
  store double %57, double* %10, align 8
  br label %75

58:                                               ; preds = %2
  %59 = load %struct.counters*, %struct.counters** %6, align 8
  %60 = getelementptr inbounds %struct.counters, %struct.counters* %59, i32 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = fmul double %61, 1.000000e+00
  store double %62, double* %11, align 8
  %63 = load %struct.counters*, %struct.counters** %7, align 8
  %64 = getelementptr inbounds %struct.counters, %struct.counters* %63, i32 0, i32 1
  %65 = load double, double* %64, align 8
  %66 = fmul double %65, 1.000000e+00
  store double %66, double* %13, align 8
  %67 = load %struct.counters*, %struct.counters** %8, align 8
  %68 = getelementptr inbounds %struct.counters, %struct.counters* %67, i32 0, i32 1
  %69 = load double, double* %68, align 8
  %70 = fmul double %69, 1.000000e+00
  store double %70, double* %14, align 8
  %71 = load %struct.counters*, %struct.counters** %9, align 8
  %72 = getelementptr inbounds %struct.counters, %struct.counters* %71, i32 0, i32 1
  %73 = load double, double* %72, align 8
  %74 = fmul double %73, 1.000000e+00
  store double %74, double* %10, align 8
  br label %75

75:                                               ; preds = %58, %25
  %76 = load double, double* %13, align 8
  %77 = load double, double* %11, align 8
  %78 = fdiv double %76, %77
  %79 = load double, double* %14, align 8
  %80 = fmul double %78, %79
  %81 = load double, double* %10, align 8
  %82 = fdiv double %80, %81
  store double %82, double* %12, align 8
  %83 = load double, double* %12, align 8
  %84 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), double %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.counters* @find_counter(%struct.counters*, i8*) #1

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
