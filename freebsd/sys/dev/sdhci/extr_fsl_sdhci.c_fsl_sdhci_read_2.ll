; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_read_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_fsl_sdhci.c_fsl_sdhci_read_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32 }
%struct.fsl_sdhci_softc = type { i64, i32 }

@HWTYPE_USDHC = common dso_local global i64 0, align 8
@SDHCI_HOST_VERSION = common dso_local global i32 0, align 4
@SDHCI_SPEC_300 = common dso_local global i32 0, align 4
@SDHCI_SPEC_VER_SHIFT = common dso_local global i32 0, align 4
@SDHCI_TRANSFER_MODE = common dso_local global i32 0, align 4
@USDHC_MIX_CONTROL = common dso_local global i32 0, align 4
@HWTYPE_ESDHC = common dso_local global i64 0, align 8
@SDHCI_COMMAND_FLAGS = common dso_local global i32 0, align 4
@SDHCI_SLOT_INT_STATUS = common dso_local global i32 0, align 4
@SDHCI_INT_STATUS = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_CLOCK_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sdhci_slot*, i32)* @fsl_sdhci_read_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sdhci_read_2(i32 %0, %struct.sdhci_slot* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsl_sdhci_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.fsl_sdhci_softc* @device_get_softc(i32 %10)
  store %struct.fsl_sdhci_softc* %11, %struct.fsl_sdhci_softc** %8, align 8
  %12 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %8, align 8
  %13 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HWTYPE_USDHC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SDHCI_HOST_VERSION, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @SDHCI_SPEC_300, align 4
  %23 = load i32, i32* @SDHCI_SPEC_VER_SHIFT, align 4
  %24 = shl i32 %22, %23
  store i32 %24, i32* %4, align 4
  br label %96

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %8, align 8
  %31 = load i32, i32* @USDHC_MIX_CONTROL, align 4
  %32 = call i32 @RD4(%struct.fsl_sdhci_softc* %30, i32 %31)
  %33 = and i32 %32, 55
  store i32 %33, i32* %4, align 4
  br label %96

34:                                               ; preds = %25
  br label %62

35:                                               ; preds = %3
  %36 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %8, align 8
  %37 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HWTYPE_ESDHC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %8, align 8
  %47 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 65535
  store i32 %49, i32* %4, align 4
  br label %96

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SDHCI_COMMAND_FLAGS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %8, align 8
  %56 = getelementptr inbounds %struct.fsl_sdhci_softc, %struct.fsl_sdhci_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %57, 16
  store i32 %58, i32* %4, align 4
  br label %96

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %35
  br label %62

62:                                               ; preds = %61, %34
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SDHCI_SLOT_INT_STATUS, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %8, align 8
  %68 = load i32, i32* @SDHCI_INT_STATUS, align 4
  %69 = call i32 @RD4(%struct.fsl_sdhci_softc* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %8, align 8
  %71 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %72 = call i32 @RD4(%struct.fsl_sdhci_softc* %70, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  store i32 %78, i32* %4, align 4
  br label %96

79:                                               ; preds = %62
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @SDHCI_CLOCK_CONTROL, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %8, align 8
  %85 = call i32 @fsl_sdhc_get_clock(%struct.fsl_sdhci_softc* %84)
  store i32 %85, i32* %4, align 4
  br label %96

86:                                               ; preds = %79
  %87 = load %struct.fsl_sdhci_softc*, %struct.fsl_sdhci_softc** %8, align 8
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, -4
  %90 = call i32 @RD4(%struct.fsl_sdhci_softc* %87, i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, 3
  %93 = mul nsw i32 %92, 8
  %94 = ashr i32 %90, %93
  %95 = and i32 %94, 65535
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %86, %83, %66, %54, %45, %29, %21
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.fsl_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @RD4(%struct.fsl_sdhci_softc*, i32) #1

declare dso_local i32 @fsl_sdhc_get_clock(%struct.fsl_sdhci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
