; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pmcr.c_pmcr_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_pmcr.c_pmcr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@npstates = common dso_local global i64 0, align 8
@PMCR_LOWERPS_SHIFT = common dso_local global i64 0, align 8
@PMCR_LOWERPS_MASK = common dso_local global i64 0, align 8
@PMCR_UPPERPS_SHIFT = common dso_local global i64 0, align 8
@PMCR_UPPERPS_MASK = common dso_local global i64 0, align 8
@PMCR_VERSION_1 = common dso_local global i64 0, align 8
@SPR_PMCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @pmcr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmcr_set(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %7 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %8 = icmp eq %struct.cf_setting* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %3, align 4
  br label %57

11:                                               ; preds = %2
  %12 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %13 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %20 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @npstates, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18, %11
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %57

28:                                               ; preds = %18
  %29 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %30 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PMCR_LOWERPS_SHIFT, align 8
  %35 = shl i64 %33, %34
  %36 = load i64, i64* @PMCR_LOWERPS_MASK, align 8
  %37 = and i64 %35, %36
  store i64 %37, i64* %6, align 8
  %38 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %39 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PMCR_UPPERPS_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = load i64, i64* @PMCR_UPPERPS_MASK, align 8
  %46 = and i64 %44, %45
  %47 = load i64, i64* %6, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* @PMCR_VERSION_1, align 8
  %50 = load i64, i64* %6, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %6, align 8
  %52 = load i32, i32* @SPR_PMCR, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @mtspr(i32 %52, i64 %53)
  %55 = call i32 (...) @powerpc_sync()
  %56 = call i32 (...) @isync()
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %28, %26, %9
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @mtspr(i32, i64) #1

declare dso_local i32 @powerpc_sync(...) #1

declare dso_local i32 @isync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
