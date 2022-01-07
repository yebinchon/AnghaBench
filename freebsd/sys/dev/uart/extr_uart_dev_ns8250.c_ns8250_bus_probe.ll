; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32, i32, i32, i32*, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.ns8250_softc = type { i32 }

@MCR_IE = common dso_local global i32 0, align 4
@UART_PARITY_NONE = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@UART_DRAIN_TRANSMITTER = common dso_local global i32 0, align 4
@REG_MCR = common dso_local global i32 0, align 4
@MCR_LOOPBACK = common dso_local global i32 0, align 4
@FCR_ENABLE = common dso_local global i32 0, align 4
@REG_FCR = common dso_local global i32 0, align 4
@REG_IIR = common dso_local global i32 0, align 4
@IIR_FIFO_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"8250 or 16450 or compatible\00", align 1
@FCR_XMT_RST = common dso_local global i32 0, align 4
@FCR_RCV_RST = common dso_local global i32 0, align 4
@UART_DRAIN_RECEIVER = common dso_local global i32 0, align 4
@REG_DATA = common dso_local global i32 0, align 4
@REG_LSR = common dso_local global i32 0, align 4
@LSR_TEMT = common dso_local global i32 0, align 4
@REG_IER = common dso_local global i32 0, align 4
@LSR_OE = common dso_local global i32 0, align 4
@UART_FLUSH_RECEIVER = common dso_local global i32 0, align 4
@UART_FLUSH_TRANSMITTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"16550 or compatible\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"16650 or compatible\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"16750 or compatible\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"16950 or compatible\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"16x50 with 256 byte FIFO\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Non-standard ns8250 class UART with FIFOs\00", align 1
@FCR_UART_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns8250_bus_probe(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca %struct.ns8250_softc*, align 8
  %5 = alloca %struct.uart_bas*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %14 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %15 = bitcast %struct.uart_softc* %14 to %struct.ns8250_softc*
  store %struct.ns8250_softc* %15, %struct.ns8250_softc** %4, align 8
  %16 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %17 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %16, i32 0, i32 6
  store %struct.uart_bas* %17, %struct.uart_bas** %5, align 8
  %18 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %19 = call i32 @ns8250_probe(%struct.uart_bas* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %2, align 4
  br label %275

24:                                               ; preds = %1
  %25 = load i32, i32* @MCR_IE, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %27 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %32 = load i32, i32* @UART_PARITY_NONE, align 4
  %33 = call i32 @ns8250_init(%struct.uart_bas* %31, i32 115200, i32 8, i32 1, i32 %32)
  br label %40

34:                                               ; preds = %24
  %35 = load i32, i32* @MCR_DTR, align 4
  %36 = load i32, i32* @MCR_RTS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %34, %30
  %41 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %42 = load i32, i32* @UART_DRAIN_TRANSMITTER, align 4
  %43 = call i32 @ns8250_drain(%struct.uart_bas* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %2, align 4
  br label %275

48:                                               ; preds = %40
  %49 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %50 = load i32, i32* @REG_MCR, align 4
  %51 = load i32, i32* @MCR_LOOPBACK, align 4
  %52 = load i32, i32* @MCR_IE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @MCR_DTR, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @MCR_RTS, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @uart_setreg(%struct.uart_bas* %49, i32 %50, i32 %57)
  %59 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %60 = call i32 @uart_barrier(%struct.uart_bas* %59)
  %61 = load i32, i32* @FCR_ENABLE, align 4
  store i32 %61, i32* %13, align 4
  %62 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %63 = load i32, i32* @REG_FCR, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @uart_setreg(%struct.uart_bas* %62, i32 %63, i32 %64)
  %66 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %67 = call i32 @uart_barrier(%struct.uart_bas* %66)
  %68 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %69 = load i32, i32* @REG_IIR, align 4
  %70 = call i32 @uart_getreg(%struct.uart_bas* %68, i32 %69)
  %71 = load i32, i32* @IIR_FIFO_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %48
  %75 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %76 = load i32, i32* @REG_MCR, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @uart_setreg(%struct.uart_bas* %75, i32 %76, i32 %77)
  %79 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %80 = call i32 @uart_barrier(%struct.uart_bas* %79)
  %81 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %82 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %84 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %86 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @device_set_desc(i32 %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %275

89:                                               ; preds = %48
  %90 = load i32, i32* @FCR_ENABLE, align 4
  %91 = load i32, i32* @FCR_XMT_RST, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @FCR_RCV_RST, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %13, align 4
  %95 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %96 = load i32, i32* @REG_FCR, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @uart_setreg(%struct.uart_bas* %95, i32 %96, i32 %97)
  %99 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %100 = call i32 @uart_barrier(%struct.uart_bas* %99)
  store i32 0, i32* %6, align 4
  %101 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %102 = call i32 @ns8250_delay(%struct.uart_bas* %101)
  store i32 %102, i32* %7, align 4
  %103 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %104 = load i32, i32* @UART_DRAIN_RECEIVER, align 4
  %105 = load i32, i32* @UART_DRAIN_TRANSMITTER, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @ns8250_drain(%struct.uart_bas* %103, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %89
  %111 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %112 = load i32, i32* @REG_MCR, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @uart_setreg(%struct.uart_bas* %111, i32 %112, i32 %113)
  store i32 0, i32* %13, align 4
  %115 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %116 = load i32, i32* @REG_FCR, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @uart_setreg(%struct.uart_bas* %115, i32 %116, i32 %117)
  %119 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %120 = call i32 @uart_barrier(%struct.uart_bas* %119)
  br label %196

121:                                              ; preds = %89
  br label %122

122:                                              ; preds = %182, %121
  %123 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %124 = load i32, i32* @REG_DATA, align 4
  %125 = call i32 @uart_setreg(%struct.uart_bas* %123, i32 %124, i32 0)
  %126 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %127 = call i32 @uart_barrier(%struct.uart_bas* %126)
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  store i32 30, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %130

130:                                              ; preds = %145, %122
  %131 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %132 = load i32, i32* @REG_LSR, align 4
  %133 = call i32 @uart_getreg(%struct.uart_bas* %131, i32 %132)
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* @LSR_TEMT, align 4
  %137 = and i32 %135, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br label %143

143:                                              ; preds = %139, %130
  %144 = phi i1 [ false, %130 ], [ %142, %139 ]
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @DELAY(i32 %146)
  br label %130

148:                                              ; preds = %143
  %149 = load i32, i32* %9, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %148
  %152 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %153 = load i32, i32* @REG_IER, align 4
  %154 = call i32 @uart_getreg(%struct.uart_bas* %152, i32 %153)
  %155 = load %struct.ns8250_softc*, %struct.ns8250_softc** %4, align 8
  %156 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %154, %157
  store i32 %158, i32* %12, align 4
  %159 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %160 = load i32, i32* @REG_IER, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @uart_setreg(%struct.uart_bas* %159, i32 %160, i32 %161)
  %163 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %164 = load i32, i32* @REG_MCR, align 4
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @uart_setreg(%struct.uart_bas* %163, i32 %164, i32 %165)
  store i32 0, i32* %13, align 4
  %167 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %168 = load i32, i32* @REG_FCR, align 4
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @uart_setreg(%struct.uart_bas* %167, i32 %168, i32 %169)
  %171 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %172 = call i32 @uart_barrier(%struct.uart_bas* %171)
  store i32 0, i32* %6, align 4
  br label %196

173:                                              ; preds = %148
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @LSR_OE, align 4
  %177 = and i32 %175, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* %6, align 4
  %181 = icmp slt i32 %180, 260
  br label %182

182:                                              ; preds = %179, %174
  %183 = phi i1 [ false, %174 ], [ %181, %179 ]
  br i1 %183, label %122, label %184

184:                                              ; preds = %182
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %6, align 4
  %187 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %188 = load i32, i32* @REG_MCR, align 4
  %189 = load i32, i32* %11, align 4
  %190 = call i32 @uart_setreg(%struct.uart_bas* %187, i32 %188, i32 %189)
  %191 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %192 = load i32, i32* @UART_FLUSH_RECEIVER, align 4
  %193 = load i32, i32* @UART_FLUSH_TRANSMITTER, align 4
  %194 = or i32 %192, %193
  %195 = call i32 @ns8250_flush(%struct.uart_bas* %191, i32 %194)
  br label %196

196:                                              ; preds = %184, %151, %110
  %197 = load i32, i32* %6, align 4
  %198 = icmp sge i32 %197, 14
  br i1 %198, label %199, label %209

199:                                              ; preds = %196
  %200 = load i32, i32* %6, align 4
  %201 = icmp sle i32 %200, 16
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %204 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %203, i32 0, i32 0
  store i32 16, i32* %204, align 8
  %205 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %206 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @device_set_desc(i32 %207, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %272

209:                                              ; preds = %199, %196
  %210 = load i32, i32* %6, align 4
  %211 = icmp sge i32 %210, 28
  br i1 %211, label %212, label %222

212:                                              ; preds = %209
  %213 = load i32, i32* %6, align 4
  %214 = icmp sle i32 %213, 32
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %217 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %216, i32 0, i32 0
  store i32 32, i32* %217, align 8
  %218 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %219 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @device_set_desc(i32 %220, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %271

222:                                              ; preds = %212, %209
  %223 = load i32, i32* %6, align 4
  %224 = icmp sge i32 %223, 56
  br i1 %224, label %225, label %235

225:                                              ; preds = %222
  %226 = load i32, i32* %6, align 4
  %227 = icmp sle i32 %226, 64
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %230 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %229, i32 0, i32 0
  store i32 64, i32* %230, align 8
  %231 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %232 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @device_set_desc(i32 %233, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %270

235:                                              ; preds = %225, %222
  %236 = load i32, i32* %6, align 4
  %237 = icmp sge i32 %236, 112
  br i1 %237, label %238, label %248

238:                                              ; preds = %235
  %239 = load i32, i32* %6, align 4
  %240 = icmp sle i32 %239, 128
  br i1 %240, label %241, label %248

241:                                              ; preds = %238
  %242 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %243 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %242, i32 0, i32 0
  store i32 128, i32* %243, align 8
  %244 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %245 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @device_set_desc(i32 %246, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %269

248:                                              ; preds = %238, %235
  %249 = load i32, i32* %6, align 4
  %250 = icmp sge i32 %249, 224
  br i1 %250, label %251, label %261

251:                                              ; preds = %248
  %252 = load i32, i32* %6, align 4
  %253 = icmp sle i32 %252, 256
  br i1 %253, label %254, label %261

254:                                              ; preds = %251
  %255 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %256 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %255, i32 0, i32 0
  store i32 256, i32* %256, align 8
  %257 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %258 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @device_set_desc(i32 %259, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %268

261:                                              ; preds = %251, %248
  %262 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %263 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %262, i32 0, i32 0
  store i32 16, i32* %263, align 8
  %264 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %265 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @device_set_desc(i32 %266, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %268

268:                                              ; preds = %261, %254
  br label %269

269:                                              ; preds = %268, %241
  br label %270

270:                                              ; preds = %269, %228
  br label %271

271:                                              ; preds = %270, %215
  br label %272

272:                                              ; preds = %271, %202
  %273 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %274 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %273, i32 0, i32 1
  store i32 16, i32* %274, align 4
  store i32 0, i32* %2, align 4
  br label %275

275:                                              ; preds = %272, %74, %46, %22
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local i32 @ns8250_probe(%struct.uart_bas*) #1

declare dso_local i32 @ns8250_init(%struct.uart_bas*, i32, i32, i32, i32) #1

declare dso_local i32 @ns8250_drain(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @ns8250_delay(%struct.uart_bas*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ns8250_flush(%struct.uart_bas*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
