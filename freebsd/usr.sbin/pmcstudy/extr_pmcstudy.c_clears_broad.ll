; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_clears_broad.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_clears_broad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counters = type { double*, double }

@.str = private unnamed_addr constant [26 x i8] c"CPU_CLK_UNHALTED.THREAD_P\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"MACHINE_CLEARS.MEMORY_ORDERING\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"MACHINE_CLEARS.SMC\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MACHINE_CLEARS.MASKMOV\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"MACHINE_CLEARS.CYCLES\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%1.3f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counters*, i32)* @clears_broad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clears_broad(%struct.counters* %0, i32 %1) #0 {
  %3 = alloca %struct.counters*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.counters*, align 8
  %7 = alloca %struct.counters*, align 8
  %8 = alloca %struct.counters*, align 8
  %9 = alloca %struct.counters*, align 8
  %10 = alloca %struct.counters*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store %struct.counters* %0, %struct.counters** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 1.000000e+02, double* %11, align 8
  %18 = load %struct.counters*, %struct.counters** %3, align 8
  %19 = call %struct.counters* @find_counter(%struct.counters* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.counters* %19, %struct.counters** %10, align 8
  %20 = load %struct.counters*, %struct.counters** %3, align 8
  %21 = call %struct.counters* @find_counter(%struct.counters* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store %struct.counters* %21, %struct.counters** %6, align 8
  %22 = load %struct.counters*, %struct.counters** %3, align 8
  %23 = call %struct.counters* @find_counter(%struct.counters* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store %struct.counters* %23, %struct.counters** %7, align 8
  %24 = load %struct.counters*, %struct.counters** %3, align 8
  %25 = call %struct.counters* @find_counter(%struct.counters* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store %struct.counters* %25, %struct.counters** %8, align 8
  %26 = load %struct.counters*, %struct.counters** %3, align 8
  %27 = call %struct.counters* @find_counter(%struct.counters* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store %struct.counters* %27, %struct.counters** %9, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %71

30:                                               ; preds = %2
  %31 = load %struct.counters*, %struct.counters** %6, align 8
  %32 = getelementptr inbounds %struct.counters, %struct.counters* %31, i32 0, i32 0
  %33 = load double*, double** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = load double, double* %36, align 8
  %38 = fmul double %37, 1.000000e+00
  store double %38, double* %13, align 8
  %39 = load %struct.counters*, %struct.counters** %7, align 8
  %40 = getelementptr inbounds %struct.counters, %struct.counters* %39, i32 0, i32 0
  %41 = load double*, double** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %41, i64 %43
  %45 = load double, double* %44, align 8
  %46 = fmul double %45, 1.000000e+00
  store double %46, double* %14, align 8
  %47 = load %struct.counters*, %struct.counters** %8, align 8
  %48 = getelementptr inbounds %struct.counters, %struct.counters* %47, i32 0, i32 0
  %49 = load double*, double** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %49, i64 %51
  %53 = load double, double* %52, align 8
  %54 = fmul double %53, 1.000000e+00
  store double %54, double* %15, align 8
  %55 = load %struct.counters*, %struct.counters** %9, align 8
  %56 = getelementptr inbounds %struct.counters, %struct.counters* %55, i32 0, i32 0
  %57 = load double*, double** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  %61 = load double, double* %60, align 8
  %62 = fmul double %61, 1.000000e+00
  store double %62, double* %16, align 8
  %63 = load %struct.counters*, %struct.counters** %10, align 8
  %64 = getelementptr inbounds %struct.counters, %struct.counters* %63, i32 0, i32 0
  %65 = load double*, double** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %65, i64 %67
  %69 = load double, double* %68, align 8
  %70 = fmul double %69, 1.000000e+00
  store double %70, double* %12, align 8
  br label %92

71:                                               ; preds = %2
  %72 = load %struct.counters*, %struct.counters** %6, align 8
  %73 = getelementptr inbounds %struct.counters, %struct.counters* %72, i32 0, i32 1
  %74 = load double, double* %73, align 8
  %75 = fmul double %74, 1.000000e+00
  store double %75, double* %13, align 8
  %76 = load %struct.counters*, %struct.counters** %7, align 8
  %77 = getelementptr inbounds %struct.counters, %struct.counters* %76, i32 0, i32 1
  %78 = load double, double* %77, align 8
  %79 = fmul double %78, 1.000000e+00
  store double %79, double* %14, align 8
  %80 = load %struct.counters*, %struct.counters** %8, align 8
  %81 = getelementptr inbounds %struct.counters, %struct.counters* %80, i32 0, i32 1
  %82 = load double, double* %81, align 8
  %83 = fmul double %82, 1.000000e+00
  store double %83, double* %15, align 8
  %84 = load %struct.counters*, %struct.counters** %9, align 8
  %85 = getelementptr inbounds %struct.counters, %struct.counters* %84, i32 0, i32 1
  %86 = load double, double* %85, align 8
  %87 = fmul double %86, 1.000000e+00
  store double %87, double* %16, align 8
  %88 = load %struct.counters*, %struct.counters** %10, align 8
  %89 = getelementptr inbounds %struct.counters, %struct.counters* %88, i32 0, i32 1
  %90 = load double, double* %89, align 8
  %91 = fmul double %90, 1.000000e+00
  store double %91, double* %12, align 8
  br label %92

92:                                               ; preds = %71, %30
  %93 = load double, double* %13, align 8
  %94 = load double, double* %14, align 8
  %95 = fadd double %93, %94
  %96 = load double, double* %15, align 8
  %97 = fadd double %95, %96
  %98 = load double, double* %16, align 8
  %99 = fadd double %97, %98
  %100 = load double, double* %11, align 8
  %101 = fmul double %99, %100
  %102 = load double, double* %12, align 8
  %103 = fdiv double %101, %102
  store double %103, double* %17, align 8
  %104 = load double, double* %17, align 8
  %105 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.counters* @find_counter(%struct.counters*, i8*) #1

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
