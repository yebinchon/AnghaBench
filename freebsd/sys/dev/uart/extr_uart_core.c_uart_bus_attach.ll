; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32, i32, i8*, i8*, i32*, %struct.TYPE_7__*, i32, i64, i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i32 (%struct.uart_softc*)*, i32*, %struct.uart_softc* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@M_UART = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"uart_hwmtx\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%sRTS iflow\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%sCTS oflow\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UART_IOCTL_BAUD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"debug port\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"keyboard\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"unknown system device\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c" (%d,%c,%d,%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"noems\00", align 1
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@uart_force_poll = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"could not activate interrupt\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@uart_poll_freq = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c"%sfast interrupt\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"%spolled mode (%dHz)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_bus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca %struct.uart_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.uart_softc* @device_get_softc(i32 %9)
  store %struct.uart_softc* %10, %struct.uart_softc** %5, align 8
  %11 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 22
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.TYPE_8__* @device_get_driver(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %15, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %1
  %22 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %23 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %22, i32 0, i32 22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @M_UART, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @malloc(i32 %27, i32 %28, i32 %31)
  %33 = bitcast i8* %32 to %struct.uart_softc*
  store %struct.uart_softc* %33, %struct.uart_softc** %4, align 8
  %34 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %35 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %36 = call i32 @bcopy(%struct.uart_softc* %34, %struct.uart_softc* %35, i32 136)
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %39 = call i32 @device_set_softc(i32 %37, %struct.uart_softc* %38)
  br label %42

40:                                               ; preds = %1
  %41 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  store %struct.uart_softc* %41, %struct.uart_softc** %4, align 8
  br label %42

42:                                               ; preds = %40, %21
  %43 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %44 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %43, i32 0, i32 17
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %49 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %50 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %49, i32 0, i32 17
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 7
  store %struct.uart_softc* %48, %struct.uart_softc** %52, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %55 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %57 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %56, i32 0, i32 7
  %58 = load i32, i32* @MTX_SPIN, align 4
  %59 = call i32 @mtx_init(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 %58)
  %60 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %61 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %60, i32 0, i32 16
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %66 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %65, i32 0, i32 7
  %67 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %68 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %67, i32 0, i32 16
  store i32* %66, i32** %68, align 8
  br label %69

69:                                               ; preds = %64, %53
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %72 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %75 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %74, i32 0, i32 9
  %76 = load i32, i32* @RF_ACTIVE, align 4
  %77 = call i8* @bus_alloc_resource_any(i32 %70, i32 %73, i32* %75, i32 %76)
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %80 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %79, i32 0, i32 8
  store i32* %78, i32** %80, align 8
  %81 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %82 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %81, i32 0, i32 8
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %69
  %86 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %87 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %86, i32 0, i32 7
  %88 = call i32 @mtx_destroy(i32* %87)
  %89 = load i32, i32* @ENXIO, align 4
  store i32 %89, i32* %2, align 4
  br label %468

90:                                               ; preds = %69
  %91 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %92 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %91, i32 0, i32 8
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @rman_get_bushandle(i32* %93)
  %95 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %96 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %95, i32 0, i32 21
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %99 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %98, i32 0, i32 8
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @rman_get_bustag(i32* %100)
  %102 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %103 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %102, i32 0, i32 21
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %106 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %107, 3
  %109 = call i32 @MAX(i32 384, i32 %108)
  %110 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %111 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %113 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 1
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* @M_UART, align 4
  %119 = load i32, i32* @M_WAITOK, align 4
  %120 = call i8* @malloc(i32 %117, i32 %118, i32 %119)
  %121 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %122 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %121, i32 0, i32 14
  store i8* %120, i8** %122, align 8
  %123 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %124 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 1
  %128 = trunc i64 %127 to i32
  %129 = load i32, i32* @M_UART, align 4
  %130 = load i32, i32* @M_WAITOK, align 4
  %131 = call i8* @malloc(i32 %128, i32 %129, i32 %130)
  %132 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %133 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %132, i32 0, i32 15
  store i8* %131, i8** %133, align 8
  %134 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %135 = call i32 @UART_ATTACH(%struct.uart_softc* %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %90
  br label %419

139:                                              ; preds = %90
  %140 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %141 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %140, i32 0, i32 20
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %146 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %145, i32 0, i32 19
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %169

149:                                              ; preds = %144, %139
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @device_print_prettyname(i32 %150)
  %152 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %153 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %152, i32 0, i32 20
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %157)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %159

159:                                              ; preds = %156, %149
  %160 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %161 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %160, i32 0, i32 19
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i8*, i8** %6, align 8
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %165)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %167

