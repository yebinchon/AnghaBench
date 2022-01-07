; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_cfg_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_cfg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.ucom_softc = type { i64, %struct.TYPE_6__*, %struct.umcs7840_softc* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.umcs7840_softc = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@MCS7840_DEV_REG_CONTROL1 = common dso_local global i32 0, align 4
@MCS7840_DEV_CONTROL1_DRIVER_DONE = common dso_local global i32 0, align 4
@umcs7840_port_registers = common dso_local global %struct.TYPE_8__* null, align 8
@MCS7840_DEV_SPx_UART_RESET = common dso_local global i32 0, align 4
@MCS7840_UART_REG_SCRATCHPAD = common dso_local global i32 0, align 4
@MCS7840_UART_SCRATCHPAD_RS232 = common dso_local global i32 0, align 4
@MCS7840_DEV_CONTROLx_RX_DISABLE = common dso_local global i32 0, align 4
@MCS7840_UART_REG_IER = common dso_local global i32 0, align 4
@MCS7840_UART_REG_FCR = common dso_local global i32 0, align 4
@MCS7840_UART_FCR_ENABLE = common dso_local global i32 0, align 4
@MCS7840_UART_FCR_FLUSHRHR = common dso_local global i32 0, align 4
@MCS7840_UART_FCR_FLUSHTHR = common dso_local global i32 0, align 4
@MCS7840_UART_FCR_RTL_1_14 = common dso_local global i32 0, align 4
@MCS7840_UART_LCR_DATALEN8 = common dso_local global i32 0, align 4
@MCS7840_UART_LCR_STOPB1 = common dso_local global i32 0, align 4
@MCS7840_UART_REG_LCR = common dso_local global i32 0, align 4
@MCS7840_UART_MCR_IE = common dso_local global i32 0, align 4
@CNO_RTSDTR = common dso_local global i32 0, align 4
@MCS7840_UART_MCR_DTR = common dso_local global i32 0, align 4
@MCS7840_UART_MCR_RTS = common dso_local global i32 0, align 4
@MCS7840_UART_REG_MCR = common dso_local global i32 0, align 4
@MCS7840_DEV_SPx_RESET_OUT_FIFO = common dso_local global i32 0, align 4
@MCS7840_DEV_SPx_RESET_IN_FIFO = common dso_local global i32 0, align 4
@MCS7840_UART_IER_RXSTAT = common dso_local global i32 0, align 4
@MCS7840_UART_IER_MODEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Port %d has been opened\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*)* @umcs7840_cfg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umcs7840_cfg_open(%struct.ucom_softc* %0) #0 {
  %2 = alloca %struct.ucom_softc*, align 8
  %3 = alloca %struct.umcs7840_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %2, align 8
  %6 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %6, i32 0, i32 2
  %8 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  store %struct.umcs7840_softc* %8, %struct.umcs7840_softc** %3, align 8
  %9 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %13 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %1
  %17 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %18 = load i32, i32* @MCS7840_DEV_REG_CONTROL1, align 4
  %19 = call i64 @umcs7840_get_reg_sync(%struct.umcs7840_softc* %17, i32 %18, i32* %5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %305

22:                                               ; preds = %16
  %23 = load i32, i32* @MCS7840_DEV_CONTROL1_DRIVER_DONE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %27 = load i32, i32* @MCS7840_DEV_REG_CONTROL1, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @umcs7840_set_reg_sync(%struct.umcs7840_softc* %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %305

32:                                               ; preds = %22
  %33 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %34 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %1
  %36 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @umcs7840_port_registers, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @umcs7840_get_reg_sync(%struct.umcs7840_softc* %36, i32 %41, i32* %5)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %305

45:                                               ; preds = %35
  %46 = load i32, i32* @MCS7840_DEV_SPx_UART_RESET, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @umcs7840_port_registers, align 8
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @umcs7840_set_reg_sync(%struct.umcs7840_softc* %49, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %305

59:                                               ; preds = %45
  %60 = load i32, i32* @MCS7840_DEV_SPx_UART_RESET, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @umcs7840_port_registers, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @umcs7840_set_reg_sync(%struct.umcs7840_softc* %64, i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %305

74:                                               ; preds = %59
  %75 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i32, i32* @MCS7840_UART_REG_SCRATCHPAD, align 4
  %78 = load i32, i32* @MCS7840_UART_SCRATCHPAD_RS232, align 4
  %79 = call i64 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %75, i64 %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %305

82:                                               ; preds = %74
  %83 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** @umcs7840_port_registers, align 8
  %85 = load i64, i64* %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @umcs7840_get_reg_sync(%struct.umcs7840_softc* %83, i32 %88, i32* %5)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %305

92:                                               ; preds = %82
  %93 = load i32, i32* @MCS7840_DEV_CONTROLx_RX_DISABLE, align 4
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @umcs7840_port_registers, align 8
  %98 = load i64, i64* %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i64 @umcs7840_set_reg_sync(%struct.umcs7840_softc* %96, i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %305

106:                                              ; preds = %92
  %107 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %108 = load i64, i64* %4, align 8
  %109 = load i32, i32* @MCS7840_UART_REG_IER, align 4
  %110 = call i64 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %107, i64 %108, i32 %109, i32 0)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %305

113:                                              ; preds = %106
  %114 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %115 = load i64, i64* %4, align 8
  %116 = load i32, i32* @MCS7840_UART_REG_FCR, align 4
  %117 = call i64 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %114, i64 %115, i32 %116, i32 0)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %305

120:                                              ; preds = %113
  %121 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %122 = load i64, i64* %4, align 8
  %123 = load i32, i32* @MCS7840_UART_REG_FCR, align 4
  %124 = load i32, i32* @MCS7840_UART_FCR_ENABLE, align 4
  %125 = load i32, i32* @MCS7840_UART_FCR_FLUSHRHR, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @MCS7840_UART_FCR_FLUSHTHR, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @MCS7840_UART_FCR_RTL_1_14, align 4
  %130 = or i32 %128, %129
  %131 = call i64 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %121, i64 %122, i32 %123, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %120
  br label %305

134:                                              ; preds = %120
  %135 = load i32, i32* @MCS7840_UART_LCR_DATALEN8, align 4
  %136 = load i32, i32* @MCS7840_UART_LCR_STOPB1, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %139 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %138, i32 0, i32 1
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = load i64, i64* %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i32 %137, i32* %143, align 4
  %144 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %145 = load i64, i64* %4, align 8
  %146 = load i32, i32* @MCS7840_UART_REG_LCR, align 4
  %147 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %148 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %147, i32 0, i32 1
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = load i64, i64* %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %144, i64 %145, i32 %146, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %134
  br label %305

157:                                              ; preds = %134
  %158 = load i32, i32* @MCS7840_UART_MCR_IE, align 4
  %159 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %160 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %159, i32 0, i32 1
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = load i64, i64* %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  store i32 %158, i32* %164, align 4
  %165 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %166 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %165, i32 0, i32 1
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = icmp eq %struct.TYPE_6__* %167, null
  br i1 %168, label %179, label %169

169:                                              ; preds = %157
  %170 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %171 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %170, i32 0, i32 1
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @CNO_RTSDTR, align 4
  %177 = and i32 %175, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %191

179:                                              ; preds = %169, %157
  %180 = load i32, i32* @MCS7840_UART_MCR_DTR, align 4
  %181 = load i32, i32* @MCS7840_UART_MCR_RTS, align 4
  %182 = or i32 %180, %181
  %183 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %184 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %183, i32 0, i32 1
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = load i64, i64* %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %182
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %179, %169
  %192 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %193 = load i64, i64* %4, align 8
  %194 = load i32, i32* @MCS7840_UART_REG_MCR, align 4
  %195 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %196 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %195, i32 0, i32 1
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = load i64, i64* %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %192, i64 %193, i32 %194, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %191
  br label %305

205:                                              ; preds = %191
  %206 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** @umcs7840_port_registers, align 8
  %208 = load i64, i64* %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @umcs7840_get_reg_sync(%struct.umcs7840_softc* %206, i32 %211, i32* %5)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %205
  br label %305

215:                                              ; preds = %205
  %216 = load i32, i32* @MCS7840_DEV_SPx_RESET_OUT_FIFO, align 4
  %217 = load i32, i32* @MCS7840_DEV_SPx_RESET_IN_FIFO, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* %5, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %5, align 4
  %221 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** @umcs7840_port_registers, align 8
  %223 = load i64, i64* %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %5, align 4
  %228 = call i64 @umcs7840_set_reg_sync(%struct.umcs7840_softc* %221, i32 %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %215
  br label %305

231:                                              ; preds = %215
  %232 = load i32, i32* @MCS7840_DEV_SPx_RESET_OUT_FIFO, align 4
  %233 = load i32, i32* @MCS7840_DEV_SPx_RESET_IN_FIFO, align 4
  %234 = or i32 %232, %233
  %235 = xor i32 %234, -1
  %236 = load i32, i32* %5, align 4
  %237 = and i32 %236, %235
  store i32 %237, i32* %5, align 4
  %238 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** @umcs7840_port_registers, align 8
  %240 = load i64, i64* %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %5, align 4
  %245 = call i64 @umcs7840_set_reg_sync(%struct.umcs7840_softc* %238, i32 %243, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %231
  br label %305

248:                                              ; preds = %231
  %249 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %250 = load i64, i64* %4, align 8
  %251 = call i64 @umcs7840_set_baudrate(%struct.umcs7840_softc* %249, i64 %250, i32 9600)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  br label %305

254:                                              ; preds = %248
  %255 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %256 = load i64, i64* %4, align 8
  %257 = load i32, i32* @MCS7840_UART_REG_LCR, align 4
  %258 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %259 = getelementptr inbounds %struct.umcs7840_softc, %struct.umcs7840_softc* %258, i32 0, i32 1
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %259, align 8
  %261 = load i64, i64* %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = call i64 @umcs7840_get_UART_reg_sync(%struct.umcs7840_softc* %255, i64 %256, i32 %257, i32* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %254
  br label %305

267:                                              ; preds = %254
  %268 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %269 = load i64, i64* %4, align 8
  %270 = load i32, i32* @MCS7840_UART_REG_IER, align 4
  %271 = load i32, i32* @MCS7840_UART_IER_RXSTAT, align 4
  %272 = load i32, i32* @MCS7840_UART_IER_MODEM, align 4
  %273 = or i32 %271, %272
  %274 = call i64 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %268, i64 %269, i32 %270, i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %267
  br label %305

277:                                              ; preds = %267
  %278 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** @umcs7840_port_registers, align 8
  %280 = load i64, i64* %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i64 @umcs7840_get_reg_sync(%struct.umcs7840_softc* %278, i32 %283, i32* %5)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %277
  br label %305

287:                                              ; preds = %277
  %288 = load i32, i32* @MCS7840_DEV_CONTROLx_RX_DISABLE, align 4
  %289 = xor i32 %288, -1
  %290 = load i32, i32* %5, align 4
  %291 = and i32 %290, %289
  store i32 %291, i32* %5, align 4
  %292 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** @umcs7840_port_registers, align 8
  %294 = load i64, i64* %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %5, align 4
  %299 = call i64 @umcs7840_set_reg_sync(%struct.umcs7840_softc* %292, i32 %297, i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %287
  br label %305

302:                                              ; preds = %287
  %303 = load i64, i64* %4, align 8
  %304 = call i32 @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %303)
  br label %305

305:                                              ; preds = %302, %301, %286, %276, %266, %253, %247, %230, %214, %204, %156, %133, %119, %112, %105, %91, %81, %73, %58, %44, %31, %21
  ret void
}

declare dso_local i64 @umcs7840_get_reg_sync(%struct.umcs7840_softc*, i32, i32*) #1

declare dso_local i64 @umcs7840_set_reg_sync(%struct.umcs7840_softc*, i32, i32) #1

declare dso_local i64 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc*, i64, i32, i32) #1

declare dso_local i64 @umcs7840_set_baudrate(%struct.umcs7840_softc*, i64, i32) #1

declare dso_local i64 @umcs7840_get_UART_reg_sync(%struct.umcs7840_softc*, i64, i32, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
