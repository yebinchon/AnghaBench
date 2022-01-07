; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pmcr.c_pmcr_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pmcr.c_pmcr_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32*, i32, i32 }
%struct.pmcr_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@npstates = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@pstate_freqs = common dso_local global i32* null, align 8
@pstate_ids = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*, i32*)* @pmcr_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcr_settings(i32 %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pmcr_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.pmcr_softc* @device_get_softc(i32 %10)
  store %struct.pmcr_softc* %11, %struct.pmcr_softc** %8, align 8
  %12 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %13 = icmp eq %struct.cf_setting* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %81

19:                                               ; preds = %14
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @npstates, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @E2BIG, align 4
  store i32 %25, i32* %4, align 4
  br label %81

26:                                               ; preds = %19
  %27 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %28 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %29 = load i32, i32* @npstates, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 16, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(%struct.cf_setting* %27, i32 %28, i32 %32)
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %75, %26
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @npstates, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %34
  %39 = load i32*, i32** @pstate_freqs, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %44, i64 %46
  %48 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %47, i32 0, i32 2
  store i32 %43, i32* %48, align 4
  %49 = load i32*, i32** @pstate_ids, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %54, i64 %56
  %58 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %53, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %62, i64 %64
  %66 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %61, i32* %68, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %70, i64 %72
  %74 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %73, i32 0, i32 1
  store i32 %69, i32* %74, align 8
  br label %75

75:                                               ; preds = %38
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %34

78:                                               ; preds = %34
  %79 = load i32, i32* @npstates, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %24, %17
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.pmcr_softc* @device_get_softc(i32) #1

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
