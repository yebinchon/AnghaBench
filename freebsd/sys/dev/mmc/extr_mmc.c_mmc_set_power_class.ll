; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_set_power_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_set_power_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32 }
%struct.mmc_ivars = type { i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mode_mmc = common dso_local global i64 0, align 8
@bus_timing_normal = common dso_local global i32 0, align 4
@bus_width_1 = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@MMC_TYPE_HS_26_MAX = common dso_local global i32 0, align 4
@EXT_CSD_PWR_CL_26_195 = common dso_local global i64 0, align 8
@MMC_TYPE_HS_52_MAX = common dso_local global i32 0, align 4
@bus_timing_mmc_ddr52 = common dso_local global i32 0, align 4
@bus_width_4 = common dso_local global i32 0, align 4
@EXT_CSD_PWR_CL_52_195_DDR = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_52_195 = common dso_local global i64 0, align 8
@MMC_TYPE_HS200_HS400ES_MAX = common dso_local global i32 0, align 4
@EXT_CSD_PWR_CL_200_195 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_26_360 = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_52_360_DDR = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_52_360 = common dso_local global i64 0, align 8
@bus_width_8 = common dso_local global i32 0, align 4
@EXT_CSD_PWR_CL_200_360_DDR = common dso_local global i64 0, align 8
@EXT_CSD_PWR_CL_200_360 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"No power class support for VDD 0x%x\0A\00", align 1
@MMC_ERR_INVALID = common dso_local global i32 0, align 4
@EXT_CSD_POWER_CLASS_8BIT_MASK = common dso_local global i32 0, align 4
@EXT_CSD_POWER_CLASS_8BIT_SHIFT = common dso_local global i32 0, align 4
@EXT_CSD_POWER_CLASS_4BIT_MASK = common dso_local global i32 0, align 4
@EXT_CSD_POWER_CLASS_4BIT_SHIFT = common dso_local global i32 0, align 4
@EXT_CSD_CMD_SET_NORMAL = common dso_local global i32 0, align 4
@EXT_CSD_POWER_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_softc*, %struct.mmc_ivars*)* @mmc_set_power_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_set_power_class(%struct.mmc_softc* %0, %struct.mmc_ivars* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_softc*, align 8
  %5 = alloca %struct.mmc_ivars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %4, align 8
  store %struct.mmc_ivars* %1, %struct.mmc_ivars** %5, align 8
  %12 = load %struct.mmc_softc*, %struct.mmc_softc** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @mmcbr_get_timing(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %18 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @mmcbr_get_mode(i32 %20)
  %22 = load i64, i64* @mode_mmc, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %38, label %24

24:                                               ; preds = %2
  %25 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %26 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @bus_timing_normal, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @bus_width_1, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %30, %24, %2
  %39 = load i32, i32* @MMC_ERR_NONE, align 4
  store i32 %39, i32* %3, align 4
  br label %188

40:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  %41 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %42 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @mmcbr_get_clock(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @mmcbr_get_vdd(i32 %46)
  %48 = shl i32 1, %47
  switch i32 %48, label %147 [
    i32 128, label %49
    i32 137, label %93
    i32 136, label %93
    i32 135, label %93
    i32 134, label %93
    i32 133, label %93
    i32 132, label %93
    i32 131, label %93
    i32 130, label %93
    i32 129, label %93
  ]

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @MMC_TYPE_HS_26_MAX, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32*, i32** %7, align 8
  %55 = load i64, i64* @EXT_CSD_PWR_CL_26_195, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  br label %92

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @MMC_TYPE_HS_52_MAX, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @bus_timing_mmc_ddr52, align 4
  %65 = icmp uge i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @bus_width_4, align 4
  %69 = icmp uge i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32*, i32** %7, align 8
  %72 = load i64, i64* @EXT_CSD_PWR_CL_52_195_DDR, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  br label %80

75:                                               ; preds = %66, %62
  %76 = load i32*, i32** %7, align 8
  %77 = load i64, i64* @EXT_CSD_PWR_CL_52_195, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %75, %70
  br label %91

81:                                               ; preds = %58
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @MMC_TYPE_HS200_HS400ES_MAX, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i32*, i32** %7, align 8
  %87 = load i64, i64* @EXT_CSD_PWR_CL_200_195, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %85, %81
  br label %91

91:                                               ; preds = %90, %80
  br label %92

92:                                               ; preds = %91, %53
  br label %154

93:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @MMC_TYPE_HS_26_MAX, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32*, i32** %7, align 8
  %99 = load i64, i64* @EXT_CSD_PWR_CL_26_360, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %9, align 4
  br label %146

102:                                              ; preds = %93
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @MMC_TYPE_HS_52_MAX, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %102
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @bus_timing_mmc_ddr52, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @bus_width_4, align 4
  %113 = icmp uge i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i32*, i32** %7, align 8
  %116 = load i64, i64* @EXT_CSD_PWR_CL_52_360_DDR, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %9, align 4
  br label %124

119:                                              ; preds = %110, %106
  %120 = load i32*, i32** %7, align 8
  %121 = load i64, i64* @EXT_CSD_PWR_CL_52_360, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %119, %114
  br label %145

125:                                              ; preds = %102
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @MMC_TYPE_HS200_HS400ES_MAX, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %125
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @bus_width_8, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load i32*, i32** %7, align 8
  %135 = load i64, i64* @EXT_CSD_PWR_CL_200_360_DDR, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %9, align 4
  br label %143

138:                                              ; preds = %129
  %139 = load i32*, i32** %7, align 8
  %140 = load i64, i64* @EXT_CSD_PWR_CL_200_360, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %138, %133
  br label %144

144:                                              ; preds = %143, %125
  br label %145

145:                                              ; preds = %144, %124
  br label %146

146:                                              ; preds = %145, %97
  br label %154

147:                                              ; preds = %40
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @mmcbr_get_vdd(i32 %149)
  %151 = shl i32 1, %150
  %152 = call i32 @device_printf(i32 %148, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @MMC_ERR_INVALID, align 4
  store i32 %153, i32* %3, align 4
  br label %188

154:                                              ; preds = %146, %92
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @bus_width_8, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @EXT_CSD_POWER_CLASS_8BIT_MASK, align 4
  %161 = and i32 %159, %160
  %162 = load i32, i32* @EXT_CSD_POWER_CLASS_8BIT_SHIFT, align 4
  %163 = ashr i32 %161, %162
  store i32 %163, i32* %9, align 4
  br label %170

164:                                              ; preds = %154
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @EXT_CSD_POWER_CLASS_4BIT_MASK, align 4
  %167 = and i32 %165, %166
  %168 = load i32, i32* @EXT_CSD_POWER_CLASS_4BIT_SHIFT, align 4
  %169 = ashr i32 %167, %168
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %164, %158
  %171 = load i32, i32* %9, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, i32* @MMC_ERR_NONE, align 4
  store i32 %174, i32* %3, align 4
  br label %188

175:                                              ; preds = %170
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %179 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %182 = load i32, i32* @EXT_CSD_POWER_CLASS, align 4
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %185 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @mmc_switch(i32 %176, i32 %177, i32 %180, i32 %181, i32 %182, i32 %183, i32 %186, i32 1)
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %175, %173, %147, %38
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @mmcbr_get_timing(i32) #1

declare dso_local i64 @mmcbr_get_mode(i32) #1

declare dso_local i32 @mmcbr_get_clock(i32) #1

declare dso_local i32 @mmcbr_get_vdd(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @mmc_switch(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