167:                                              ; preds = %164, %159
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %144
  %170 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %171 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %170, i32 0, i32 17
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = icmp ne %struct.TYPE_7__* %172, null
  br i1 %173, label %174, label %240

174:                                              ; preds = %169
  %175 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %176 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %175, i32 0, i32 17
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %197

181:                                              ; preds = %174
  %182 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %183 = load i32, i32* @UART_IOCTL_BAUD, align 4
  %184 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %185 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %184, i32 0, i32 17
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = ptrtoint i32* %187 to i64
  %189 = call i64 @UART_IOCTL(%struct.uart_softc* %182, i32 %183, i64 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %181
  %192 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %193 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %192, i32 0, i32 17
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  store i32 -1, i32* %195, align 8
  br label %196

196:                                              ; preds = %191, %181
  br label %197

197:                                              ; preds = %196, %174
  %198 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %199 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %198, i32 0, i32 17
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  switch i32 %202, label %212 [
    i32 130, label %203
    i32 129, label %206
    i32 128, label %209
  ]

203:                                              ; preds = %197
  %204 = load i32, i32* %3, align 4
  %205 = call i32 @device_printf(i32 %204, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %215

206:                                              ; preds = %197
  %207 = load i32, i32* %3, align 4
  %208 = call i32 @device_printf(i32 %207, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %215

209:                                              ; preds = %197
  %210 = load i32, i32* %3, align 4
  %211 = call i32 @device_printf(i32 %210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %215

212:                                              ; preds = %197
  %213 = load i32, i32* %3, align 4
  %214 = call i32 @device_printf(i32 %213, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %209, %206, %203
  %216 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %217 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %216, i32 0, i32 17
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %222 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %221, i32 0, i32 17
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds [6 x i8], [6 x i8]* @.str.11, i64 0, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %230 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %229, i32 0, i32 17
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %235 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %234, i32 0, i32 17
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %220, i32 %228, i32 %233, i32 %238)
  br label %240

240:                                              ; preds = %215, %169
  %241 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %242 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %241, i32 0, i32 0
  store i32 0, i32* %242, align 8
  %243 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %244 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %243, i32 0, i32 4
  store i32 1, i32* %244, align 8
  %245 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %246 = call i32 @uart_intr(%struct.uart_softc* %245)
  store i32 %246, i32* %8, align 4
  %247 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %248 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %247, i32 0, i32 4
  store i32 0, i32* %248, align 8
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %267

252:                                              ; preds = %240
  %253 = load i32, i32* @uart_force_poll, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %267, label %255

255:                                              ; preds = %252
  %256 = load i32, i32* %3, align 4
  %257 = load i32, i32* @SYS_RES_IRQ, align 4
  %258 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %259 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %258, i32 0, i32 12
  %260 = load i32, i32* @RF_ACTIVE, align 4
  %261 = load i32, i32* @RF_SHAREABLE, align 4
  %262 = or i32 %260, %261
  %263 = call i8* @bus_alloc_resource_any(i32 %256, i32 %257, i32* %259, i32 %262)
  %264 = bitcast i8* %263 to i32*
  %265 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %266 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %265, i32 0, i32 11
  store i32* %264, i32** %266, align 8
  br label %267

267:                                              ; preds = %255, %252, %240
  %268 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %269 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %268, i32 0, i32 11
  %270 = load i32*, i32** %269, align 8
  %271 = icmp ne i32* %270, null
  br i1 %271, label %272, label %322

272:                                              ; preds = %267
  %273 = load i32, i32* %3, align 4
  %274 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %275 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %274, i32 0, i32 11
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* @INTR_TYPE_TTY, align 4
  %278 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %279 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %280 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %279, i32 0, i32 13
  %281 = call i32 @bus_setup_intr(i32 %273, i32* %276, i32 %277, i32 (%struct.uart_softc*)* @uart_intr, i32* null, %struct.uart_softc* %278, i32* %280)
  store i32 %281, i32* %7, align 4
  %282 = load i32, i32* %7, align 4
  %283 = icmp eq i32 %282, 0
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i32 1, i32 0
  %286 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %287 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %286, i32 0, i32 5
  store i32 %285, i32* %287, align 4
  %288 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %289 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %304, label %292

292:                                              ; preds = %272
  %293 = load i32, i32* %3, align 4
  %294 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %295 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %294, i32 0, i32 11
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* @INTR_TYPE_TTY, align 4
  %298 = load i32, i32* @INTR_MPSAFE, align 4
  %299 = or i32 %297, %298
  %300 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %301 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %302 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %301, i32 0, i32 13
  %303 = call i32 @bus_setup_intr(i32 %293, i32* %296, i32 %299, i32 (%struct.uart_softc*)* null, i32* bitcast (i32 (%struct.uart_softc*)* @uart_intr to i32*), %struct.uart_softc* %300, i32* %302)
  store i32 %303, i32* %7, align 4
  br label %304

304:                                              ; preds = %292, %272
  %305 = load i32, i32* %7, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %321

307:                                              ; preds = %304
  %308 = load i32, i32* %3, align 4
  %309 = call i32 @device_printf(i32 %308, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %310 = load i32, i32* %3, align 4
  %311 = load i32, i32* @SYS_RES_IRQ, align 4
  %312 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %313 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %312, i32 0, i32 12
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %316 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %315, i32 0, i32 11
  %317 = load i32*, i32** %316, align 8
  %318 = call i32 @bus_release_resource(i32 %310, i32 %311, i32 %314, i32* %317)
  %319 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %320 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %319, i32 0, i32 11
  store i32* null, i32** %320, align 8
  br label %321

321:                                              ; preds = %307, %304
  br label %322

322:                                              ; preds = %321, %267
  %323 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %324 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %323, i32 0, i32 11
  %325 = load i32*, i32** %324, align 8
  %326 = icmp eq i32* %325, null
  br i1 %326, label %327, label %340

327:                                              ; preds = %322
  %328 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %329 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %328, i32 0, i32 6
  store i32 1, i32* %329, align 8
  %330 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %331 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %330, i32 0, i32 18
  %332 = call i32 @callout_init(i32* %331, i32 1)
  %333 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %334 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %333, i32 0, i32 18
  %335 = load i32, i32* @hz, align 4
  %336 = load i32, i32* @uart_poll_freq, align 4
  %337 = sdiv i32 %335, %336
  %338 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %339 = call i32 @callout_reset(i32* %334, i32 %337, i32* bitcast (i32 (%struct.uart_softc*)* @uart_intr to i32*), %struct.uart_softc* %338)
  br label %340

340:                                              ; preds = %327, %322
  %341 = load i64, i64* @bootverbose, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %374

343:                                              ; preds = %340
  %344 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %345 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %344, i32 0, i32 5
  %346 = load i32, i32* %345, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %353, label %348

348:                                              ; preds = %343
  %349 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %350 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %349, i32 0, i32 6
  %351 = load i32, i32* %350, align 8
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %374

353:                                              ; preds = %348, %343
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %354 = load i32, i32* %3, align 4
  %355 = call i32 @device_print_prettyname(i32 %354)
  %356 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %357 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %356, i32 0, i32 5
  %358 = load i32, i32* %357, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %353
  %361 = load i8*, i8** %6, align 8
  %362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %361)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %363

363:                                              ; preds = %360, %353
  %364 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %365 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %364, i32 0, i32 6
  %366 = load i32, i32* %365, align 8
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %363
  %369 = load i8*, i8** %6, align 8
  %370 = load i32, i32* @uart_poll_freq, align 4
  %371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %369, i32 %370)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %372

372:                                              ; preds = %368, %363
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %374

374:                                              ; preds = %372, %348, %340
  %375 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %376 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %375, i32 0, i32 17
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %376, align 8
  %378 = icmp ne %struct.TYPE_7__* %377, null
  br i1 %378, label %379, label %397

379:                                              ; preds = %374
  %380 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %381 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %380, i32 0, i32 17
  %382 = load %struct.TYPE_7__*, %struct.TYPE_7__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 5
  %384 = load i32 (%struct.uart_softc*)*, i32 (%struct.uart_softc*)** %383, align 8
  %385 = icmp ne i32 (%struct.uart_softc*)* %384, null
  br i1 %385, label %386, label %397

386:                                              ; preds = %379
  %387 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %388 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %387, i32 0, i32 17
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 5
  %391 = load i32 (%struct.uart_softc*)*, i32 (%struct.uart_softc*)** %390, align 8
  %392 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %393 = call i32 %391(%struct.uart_softc* %392)
  store i32 %393, i32* %7, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %386
  br label %419

396:                                              ; preds = %386
  br label %405

397:                                              ; preds = %379, %374
  %398 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %399 = call i32 @uart_tty_attach(%struct.uart_softc* %398)
  store i32 %399, i32* %7, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %397
  br label %419

402:                                              ; preds = %397
  %403 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %404 = call i32 @uart_pps_init(%struct.uart_softc* %403)
  br label %405

405:                                              ; preds = %402, %396
  %406 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %407 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %406, i32 0, i32 17
  %408 = load %struct.TYPE_7__*, %struct.TYPE_7__** %407, align 8
  %409 = icmp ne %struct.TYPE_7__* %408, null
  br i1 %409, label %410, label %418

410:                                              ; preds = %405
  %411 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %412 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %411, i32 0, i32 16
  %413 = load i32*, i32** %412, align 8
  %414 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %415 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %414, i32 0, i32 17
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 6
  store i32* %413, i32** %417, align 8
  br label %418

418:                                              ; preds = %410, %405
  store i32 0, i32* %2, align 4
  br label %468

419:                                              ; preds = %401, %395, %138
  %420 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %421 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %420, i32 0, i32 15
  %422 = load i8*, i8** %421, align 8
  %423 = load i32, i32* @M_UART, align 4
  %424 = call i32 @free(i8* %422, i32 %423)
  %425 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %426 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %425, i32 0, i32 14
  %427 = load i8*, i8** %426, align 8
  %428 = load i32, i32* @M_UART, align 4
  %429 = call i32 @free(i8* %427, i32 %428)
  %430 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %431 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %430, i32 0, i32 11
  %432 = load i32*, i32** %431, align 8
  %433 = icmp ne i32* %432, null
  br i1 %433, label %434, label %452

434:                                              ; preds = %419
  %435 = load i32, i32* %3, align 4
  %436 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %437 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %436, i32 0, i32 11
  %438 = load i32*, i32** %437, align 8
  %439 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %440 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %439, i32 0, i32 13
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @bus_teardown_intr(i32 %435, i32* %438, i32 %441)
  %443 = load i32, i32* %3, align 4
  %444 = load i32, i32* @SYS_RES_IRQ, align 4
  %445 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %446 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %445, i32 0, i32 12
  %447 = load i32, i32* %446, align 8
  %448 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %449 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %448, i32 0, i32 11
  %450 = load i32*, i32** %449, align 8
  %451 = call i32 @bus_release_resource(i32 %443, i32 %444, i32 %447, i32* %450)
  br label %452

452:                                              ; preds = %434, %419
  %453 = load i32, i32* %3, align 4
  %454 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %455 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %454, i32 0, i32 10
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %458 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %457, i32 0, i32 9
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %461 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %460, i32 0, i32 8
  %462 = load i32*, i32** %461, align 8
  %463 = call i32 @bus_release_resource(i32 %453, i32 %456, i32 %459, i32* %462)
  %464 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %465 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %464, i32 0, i32 7
  %466 = call i32 @mtx_destroy(i32* %465)
  %467 = load i32, i32* %7, align 4
  store i32 %467, i32* %2, align 4
  br label %468

468:                                              ; preds = %452, %418, %85
  %469 = load i32, i32* %2, align 4
  ret i32 %469
}

declare dso_local %struct.uart_softc* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_8__* @device_get_driver(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.uart_softc*, %struct.uart_softc*, i32) #1

declare dso_local i32 @device_set_softc(i32, %struct.uart_softc*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @UART_ATTACH(%struct.uart_softc*) #1

declare dso_local i32 @device_print_prettyname(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @UART_IOCTL(%struct.uart_softc*, i32, i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @uart_intr(%struct.uart_softc*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32 (%struct.uart_softc*)*, i32*, %struct.uart_softc*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32*, %struct.uart_softc*) #1

declare dso_local i32 @uart_tty_attach(%struct.uart_softc*) #1

declare dso_local i32 @uart_pps_init(%struct.uart_softc*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
