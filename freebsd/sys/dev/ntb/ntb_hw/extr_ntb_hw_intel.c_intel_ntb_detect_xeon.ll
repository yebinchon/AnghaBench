; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_detect_xeon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_detect_xeon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i32, i32, i32, i32, i32 }

@NTB_PPD_OFFSET = common dso_local global i32 0, align 4
@XEON_PPD_DEV_TYPE = common dso_local global i32 0, align 4
@NTB_DEV_DSD = common dso_local global i32 0, align 4
@NTB_DEV_USD = common dso_local global i32 0, align 4
@XEON_PPD_SPLIT_BAR = common dso_local global i32 0, align 4
@NTB_SPLIT_BAR = common dso_local global i32 0, align 4
@NTB_SB01BASE_LOCKUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Can not apply SB01BASE_LOCKUP workaround with split BARs disabled!\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Expect system hangs under heavy NTB traffic!\0A\00", align 1
@NTB_SDOORBELL_LOCKUP = common dso_local global i32 0, align 4
@XEON_PPD_CONN_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unsupported connection type: %u\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_softc*)* @intel_ntb_detect_xeon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ntb_detect_xeon(%struct.ntb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ntb_softc* %0, %struct.ntb_softc** %3, align 8
  %6 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NTB_PPD_OFFSET, align 4
  %10 = call i32 @pci_read_config(i32 %8, i32 %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @XEON_PPD_DEV_TYPE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @NTB_DEV_DSD, align 4
  %20 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @NTB_DEV_USD, align 4
  %24 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @XEON_PPD_SPLIT_BAR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @NTB_SPLIT_BAR, align 4
  %33 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %39 = load i32, i32* @NTB_SB01BASE_LOCKUP, align 4
  %40 = call i64 @HAS_FEATURE(%struct.ntb_softc* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %44 = load i32, i32* @NTB_SPLIT_BAR, align 4
  %45 = call i64 @HAS_FEATURE(%struct.ntb_softc* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %42
  %48 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @device_printf(i32 %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @NTB_SB01BASE_LOCKUP, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %47, %42, %37
  %63 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %64 = load i32, i32* @NTB_SB01BASE_LOCKUP, align 4
  %65 = call i64 @HAS_FEATURE(%struct.ntb_softc* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* @NTB_SDOORBELL_LOCKUP, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %67, %62
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @XEON_PPD_CONN_TYPE, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  switch i32 %78, label %84 [
    i32 130, label %79
    i32 129, label %83
    i32 128, label %83
  ]

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %91

83:                                               ; preds = %74, %74
  br label %84

84:                                               ; preds = %74, %83
  %85 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %86 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 (i32, i8*, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @ENXIO, align 4
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %84
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i64 @HAS_FEATURE(%struct.ntb_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
