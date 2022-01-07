; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_cpu_est_clockrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_cpu_machdep.c_cpu_est_clockrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@tsc_is_invariant = common dso_local global i64 0, align 8
@tsc_perf_stat = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MSR_MPERF = common dso_local global i32 0, align 4
@MSR_APERF = common dso_local global i32 0, align 4
@CPUID_TSC = common dso_local global i32 0, align 4
@cpu_feature = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@smp_cpus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_est_clockrate(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32* @pcpu_find(i32 %12)
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %68

20:                                               ; preds = %15
  %21 = load i64, i64* @tsc_is_invariant, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* @tsc_perf_stat, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %27, i32* %3, align 4
  br label %68

28:                                               ; preds = %23, %20
  %29 = call i32 (...) @intr_disable()
  store i32 %29, i32* %11, align 4
  %30 = load i64, i64* @tsc_is_invariant, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load i32, i32* @MSR_MPERF, align 4
  %34 = call i32 @wrmsr(i32 %33, i32 0)
  %35 = load i32, i32* @MSR_APERF, align 4
  %36 = call i32 @wrmsr(i32 %35, i32 0)
  %37 = call i32 (...) @rdtsc()
  store i32 %37, i32* %6, align 4
  %38 = call i32 @DELAY(i32 1000)
  %39 = load i32, i32* @MSR_MPERF, align 4
  %40 = call i32 @rdmsr(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @MSR_APERF, align 4
  %42 = call i32 @rdmsr(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = call i32 (...) @rdtsc()
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @intr_restore(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 1000, %46
  %48 = load i32, i32* %9, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  br label %67

56:                                               ; preds = %28
  %57 = call i32 (...) @rdtsc()
  store i32 %57, i32* %6, align 4
  %58 = call i32 @DELAY(i32 1000)
  %59 = call i32 (...) @rdtsc()
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @intr_restore(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %62, %63
  %65 = mul nsw i32 %64, 1000
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %56, %32
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %26, %18
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32* @pcpu_find(i32) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
