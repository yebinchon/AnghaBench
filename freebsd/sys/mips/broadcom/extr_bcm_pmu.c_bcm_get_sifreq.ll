; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_pmu.c_bcm_get_sifreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_pmu.c_bcm_get_sifreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_platform = type { i32, i32 }

@CHIPC_CAP_PLL = common dso_local global i32 0, align 4
@CHIPC_CLKC_N = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_get_sifreq(%struct.bcm_platform* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_platform*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bcm_platform* %0, %struct.bcm_platform** %3, align 8
  %9 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %10 = call i64 @bcm_has_pmu(%struct.bcm_platform* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %14 = call i32 @bcm_get_pmu(%struct.bcm_platform* %13)
  %15 = call i32 @bhnd_pmu_si_clock(i32 %14)
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %18 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CHIPC_CAP_PLL, align 4
  %21 = call i32 @CHIPC_GET_BITS(i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %23 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %22, i32 0, i32 0
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @bhnd_pwrctl_si_clkreg_m(i32* %23, i32 %24, i32* %4)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %43

30:                                               ; preds = %16
  %31 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %32 = load i64, i64* @CHIPC_CLKC_N, align 8
  %33 = call i32 @BCM_CHIPC_READ_4(%struct.bcm_platform* %31, i64 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @BCM_CHIPC_READ_4(%struct.bcm_platform* %34, i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.bcm_platform*, %struct.bcm_platform** %3, align 8
  %38 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %37, i32 0, i32 0
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @bhnd_pwrctl_si_clock_rate(i32* %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %30, %28, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @bcm_has_pmu(%struct.bcm_platform*) #1

declare dso_local i32 @bhnd_pmu_si_clock(i32) #1

declare dso_local i32 @bcm_get_pmu(%struct.bcm_platform*) #1

declare dso_local i32 @CHIPC_GET_BITS(i32, i32) #1

declare dso_local i64 @bhnd_pwrctl_si_clkreg_m(i32*, i32, i32*) #1

declare dso_local i32 @BCM_CHIPC_READ_4(%struct.bcm_platform*, i64) #1

declare dso_local i32 @bhnd_pwrctl_si_clock_rate(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
