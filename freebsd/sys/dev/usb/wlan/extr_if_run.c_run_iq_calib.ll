; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_iq_calib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_iq_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32 }

@RT5390_EEPROM_IQ_GAIN_CAL_TX0_2GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_GAIN_CAL_TX0_CH36_TO_CH64_5GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_GAIN_CAL_TX0_CH100_TO_CH138_5GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_GAIN_CAL_TX0_CH140_TO_CH165_5GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_PHASE_CAL_TX0_2GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_PHASE_CAL_TX0_CH36_TO_CH64_5GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_PHASE_CAL_TX0_CH100_TO_CH138_5GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_PHASE_CAL_TX0_CH140_TO_CH165_5GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_GAIN_CAL_TX1_2GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_GAIN_CAL_TX1_CH36_TO_CH64_5GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_GAIN_CAL_TX1_CH100_TO_CH138_5GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_GAIN_CAL_TX1_CH140_TO_CH165_5GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_PHASE_CAL_TX1_2GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_PHASE_CAL_TX1_CH36_TO_CH64_5GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_PHASE_CAL_TX1_CH100_TO_CH138_5GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_IQ_PHASE_CAL_TX1_CH140_TO_CH165_5GHZ = common dso_local global i32 0, align 4
@RT5390_EEPROM_RF_IQ_COMPENSATION_CTL = common dso_local global i32 0, align 4
@RT5390_EEPROM_RF_IQ_IMBALANCE_COMPENSATION_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*, i32)* @run_iq_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_iq_calib(%struct.run_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %7 = call i32 @run_bbp_write(%struct.run_softc* %6, i32 158, i32 44)
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 14
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %12 = load i32, i32* @RT5390_EEPROM_IQ_GAIN_CAL_TX0_2GHZ, align 4
  %13 = call i32 @run_efuse_read(%struct.run_softc* %11, i32 %12, i32* %5, i32 1)
  br label %39

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 64
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %19 = load i32, i32* @RT5390_EEPROM_IQ_GAIN_CAL_TX0_CH36_TO_CH64_5GHZ, align 4
  %20 = call i32 @run_efuse_read(%struct.run_softc* %18, i32 %19, i32* %5, i32 1)
  br label %38

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %22, 138
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %26 = load i32, i32* @RT5390_EEPROM_IQ_GAIN_CAL_TX0_CH100_TO_CH138_5GHZ, align 4
  %27 = call i32 @run_efuse_read(%struct.run_softc* %25, i32 %26, i32* %5, i32 1)
  br label %37

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = icmp sle i32 %29, 165
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %33 = load i32, i32* @RT5390_EEPROM_IQ_GAIN_CAL_TX0_CH140_TO_CH165_5GHZ, align 4
  %34 = call i32 @run_efuse_read(%struct.run_softc* %32, i32 %33, i32* %5, i32 1)
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %31
  br label %37

37:                                               ; preds = %36, %24
  br label %38

38:                                               ; preds = %37, %17
  br label %39

39:                                               ; preds = %38, %10
  %40 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @run_bbp_write(%struct.run_softc* %40, i32 159, i32 %41)
  %43 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %44 = call i32 @run_bbp_write(%struct.run_softc* %43, i32 158, i32 45)
  %45 = load i32, i32* %4, align 4
  %46 = icmp sle i32 %45, 14
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %49 = load i32, i32* @RT5390_EEPROM_IQ_PHASE_CAL_TX0_2GHZ, align 4
  %50 = call i32 @run_efuse_read(%struct.run_softc* %48, i32 %49, i32* %5, i32 1)
  br label %76

51:                                               ; preds = %39
  %52 = load i32, i32* %4, align 4
  %53 = icmp sle i32 %52, 64
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %56 = load i32, i32* @RT5390_EEPROM_IQ_PHASE_CAL_TX0_CH36_TO_CH64_5GHZ, align 4
  %57 = call i32 @run_efuse_read(%struct.run_softc* %55, i32 %56, i32* %5, i32 1)
  br label %75

58:                                               ; preds = %51
  %59 = load i32, i32* %4, align 4
  %60 = icmp sle i32 %59, 138
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %63 = load i32, i32* @RT5390_EEPROM_IQ_PHASE_CAL_TX0_CH100_TO_CH138_5GHZ, align 4
  %64 = call i32 @run_efuse_read(%struct.run_softc* %62, i32 %63, i32* %5, i32 1)
  br label %74

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = icmp sle i32 %66, 165
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %70 = load i32, i32* @RT5390_EEPROM_IQ_PHASE_CAL_TX0_CH140_TO_CH165_5GHZ, align 4
  %71 = call i32 @run_efuse_read(%struct.run_softc* %69, i32 %70, i32* %5, i32 1)
  br label %73

72:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %68
  br label %74

74:                                               ; preds = %73, %61
  br label %75

75:                                               ; preds = %74, %54
  br label %76

76:                                               ; preds = %75, %47
  %77 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @run_bbp_write(%struct.run_softc* %77, i32 159, i32 %78)
  %80 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %81 = call i32 @run_bbp_write(%struct.run_softc* %80, i32 158, i32 74)
  %82 = load i32, i32* %4, align 4
  %83 = icmp sle i32 %82, 14
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %86 = load i32, i32* @RT5390_EEPROM_IQ_GAIN_CAL_TX1_2GHZ, align 4
  %87 = call i32 @run_efuse_read(%struct.run_softc* %85, i32 %86, i32* %5, i32 1)
  br label %113

88:                                               ; preds = %76
  %89 = load i32, i32* %4, align 4
  %90 = icmp sle i32 %89, 64
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %93 = load i32, i32* @RT5390_EEPROM_IQ_GAIN_CAL_TX1_CH36_TO_CH64_5GHZ, align 4
  %94 = call i32 @run_efuse_read(%struct.run_softc* %92, i32 %93, i32* %5, i32 1)
  br label %112

95:                                               ; preds = %88
  %96 = load i32, i32* %4, align 4
  %97 = icmp sle i32 %96, 138
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %100 = load i32, i32* @RT5390_EEPROM_IQ_GAIN_CAL_TX1_CH100_TO_CH138_5GHZ, align 4
  %101 = call i32 @run_efuse_read(%struct.run_softc* %99, i32 %100, i32* %5, i32 1)
  br label %111

102:                                              ; preds = %95
  %103 = load i32, i32* %4, align 4
  %104 = icmp sle i32 %103, 165
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %107 = load i32, i32* @RT5390_EEPROM_IQ_GAIN_CAL_TX1_CH140_TO_CH165_5GHZ, align 4
  %108 = call i32 @run_efuse_read(%struct.run_softc* %106, i32 %107, i32* %5, i32 1)
  br label %110

109:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %105
  br label %111

111:                                              ; preds = %110, %98
  br label %112

112:                                              ; preds = %111, %91
  br label %113

113:                                              ; preds = %112, %84
  %114 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @run_bbp_write(%struct.run_softc* %114, i32 159, i32 %115)
  %117 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %118 = call i32 @run_bbp_write(%struct.run_softc* %117, i32 158, i32 75)
  %119 = load i32, i32* %4, align 4
  %120 = icmp sle i32 %119, 14
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %123 = load i32, i32* @RT5390_EEPROM_IQ_PHASE_CAL_TX1_2GHZ, align 4
  %124 = call i32 @run_efuse_read(%struct.run_softc* %122, i32 %123, i32* %5, i32 1)
  br label %150

125:                                              ; preds = %113
  %126 = load i32, i32* %4, align 4
  %127 = icmp sle i32 %126, 64
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %130 = load i32, i32* @RT5390_EEPROM_IQ_PHASE_CAL_TX1_CH36_TO_CH64_5GHZ, align 4
  %131 = call i32 @run_efuse_read(%struct.run_softc* %129, i32 %130, i32* %5, i32 1)
  br label %149

132:                                              ; preds = %125
  %133 = load i32, i32* %4, align 4
  %134 = icmp sle i32 %133, 138
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %137 = load i32, i32* @RT5390_EEPROM_IQ_PHASE_CAL_TX1_CH100_TO_CH138_5GHZ, align 4
  %138 = call i32 @run_efuse_read(%struct.run_softc* %136, i32 %137, i32* %5, i32 1)
  br label %148

139:                                              ; preds = %132
  %140 = load i32, i32* %4, align 4
  %141 = icmp sle i32 %140, 165
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %144 = load i32, i32* @RT5390_EEPROM_IQ_PHASE_CAL_TX1_CH140_TO_CH165_5GHZ, align 4
  %145 = call i32 @run_efuse_read(%struct.run_softc* %143, i32 %144, i32* %5, i32 1)
  br label %147

146:                                              ; preds = %139
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %146, %142
  br label %148

148:                                              ; preds = %147, %135
  br label %149

149:                                              ; preds = %148, %128
  br label %150

150:                                              ; preds = %149, %121
  %151 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @run_bbp_write(%struct.run_softc* %151, i32 159, i32 %152)
  %154 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %155 = call i32 @run_bbp_write(%struct.run_softc* %154, i32 158, i32 4)
  %156 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %157 = load i32, i32* @RT5390_EEPROM_RF_IQ_COMPENSATION_CTL, align 4
  %158 = call i32 @run_efuse_read(%struct.run_softc* %156, i32 %157, i32* %5, i32 1)
  %159 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @run_bbp_write(%struct.run_softc* %159, i32 159, i32 %160)
  %162 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %163 = call i32 @run_bbp_write(%struct.run_softc* %162, i32 158, i32 3)
  %164 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %165 = load i32, i32* @RT5390_EEPROM_RF_IQ_IMBALANCE_COMPENSATION_CTL, align 4
  %166 = call i32 @run_efuse_read(%struct.run_softc* %164, i32 %165, i32* %5, i32 1)
  %167 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @run_bbp_write(%struct.run_softc* %167, i32 159, i32 %168)
  ret void
}

declare dso_local i32 @run_bbp_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_efuse_read(%struct.run_softc*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
