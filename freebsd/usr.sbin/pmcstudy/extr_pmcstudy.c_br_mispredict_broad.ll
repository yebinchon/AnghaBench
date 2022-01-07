; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_br_mispredict_broad.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_br_mispredict_broad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counters = type { double*, double }

@.str = private unnamed_addr constant [26 x i8] c"CPU_CLK_UNHALTED.THREAD_P\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"BR_MISP_RETIRED.ALL_BRANCHES\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"MACHINE_CLEARS.CYCLES\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"UOPS_ISSUED.ANY\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"UOPS_RETIRED.RETIRE_SLOTS\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"INT_MISC.RECOVERY_CYCLES\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%1.3f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counters*, i32)* @br_mispredict_broad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_mispredict_broad(%struct.counters* %0, i32 %1) #0 {
  %3 = alloca %struct.counters*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.counters*, align 8
  %6 = alloca %struct.counters*, align 8
  %7 = alloca %struct.counters*, align 8
  %8 = alloca %struct.counters*, align 8
  %9 = alloca %struct.counters*, align 8
  %10 = alloca %struct.counters*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store %struct.counters* %0, %struct.counters** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 4.000000e+00, double* %17, align 8
  %20 = load %struct.counters*, %struct.counters** %3, align 8
  %21 = call %struct.counters* @find_counter(%struct.counters* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.counters* %21, %struct.counters** %6, align 8
  %22 = load %struct.counters*, %struct.counters** %3, align 8
  %23 = call %struct.counters* @find_counter(%struct.counters* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store %struct.counters* %23, %struct.counters** %5, align 8
  %24 = load %struct.counters*, %struct.counters** %3, align 8
  %25 = call %struct.counters* @find_counter(%struct.counters* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store %struct.counters* %25, %struct.counters** %7, align 8
  %26 = load %struct.counters*, %struct.counters** %3, align 8
  %27 = call %struct.counters* @find_counter(%struct.counters* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store %struct.counters* %27, %struct.counters** %8, align 8
  %28 = load %struct.counters*, %struct.counters** %3, align 8
  %29 = call %struct.counters* @find_counter(%struct.counters* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store %struct.counters* %29, %struct.counters** %9, align 8
  %30 = load %struct.counters*, %struct.counters** %3, align 8
  %31 = call %struct.counters* @find_counter(%struct.counters* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store %struct.counters* %31, %struct.counters** %10, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %83

34:                                               ; preds = %2
  %35 = load %struct.counters*, %struct.counters** %6, align 8
  %36 = getelementptr inbounds %struct.counters, %struct.counters* %35, i32 0, i32 0
  %37 = load double*, double** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %37, i64 %39
  %41 = load double, double* %40, align 8
  %42 = fmul double %41, 1.000000e+00
  store double %42, double* %18, align 8
  %43 = load %struct.counters*, %struct.counters** %5, align 8
  %44 = getelementptr inbounds %struct.counters, %struct.counters* %43, i32 0, i32 0
  %45 = load double*, double** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  %49 = load double, double* %48, align 8
  %50 = fmul double %49, 1.000000e+00
  store double %50, double* %12, align 8
  %51 = load %struct.counters*, %struct.counters** %7, align 8
  %52 = getelementptr inbounds %struct.counters, %struct.counters* %51, i32 0, i32 0
  %53 = load double*, double** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  %57 = load double, double* %56, align 8
  %58 = fmul double %57, 1.000000e+00
  store double %58, double* %13, align 8
  %59 = load %struct.counters*, %struct.counters** %8, align 8
  %60 = getelementptr inbounds %struct.counters, %struct.counters* %59, i32 0, i32 0
  %61 = load double*, double** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  %65 = load double, double* %64, align 8
  %66 = fmul double %65, 1.000000e+00
  store double %66, double* %14, align 8
  %67 = load %struct.counters*, %struct.counters** %9, align 8
  %68 = getelementptr inbounds %struct.counters, %struct.counters* %67, i32 0, i32 0
  %69 = load double*, double** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %69, i64 %71
  %73 = load double, double* %72, align 8
  %74 = fmul double %73, 1.000000e+00
  store double %74, double* %15, align 8
  %75 = load %struct.counters*, %struct.counters** %10, align 8
  %76 = getelementptr inbounds %struct.counters, %struct.counters* %75, i32 0, i32 0
  %77 = load double*, double** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %77, i64 %79
  %81 = load double, double* %80, align 8
  %82 = fmul double %81, 1.000000e+00
  store double %82, double* %16, align 8
  br label %108

83:                                               ; preds = %2
  %84 = load %struct.counters*, %struct.counters** %6, align 8
  %85 = getelementptr inbounds %struct.counters, %struct.counters* %84, i32 0, i32 1
  %86 = load double, double* %85, align 8
  %87 = fmul double %86, 1.000000e+00
  store double %87, double* %18, align 8
  %88 = load %struct.counters*, %struct.counters** %5, align 8
  %89 = getelementptr inbounds %struct.counters, %struct.counters* %88, i32 0, i32 1
  %90 = load double, double* %89, align 8
  %91 = fmul double %90, 1.000000e+00
  store double %91, double* %12, align 8
  %92 = load %struct.counters*, %struct.counters** %7, align 8
  %93 = getelementptr inbounds %struct.counters, %struct.counters* %92, i32 0, i32 1
  %94 = load double, double* %93, align 8
  %95 = fmul double %94, 1.000000e+00
  store double %95, double* %13, align 8
  %96 = load %struct.counters*, %struct.counters** %8, align 8
  %97 = getelementptr inbounds %struct.counters, %struct.counters* %96, i32 0, i32 1
  %98 = load double, double* %97, align 8
  %99 = fmul double %98, 1.000000e+00
  store double %99, double* %14, align 8
  %100 = load %struct.counters*, %struct.counters** %9, align 8
  %101 = getelementptr inbounds %struct.counters, %struct.counters* %100, i32 0, i32 1
  %102 = load double, double* %101, align 8
  %103 = fmul double %102, 1.000000e+00
  store double %103, double* %15, align 8
  %104 = load %struct.counters*, %struct.counters** %10, align 8
  %105 = getelementptr inbounds %struct.counters, %struct.counters* %104, i32 0, i32 1
  %106 = load double, double* %105, align 8
  %107 = fmul double %106, 1.000000e+00
  store double %107, double* %16, align 8
  br label %108

108:                                              ; preds = %83, %34
  %109 = load double, double* %12, align 8
  %110 = load double, double* %12, align 8
  %111 = load double, double* %13, align 8
  %112 = fadd double %110, %111
  %113 = fdiv double %109, %112
  %114 = load double, double* %14, align 8
  %115 = load double, double* %15, align 8
  %116 = fsub double %114, %115
  %117 = load double, double* %17, align 8
  %118 = load double, double* %16, align 8
  %119 = fmul double %117, %118
  %120 = fadd double %116, %119
  %121 = fmul double %113, %120
  %122 = load double, double* %18, align 8
  %123 = load double, double* %17, align 8
  %124 = fmul double %122, %123
  %125 = fdiv double %121, %124
  store double %125, double* %19, align 8
  %126 = load double, double* %19, align 8
  %127 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), double %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  ret i32 %128
}

declare dso_local %struct.counters* @find_counter(%struct.counters*, i8*) #1

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
