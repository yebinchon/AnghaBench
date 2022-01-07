; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_halt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_channel = type { i64, i64, %struct.cs4231_softc* }
%struct.cs4231_softc = type { i32, i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@CS4231_SBUS = common dso_local global i32 0, align 4
@APC_CSR = common dso_local global i32 0, align 4
@APC_CSR_EI = common dso_local global i32 0, align 4
@APC_CSR_GIE = common dso_local global i32 0, align 4
@APC_CSR_PIE = common dso_local global i32 0, align 4
@APC_CSR_EIE = common dso_local global i32 0, align 4
@APC_CSR_PDMA_GO = common dso_local global i32 0, align 4
@APC_CSR_PMIE = common dso_local global i32 0, align 4
@EBDMA_DCSR = common dso_local global i32 0, align 4
@EBDCSR_DMAEN = common dso_local global i32 0, align 4
@CS_TEST_AND_INIT = common dso_local global i32 0, align 4
@CS_TIMEOUT = common dso_local global i32 0, align 4
@PLAYBACK_UNDERRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"timeout waiting for playback FIFO drain\0A\00", align 1
@CS_INTERFACE_CONFIG = common dso_local global i32 0, align 4
@PLAYBACK_ENABLE = common dso_local global i32 0, align 4
@APC_CSR_CAPTURE_PAUSE = common dso_local global i32 0, align 4
@CAPTURE_OVERRUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"timeout waiting for capture FIFO drain\0A\00", align 1
@CAPTURE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs4231_channel*)* @cs4231_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4231_halt(%struct.cs4231_channel* %0) #0 {
  %2 = alloca %struct.cs4231_channel*, align 8
  %3 = alloca %struct.cs4231_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cs4231_channel* %0, %struct.cs4231_channel** %2, align 8
  %6 = load %struct.cs4231_channel*, %struct.cs4231_channel** %2, align 8
  %7 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %6, i32 0, i32 2
  %8 = load %struct.cs4231_softc*, %struct.cs4231_softc** %7, align 8
  store %struct.cs4231_softc* %8, %struct.cs4231_softc** %3, align 8
  %9 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %10 = call i32 @CS4231_LOCK(%struct.cs4231_softc* %9)
  %11 = load %struct.cs4231_channel*, %struct.cs4231_channel** %2, align 8
  %12 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %17 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %16)
  br label %170

18:                                               ; preds = %1
  %19 = load %struct.cs4231_channel*, %struct.cs4231_channel** %2, align 8
  %20 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCMDIR_PLAY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %102

24:                                               ; preds = %18
  %25 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %26 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CS4231_SBUS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  %32 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %33 = load i32, i32* @APC_CSR, align 4
  %34 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %35 = load i32, i32* @APC_CSR, align 4
  %36 = call i32 @APC_READ(%struct.cs4231_softc* %34, i32 %35)
  %37 = load i32, i32* @APC_CSR_EI, align 4
  %38 = load i32, i32* @APC_CSR_GIE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @APC_CSR_PIE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @APC_CSR_EIE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @APC_CSR_PDMA_GO, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @APC_CSR_PMIE, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %36, %48
  %50 = call i32 @APC_WRITE(%struct.cs4231_softc* %32, i32 %33, i32 %49)
  br label %61

51:                                               ; preds = %24
  %52 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %53 = load i32, i32* @EBDMA_DCSR, align 4
  %54 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %55 = load i32, i32* @EBDMA_DCSR, align 4
  %56 = call i32 @EBDMA_P_READ(%struct.cs4231_softc* %54, i32 %55)
  %57 = load i32, i32* @EBDCSR_DMAEN, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = call i32 @EBDMA_P_WRITE(%struct.cs4231_softc* %52, i32 %53, i32 %59)
  br label %61

