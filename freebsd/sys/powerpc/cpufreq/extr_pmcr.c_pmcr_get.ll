; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pmcr.c_pmcr_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pmcr.c_pmcr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32*, i32, i32 }
%struct.pmcr_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@SPR_PMCR = common dso_local global i32 0, align 4
@PMCR_LOWERPS_MASK = common dso_local global i32 0, align 4
@PMCR_LOWERPS_SHIFT = common dso_local global i32 0, align 4
@npstates = common dso_local global i32 0, align 4
@pstate_ids = common dso_local global i32* null, align 8
@pstate_freqs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @pmcr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcr_get(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.pmcr_softc*, align 8
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
  br label %72

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.pmcr_softc* @device_get_softc(i32 %15)
  store %struct.pmcr_softc* %16, %struct.pmcr_softc** %6, align 8
  %17 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %18 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %19 = call i32 @memset(%struct.cf_setting* %17, i32 %18, i32 16)
  %20 = load i32, i32* @SPR_PMCR, align 4
  %21 = call i32 @mfspr(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @PMCR_LOWERPS_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @PMCR_LOWERPS_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %42, %14
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @npstates, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32*, i32** @pstate_ids, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %36, %37
  br label %39

39:                                               ; preds = %31, %27
  %40 = phi i1 [ false, %27 ], [ %38, %31 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %27

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @npstates, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %3, align 4
  br label %72

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %54 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %59 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %57, i32* %61, align 4
  %62 = load i32*, i32** @pstate_freqs, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %68 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %71 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %51, %49, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.pmcr_softc* @device_get_softc(i32) #1

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
