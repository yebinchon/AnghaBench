; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_r1bfix_is_wait_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_r1bfix_is_wait_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sdhci_softc = type { i64, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@SDHC_PRES_STATE = common dso_local global i32 0, align 4
@SDHC_PRES_DLA = common dso_local global i32 0, align 4
@SDHC_PRES_CDIHB = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@fsl_sdhci_r1bfix_func = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_TIMEOUT = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END = common dso_local global i32 0, align 4
@R1BFIX_NODATA = common dso_local global i64 0, align 8
@SDHCI_INT_RESPONSE = common dso_local global i32 0, align 4
@R1BFIX_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_sdhci_softc*)* @fsl_sdhci_r1bfix_is_wait_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sdhci_r1bfix_is_wait_done(%struct.fsl_sdhci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_sdhci_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.fsl_sdhci_softc* %0, %struct.fsl_sdhci_softc** %3, align 8
  %5 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %6 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  %10 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %11 = load i32, i32* @SDHC_PRES_STATE, align 4
  %12 = call i32 @RD4(%struct.fsl_sdhci_softc* %10, i32 %11)
  %13 = load i32, i32* @SDHC_PRES_DLA, align 4
  %14 = load i32, i32* @SDHC_PRES_CDIHB, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = call i64 (...) @getsbinuptime()
  %21 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %22 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %27 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %26, i32 0, i32 3
  %28 = load i32, i32* @SBT_1MS, align 4
  %29 = load i32, i32* @fsl_sdhci_r1bfix_func, align 4
  %30 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %31 = call i32 @callout_reset_sbt(i32* %27, i32 %28, i32 0, i32 %29, %struct.fsl_sdhci_softc* %30, i32 0)
  store i32 0, i32* %2, align 4
  br label %63

32:                                               ; preds = %19, %1
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* @SDHCI_INT_DATA_TIMEOUT, align 4
  %37 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %38 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %59

41:                                               ; preds = %32
  %42 = load i32, i32* @SDHCI_INT_DATA_END, align 4
  %43 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %44 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %48 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @R1BFIX_NODATA, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load i32, i32* @SDHCI_INT_RESPONSE, align 4
  %54 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %55 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %41
  br label %59

59:                                               ; preds = %58, %35
  %60 = load i64, i64* @R1BFIX_NONE, align 8
  %61 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %3, align 8
  %62 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %25
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @RD4(%struct.fsl_sdhci_softc*, i32) #1

declare dso_local i64 @getsbinuptime(...) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, %struct.fsl_sdhci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
