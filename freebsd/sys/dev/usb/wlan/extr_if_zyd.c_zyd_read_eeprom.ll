; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_softc = type { i32*, i32*, i32*, i32*, i32* }

@ZYD_EEPROM_PWR_CAL = common dso_local global i64 0, align 8
@ZYD_EEPROM_PWR_INT = common dso_local global i64 0, align 8
@ZYD_EEPROM_36M_CAL = common dso_local global i64 0, align 8
@ZYD_EEPROM_48M_CAL = common dso_local global i64 0, align 8
@ZYD_EEPROM_54M_CAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zyd_softc*)* @zyd_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_read_eeprom(%struct.zyd_softc* %0) #0 {
  %2 = alloca %struct.zyd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zyd_softc* %0, %struct.zyd_softc** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %135, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 7
  br i1 %8, label %9, label %138

9:                                                ; preds = %6
  %10 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %11 = load i64, i64* @ZYD_EEPROM_PWR_CAL, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = call i32 @zyd_read16_m(%struct.zyd_softc* %10, i64 %14, i32* %3)
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 8
  %18 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %19 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32 %17, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 255
  %27 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %28 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %30, 2
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  store i32 %26, i32* %34, align 4
  %35 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %36 = load i64, i64* @ZYD_EEPROM_PWR_INT, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i32 @zyd_read16_m(%struct.zyd_softc* %35, i64 %39, i32* %3)
  %41 = load i32, i32* %3, align 4
  %42 = ashr i32 %41, 8
  %43 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %44 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %42, i32* %49, align 4
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, 255
  %52 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %53 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %55, 2
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32 %51, i32* %59, align 4
  %60 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %61 = load i64, i64* @ZYD_EEPROM_36M_CAL, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = call i32 @zyd_read16_m(%struct.zyd_softc* %60, i64 %64, i32* %3)
  %66 = load i32, i32* %3, align 4
  %67 = ashr i32 %66, 8
  %68 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %69 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = mul nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %67, i32* %74, align 4
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, 255
  %77 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %78 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = mul nsw i32 %80, 2
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  store i32 %76, i32* %84, align 4
  %85 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %86 = load i64, i64* @ZYD_EEPROM_48M_CAL, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = call i32 @zyd_read16_m(%struct.zyd_softc* %85, i64 %89, i32* %3)
  %91 = load i32, i32* %3, align 4
  %92 = ashr i32 %91, 8
  %93 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %94 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = mul nsw i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %92, i32* %99, align 4
  %100 = load i32, i32* %3, align 4
  %101 = and i32 %100, 255
  %102 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %103 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = mul nsw i32 %105, 2
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  store i32 %101, i32* %109, align 4
  %110 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %111 = load i64, i64* @ZYD_EEPROM_54M_CAL, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = call i32 @zyd_read16_m(%struct.zyd_softc* %110, i64 %114, i32* %3)
  %116 = load i32, i32* %3, align 4
  %117 = ashr i32 %116, 8
  %118 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %119 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = mul nsw i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %117, i32* %124, align 4
  %125 = load i32, i32* %3, align 4
  %126 = and i32 %125, 255
  %127 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %128 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = mul nsw i32 %130, 2
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  store i32 %126, i32* %134, align 4
  br label %135

135:                                              ; preds = %9
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %5, align 4
  br label %6

138:                                              ; preds = %6
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @zyd_read16_m(%struct.zyd_softc*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
