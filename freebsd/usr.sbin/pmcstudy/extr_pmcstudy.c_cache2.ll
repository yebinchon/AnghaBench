; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_cache2.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_cache2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counters = type { double*, double }

@.str = private unnamed_addr constant [26 x i8] c"CPU_CLK_UNHALTED.THREAD_P\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"MEM_LOAD_UOPS_RETIRED.LLC_HIT\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HIT\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%1.3f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counters*, i32)* @cache2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache2(%struct.counters* %0, i32 %1) #0 {
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
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store %struct.counters* %0, %struct.counters** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 2.600000e+01, double* %10, align 8
  store double 4.300000e+01, double* %11, align 8
  store double 6.000000e+01, double* %12, align 8
  %18 = load %struct.counters*, %struct.counters** %3, align 8
  %19 = call %struct.counters* @find_counter(%struct.counters* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.counters* %19, %struct.counters** %9, align 8
  %20 = load %struct.counters*, %struct.counters** %3, align 8
  %21 = call %struct.counters* @find_counter(%struct.counters* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store %struct.counters* %21, %struct.counters** %6, align 8
  %22 = load %struct.counters*, %struct.counters** %3, align 8
  %23 = call %struct.counters* @find_counter(%struct.counters* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store %struct.counters* %23, %struct.counters** %7, align 8
  %24 = load %struct.counters*, %struct.counters** %3, align 8
  %25 = call %struct.counters* @find_counter(%struct.counters* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store %struct.counters* %25, %struct.counters** %8, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %61

28:                                               ; preds = %2
  %29 = load %struct.counters*, %struct.counters** %6, align 8
  %30 = getelementptr inbounds %struct.counters, %struct.counters* %29, i32 0, i32 0
  %31 = load double*, double** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %31, i64 %33
  %35 = load double, double* %34, align 8
  %36 = fmul double %35, 1.000000e+00
  store double %36, double* %14, align 8
  %37 = load %struct.counters*, %struct.counters** %7, align 8
  %38 = getelementptr inbounds %struct.counters, %struct.counters* %37, i32 0, i32 0
  %39 = load double*, double** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  %43 = load double, double* %42, align 8
  %44 = fmul double %43, 1.000000e+00
  store double %44, double* %15, align 8
  %45 = load %struct.counters*, %struct.counters** %8, align 8
  %46 = getelementptr inbounds %struct.counters, %struct.counters* %45, i32 0, i32 0
  %47 = load double*, double** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %47, i64 %49
  %51 = load double, double* %50, align 8
  %52 = fmul double %51, 1.000000e+00
  store double %52, double* %16, align 8
  %53 = load %struct.counters*, %struct.counters** %9, align 8
  %54 = getelementptr inbounds %struct.counters, %struct.counters* %53, i32 0, i32 0
  %55 = load double*, double** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  %59 = load double, double* %58, align 8
  %60 = fmul double %59, 1.000000e+00
  store double %60, double* %13, align 8
  br label %78

61:                                               ; preds = %2
  %62 = load %struct.counters*, %struct.counters** %6, align 8
  %63 = getelementptr inbounds %struct.counters, %struct.counters* %62, i32 0, i32 1
  %64 = load double, double* %63, align 8
  %65 = fmul double %64, 1.000000e+00
  store double %65, double* %14, align 8
  %66 = load %struct.counters*, %struct.counters** %7, align 8
  %67 = getelementptr inbounds %struct.counters, %struct.counters* %66, i32 0, i32 1
  %68 = load double, double* %67, align 8
  %69 = fmul double %68, 1.000000e+00
  store double %69, double* %15, align 8
  %70 = load %struct.counters*, %struct.counters** %8, align 8
  %71 = getelementptr inbounds %struct.counters, %struct.counters* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = fmul double %72, 1.000000e+00
  store double %73, double* %16, align 8
  %74 = load %struct.counters*, %struct.counters** %9, align 8
  %75 = getelementptr inbounds %struct.counters, %struct.counters* %74, i32 0, i32 1
  %76 = load double, double* %75, align 8
  %77 = fmul double %76, 1.000000e+00
  store double %77, double* %13, align 8
  br label %78

78:                                               ; preds = %61, %28
  %79 = load double, double* %14, align 8
  %80 = load double, double* %10, align 8
  %81 = fmul double %79, %80
  %82 = load double, double* %15, align 8
  %83 = load double, double* %11, align 8
  %84 = fmul double %82, %83
  %85 = fadd double %81, %84
  %86 = load double, double* %16, align 8
  %87 = load double, double* %12, align 8
  %88 = fmul double %86, %87
  %89 = fadd double %85, %88
  %90 = load double, double* %13, align 8
  %91 = fdiv double %89, %90
  store double %91, double* %17, align 8
  %92 = load double, double* %17, align 8
  %93 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), double %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.counters* @find_counter(%struct.counters*, i8*) #1

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
