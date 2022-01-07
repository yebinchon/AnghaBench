; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@RT2560_EEPROM_CONFIG0 = common dso_local global i64 0, align 8
@RT2560_EEPROM_BBP_BASE = common dso_local global i64 0, align 8
@RT2560_EEPROM_TXPOWER = common dso_local global i64 0, align 8
@RT2560_EEPROM_CALIBRATE = common dso_local global i64 0, align 8
@RT2560_DEFAULT_RSSI_CORR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"rssi correction %d, calibrate 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2560_softc*)* @rt2560_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_read_config(%struct.rt2560_softc* %0) #0 {
  %2 = alloca %struct.rt2560_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %2, align 8
  %5 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %6 = load i64, i64* @RT2560_EEPROM_CONFIG0, align 8
  %7 = call i32 @rt2560_eeprom_read(%struct.rt2560_softc* %5, i64 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 11
  %10 = and i32 %9, 7
  %11 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %12 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 10
  %15 = and i32 %14, 1
  %16 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %17 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = ashr i32 %18, 6
  %20 = and i32 %19, 7
  %21 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %22 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 4
  %25 = and i32 %24, 3
  %26 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %27 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 2
  %30 = and i32 %29, 3
  %31 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %32 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 3
  %35 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %36 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %72, %1
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 16
  br i1 %39, label %40, label %75

40:                                               ; preds = %37
  %41 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %42 = load i64, i64* @RT2560_EEPROM_BBP_BASE, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = call i32 @rt2560_eeprom_read(%struct.rt2560_softc* %41, i64 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %50, 65535
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %40
  br label %72

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = ashr i32 %54, 8
  %56 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %57 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %56, i32 0, i32 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 4
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, 255
  %65 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %66 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %65, i32 0, i32 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %64, i32* %71, align 4
  br label %72

72:                                               ; preds = %53, %52
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %37

75:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %105, %75
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 7
  br i1 %78, label %79, label %108

79:                                               ; preds = %76
  %80 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %81 = load i64, i64* @RT2560_EEPROM_TXPOWER, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = call i32 @rt2560_eeprom_read(%struct.rt2560_softc* %80, i64 %84)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = and i32 %86, 255
  %88 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %89 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = mul nsw i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %87, i32* %94, align 4
  %95 = load i32, i32* %3, align 4
  %96 = ashr i32 %95, 8
  %97 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %98 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %97, i32 0, i32 6
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = mul nsw i32 %100, 2
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  store i32 %96, i32* %104, align 4
  br label %105

105:                                              ; preds = %79
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %76

108:                                              ; preds = %76
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %129, %108
  %110 = load i32, i32* %4, align 4
  %111 = icmp slt i32 %110, 14
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %114 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %113, i32 0, i32 6
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %119, 31
  br i1 %120, label %121, label %128

121:                                              ; preds = %112
  %122 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %123 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %122, i32 0, i32 6
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 24, i32* %127, align 4
  br label %128

128:                                              ; preds = %121, %112
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %109

132:                                              ; preds = %109
  %133 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %134 = load i64, i64* @RT2560_EEPROM_CALIBRATE, align 8
  %135 = call i32 @rt2560_eeprom_read(%struct.rt2560_softc* %133, i64 %134)
  store i32 %135, i32* %3, align 4
  %136 = load i32, i32* %3, align 4
  %137 = and i32 %136, 255
  %138 = icmp eq i32 %137, 255
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i32, i32* @RT2560_DEFAULT_RSSI_CORR, align 4
  %141 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %142 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %141, i32 0, i32 7
  store i32 %140, i32* %142, align 8
  br label %148

143:                                              ; preds = %132
  %144 = load i32, i32* %3, align 4
  %145 = and i32 %144, 255
  %146 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %147 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %146, i32 0, i32 7
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %143, %139
  %149 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %150 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %151 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @DPRINTF(%struct.rt2560_softc* %149, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %152, i32 %153)
  ret void
}

declare dso_local i32 @rt2560_eeprom_read(%struct.rt2560_softc*, i64) #1

declare dso_local i32 @DPRINTF(%struct.rt2560_softc*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
