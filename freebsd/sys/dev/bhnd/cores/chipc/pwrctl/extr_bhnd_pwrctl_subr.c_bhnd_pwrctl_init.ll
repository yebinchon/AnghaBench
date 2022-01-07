; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl_subr.c_bhnd_pwrctl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/pwrctl/extr_bhnd_pwrctl_subr.c_bhnd_pwrctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_pwrctl_softc = type { i32 }

@CHIPC_PLL_DELAY = common dso_local global i64 0, align 8
@INSTACLK_CTL = common dso_local global i32 0, align 4
@CHIPC_ILP_DIV_1MHZ = common dso_local global i64 0, align 8
@CHIPC_SYCC_CD_SHIFT = common dso_local global i64 0, align 8
@CHIPC_SYCC_CD_MASK = common dso_local global i64 0, align 8
@CHIPC_SYS_CLK_CTL = common dso_local global i32 0, align 4
@CHIPC_SCC_SS_XTAL = common dso_local global i64 0, align 8
@CHIPC_XTAL_ON_DELAY = common dso_local global i64 0, align 8
@CHIPC_FREF_DELAY = common dso_local global i64 0, align 8
@CHIPC_PLL_ON_DELAY = common dso_local global i32 0, align 4
@CHIPC_PLL_FREFSEL_DELAY = common dso_local global i32 0, align 4
@FORCE_HT = common dso_local global i32 0, align 4
@BHND_CLOCK_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pwrctl_init(%struct.bhnd_pwrctl_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhnd_pwrctl_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bhnd_pwrctl_softc* %0, %struct.bhnd_pwrctl_softc** %3, align 8
  %11 = load i64, i64* @CHIPC_PLL_DELAY, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %13 = load i32, i32* @INSTACLK_CTL, align 4
  %14 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load i64, i64* @CHIPC_ILP_DIV_1MHZ, align 8
  %18 = load i64, i64* @CHIPC_SYCC_CD_SHIFT, align 8
  %19 = shl i64 %17, %18
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* @CHIPC_SYCC_CD_MASK, align 8
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %4, align 8
  %23 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %24 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CHIPC_SYS_CLK_CTL, align 4
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @bhnd_bus_write_4(i32 %25, i32 %26, i64 %27)
  br label %29

29:                                               ; preds = %16, %1
  %30 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %31 = call i64 @bhnd_pwrctl_slowclk_src(%struct.bhnd_pwrctl_softc* %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @CHIPC_SCC_SS_XTAL, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64, i64* @CHIPC_XTAL_ON_DELAY, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %41 = load i32, i32* @INSTACLK_CTL, align 4
  %42 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %46 = call i64 @bhnd_pwrctl_slowclk_freq(%struct.bhnd_pwrctl_softc* %45, i32 0)
  store i64 %46, i64* %7, align 8
  br label %50

47:                                               ; preds = %39
  %48 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %49 = call i64 @bhnd_pwrctl_slowclk_freq(%struct.bhnd_pwrctl_softc* %48, i32 1)
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %5, align 8
  %53 = mul nsw i64 %51, %52
  %54 = add nsw i64 %53, 999999
  %55 = sdiv i64 %54, 1000000
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @CHIPC_FREF_DELAY, align 8
  %58 = mul nsw i64 %56, %57
  %59 = add nsw i64 %58, 999999
  %60 = sdiv i64 %59, 1000000
  store i64 %60, i64* %9, align 8
  %61 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %62 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CHIPC_PLL_ON_DELAY, align 4
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @bhnd_bus_write_4(i32 %63, i32 %64, i64 %65)
  %67 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %68 = getelementptr inbounds %struct.bhnd_pwrctl_softc, %struct.bhnd_pwrctl_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CHIPC_PLL_FREFSEL_DELAY, align 4
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @bhnd_bus_write_4(i32 %69, i32 %70, i64 %71)
  %73 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %74 = load i32, i32* @FORCE_HT, align 4
  %75 = call i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %50
  %78 = load %struct.bhnd_pwrctl_softc*, %struct.bhnd_pwrctl_softc** %3, align 8
  %79 = load i32, i32* @BHND_CLOCK_HT, align 4
  %80 = call i32 @bhnd_pwrctl_setclk(%struct.bhnd_pwrctl_softc* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %2, align 4
  br label %86

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %50
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @PWRCTL_QUIRK(%struct.bhnd_pwrctl_softc*, i32) #1

declare dso_local i32 @bhnd_bus_write_4(i32, i32, i64) #1

declare dso_local i64 @bhnd_pwrctl_slowclk_src(%struct.bhnd_pwrctl_softc*) #1

declare dso_local i64 @bhnd_pwrctl_slowclk_freq(%struct.bhnd_pwrctl_softc*, i32) #1

declare dso_local i32 @bhnd_pwrctl_setclk(%struct.bhnd_pwrctl_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
