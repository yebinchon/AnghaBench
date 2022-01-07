; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_set_timing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32 }
%struct.mmc_ivars = type { i32, i32 }

@mode_sd = common dso_local global i64 0, align 8
@SD_SWITCH_NORMAL_MODE = common dso_local global i32 0, align 4
@SD_SWITCH_HS_MODE = common dso_local global i32 0, align 4
@MMC_ERR_INVALID = common dso_local global i32 0, align 4
@SD_SWITCH_MODE_SET = common dso_local global i32 0, align 4
@SD_SWITCH_GROUP1 = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@MMC_ERR_FAILED = common dso_local global i32 0, align 4
@EXT_CSD_HS_TIMING_BC = common dso_local global i32 0, align 4
@EXT_CSD_HS_TIMING_HS = common dso_local global i32 0, align 4
@EXT_CSD_HS_TIMING_HS200 = common dso_local global i32 0, align 4
@EXT_CSD_HS_TIMING_HS400 = common dso_local global i32 0, align 4
@EXT_CSD_CMD_SET_NORMAL = common dso_local global i32 0, align 4
@EXT_CSD_HS_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_softc*, %struct.mmc_ivars*, i32)* @mmc_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_set_timing(%struct.mmc_softc* %0, %struct.mmc_ivars* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_softc*, align 8
  %6 = alloca %struct.mmc_ivars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %5, align 8
  store %struct.mmc_ivars* %1, %struct.mmc_ivars** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %12 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @mmcbr_get_mode(i32 %13)
  %15 = load i64, i64* @mode_sd, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %23 [
    i32 128, label %19
    i32 133, label %21
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @SD_SWITCH_NORMAL_MODE, align 4
  store i32 %20, i32* %9, align 4
  br label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @SD_SWITCH_HS_MODE, align 4
  store i32 %22, i32* %9, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @MMC_ERR_INVALID, align 4
  store i32 %24, i32* %4, align 4
  br label %114

25:                                               ; preds = %21, %19
  %26 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %27 = load i32, i32* @SD_SWITCH_MODE_SET, align 4
  %28 = load i32, i32* @SD_SWITCH_GROUP1, align 4
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 0
  %31 = call i32 @mmc_sd_switch(%struct.mmc_softc* %26, i32 %27, i32 %28, i32 %29, i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @MMC_ERR_NONE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %114

37:                                               ; preds = %25
  %38 = getelementptr inbounds [64 x i32], [64 x i32]* %8, i64 0, i64 16
  %39 = load i32, i32* %38, align 16
  %40 = and i32 %39, 15
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @MMC_ERR_FAILED, align 4
  store i32 %44, i32* %4, align 4
  br label %114

45:                                               ; preds = %37
  %46 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %47 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @mmcbr_set_timing(i32 %48, i32 %49)
  %51 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %52 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mmcbr_update_ios(i32 %53)
  br label %112

55:                                               ; preds = %3
  %56 = load i32, i32* %7, align 4
  switch i32 %56, label %65 [
    i32 128, label %57
    i32 133, label %59
    i32 132, label %59
    i32 131, label %61
    i32 130, label %63
    i32 129, label %63
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* @EXT_CSD_HS_TIMING_BC, align 4
  store i32 %58, i32* %9, align 4
  br label %67

59:                                               ; preds = %55, %55
  %60 = load i32, i32* @EXT_CSD_HS_TIMING_HS, align 4
  store i32 %60, i32* %9, align 4
  br label %67

61:                                               ; preds = %55
  %62 = load i32, i32* @EXT_CSD_HS_TIMING_HS200, align 4
  store i32 %62, i32* %9, align 4
  br label %67

63:                                               ; preds = %55, %55
  %64 = load i32, i32* @EXT_CSD_HS_TIMING_HS400, align 4
  store i32 %64, i32* %9, align 4
  br label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @MMC_ERR_INVALID, align 4
  store i32 %66, i32* %4, align 4
  br label %114

67:                                               ; preds = %63, %61, %59, %57
  %68 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %69 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %72 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mmc_ivars*, %struct.mmc_ivars** %6, align 8
  %75 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %78 = load i32, i32* @EXT_CSD_HS_TIMING, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.mmc_ivars*, %struct.mmc_ivars** %6, align 8
  %81 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mmc_switch(i32 %70, i32 %73, i32 %76, i32 %77, i32 %78, i32 %79, i32 %82, i32 0)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @MMC_ERR_NONE, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %67
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %4, align 4
  br label %114

89:                                               ; preds = %67
  %90 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %91 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @mmcbr_set_timing(i32 %92, i32 %93)
  %95 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %96 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @mmcbr_update_ios(i32 %97)
  %99 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %100 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mmc_softc*, %struct.mmc_softc** %5, align 8
  %103 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mmc_ivars*, %struct.mmc_ivars** %6, align 8
  %106 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mmc_ivars*, %struct.mmc_ivars** %6, align 8
  %109 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @mmc_switch_status(i32 %101, i32 %104, i32 %107, i32 %110)
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %89, %45
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %87, %65, %43, %35, %23
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i64 @mmcbr_get_mode(i32) #1

declare dso_local i32 @mmc_sd_switch(%struct.mmc_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @mmcbr_set_timing(i32, i32) #1

declare dso_local i32 @mmcbr_update_ios(i32) #1

declare dso_local i32 @mmc_switch(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_switch_status(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
