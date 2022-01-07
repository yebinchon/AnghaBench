; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_contestedbroad.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_contestedbroad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counters = type { double*, double }

@.str = private unnamed_addr constant [26 x i8] c"CPU_CLK_UNHALTED.THREAD_P\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_HITM\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"MEM_LOAD_UOPS_LLC_HIT_RETIRED.XSNP_MISS\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%1.3f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counters*, i32)* @contestedbroad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contestedbroad(%struct.counters* %0, i32 %1) #0 {
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
  %13 = alloca double, align 8
  store %struct.counters* %0, %struct.counters** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 8.400000e+01, double* %9, align 8
  %14 = load %struct.counters*, %struct.counters** %3, align 8
  %15 = call %struct.counters* @find_counter(%struct.counters* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.counters* %15, %struct.counters** %8, align 8
  %16 = load %struct.counters*, %struct.counters** %3, align 8
  %17 = call %struct.counters* @find_counter(%struct.counters* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store %struct.counters* %17, %struct.counters** %6, align 8
  %18 = load %struct.counters*, %struct.counters** %3, align 8
  %19 = call %struct.counters* @find_counter(%struct.counters* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store %struct.counters* %19, %struct.counters** %7, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %47

22:                                               ; preds = %2
  %23 = load %struct.counters*, %struct.counters** %6, align 8
  %24 = getelementptr inbounds %struct.counters, %struct.counters* %23, i32 0, i32 0
  %25 = load double*, double** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = load double, double* %28, align 8
  %30 = fmul double %29, 1.000000e+00
  store double %30, double* %11, align 8
  %31 = load %struct.counters*, %struct.counters** %7, align 8
  %32 = getelementptr inbounds %struct.counters, %struct.counters* %31, i32 0, i32 0
  %33 = load double*, double** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = load double, double* %36, align 8
  %38 = fmul double %37, 1.000000e+00
  store double %38, double* %12, align 8
  %39 = load %struct.counters*, %struct.counters** %8, align 8
  %40 = getelementptr inbounds %struct.counters, %struct.counters* %39, i32 0, i32 0
  %41 = load double*, double** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %41, i64 %43
  %45 = load double, double* %44, align 8
  %46 = fmul double %45, 1.000000e+00
  store double %46, double* %10, align 8
  br label %60

47:                                               ; preds = %2
  %48 = load %struct.counters*, %struct.counters** %6, align 8
  %49 = getelementptr inbounds %struct.counters, %struct.counters* %48, i32 0, i32 1
  %50 = load double, double* %49, align 8
  %51 = fmul double %50, 1.000000e+00
  store double %51, double* %11, align 8
  %52 = load %struct.counters*, %struct.counters** %7, align 8
  %53 = getelementptr inbounds %struct.counters, %struct.counters* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = fmul double %54, 1.000000e+00
  store double %55, double* %12, align 8
  %56 = load %struct.counters*, %struct.counters** %8, align 8
  %57 = getelementptr inbounds %struct.counters, %struct.counters* %56, i32 0, i32 1
  %58 = load double, double* %57, align 8
  %59 = fmul double %58, 1.000000e+00
  store double %59, double* %10, align 8
  br label %60

60:                                               ; preds = %47, %22
  %61 = load double, double* %11, align 8
  %62 = load double, double* %9, align 8
  %63 = fmul double %61, %62
  %64 = load double, double* %12, align 8
  %65 = fadd double %63, %64
  %66 = load double, double* %10, align 8
  %67 = fdiv double %65, %66
  store double %67, double* %13, align 8
  %68 = load double, double* %13, align 8
  %69 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), double %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.counters* @find_counter(%struct.counters*, i8*) #1

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
