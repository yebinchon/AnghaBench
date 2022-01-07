; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_acquire_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_acquire_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i64, i32, i64 }
%struct.mmc_ivars = type { i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"mmc: host bridge didn't serialize us.\00", align 1
@MMC_ERR_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Card at relative address %d failed to select\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bus_timing_mmc_ddr52 = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@mmc_debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"setting bus width to %d bits %s timing\0A\00", align 1
@bus_width_4 = common dso_local global i32 0, align 4
@bus_width_8 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Card at relative address %d failed to set bus width\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Failed to set VCCQ for card at relative address %d\0A\00", align 1
@bus_timing_mmc_hs200 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Card at relative address %d failed to re-tune\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @mmc_acquire_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_acquire_bus(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mmc_softc*, align 8
  %7 = alloca %struct.mmc_ivars*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @device_get_parent(i64 %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @MMCBR_ACQUIRE_HOST(i32 %12, i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %168

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = call %struct.mmc_softc* @device_get_softc(i64 %20)
  store %struct.mmc_softc* %21, %struct.mmc_softc** %6, align 8
  %22 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %23 = call i32 @MMC_LOCK(%struct.mmc_softc* %22)
  %24 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %25 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %19
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %33 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %35 = call i32 @MMC_UNLOCK(%struct.mmc_softc* %34)
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %151

39:                                               ; preds = %30
  %40 = load i64, i64* %5, align 8
  %41 = call %struct.mmc_ivars* @device_get_ivars(i64 %40)
  store %struct.mmc_ivars* %41, %struct.mmc_ivars** %7, align 8
  %42 = load %struct.mmc_ivars*, %struct.mmc_ivars** %7, align 8
  %43 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  %45 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %46 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %150

50:                                               ; preds = %39
  %51 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @mmc_select_card(%struct.mmc_softc* %51, i64 %52)
  %54 = load i64, i64* @MMC_ERR_NONE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 (i64, i8*, i64, ...) @device_printf(i64 %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %3, align 4
  br label %168

61:                                               ; preds = %50
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %64 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @mmcbr_get_timing(i64 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @bus_timing_mmc_ddr52, align 4
  %69 = icmp uge i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %72 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %168

76:                                               ; preds = %70, %61
  %77 = load i64, i64* @bootverbose, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* @mmc_debug, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %79, %76
  %83 = load i64, i64* %4, align 8
  %84 = load %struct.mmc_ivars*, %struct.mmc_ivars** %7, align 8
  %85 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @bus_width_4, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %98

90:                                               ; preds = %82
  %91 = load %struct.mmc_ivars*, %struct.mmc_ivars** %7, align 8
  %92 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @bus_width_8, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 8, i32 1
  br label %98

98:                                               ; preds = %90, %89
  %99 = phi i32 [ 4, %89 ], [ %97, %90 ]
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @mmc_timing_to_string(i32 %101)
  %103 = call i32 (i64, i8*, i64, ...) @device_printf(i64 %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %100, i32 %102)
  br label %104

104:                                              ; preds = %98, %79
  %105 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %106 = load %struct.mmc_ivars*, %struct.mmc_ivars** %7, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i64 @mmc_set_card_bus_width(%struct.mmc_softc* %105, %struct.mmc_ivars* %106, i32 %107)
  %109 = load i64, i64* @MMC_ERR_NONE, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load i64, i64* %4, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call i32 (i64, i8*, i64, ...) @device_printf(i64 %112, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %113)
  %115 = load i32, i32* @ENXIO, align 4
  store i32 %115, i32* %3, align 4
  br label %168

116:                                              ; preds = %104
  %117 = load i64, i64* %4, align 8
  %118 = load %struct.mmc_ivars*, %struct.mmc_ivars** %7, align 8
  %119 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @mmcbr_set_bus_width(i64 %117, i32 %120)
  %122 = load i64, i64* %4, align 8
  %123 = call i32 @mmcbr_update_ios(i64 %122)
  %124 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %125 = load %struct.mmc_ivars*, %struct.mmc_ivars** %7, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i64 @mmc_set_vccq(%struct.mmc_softc* %124, %struct.mmc_ivars* %125, i32 %126)
  %128 = load i64, i64* @MMC_ERR_NONE, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %116
  %131 = load i64, i64* %4, align 8
  %132 = load i64, i64* %9, align 8
  %133 = call i32 (i64, i8*, i64, ...) @device_printf(i64 %131, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %132)
  %134 = load i32, i32* @ENXIO, align 4
  store i32 %134, i32* %3, align 4
  br label %168

135:                                              ; preds = %116
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @bus_timing_mmc_hs200, align 4
  %138 = icmp uge i32 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %135
  %140 = load i64, i64* %4, align 8
  %141 = load i64, i64* %5, align 8
  %142 = call i64 @mmc_retune(i64 %140, i64 %141, i32 1)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i64, i64* %4, align 8
  %146 = load i64, i64* %9, align 8
  %147 = call i32 (i64, i8*, i64, ...) @device_printf(i64 %145, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %146)
  %148 = load i32, i32* @ENXIO, align 4
  store i32 %148, i32* %3, align 4
  br label %168

149:                                              ; preds = %139, %135
  br label %150

150:                                              ; preds = %149, %39
  br label %167

151:                                              ; preds = %30
  %152 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %153 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %151
  %157 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %158 = call i64 @mmc_select_card(%struct.mmc_softc* %157, i64 0)
  %159 = load i64, i64* @MMC_ERR_NONE, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* @ENXIO, align 4
  store i32 %162, i32* %3, align 4
  br label %168

163:                                              ; preds = %156
  %164 = load %struct.mmc_softc*, %struct.mmc_softc** %6, align 8
  %165 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %164, i32 0, i32 0
  store i64 0, i64* %165, align 8
  br label %166

166:                                              ; preds = %163, %151
  br label %167

167:                                              ; preds = %166, %150
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %167, %161, %144, %130, %111, %75, %56, %17
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @MMCBR_ACQUIRE_HOST(i32, i64) #1

declare dso_local i32 @device_get_parent(i64) #1

declare dso_local %struct.mmc_softc* @device_get_softc(i64) #1

declare dso_local i32 @MMC_LOCK(%struct.mmc_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @MMC_UNLOCK(%struct.mmc_softc*) #1

declare dso_local %struct.mmc_ivars* @device_get_ivars(i64) #1

declare dso_local i64 @mmc_select_card(%struct.mmc_softc*, i64) #1

declare dso_local i32 @device_printf(i64, i8*, i64, ...) #1

declare dso_local i32 @mmcbr_get_timing(i64) #1

declare dso_local i32 @mmc_timing_to_string(i32) #1

declare dso_local i64 @mmc_set_card_bus_width(%struct.mmc_softc*, %struct.mmc_ivars*, i32) #1

declare dso_local i32 @mmcbr_set_bus_width(i64, i32) #1

declare dso_local i32 @mmcbr_update_ios(i64) #1

declare dso_local i64 @mmc_set_vccq(%struct.mmc_softc*, %struct.mmc_ivars*, i32) #1

declare dso_local i64 @mmc_retune(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
