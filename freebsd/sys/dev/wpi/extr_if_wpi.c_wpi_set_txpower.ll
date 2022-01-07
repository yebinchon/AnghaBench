; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_set_txpower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_softc = type { %struct.wpi_power_group*, %struct.TYPE_3__ }
%struct.wpi_power_group = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.wpi_cmd_txpower = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@WPI_RXON_24GHZ = common dso_local global i32 0, align 4
@WPI_BAND_5GHZ = common dso_local global i32 0, align 4
@WPI_BAND_2GHZ = common dso_local global i32 0, align 4
@WPI_RIDX_MAX = common dso_local global i32 0, align 4
@wpi_ridx_to_plcp = common dso_local global i32* null, align 8
@wpi_rf_gain_5ghz = common dso_local global i32* null, align 8
@wpi_dsp_gain_5ghz = common dso_local global i32* null, align 8
@wpi_rf_gain_2ghz = common dso_local global i32* null, align 8
@wpi_dsp_gain_2ghz = common dso_local global i32* null, align 8
@WPI_DEBUG_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"chan %d/ridx %d: power index %d\0A\00", align 1
@WPI_CMD_TXPOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpi_softc*, i32)* @wpi_set_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpi_set_txpower(%struct.wpi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.wpi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpi_power_group*, align 8
  %6 = alloca %struct.wpi_cmd_txpower, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wpi_softc* %0, %struct.wpi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %12 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @WPI_RXON_24GHZ, align 4
  %20 = call i32 @htole32(i32 %19)
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %2
  %27 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %28 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %27, i32 0, i32 0
  %29 = load %struct.wpi_power_group*, %struct.wpi_power_group** %28, align 8
  %30 = getelementptr inbounds %struct.wpi_power_group, %struct.wpi_power_group* %29, i64 1
  store %struct.wpi_power_group* %30, %struct.wpi_power_group** %5, align 8
  br label %31

31:                                               ; preds = %46, %26
  %32 = load %struct.wpi_power_group*, %struct.wpi_power_group** %5, align 8
  %33 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %34 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %33, i32 0, i32 0
  %35 = load %struct.wpi_power_group*, %struct.wpi_power_group** %34, align 8
  %36 = getelementptr inbounds %struct.wpi_power_group, %struct.wpi_power_group* %35, i64 4
  %37 = icmp ult %struct.wpi_power_group* %32, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.wpi_power_group*, %struct.wpi_power_group** %5, align 8
  %41 = getelementptr inbounds %struct.wpi_power_group, %struct.wpi_power_group* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %49

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.wpi_power_group*, %struct.wpi_power_group** %5, align 8
  %48 = getelementptr inbounds %struct.wpi_power_group, %struct.wpi_power_group* %47, i32 1
  store %struct.wpi_power_group* %48, %struct.wpi_power_group** %5, align 8
  br label %31

49:                                               ; preds = %44, %31
  br label %55

50:                                               ; preds = %2
  %51 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %52 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %51, i32 0, i32 0
  %53 = load %struct.wpi_power_group*, %struct.wpi_power_group** %52, align 8
  %54 = getelementptr inbounds %struct.wpi_power_group, %struct.wpi_power_group* %53, i64 0
  store %struct.wpi_power_group* %54, %struct.wpi_power_group** %5, align 8
  br label %55

55:                                               ; preds = %50, %49
  %56 = call i32 @memset(%struct.wpi_cmd_txpower* %6, i32 0, i32 16)
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @WPI_BAND_5GHZ, align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @WPI_BAND_2GHZ, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = getelementptr inbounds %struct.wpi_cmd_txpower, %struct.wpi_cmd_txpower* %6, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @htole16(i64 %66)
  %68 = getelementptr inbounds %struct.wpi_cmd_txpower, %struct.wpi_cmd_txpower* %6, i32 0, i32 1
  store i32 %67, i32* %68, align 8
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %146, %63
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @WPI_RIDX_MAX, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %149

73:                                               ; preds = %69
  %74 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %75 = load %struct.wpi_power_group*, %struct.wpi_power_group** %5, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @wpi_get_power_index(%struct.wpi_softc* %74, %struct.wpi_power_group* %75, i64 %76, i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32*, i32** @wpi_ridx_to_plcp, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.wpi_cmd_txpower, %struct.wpi_cmd_txpower* %6, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i32 %84, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %73
  %94 = load i32*, i32** @wpi_rf_gain_5ghz, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.wpi_cmd_txpower, %struct.wpi_cmd_txpower* %6, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i32 %98, i32* %104, align 4
  %105 = load i32*, i32** @wpi_dsp_gain_5ghz, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.wpi_cmd_txpower, %struct.wpi_cmd_txpower* %6, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32 %109, i32* %115, align 4
  br label %139

116:                                              ; preds = %73
  %117 = load i32*, i32** @wpi_rf_gain_2ghz, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.wpi_cmd_txpower, %struct.wpi_cmd_txpower* %6, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i32 %121, i32* %127, align 4
  %128 = load i32*, i32** @wpi_dsp_gain_2ghz, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.wpi_cmd_txpower, %struct.wpi_cmd_txpower* %6, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %116, %93
  %140 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %141 = load i32, i32* @WPI_DEBUG_TEMP, align 4
  %142 = load i64, i64* %7, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @DPRINTF(%struct.wpi_softc* %140, i32 %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %69

149:                                              ; preds = %69
  %150 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %151 = load i32, i32* @WPI_CMD_TXPOWER, align 4
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @wpi_cmd(%struct.wpi_softc* %150, i32 %151, %struct.wpi_cmd_txpower* %6, i32 16, i32 %152)
  ret i32 %153
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @memset(%struct.wpi_cmd_txpower*, i32, i32) #1

declare dso_local i32 @htole16(i64) #1

declare dso_local i32 @wpi_get_power_index(%struct.wpi_softc*, %struct.wpi_power_group*, i64, i32, i32) #1

declare dso_local i32 @DPRINTF(%struct.wpi_softc*, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @wpi_cmd(%struct.wpi_softc*, i32, %struct.wpi_cmd_txpower*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
