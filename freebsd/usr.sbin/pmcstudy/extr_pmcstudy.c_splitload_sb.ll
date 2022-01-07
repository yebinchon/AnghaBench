; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_splitload_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_splitload_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counters = type { double*, double }

@.str = private unnamed_addr constant [26 x i8] c"CPU_CLK_UNHALTED.THREAD_P\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"MEM_UOP_RETIRED.SPLIT_LOADS\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%1.3f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counters*, i32)* @splitload_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @splitload_sb(%struct.counters* %0, i32 %1) #0 {
  %3 = alloca %struct.counters*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.counters*, align 8
  %7 = alloca %struct.counters*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store %struct.counters* %0, %struct.counters** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 5.000000e+00, double* %8, align 8
  %12 = load %struct.counters*, %struct.counters** %3, align 8
  %13 = call %struct.counters* @find_counter(%struct.counters* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.counters* %13, %struct.counters** %7, align 8
  %14 = load %struct.counters*, %struct.counters** %3, align 8
  %15 = call %struct.counters* @find_counter(%struct.counters* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store %struct.counters* %15, %struct.counters** %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.counters*, %struct.counters** %6, align 8
  %20 = getelementptr inbounds %struct.counters, %struct.counters* %19, i32 0, i32 0
  %21 = load double*, double** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = load double, double* %24, align 8
  %26 = fmul double %25, 1.000000e+00
  store double %26, double* %10, align 8
  %27 = load %struct.counters*, %struct.counters** %7, align 8
  %28 = getelementptr inbounds %struct.counters, %struct.counters* %27, i32 0, i32 0
  %29 = load double*, double** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %29, i64 %31
  %33 = load double, double* %32, align 8
  %34 = fmul double %33, 1.000000e+00
  store double %34, double* %9, align 8
  br label %44

35:                                               ; preds = %2
  %36 = load %struct.counters*, %struct.counters** %6, align 8
  %37 = getelementptr inbounds %struct.counters, %struct.counters* %36, i32 0, i32 1
  %38 = load double, double* %37, align 8
  %39 = fmul double %38, 1.000000e+00
  store double %39, double* %10, align 8
  %40 = load %struct.counters*, %struct.counters** %7, align 8
  %41 = getelementptr inbounds %struct.counters, %struct.counters* %40, i32 0, i32 1
  %42 = load double, double* %41, align 8
  %43 = fmul double %42, 1.000000e+00
  store double %43, double* %9, align 8
  br label %44

44:                                               ; preds = %35, %18
  %45 = load double, double* %10, align 8
  %46 = load double, double* %8, align 8
  %47 = fmul double %45, %46
  %48 = load double, double* %9, align 8
  %49 = fdiv double %47, %48
  store double %49, double* %11, align 8
  %50 = load double, double* %11, align 8
  %51 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), double %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.counters* @find_counter(%struct.counters*, i8*) #1

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
