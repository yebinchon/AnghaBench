; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_est.c_est_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_est.c_est_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"est\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"acpi_perf\00", align 1
@CPUFREQ_FLAG_INFO_ONLY = common dso_local global i32 0, align 4
@MSR_MISC_ENABLE = common dso_local global i32 0, align 4
@MSR_SS_ENABLE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"enabling SpeedStep\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to enable SpeedStep\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Enhanced SpeedStep Frequency Control\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @est_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @est_probe(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = call i64 @resource_disabled(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %68

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @device_get_parent(i64 %13)
  %15 = call i64 @device_find_child(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @device_is_attached(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @CPUFREQ_DRV_TYPE(i64 %23, i32* %7)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @CPUFREQ_FLAG_INFO_ONLY, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %68

34:                                               ; preds = %27, %22
  br label %35

35:                                               ; preds = %34, %18, %12
  %36 = load i32, i32* @MSR_MISC_ENABLE, align 4
  %37 = call i32 @rdmsr(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MSR_SS_ENABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %35
  %43 = load i32, i32* @MSR_MISC_ENABLE, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @MSR_SS_ENABLE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @wrmsr(i32 %43, i32 %46)
  %48 = load i64, i64* @bootverbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @device_printf(i64 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i32, i32* @MSR_MISC_ENABLE, align 4
  %55 = call i32 @rdmsr(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MSR_SS_ENABLE, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @device_printf(i64 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  br label %68

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %35
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @device_set_desc(i64 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %60, %32, %10
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i64 @device_find_child(i32, i8*, i32) #1

declare dso_local i32 @device_get_parent(i64) #1

declare dso_local i64 @device_is_attached(i64) #1

declare dso_local i32 @CPUFREQ_DRV_TYPE(i64, i32*) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @device_printf(i64, i8*) #1

declare dso_local i32 @device_set_desc(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
