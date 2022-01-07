; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_adapter_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_adapter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { {}*, i32, i32 (%struct.urtw_softc*, i32)*, %struct.ieee80211com }
%struct.ieee80211com = type { i32*, i32 }
%struct.ieee80211vap = type { i32* }

@URTW_ADDR_MAGIC1 = common dso_local global i32 0, align 4
@URTW_GPIO = common dso_local global i32 0, align 4
@URTW_LED_CTL_POWER_ON = common dso_local global i32 0, align 4
@URTW_EPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@URTW_EPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@URTW_INT_TIMEOUT = common dso_local global i32 0, align 4
@URTW_WPA_CONFIG = common dso_local global i32 0, align 4
@URTW_RATE_FALLBACK = common dso_local global i32 0, align 4
@URTW_RATE_FALLBACK_ENABLE = common dso_local global i32 0, align 4
@URTW_PSR = common dso_local global i32 0, align 4
@URTW_ADDR_MAGIC2 = common dso_local global i32 0, align 4
@URTW_TALLY_SEL = common dso_local global i32 0, align 4
@URTW_ADDR_MAGIC3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*)* @urtw_adapter_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_adapter_start(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %7 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %8 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %7, i32 0, i32 3
  store %struct.ieee80211com* %8, %struct.ieee80211com** %3, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 1
  %11 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %10)
  store %struct.ieee80211vap* %11, %struct.ieee80211vap** %4, align 8
  %12 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %13 = call i64 @urtw_reset(%struct.urtw_softc* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %138

17:                                               ; preds = %1
  %18 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %19 = load i32, i32* @URTW_ADDR_MAGIC1, align 4
  %20 = call i32 @urtw_write8_m(%struct.urtw_softc* %18, i32 %19, i32 0)
  %21 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %22 = load i32, i32* @URTW_GPIO, align 4
  %23 = call i32 @urtw_write8_m(%struct.urtw_softc* %21, i32 %22, i32 0)
  %24 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %25 = load i32, i32* @URTW_ADDR_MAGIC1, align 4
  %26 = call i32 @urtw_write8_m(%struct.urtw_softc* %24, i32 %25, i32 4)
  %27 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %28 = load i32, i32* @URTW_LED_CTL_POWER_ON, align 4
  %29 = call i64 @urtw_led_ctl(%struct.urtw_softc* %27, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %138

33:                                               ; preds = %17
  %34 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %35 = load i32, i32* @URTW_EPROM_CMD_CONFIG, align 4
  %36 = call i64 @urtw_set_mode(%struct.urtw_softc* %34, i32 %35)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %138

40:                                               ; preds = %33
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %42 = icmp ne %struct.ieee80211vap* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  br label %51

47:                                               ; preds = %40
  %48 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %49 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i32* [ %46, %43 ], [ %50, %47 ]
  store i32* %52, i32** %5, align 8
  %53 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @urtw_set_macaddr(%struct.urtw_softc* %53, i32* %54)
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %138

59:                                               ; preds = %51
  %60 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %61 = load i32, i32* @URTW_EPROM_CMD_NORMAL, align 4
  %62 = call i64 @urtw_set_mode(%struct.urtw_softc* %60, i32 %61)
  store i64 %62, i64* %6, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %138

66:                                               ; preds = %59
  %67 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %68 = call i64 @urtw_update_msr(%struct.urtw_softc* %67)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %138

72:                                               ; preds = %66
  %73 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %74 = load i32, i32* @URTW_INT_TIMEOUT, align 4
  %75 = call i32 @urtw_write32_m(%struct.urtw_softc* %73, i32 %74, i32 0)
  %76 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %77 = load i32, i32* @URTW_WPA_CONFIG, align 4
  %78 = call i32 @urtw_write8_m(%struct.urtw_softc* %76, i32 %77, i32 0)
  %79 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %80 = load i32, i32* @URTW_RATE_FALLBACK, align 4
  %81 = load i32, i32* @URTW_RATE_FALLBACK_ENABLE, align 4
  %82 = or i32 %81, 1
  %83 = call i32 @urtw_write8_m(%struct.urtw_softc* %79, i32 %80, i32 %82)
  %84 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %85 = call i64 @urtw_set_rate(%struct.urtw_softc* %84)
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %6, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %72
  br label %138

89:                                               ; preds = %72
  %90 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %91 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %90, i32 0, i32 0
  %92 = bitcast {}** %91 to i64 (%struct.urtw_softc*)**
  %93 = load i64 (%struct.urtw_softc*)*, i64 (%struct.urtw_softc*)** %92, align 8
  %94 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %95 = call i64 %93(%struct.urtw_softc* %94)
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %138

99:                                               ; preds = %89
  %100 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %101 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %100, i32 0, i32 2
  %102 = load i32 (%struct.urtw_softc*, i32)*, i32 (%struct.urtw_softc*, i32)** %101, align 8
  %103 = icmp ne i32 (%struct.urtw_softc*, i32)* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %106 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %105, i32 0, i32 2
  %107 = load i32 (%struct.urtw_softc*, i32)*, i32 (%struct.urtw_softc*, i32)** %106, align 8
  %108 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %109 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %110 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 %107(%struct.urtw_softc* %108, i32 %111)
  br label %113

113:                                              ; preds = %104, %99
  %114 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %115 = load i32, i32* @URTW_PSR, align 4
  %116 = call i32 @urtw_write16_m(%struct.urtw_softc* %114, i32 %115, i32 1)
  %117 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %118 = load i32, i32* @URTW_ADDR_MAGIC2, align 4
  %119 = call i32 @urtw_write16_m(%struct.urtw_softc* %117, i32 %118, i32 16)
  %120 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %121 = load i32, i32* @URTW_TALLY_SEL, align 4
  %122 = call i32 @urtw_write8_m(%struct.urtw_softc* %120, i32 %121, i32 128)
  %123 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %124 = load i32, i32* @URTW_ADDR_MAGIC3, align 4
  %125 = call i32 @urtw_write8_m(%struct.urtw_softc* %123, i32 %124, i32 96)
  %126 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %127 = load i32, i32* @URTW_PSR, align 4
  %128 = call i32 @urtw_write16_m(%struct.urtw_softc* %126, i32 %127, i32 0)
  %129 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %130 = load i32, i32* @URTW_ADDR_MAGIC1, align 4
  %131 = call i32 @urtw_write8_m(%struct.urtw_softc* %129, i32 %130, i32 4)
  %132 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %133 = call i64 @urtw_intr_enable(%struct.urtw_softc* %132)
  store i64 %133, i64* %6, align 8
  %134 = load i64, i64* %6, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %113
  br label %138

137:                                              ; preds = %113
  br label %138

138:                                              ; preds = %137, %136, %98, %88, %71, %65, %58, %39, %32, %16
  %139 = load i64, i64* %6, align 8
  ret i64 %139
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @urtw_reset(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_led_ctl(%struct.urtw_softc*, i32) #1

declare dso_local i64 @urtw_set_mode(%struct.urtw_softc*, i32) #1

declare dso_local i32 @urtw_set_macaddr(%struct.urtw_softc*, i32*) #1

declare dso_local i64 @urtw_update_msr(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_write32_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_set_rate(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_write16_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_intr_enable(%struct.urtw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
