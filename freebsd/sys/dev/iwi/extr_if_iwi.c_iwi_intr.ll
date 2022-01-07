; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32*, i64, i32 }

@IWI_LOCK_DECL = common dso_local global i32 0, align 4
@IWI_CSR_INTR = common dso_local global i32 0, align 4
@IWI_INTR_FATAL_ERROR = common dso_local global i32 0, align 4
@IWI_INTR_FW_INITED = common dso_local global i32 0, align 4
@IWI_INTR_PARITY_ERROR = common dso_local global i32 0, align 4
@IWI_INTR_RADIO_OFF = common dso_local global i32 0, align 4
@IWI_INTR_CMD_DONE = common dso_local global i32 0, align 4
@IWI_FLAG_BUSY = common dso_local global i32 0, align 4
@IWI_INTR_TX1_DONE = common dso_local global i32 0, align 4
@IWI_INTR_TX2_DONE = common dso_local global i32 0, align 4
@IWI_INTR_TX3_DONE = common dso_local global i32 0, align 4
@IWI_INTR_TX4_DONE = common dso_local global i32 0, align 4
@IWI_INTR_RX_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"parity error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iwi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.iwi_softc*
  store %struct.iwi_softc* %6, %struct.iwi_softc** %3, align 8
  %7 = load i32, i32* @IWI_LOCK_DECL, align 4
  %8 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %9 = call i32 @IWI_LOCK(%struct.iwi_softc* %8)
  %10 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %11 = load i32, i32* @IWI_CSR_INTR, align 4
  %12 = call i32 @CSR_READ_4(%struct.iwi_softc* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %1
  %18 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %19 = call i32 @IWI_UNLOCK(%struct.iwi_softc* %18)
  br label %142

20:                                               ; preds = %14
  %21 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %22 = load i32, i32* @IWI_CSR_INTR, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @IWI_INTR_FATAL_ERROR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %31 = call i32 @iwi_fatal_error_intr(%struct.iwi_softc* %30)
  br label %139

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @IWI_INTR_FW_INITED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @IWI_INTR_FATAL_ERROR, align 4
  %40 = load i32, i32* @IWI_INTR_PARITY_ERROR, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %46 = call i32 @wakeup(%struct.iwi_softc* %45)
  br label %47

47:                                               ; preds = %44, %37
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @IWI_INTR_RADIO_OFF, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %55 = call i32 @iwi_radio_off_intr(%struct.iwi_softc* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @IWI_INTR_CMD_DONE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load i32, i32* @IWI_FLAG_BUSY, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %65 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %69 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %71 = call i32 @wakeup(%struct.iwi_softc* %70)
  br label %72

72:                                               ; preds = %61, %56
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @IWI_INTR_TX1_DONE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %79 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %80 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = call i32 @iwi_tx_intr(%struct.iwi_softc* %78, i32* %82)
  br label %84

84:                                               ; preds = %77, %72
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @IWI_INTR_TX2_DONE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %91 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %92 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = call i32 @iwi_tx_intr(%struct.iwi_softc* %90, i32* %94)
  br label %96

96:                                               ; preds = %89, %84
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @IWI_INTR_TX3_DONE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %103 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %104 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = call i32 @iwi_tx_intr(%struct.iwi_softc* %102, i32* %106)
  br label %108

108:                                              ; preds = %101, %96
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @IWI_INTR_TX4_DONE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %115 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %116 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = call i32 @iwi_tx_intr(%struct.iwi_softc* %114, i32* %118)
  br label %120

120:                                              ; preds = %113, %108
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @IWI_INTR_RX_DONE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %127 = call i32 @iwi_rx_intr(%struct.iwi_softc* %126)
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @IWI_INTR_PARITY_ERROR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %135 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @device_printf(i32 %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %138

138:                                              ; preds = %133, %128
  br label %139

139:                                              ; preds = %138, %29
  %140 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %141 = call i32 @IWI_UNLOCK(%struct.iwi_softc* %140)
  br label %142

142:                                              ; preds = %139, %17
  ret void
}

declare dso_local i32 @IWI_LOCK(%struct.iwi_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.iwi_softc*, i32) #1

declare dso_local i32 @IWI_UNLOCK(%struct.iwi_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.iwi_softc*, i32, i32) #1

declare dso_local i32 @iwi_fatal_error_intr(%struct.iwi_softc*) #1

declare dso_local i32 @wakeup(%struct.iwi_softc*) #1

declare dso_local i32 @iwi_radio_off_intr(%struct.iwi_softc*) #1

declare dso_local i32 @iwi_tx_intr(%struct.iwi_softc*, i32*) #1

declare dso_local i32 @iwi_rx_intr(%struct.iwi_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
