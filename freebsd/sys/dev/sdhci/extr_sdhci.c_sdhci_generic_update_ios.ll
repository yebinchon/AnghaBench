; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_generic_update_ios.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_generic_update_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i64, i64, i64, i32 }

@power_off = common dso_local global i64 0, align 8
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@bus_width_8 = common dso_local global i64 0, align 8
@SDHCI_CTRL_8BITBUS = common dso_local global i32 0, align 4
@SDHCI_CTRL_4BITBUS = common dso_local global i32 0, align 4
@bus_width_4 = common dso_local global i64 0, align 8
@bus_width_1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Invalid bus width: %d\00", align 1
@SD_SDR12_MAX = common dso_local global i64 0, align 8
@SDHCI_QUIRK_DONT_SET_HISPD_BIT = common dso_local global i32 0, align 4
@SDHCI_CTRL_HISPD = common dso_local global i32 0, align 4
@SDHCI_HOST_CONTROL = common dso_local global i32 0, align 4
@SDHCI_QUIRK_RESET_ON_IOS = common dso_local global i32 0, align 4
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdhci_generic_update_ios(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_slot*, align 8
  %6 = alloca %struct.mmc_ios*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.sdhci_slot* @device_get_ivars(i32 %7)
  store %struct.sdhci_slot* %8, %struct.sdhci_slot** %5, align 8
  %9 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %10 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.mmc_ios* %11, %struct.mmc_ios** %6, align 8
  %12 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %13 = call i32 @SDHCI_LOCK(%struct.sdhci_slot* %12)
  %14 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %15 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @power_off, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %21 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %22 = call i32 @WR4(%struct.sdhci_slot* %20, i32 %21, i32 0)
  %23 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %24 = call i32 @sdhci_init(%struct.sdhci_slot* %23)
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %27 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %28 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @sdhci_set_clock(%struct.sdhci_slot* %26, i64 %29)
  %31 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %32 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %33 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @power_off, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %42

38:                                               ; preds = %25
  %39 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %40 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  br label %42

42:                                               ; preds = %38, %37
  %43 = phi i32 [ 0, %37 ], [ %41, %38 ]
  %44 = call i32 @sdhci_set_power(%struct.sdhci_slot* %31, i32 %43)
  %45 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %46 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @bus_width_8, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  %51 = load i32, i32* @SDHCI_CTRL_8BITBUS, align 4
  %52 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %53 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %59 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %106

62:                                               ; preds = %42
  %63 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %64 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @bus_width_4, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load i32, i32* @SDHCI_CTRL_8BITBUS, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %72 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %76 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %77 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %105

80:                                               ; preds = %62
  %81 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %82 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @bus_width_1, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load i32, i32* @SDHCI_CTRL_8BITBUS, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %90 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @SDHCI_CTRL_4BITBUS, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %96 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %104

99:                                               ; preds = %80
  %100 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %101 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %99, %86
  br label %105

105:                                              ; preds = %104, %68
  br label %106

106:                                              ; preds = %105, %50
  %107 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %108 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SD_SDR12_MAX, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %114 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @SDHCI_QUIRK_DONT_SET_HISPD_BIT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %112
  %120 = load i32, i32* @SDHCI_CTRL_HISPD, align 4
  %121 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %122 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %132

125:                                              ; preds = %112, %106
  %126 = load i32, i32* @SDHCI_CTRL_HISPD, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %129 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %125, %119
  %133 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %134 = load i32, i32* @SDHCI_HOST_CONTROL, align 4
  %135 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %136 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @WR1(%struct.sdhci_slot* %133, i32 %134, i32 %137)
  %139 = load i32, i32* %3, align 4
  %140 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %141 = call i32 @SDHCI_SET_UHS_TIMING(i32 %139, %struct.sdhci_slot* %140)
  %142 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %143 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @SDHCI_QUIRK_RESET_ON_IOS, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %132
  %149 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %150 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %151 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @sdhci_reset(%struct.sdhci_slot* %149, i32 %152)
  br label %154

154:                                              ; preds = %148, %132
  %155 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %156 = call i32 @SDHCI_UNLOCK(%struct.sdhci_slot* %155)
  ret i32 0
}

declare dso_local %struct.sdhci_slot* @device_get_ivars(i32) #1

declare dso_local i32 @SDHCI_LOCK(%struct.sdhci_slot*) #1

declare dso_local i32 @WR4(%struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @sdhci_init(%struct.sdhci_slot*) #1

declare dso_local i32 @sdhci_set_clock(%struct.sdhci_slot*, i64) #1

declare dso_local i32 @sdhci_set_power(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @WR1(%struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @SDHCI_SET_UHS_TIMING(i32, %struct.sdhci_slot*) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @SDHCI_UNLOCK(%struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
