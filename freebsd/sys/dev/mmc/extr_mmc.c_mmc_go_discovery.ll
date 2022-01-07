; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_go_discovery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_go_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32, i32 }

@power_on = common dso_local global i64 0, align 8
@mode_sd = common dso_local global i64 0, align 8
@pushpull = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@mmc_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Probing bus\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"SD 2.0 interface conditions: OK\0A\00", align 1
@MMC_ERR_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"SD probe: failed\0A\00", align 1
@mode_mmc = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"MMC probe: failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"MMC probe: OK (OCR: 0x%08x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"SD probe: OK (OCR: 0x%08x)\0A\00", align 1
@opendrain = common dso_local global i32 0, align 4
@SD_MMC_CARD_ID_FREQUENCY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Current OCR: 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"No compatible cards found on bus\0A\00", align 1
@MMC_OCR_CCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_softc*)* @mmc_go_discovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_go_discovery(%struct.mmc_softc* %0) #0 {
  %2 = alloca %struct.mmc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %2, align 8
  %6 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @mmcbr_get_power_mode(i32 %9)
  %11 = load i64, i64* @power_on, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %134

13:                                               ; preds = %1
  %14 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i64, i64* @mode_sd, align 8
  %20 = call i32 @mmcbr_set_mode(i32 %18, i64 %19)
  %21 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %22 = call i32 @mmc_power_up(%struct.mmc_softc* %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @pushpull, align 4
  %25 = call i32 @mmcbr_set_bus_mode(i32 %23, i32 %24)
  %26 = load i64, i64* @bootverbose, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %13
  %29 = load i64, i64* @mmc_debug, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28, %13
  %32 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %33 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %28
  %37 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %38 = call i32 @mmc_idle_cards(%struct.mmc_softc* %37)
  %39 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %40 = call i32 @mmc_send_if_cond(%struct.mmc_softc* %39, i32 1)
  store i32 %40, i32* %5, align 4
  %41 = load i64, i64* @bootverbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* @mmc_debug, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43, %36
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %51 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %46, %43
  %55 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %56 = call i64 @mmc_send_app_op_cond(%struct.mmc_softc* %55, i32 0, i32* %3)
  %57 = load i64, i64* @MMC_ERR_NONE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %104

59:                                               ; preds = %54
  %60 = load i64, i64* @bootverbose, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* @mmc_debug, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62, %59
  %66 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %67 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @device_printf(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %62
  %71 = load i32, i32* %4, align 4
  %72 = load i64, i64* @mode_mmc, align 8
  %73 = call i32 @mmcbr_set_mode(i32 %71, i64 %72)
  %74 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %75 = call i64 @mmc_send_op_cond(%struct.mmc_softc* %74, i32 0, i32* %3)
  %76 = load i64, i64* @MMC_ERR_NONE, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %70
  %79 = load i64, i64* @bootverbose, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* @mmc_debug, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81, %78
  %85 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %86 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %84, %81
  store i32 0, i32* %3, align 4
  br label %103

90:                                               ; preds = %70
  %91 = load i64, i64* @bootverbose, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* @mmc_debug, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93, %90
  %97 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %98 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %96, %93
  br label %103

103:                                              ; preds = %102, %89
  br label %117

104:                                              ; preds = %54
  %105 = load i64, i64* @bootverbose, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i64, i64* @mmc_debug, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107, %104
  %111 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %112 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %3, align 4
  %115 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %110, %107
  br label %117

117:                                              ; preds = %116, %103
  %118 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %119 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @mmc_select_vdd(%struct.mmc_softc* %123, i32 %124)
  %126 = call i32 @mmcbr_set_ocr(i32 %122, i32 %125)
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @mmcbr_get_ocr(i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %117
  %131 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %132 = call i32 @mmc_idle_cards(%struct.mmc_softc* %131)
  br label %133

133:                                              ; preds = %130, %117
  br label %143

134:                                              ; preds = %1
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @opendrain, align 4
  %137 = call i32 @mmcbr_set_bus_mode(i32 %135, i32 %136)
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* @SD_MMC_CARD_ID_FREQUENCY, align 4
  %140 = call i32 @mmcbr_set_clock(i32 %138, i32 %139)
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @mmcbr_update_ios(i32 %141)
  br label %143

143:                                              ; preds = %134, %133
  %144 = load i64, i64* @bootverbose, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i64, i64* @mmc_debug, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %146, %143
  %150 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %151 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @mmcbr_get_ocr(i32 %153)
  %155 = call i32 (i32, i8*, ...) @device_printf(i32 %152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %149, %146
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @mmcbr_get_ocr(i32 %157)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %162 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, i8*, ...) @device_printf(i32 %163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %165 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %166 = call i32 @mmc_delete_cards(%struct.mmc_softc* %165, i32 0)
  %167 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %168 = call i32 @mmc_power_down(%struct.mmc_softc* %167)
  br label %208

169:                                              ; preds = %156
  %170 = load i32, i32* %4, align 4
  %171 = call i64 @mmcbr_get_mode(i32 %170)
  %172 = load i64, i64* @mode_sd, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %169
  %175 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %176 = call i32 @mmc_send_if_cond(%struct.mmc_softc* %175, i32 1)
  store i32 %176, i32* %5, align 4
  %177 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %178 = load i32, i32* %5, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %183

181:                                              ; preds = %174
  %182 = load i32, i32* @MMC_OCR_CCS, align 4
  br label %183

183:                                              ; preds = %181, %180
  %184 = phi i32 [ 0, %180 ], [ %182, %181 ]
  %185 = load i32, i32* %4, align 4
  %186 = call i32 @mmcbr_get_ocr(i32 %185)
  %187 = or i32 %184, %186
  %188 = call i64 @mmc_send_app_op_cond(%struct.mmc_softc* %177, i32 %187, i32* null)
  br label %196

189:                                              ; preds = %169
  %190 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %191 = load i32, i32* @MMC_OCR_CCS, align 4
  %192 = load i32, i32* %4, align 4
  %193 = call i32 @mmcbr_get_ocr(i32 %192)
  %194 = or i32 %191, %193
  %195 = call i64 @mmc_send_op_cond(%struct.mmc_softc* %190, i32 %194, i32* null)
  br label %196

196:                                              ; preds = %189, %183
  %197 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %198 = call i32 @mmc_discover_cards(%struct.mmc_softc* %197)
  %199 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %200 = call i32 @mmc_rescan_cards(%struct.mmc_softc* %199)
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* @pushpull, align 4
  %203 = call i32 @mmcbr_set_bus_mode(i32 %201, i32 %202)
  %204 = load i32, i32* %4, align 4
  %205 = call i32 @mmcbr_update_ios(i32 %204)
  %206 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %207 = call i32 @mmc_calculate_clock(%struct.mmc_softc* %206)
  br label %208

208:                                              ; preds = %196, %160
  ret void
}

declare dso_local i64 @mmcbr_get_power_mode(i32) #1

declare dso_local i32 @mmcbr_set_mode(i32, i64) #1

declare dso_local i32 @mmc_power_up(%struct.mmc_softc*) #1

declare dso_local i32 @mmcbr_set_bus_mode(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mmc_idle_cards(%struct.mmc_softc*) #1

declare dso_local i32 @mmc_send_if_cond(%struct.mmc_softc*, i32) #1

declare dso_local i64 @mmc_send_app_op_cond(%struct.mmc_softc*, i32, i32*) #1

declare dso_local i64 @mmc_send_op_cond(%struct.mmc_softc*, i32, i32*) #1

declare dso_local i32 @mmcbr_set_ocr(i32, i32) #1

declare dso_local i32 @mmc_select_vdd(%struct.mmc_softc*, i32) #1

declare dso_local i32 @mmcbr_get_ocr(i32) #1

declare dso_local i32 @mmcbr_set_clock(i32, i32) #1

declare dso_local i32 @mmcbr_update_ios(i32) #1

declare dso_local i32 @mmc_delete_cards(%struct.mmc_softc*, i32) #1

declare dso_local i32 @mmc_power_down(%struct.mmc_softc*) #1

declare dso_local i64 @mmcbr_get_mode(i32) #1

declare dso_local i32 @mmc_discover_cards(%struct.mmc_softc*) #1

declare dso_local i32 @mmc_rescan_cards(%struct.mmc_softc*) #1

declare dso_local i32 @mmc_calculate_clock(%struct.mmc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
