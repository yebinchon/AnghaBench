; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_p4tcc.c_p4tcc_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_p4tcc.c_p4tcc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i32 }
%struct.p4tcc_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MSR_THERM_CONTROL = common dso_local global i32 0, align 4
@TCC_REG_OFFSET = common dso_local global i32 0, align 4
@TCC_NUM_SETTINGS = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @p4tcc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p4tcc_get(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.p4tcc_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %9 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %10 = icmp eq %struct.cf_setting* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.p4tcc_softc* @device_get_softc(i32 %14)
  store %struct.p4tcc_softc* %15, %struct.p4tcc_softc** %6, align 8
  %16 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %6, align 8
  %17 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @MSR_THERM_CONTROL, align 4
  %22 = call i32 @rdmsr(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @TCC_REG_OFFSET, align 4
  %25 = ashr i32 %23, %24
  %26 = load i32, i32* @TCC_NUM_SETTINGS, align 4
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %25, %27
  store i32 %28, i32* %8, align 4
  br label %31

29:                                               ; preds = %13
  %30 = load i32, i32* @TCC_NUM_SETTINGS, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %29, %20
  %32 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %33 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %34 = call i32 @memset(%struct.cf_setting* %32, i32 %33, i32 8)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @TCC_SPEED_PERCENT(i32 %35)
  %37 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %38 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %41 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %31, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.p4tcc_softc* @device_get_softc(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

declare dso_local i32 @TCC_SPEED_PERCENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
