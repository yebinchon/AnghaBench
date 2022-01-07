; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_cfg_status_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_cfg_status_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_proc_msg = type { i32 }
%struct.ucom_cfg_task = type { %struct.ucom_softc* }
%struct.ucom_softc = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__*, %struct.tty* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.ucom_softc*, i32*, i32*)* }
%struct.tty = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@UCOM_FLAG_LL_READY = common dso_local global i32 0, align 4
@UCOM_FLAG_HL_READY = common dso_local global i32 0, align 4
@ucom_pps_mode = common dso_local global i32 0, align 4
@UART_PPS_SIGNAL_MASK = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@PPS_CAPTUREBOTH = common dso_local global i32 0, align 4
@UART_PPS_INVERT_PULSE = common dso_local global i32 0, align 4
@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@PPS_CAPTURECLEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DCD changed to %d\0A\00", align 1
@ULSR_BI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"BREAK detected\0A\00", align 1
@TRE_BREAK = common dso_local global i32 0, align 4
@ULSR_FE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Frame error detected\0A\00", align 1
@TRE_FRAMING = common dso_local global i32 0, align 4
@ULSR_PE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Parity error detected\0A\00", align 1
@TRE_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_proc_msg*)* @ucom_cfg_status_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucom_cfg_status_change(%struct.usb_proc_msg* %0) #0 {
  %2 = alloca %struct.usb_proc_msg*, align 8
  %3 = alloca %struct.ucom_cfg_task*, align 8
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_proc_msg* %0, %struct.usb_proc_msg** %2, align 8
  %12 = load %struct.usb_proc_msg*, %struct.usb_proc_msg** %2, align 8
  %13 = bitcast %struct.usb_proc_msg* %12 to %struct.ucom_cfg_task*
  store %struct.ucom_cfg_task* %13, %struct.ucom_cfg_task** %3, align 8
  %14 = load %struct.ucom_cfg_task*, %struct.ucom_cfg_task** %3, align 8
  %15 = getelementptr inbounds %struct.ucom_cfg_task, %struct.ucom_cfg_task* %14, i32 0, i32 0
  %16 = load %struct.ucom_softc*, %struct.ucom_softc** %15, align 8
  store %struct.ucom_softc* %16, %struct.ucom_softc** %4, align 8
  %17 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %17, i32 0, i32 5
  %19 = load %struct.tty*, %struct.tty** %18, align 8
  store %struct.tty* %19, %struct.tty** %5, align 8
  %20 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %21 = load i32, i32* @MA_OWNED, align 4
  %22 = call i32 @UCOM_MTX_ASSERT(%struct.ucom_softc* %20, i32 %21)
  %23 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @UCOM_FLAG_LL_READY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %201

30:                                               ; preds = %1
  %31 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %31, i32 0, i32 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32 (%struct.ucom_softc*, i32*, i32*)*, i32 (%struct.ucom_softc*, i32*, i32*)** %34, align 8
  %36 = icmp eq i32 (%struct.ucom_softc*, i32*, i32*)* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %201

38:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %39 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %40 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %39, i32 0, i32 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ucom_softc*, i32*, i32*)*, i32 (%struct.ucom_softc*, i32*, i32*)** %42, align 8
  %44 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %45 = call i32 %43(%struct.ucom_softc* %44, i32* %8, i32* %7)
  %46 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %47 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @UCOM_FLAG_HL_READY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %38
  br label %201

53:                                               ; preds = %38
  %54 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = xor i32 %56, %57
  store i32 %58, i32* %9, align 4
  %59 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %60 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = xor i32 %61, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %66 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %69 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @ucom_pps_mode, align 4
  %71 = load i32, i32* @UART_PPS_SIGNAL_MASK, align 4
  %72 = and i32 %70, %71
  switch i32 %72, label %77 [
    i32 129, label %73
    i32 128, label %75
  ]

73:                                               ; preds = %53
  %74 = load i32, i32* @SER_CTS, align 4
  store i32 %74, i32* %11, align 4
  br label %78

75:                                               ; preds = %53
  %76 = load i32, i32* @SER_DCD, align 4
  store i32 %76, i32* %11, align 4
  br label %78

77:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %77, %75, %73
  %79 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %80 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PPS_CAPTUREBOTH, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %125

87:                                               ; preds = %78
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %11, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %125

92:                                               ; preds = %87
  %93 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %94 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %93, i32 0, i32 3
  %95 = call i32 @pps_capture(%struct.TYPE_7__* %94)
  %96 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %97 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 1, i32 0
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* @ucom_pps_mode, align 4
  %105 = load i32, i32* @UART_PPS_INVERT_PULSE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %92
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %108, %92
  %114 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %115 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %114, i32 0, i32 3
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  br label %122

120:                                              ; preds = %113
  %121 = load i32, i32* @PPS_CAPTURECLEAR, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = call i32 @pps_event(%struct.TYPE_7__* %115, i32 %123)
  br label %125

125:                                              ; preds = %122, %87, %78
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @SER_DCD, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %125
  %131 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %132 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @SER_DCD, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 1, i32 0
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %139)
  %141 = load %struct.tty*, %struct.tty** %5, align 8
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @ttydisc_modem(%struct.tty* %141, i32 %142)
  br label %144

144:                                              ; preds = %130, %125
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @ULSR_BI, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %144
  %150 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %151 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @ULSR_BI, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %149
  %157 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %158 = load %struct.tty*, %struct.tty** %5, align 8
  %159 = load i32, i32* @TRE_BREAK, align 4
  %160 = call i32 @ttydisc_rint(%struct.tty* %158, i32 0, i32 %159)
  %161 = load %struct.tty*, %struct.tty** %5, align 8
  %162 = call i32 @ttydisc_rint_done(%struct.tty* %161)
  br label %163

163:                                              ; preds = %156, %149, %144
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @ULSR_FE, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %163
  %169 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %170 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @ULSR_FE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %168
  %176 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %177 = load %struct.tty*, %struct.tty** %5, align 8
  %178 = load i32, i32* @TRE_FRAMING, align 4
  %179 = call i32 @ttydisc_rint(%struct.tty* %177, i32 0, i32 %178)
  %180 = load %struct.tty*, %struct.tty** %5, align 8
  %181 = call i32 @ttydisc_rint_done(%struct.tty* %180)
  br label %182

182:                                              ; preds = %175, %168, %163
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @ULSR_PE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %182
  %188 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %189 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @ULSR_PE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %187
  %195 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %196 = load %struct.tty*, %struct.tty** %5, align 8
  %197 = load i32, i32* @TRE_PARITY, align 4
  %198 = call i32 @ttydisc_rint(%struct.tty* %196, i32 0, i32 %197)
  %199 = load %struct.tty*, %struct.tty** %5, align 8
  %200 = call i32 @ttydisc_rint_done(%struct.tty* %199)
  br label %201

201:                                              ; preds = %29, %37, %52, %194, %187, %182
  ret void
}

declare dso_local i32 @UCOM_MTX_ASSERT(%struct.ucom_softc*, i32) #1

declare dso_local i32 @pps_capture(%struct.TYPE_7__*) #1

declare dso_local i32 @pps_event(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @ttydisc_modem(%struct.tty*, i32) #1

declare dso_local i32 @ttydisc_rint(%struct.tty*, i32, i32) #1

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
