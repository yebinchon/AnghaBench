; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_p4tcc.c_p4tcc_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_p4tcc.c_p4tcc_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i32 }
%struct.p4tcc_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@TCC_NUM_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*, i32*)* @p4tcc_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p4tcc_settings(i32 %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.p4tcc_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.p4tcc_softc* @device_get_softc(i32 %11)
  store %struct.p4tcc_softc* %12, %struct.p4tcc_softc** %8, align 8
  %13 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %14 = icmp eq %struct.cf_setting* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %70

20:                                               ; preds = %15
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %8, align 8
  %24 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @E2BIG, align 4
  store i32 %28, i32* %4, align 4
  br label %70

29:                                               ; preds = %20
  %30 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %31 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %32 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %8, align 8
  %33 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 8, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memset(%struct.cf_setting* %30, i32 %31, i32 %37)
  %39 = load i32, i32* @TCC_NUM_SETTINGS, align 4
  store i32 %39, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %60, %29
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %8, align 8
  %43 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @TCC_SPEED_PERCENT(i32 %47)
  %49 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %49, i64 %51
  %53 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %52, i32 0, i32 1
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %55, i64 %57
  %59 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  br label %60

60:                                               ; preds = %46
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %10, align 4
  br label %40

65:                                               ; preds = %40
  %66 = load %struct.p4tcc_softc*, %struct.p4tcc_softc** %8, align 8
  %67 = getelementptr inbounds %struct.p4tcc_softc, %struct.p4tcc_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %27, %18
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.p4tcc_softc* @device_get_softc(i32) #1

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

declare dso_local i32 @TCC_SPEED_PERCENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
