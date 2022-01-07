; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_p4tcc.c_p4tcc_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_p4tcc.c_p4tcc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.p4tcc_softc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TCC_NUM_SETTINGS = common dso_local global i32 0, align 4
@MSR_THERM_CONTROL = common dso_local global i32 0, align 4
@TCC_REG_OFFSET = common dso_local global i32 0, align 4
@TCC_ENABLE_ONDEMAND = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @p4tcc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p4tcc_set(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.p4tcc_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %10 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %11 = icmp eq %struct.cf_setting* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %84

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.p4tcc_softc* @device_get_softc(i32 %15)
  store %struct.p4tcc_softc* %16, %struct.p4tcc_softc** %6, align 8
  %17 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %18 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TCC_NUM_SETTINGS, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sdiv i32 %21, 10000
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %23, 10000
  %25 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %26 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TCC_NUM_SETTINGS, align 4
  %29 = mul nsw i32 %27, %28
  %30 = icmp ne i32 %24, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %6, align 8
  %34 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @TCC_NUM_SETTINGS, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %31, %14
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %84

43:                                               ; preds = %37
  %44 = load i32, i32* @MSR_THERM_CONTROL, align 4
  %45 = call i32 @rdmsr(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @TCC_NUM_SETTINGS, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* @TCC_REG_OFFSET, align 4
  %49 = shl i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @TCC_ENABLE_ONDEMAND, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @TCC_NUM_SETTINGS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %43
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @TCC_REG_OFFSET, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* @TCC_ENABLE_ONDEMAND, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %59, %43
  %68 = load i32, i32* @MSR_THERM_CONTROL, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @wrmsr(i32 %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @TCC_ENABLE_ONDEMAND, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i32, i32* @FALSE, align 4
  %77 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %6, align 8
  %78 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %83

79:                                               ; preds = %67
  %80 = load i32, i32* @TRUE, align 4
  %81 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %6, align 8
  %82 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %75
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %41, %12
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.p4tcc_softc* @device_get_softc(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
