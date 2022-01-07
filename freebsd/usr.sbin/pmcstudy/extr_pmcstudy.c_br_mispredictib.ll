; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_br_mispredictib.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_br_mispredictib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counters = type { double*, double }

@.str = private unnamed_addr constant [26 x i8] c"CPU_CLK_UNHALTED.THREAD_P\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"BR_MISP_RETIRED.ALL_BRANCHES\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"MACHINE_CLEARS.MEMORY_ORDERING\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"MACHINE_CLEARS.SMC\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"MACHINE_CLEARS.MASKMOV\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"UOPS_RETIRED.RETIRE_SLOTS\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"UOPS_ISSUED.ANY\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"INT_MISC.RECOVERY_CYCLES\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%1.3f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counters*, i32)* @br_mispredictib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_mispredictib(%struct.counters* %0, i32 %1) #0 {
  %3 = alloca %struct.counters*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.counters*, align 8
  %6 = alloca %struct.counters*, align 8
  %7 = alloca %struct.counters*, align 8
  %8 = alloca %struct.counters*, align 8
  %9 = alloca %struct.counters*, align 8
  %10 = alloca %struct.counters*, align 8
  %11 = alloca %struct.counters*, align 8
  %12 = alloca %struct.counters*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  store %struct.counters* %0, %struct.counters** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 4.000000e+00, double* %21, align 8
  %24 = load %struct.counters*, %struct.counters** %3, align 8
  %25 = call %struct.counters* @find_counter(%struct.counters* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.counters* %25, %struct.counters** %6, align 8
  %26 = load %struct.counters*, %struct.counters** %3, align 8
  %27 = call %struct.counters* @find_counter(%struct.counters* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store %struct.counters* %27, %struct.counters** %5, align 8
  %28 = load %struct.counters*, %struct.counters** %3, align 8
  %29 = call %struct.counters* @find_counter(%struct.counters* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store %struct.counters* %29, %struct.counters** %7, align 8
  %30 = load %struct.counters*, %struct.counters** %3, align 8
  %31 = call %struct.counters* @find_counter(%struct.counters* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store %struct.counters* %31, %struct.counters** %8, align 8
  %32 = load %struct.counters*, %struct.counters** %3, align 8
  %33 = call %struct.counters* @find_counter(%struct.counters* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store %struct.counters* %33, %struct.counters** %9, align 8
  %34 = load %struct.counters*, %struct.counters** %3, align 8
  %35 = call %struct.counters* @find_counter(%struct.counters* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store %struct.counters* %35, %struct.counters** %10, align 8
  %36 = load %struct.counters*, %struct.counters** %3, align 8
  %37 = call %struct.counters* @find_counter(%struct.counters* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store %struct.counters* %37, %struct.counters** %12, align 8
  %38 = load %struct.counters*, %struct.counters** %3, align 8
  %39 = call %struct.counters* @find_counter(%struct.counters* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store %struct.counters* %39, %struct.counters** %11, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %107

42:                                               ; preds = %2
  %43 = load %struct.counters*, %struct.counters** %5, align 8
  %44 = getelementptr inbounds %struct.counters, %struct.counters* %43, i32 0, i32 0
  %45 = load double*, double** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  %49 = load double, double* %48, align 8
  %50 = fmul double %49, 1.000000e+00
  store double %50, double* %14, align 8
  %51 = load %struct.counters*, %struct.counters** %7, align 8
  %52 = getelementptr inbounds %struct.counters, %struct.counters* %51, i32 0, i32 0
  %53 = load double*, double** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  %57 = load double, double* %56, align 8
  %58 = fmul double %57, 1.000000e+00
  store double %58, double* %15, align 8
  %59 = load %struct.counters*, %struct.counters** %8, align 8
  %60 = getelementptr inbounds %struct.counters, %struct.counters* %59, i32 0, i32 0
  %61 = load double*, double** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  %65 = load double, double* %64, align 8
  %66 = fmul double %65, 1.000000e+00
  store double %66, double* %16, align 8
  %67 = load %struct.counters*, %struct.counters** %9, align 8
  %68 = getelementptr inbounds %struct.counters, %struct.counters* %67, i32 0, i32 0
  %69 = load double*, double** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %69, i64 %71
  %73 = load double, double* %72, align 8
  %74 = fmul double %73, 1.000000e+00
  store double %74, double* %17, align 8
  %75 = load %struct.counters*, %struct.counters** %10, align 8
  %76 = getelementptr inbounds %struct.counters, %struct.counters* %75, i32 0, i32 0
  %77 = load double*, double** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double, double* %77, i64 %79
  %81 = load double, double* %80, align 8
  %82 = fmul double %81, 1.000000e+00
  store double %82, double* %18, align 8
  %83 = load %struct.counters*, %struct.counters** %11, align 8
  %84 = getelementptr inbounds %struct.counters, %struct.counters* %83, i32 0, i32 0
  %85 = load double*, double** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %85, i64 %87
  %89 = load double, double* %88, align 8
  %90 = fmul double %89, 1.000000e+00
  store double %90, double* %19, align 8
  %91 = load %struct.counters*, %struct.counters** %12, align 8
  %92 = getelementptr inbounds %struct.counters, %struct.counters* %91, i32 0, i32 0
  %93 = load double*, double** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %93, i64 %95
  %97 = load double, double* %96, align 8
  %98 = fmul double %97, 1.000000e+00
  store double %98, double* %23, align 8
  %99 = load %struct.counters*, %struct.counters** %6, align 8
  %100 = getelementptr inbounds %struct.counters, %struct.counters* %99, i32 0, i32 0
  %101 = load double*, double** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %101, i64 %103
  %105 = load double, double* %104, align 8
  %106 = fmul double %105, 1.000000e+00
  store double %106, double* %20, align 8
  br label %140

107:                                              ; preds = %2
  %108 = load %struct.counters*, %struct.counters** %5, align 8
  %109 = getelementptr inbounds %struct.counters, %struct.counters* %108, i32 0, i32 1
  %110 = load double, double* %109, align 8
  %111 = fmul double %110, 1.000000e+00
  store double %111, double* %14, align 8
  %112 = load %struct.counters*, %struct.counters** %7, align 8
  %113 = getelementptr inbounds %struct.counters, %struct.counters* %112, i32 0, i32 1
  %114 = load double, double* %113, align 8
  %115 = fmul double %114, 1.000000e+00
  store double %115, double* %15, align 8
  %116 = load %struct.counters*, %struct.counters** %8, align 8
  %117 = getelementptr inbounds %struct.counters, %struct.counters* %116, i32 0, i32 1
  %118 = load double, double* %117, align 8
  %119 = fmul double %118, 1.000000e+00
  store double %119, double* %16, align 8
  %120 = load %struct.counters*, %struct.counters** %9, align 8
  %121 = getelementptr inbounds %struct.counters, %struct.counters* %120, i32 0, i32 1
  %122 = load double, double* %121, align 8
  %123 = fmul double %122, 1.000000e+00
  store double %123, double* %17, align 8
  %124 = load %struct.counters*, %struct.counters** %10, align 8
  %125 = getelementptr inbounds %struct.counters, %struct.counters* %124, i32 0, i32 1
  %126 = load double, double* %125, align 8
  %127 = fmul double %126, 1.000000e+00
  store double %127, double* %18, align 8
  %128 = load %struct.counters*, %struct.counters** %11, align 8
  %129 = getelementptr inbounds %struct.counters, %struct.counters* %128, i32 0, i32 1
  %130 = load double, double* %129, align 8
  %131 = fmul double %130, 1.000000e+00
  store double %131, double* %19, align 8
  %132 = load %struct.counters*, %struct.counters** %12, align 8
  %133 = getelementptr inbounds %struct.counters, %struct.counters* %132, i32 0, i32 1
  %134 = load double, double* %133, align 8
  %135 = fmul double %134, 1.000000e+00
  store double %135, double* %23, align 8
  %136 = load %struct.counters*, %struct.counters** %6, align 8
  %137 = getelementptr inbounds %struct.counters, %struct.counters* %136, i32 0, i32 1
  %138 = load double, double* %137, align 8
  %139 = fmul double %138, 1.000000e+00
  store double %139, double* %20, align 8
  br label %140

140:                                              ; preds = %107, %42
  %141 = load double, double* %14, align 8
  %142 = load double, double* %14, align 8
  %143 = load double, double* %15, align 8
  %144 = fadd double %142, %143
  %145 = load double, double* %16, align 8
  %146 = fadd double %144, %145
  %147 = load double, double* %17, align 8
  %148 = fadd double %146, %147
  %149 = fdiv double %141, %148
  %150 = load double, double* %23, align 8
  %151 = load double, double* %18, align 8
  %152 = fsub double %150, %151
  %153 = load double, double* %21, align 8
  %154 = load double, double* %19, align 8
  %155 = fmul double %153, %154
  %156 = fadd double %152, %155
  %157 = load double, double* %21, align 8
  %158 = load double, double* %20, align 8
  %159 = fmul double %157, %158
  %160 = fdiv double %156, %159
  %161 = fmul double %149, %160
  store double %161, double* %22, align 8
  %162 = load double, double* %22, align 8
  %163 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), double %162)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  ret i32 %164
}

declare dso_local %struct.counters* @find_counter(%struct.counters*, i8*) #1

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