61:                                               ; preds = %51, %31
  %62 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %63 = load i32, i32* @CS_TEST_AND_INIT, align 4
  %64 = call i32 @cs4231_read(%struct.cs4231_softc* %62, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @CS_TIMEOUT, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %81, %61
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @PLAYBACK_UNDERRUN, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br label %74

74:                                               ; preds = %69, %66
  %75 = phi i1 [ false, %66 ], [ %73, %69 ]
  br i1 %75, label %76, label %84

76:                                               ; preds = %74
  %77 = call i32 @DELAY(i32 5)
  %78 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %79 = load i32, i32* @CS_TEST_AND_INIT, align 4
  %80 = call i32 @cs4231_read(%struct.cs4231_softc* %78, i32 %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %5, align 4
  br label %66

84:                                               ; preds = %74
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %89 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %87, %84
  %93 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %94 = load i32, i32* @CS_INTERFACE_CONFIG, align 4
  %95 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %96 = load i32, i32* @CS_INTERFACE_CONFIG, align 4
  %97 = call i32 @cs4231_read(%struct.cs4231_softc* %95, i32 %96)
  %98 = load i32, i32* @PLAYBACK_ENABLE, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %97, %99
  %101 = call i32 @cs4231_write(%struct.cs4231_softc* %93, i32 %94, i32 %100)
  br label %165

102:                                              ; preds = %18
  %103 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %104 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @CS4231_SBUS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %102
  %110 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %111 = load i32, i32* @APC_CSR, align 4
  %112 = load i32, i32* @APC_CSR_CAPTURE_PAUSE, align 4
  %113 = call i32 @APC_WRITE(%struct.cs4231_softc* %110, i32 %111, i32 %112)
  br label %124

114:                                              ; preds = %102
  %115 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %116 = load i32, i32* @EBDMA_DCSR, align 4
  %117 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %118 = load i32, i32* @EBDMA_DCSR, align 4
  %119 = call i32 @EBDMA_C_READ(%struct.cs4231_softc* %117, i32 %118)
  %120 = load i32, i32* @EBDCSR_DMAEN, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  %123 = call i32 @EBDMA_C_WRITE(%struct.cs4231_softc* %115, i32 %116, i32 %122)
  br label %124

124:                                              ; preds = %114, %109
  %125 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %126 = load i32, i32* @CS_TEST_AND_INIT, align 4
  %127 = call i32 @cs4231_read(%struct.cs4231_softc* %125, i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* @CS_TIMEOUT, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %144, %124
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @CAPTURE_OVERRUN, align 4
  %135 = and i32 %133, %134
  %136 = icmp eq i32 %135, 0
  br label %137

137:                                              ; preds = %132, %129
  %138 = phi i1 [ false, %129 ], [ %136, %132 ]
  br i1 %138, label %139, label %147

139:                                              ; preds = %137
  %140 = call i32 @DELAY(i32 5)
  %141 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %142 = load i32, i32* @CS_TEST_AND_INIT, align 4
  %143 = call i32 @cs4231_read(%struct.cs4231_softc* %141, i32 %142)
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %5, align 4
  br label %129

147:                                              ; preds = %137
  %148 = load i32, i32* %5, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %152 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @device_printf(i32 %153, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %155

155:                                              ; preds = %150, %147
  %156 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %157 = load i32, i32* @CS_INTERFACE_CONFIG, align 4
  %158 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %159 = load i32, i32* @CS_INTERFACE_CONFIG, align 4
  %160 = call i32 @cs4231_read(%struct.cs4231_softc* %158, i32 %159)
  %161 = load i32, i32* @CAPTURE_ENABLE, align 4
  %162 = xor i32 %161, -1
  %163 = and i32 %160, %162
  %164 = call i32 @cs4231_write(%struct.cs4231_softc* %156, i32 %157, i32 %163)
  br label %165

165:                                              ; preds = %155, %92
  %166 = load %struct.cs4231_channel*, %struct.cs4231_channel** %2, align 8
  %167 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %166, i32 0, i32 0
  store i64 0, i64* %167, align 8
  %168 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %169 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %168)
  br label %170

170:                                              ; preds = %165, %15
  ret void
}

declare dso_local i32 @CS4231_LOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @CS4231_UNLOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @APC_WRITE(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @APC_READ(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @EBDMA_P_WRITE(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @EBDMA_P_READ(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @cs4231_read(%struct.cs4231_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @cs4231_write(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @EBDMA_C_WRITE(%struct.cs4231_softc*, i32, i32) #1

declare dso_local i32 @EBDMA_C_READ(%struct.cs4231_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
