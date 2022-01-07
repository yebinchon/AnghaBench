; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_microassist_broad.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_microassist_broad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counters = type { double*, double }

@.str = private unnamed_addr constant [26 x i8] c"CPU_CLK_UNHALTED.THREAD_P\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"IDQ.MS_UOPS\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"UOPS_ISSUED.ANY\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"UOPS_RETIRED.RETIRE_SLOTS\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%1.3f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counters*, i32)* @microassist_broad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microassist_broad(%struct.counters* %0, i32 %1) #0 {
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
  %15 = alloca double, align 8
  store %struct.counters* %0, %struct.counters** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 4.000000e+00, double* %13, align 8
  %16 = load %struct.counters*, %struct.counters** %3, align 8
  %17 = call %struct.counters* @find_counter(%struct.counters* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.counters* %17, %struct.counters** %7, align 8
  %18 = load %struct.counters*, %struct.counters** %3, align 8
  %19 = call %struct.counters* @find_counter(%struct.counters* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store %struct.counters* %19, %struct.counters** %6, align 8
  %20 = load %struct.counters*, %struct.counters** %3, align 8
  %21 = call %struct.counters* @find_counter(%struct.counters* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store %struct.counters* %21, %struct.counters** %8, align 8
  %22 = load %struct.counters*, %struct.counters** %3, align 8
  %23 = call %struct.counters* @find_counter(%struct.counters* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store %struct.counters* %23, %struct.counters** %9, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %59

26:                                               ; preds = %2
  %27 = load %struct.counters*, %struct.counters** %6, align 8
  %28 = getelementptr inbounds %struct.counters, %struct.counters* %27, i32 0, i32 0
  %29 = load double*, double** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %29, i64 %31
  %33 = load double, double* %32, align 8
  %34 = fmul double %33, 1.000000e+00
  store double %34, double* %11, align 8
  %35 = load %struct.counters*, %struct.counters** %7, align 8
  %36 = getelementptr inbounds %struct.counters, %struct.counters* %35, i32 0, i32 0
  %37 = load double*, double** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %37, i64 %39
  %41 = load double, double* %40, align 8
  %42 = fmul double %41, 1.000000e+00
  store double %42, double* %10, align 8
  %43 = load %struct.counters*, %struct.counters** %8, align 8
  %44 = getelementptr inbounds %struct.counters, %struct.counters* %43, i32 0, i32 0
  %45 = load double*, double** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  %49 = load double, double* %48, align 8
  %50 = fmul double %49, 1.000000e+00
  store double %50, double* %14, align 8
  %51 = load %struct.counters*, %struct.counters** %9, align 8
  %52 = getelementptr inbounds %struct.counters, %struct.counters* %51, i32 0, i32 0
  %53 = load double*, double** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  %57 = load double, double* %56, align 8
  %58 = fmul double %57, 1.000000e+00
  store double %58, double* %15, align 8
  br label %76

59:                                               ; preds = %2
  %60 = load %struct.counters*, %struct.counters** %6, align 8
  %61 = getelementptr inbounds %struct.counters, %struct.counters* %60, i32 0, i32 1
  %62 = load double, double* %61, align 8
  %63 = fmul double %62, 1.000000e+00
  store double %63, double* %11, align 8
  %64 = load %struct.counters*, %struct.counters** %7, align 8
  %65 = getelementptr inbounds %struct.counters, %struct.counters* %64, i32 0, i32 1
  %66 = load double, double* %65, align 8
  %67 = fmul double %66, 1.000000e+00
  store double %67, double* %10, align 8
  %68 = load %struct.counters*, %struct.counters** %8, align 8
  %69 = getelementptr inbounds %struct.counters, %struct.counters* %68, i32 0, i32 1
  %70 = load double, double* %69, align 8
  %71 = fmul double %70, 1.000000e+00
  store double %71, double* %14, align 8
  %72 = load %struct.counters*, %struct.counters** %9, align 8
  %73 = getelementptr inbounds %struct.counters, %struct.counters* %72, i32 0, i32 1
  %74 = load double, double* %73, align 8
  %75 = fmul double %74, 1.000000e+00
  store double %75, double* %15, align 8
  br label %76

76:                                               ; preds = %59, %26
  %77 = load double, double* %15, align 8
  %78 = load double, double* %14, align 8
  %79 = fdiv double %77, %78
  %80 = load double, double* %11, align 8
  %81 = load double, double* %10, align 8
  %82 = load double, double* %13, align 8
  %83 = fmul double %81, %82
  %84 = fdiv double %80, %83
  %85 = fmul double %79, %84
  store double %85, double* %12, align 8
  %86 = load double, double* %12, align 8
  %87 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), double %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.counters* @find_counter(%struct.counters*, i8*) #1

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
