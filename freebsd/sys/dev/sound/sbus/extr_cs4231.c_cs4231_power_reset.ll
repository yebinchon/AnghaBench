; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_power_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_power_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { i32, i32 }

@CS4231_SBUS = common dso_local global i32 0, align 4
@APC_CSR = common dso_local global i32 0, align 4
@APC_CSR_RESET = common dso_local global i32 0, align 4
@APC_CSR_CODEC_RESET = common dso_local global i32 0, align 4
@AUXIO_CODEC = common dso_local global i32 0, align 4
@CODEC_WARM_RESET = common dso_local global i32 0, align 4
@CODEC_COLD_RESET = common dso_local global i32 0, align 4
@CS_TIMEOUT = common dso_local global i32 0, align 4
@CS4231_IADDR = common dso_local global i32 0, align 4
@CS_IN_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"timeout waiting for reset\0A\00", align 1
@CS_MISC_INFO = common dso_local global i32 0, align 4
@CS_MODE2 = common dso_local global i32 0, align 4
@CS_PIN_CONTROL = common dso_local global i32 0, align 4
@INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@CS4231_STATUS = common dso_local global i32 0, align 4
@CS_LEFT_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@OUTPUT_MUTE = common dso_local global i32 0, align 4
@CS_RIGHT_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@CS_LEFT_AUX1_CONTROL = common dso_local global i32 0, align 4
@AUX_INPUT_MUTE = common dso_local global i32 0, align 4
@CS_RIGHT_AUX1_CONTROL = common dso_local global i32 0, align 4
@CS_ALT_FEATURE1 = common dso_local global i32 0, align 4
@CS_DAC_ZERO = common dso_local global i32 0, align 4
@CS_OUTPUT_LVL = common dso_local global i32 0, align 4
@CS_ALT_FEATURE2 = common dso_local global i32 0, align 4
@CS_HPF_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs4231_softc*, i32)* @cs4231_power_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4231_power_reset(%struct.cs4231_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.cs4231_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cs4231_softc* %0, %struct.cs4231_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %8 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CS4231_SBUS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %2
  %14 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %15 = load i32, i32* @APC_CSR, align 4
  %16 = load i32, i32* @APC_CSR_RESET, align 4
  %17 = call i32 @APC_WRITE(%struct.cs4231_softc* %14, i32 %15, i32 %16)
  %18 = call i32 @DELAY(i32 10)
  %19 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %20 = load i32, i32* @APC_CSR, align 4
  %21 = call i32 @APC_WRITE(%struct.cs4231_softc* %19, i32 %20, i32 0)
  %22 = call i32 @DELAY(i32 10)
  %23 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %24 = load i32, i32* @APC_CSR, align 4
  %25 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %26 = load i32, i32* @APC_CSR, align 4
  %27 = call i32 @APC_READ(%struct.cs4231_softc* %25, i32 %26)
  %28 = load i32, i32* @APC_CSR_CODEC_RESET, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @APC_WRITE(%struct.cs4231_softc* %23, i32 %24, i32 %29)
  %31 = call i32 @DELAY(i32 20)
  %32 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %33 = load i32, i32* @APC_CSR, align 4
  %34 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %35 = load i32, i32* @APC_CSR, align 4
  %36 = call i32 @APC_READ(%struct.cs4231_softc* %34, i32 %35)
  %37 = load i32, i32* @APC_CSR_CODEC_RESET, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = call i32 @APC_WRITE(%struct.cs4231_softc* %32, i32 %33, i32 %39)
  br label %73

41:                                               ; preds = %2
  %42 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %43 = load i32, i32* @AUXIO_CODEC, align 4
  %44 = call i64 @AUXIO_READ(%struct.cs4231_softc* %42, i32 %43)
  store i64 %44, i64* %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @CODEC_WARM_RESET, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %53 = load i32, i32* @AUXIO_CODEC, align 4
  %54 = call i32 @AUXIO_WRITE(%struct.cs4231_softc* %52, i32 %53, i32 0)
  %55 = call i32 @DELAY(i32 20)
  br label %70

56:                                               ; preds = %48, %41
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @CODEC_COLD_RESET, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %62 = load i32, i32* @AUXIO_CODEC, align 4
  %63 = call i32 @AUXIO_WRITE(%struct.cs4231_softc* %61, i32 %62, i32 1)
  %64 = call i32 @DELAY(i32 20)
  %65 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %66 = load i32, i32* @AUXIO_CODEC, align 4
  %67 = call i32 @AUXIO_WRITE(%struct.cs4231_softc* %65, i32 %66, i32 0)
  %68 = call i32 @DELAY(i32 20)
  br label %69

69:                                               ; preds = %60, %56
  br label %70

70:                                               ; preds = %69, %51
  %71 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %72 = call i32 @cs4231_ebdma_reset(%struct.cs4231_softc* %71)
  br label %73

73:                                               ; preds = %70, %13
  %74 = load i32, i32* @CS_TIMEOUT, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %88, %73
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %80 = load i32, i32* @CS4231_IADDR, align 4
  %81 = call i64 @CS_READ(%struct.cs4231_softc* %79, i32 %80)
  %82 = load i64, i64* @CS_IN_INIT, align 8
  %83 = icmp eq i64 %81, %82
  br label %84

84:                                               ; preds = %78, %75
  %85 = phi i1 [ false, %75 ], [ %83, %78 ]
  br i1 %85, label %86, label %91

86:                                               ; preds = %84
  %87 = call i32 @DELAY(i32 10)
  br label %88

88:                                               ; preds = %86
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %6, align 4
  br label %75

91:                                               ; preds = %84
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %96 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @device_printf(i32 %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %99

99:                                               ; preds = %94, %91
  %100 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %101 = load i32, i32* @CS_MISC_INFO, align 4
  %102 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %103 = load i32, i32* @CS_MISC_INFO, align 4
  %104 = call i32 @cs4231_read(%struct.cs4231_softc* %102, i32 %103)
  %105 = load i32, i32* @CS_MODE2, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @cs4231_write(%struct.cs4231_softc* %100, i32 %101, i32 %106)
  %108 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %109 = load i32, i32* @CS_PIN_CONTROL, align 4
  %110 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %111 = load i32, i32* @CS_PIN_CONTROL, align 4
  %112 = call i32 @cs4231_read(%struct.cs4231_softc* %110, i32 %111)
  %113 = load i32, i32* @INTERRUPT_ENABLE, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @cs4231_write(%struct.cs4231_softc* %108, i32 %109, i32 %114)
  %116 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %117 = load i32, i32* @CS4231_STATUS, align 4
  %118 = call i32 @CS_WRITE(%struct.cs4231_softc* %116, i32 %117, i32 0)
  %119 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %120 = load i32, i32* @CS_LEFT_OUTPUT_CONTROL, align 4
  %121 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %122 = load i32, i32* @CS_LEFT_OUTPUT_CONTROL, align 4
  %123 = call i32 @cs4231_read(%struct.cs4231_softc* %121, i32 %122)
  %124 = load i32, i32* @OUTPUT_MUTE, align 4
  %125 = xor i32 %124, -1
  %126 = and i32 %123, %125
  %127 = call i32 @cs4231_write(%struct.cs4231_softc* %119, i32 %120, i32 %126)
  %128 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %129 = load i32, i32* @CS_RIGHT_OUTPUT_CONTROL, align 4
  %130 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %131 = load i32, i32* @CS_RIGHT_OUTPUT_CONTROL, align 4
  %132 = call i32 @cs4231_read(%struct.cs4231_softc* %130, i32 %131)
  %133 = load i32, i32* @OUTPUT_MUTE, align 4
  %134 = xor i32 %133, -1
  %135 = and i32 %132, %134
  %136 = call i32 @cs4231_write(%struct.cs4231_softc* %128, i32 %129, i32 %135)
  %137 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %138 = load i32, i32* @CS_LEFT_AUX1_CONTROL, align 4
  %139 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %140 = load i32, i32* @CS_LEFT_AUX1_CONTROL, align 4
  %141 = call i32 @cs4231_read(%struct.cs4231_softc* %139, i32 %140)
  %142 = load i32, i32* @AUX_INPUT_MUTE, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @cs4231_write(%struct.cs4231_softc* %137, i32 %138, i32 %143)
  %145 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %146 = load i32, i32* @CS_RIGHT_AUX1_CONTROL, align 4
  %147 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %148 = load i32, i32* @CS_RIGHT_AUX1_CONTROL, align 4
  %149 = call i32 @cs4231_read(%struct.cs4231_softc* %147, i32 %148)
  %150 = load i32, i32* @AUX_INPUT_MUTE, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @cs4231_write(%struct.cs4231_softc* %145, i32 %146, i32 %151)
  %153 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %154 = load i32, i32* @CS_ALT_FEATURE1, align 4
  %155 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %156 = load i32, i32* @CS_ALT_FEATURE1, align 4
  %157 = call i32 @cs4231_read(%struct.cs4231_softc* %155, i32 %156)
  %158 = load i32, i32* @CS_DAC_ZERO, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @CS_OUTPUT_LVL, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @cs4231_write(%struct.cs4231_softc* %153, i32 %154, i32 %161)
  %163 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %164 = load i32, i32* @CS_ALT_FEATURE2, align 4
  %165 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %166 = load i32, i32* @CS_ALT_FEATURE2, align 4
  %167 = call i32 @cs4231_read(%struct.cs4231_softc* %165, i32 %166)
  %168 = load i32, i32* @CS_HPF_ENABLE, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @cs4231_write(%struct.cs4231_softc* %163, i32 %164, i32 %169)
  ret void
}

declare dso_local i32 @APC_WRITE(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @APC_READ(%struct.cs4231_softc*, i32) #1

declare dso_local i64 @AUXIO_READ(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @AUXIO_WRITE(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @cs4231_ebdma_reset(%struct.cs4231_softc*) #1

declare dso_local i64 @CS_READ(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @cs4231_write(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @cs4231_read(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @CS_WRITE(%struct.cs4231_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
