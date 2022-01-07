; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiospi.c_gpio_spi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiospi.c_gpio_spi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_spi_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mosi\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"miso\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cs0\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"cs1\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"cs2\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"cs3\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"frequency: %d Hz\0A\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"Use GPIO pins: sclk=%d, mosi=%d, miso=%d, cs0=%d, cs1=%d, cs2=%d, cs3=%d\0A\00", align 1
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_PULLUP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"spibus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpio_spi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_spi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_spi_softc*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.gpio_spi_softc* @device_get_softc(i32 %6)
  store %struct.gpio_spi_softc* %7, %struct.gpio_spi_softc** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %10 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  %13 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %14 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_get_name(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_unit(i32 %17)
  %19 = call i64 @resource_int_value(i32 %16, i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %266

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 255
  %26 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %27 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_get_name(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_get_unit(i32 %30)
  %32 = call i64 @resource_int_value(i32 %29, i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %266

36:                                               ; preds = %23
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 255
  %39 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %40 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_get_name(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_get_unit(i32 %43)
  %45 = call i64 @resource_int_value(i32 %42, i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i32 255, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 255
  %51 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %52 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @device_get_name(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @device_get_unit(i32 %55)
  %57 = call i64 @resource_int_value(i32 %54, i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %4)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* @ENXIO, align 4
  store i32 %60, i32* %2, align 4
  br label %266

61:                                               ; preds = %48
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, 255
  %64 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %65 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @device_get_name(i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @device_get_unit(i32 %68)
  %70 = call i64 @resource_int_value(i32 %67, i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %4)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  store i32 255, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %61
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 255
  %76 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %77 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @device_get_name(i32 %78)
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @device_get_unit(i32 %80)
  %82 = call i64 @resource_int_value(i32 %79, i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %4)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  store i32 255, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %73
  %86 = load i32, i32* %4, align 4
  %87 = and i32 %86, 255
  %88 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %89 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @device_get_name(i32 %90)
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @device_get_unit(i32 %92)
  %94 = call i64 @resource_int_value(i32 %91, i32 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %4)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  store i32 255, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %85
  %98 = load i32, i32* %4, align 4
  %99 = and i32 %98, 255
  %100 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %101 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @device_get_name(i32 %102)
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @device_get_unit(i32 %104)
  %106 = call i64 @resource_int_value(i32 %103, i32 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %4)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  store i32 100000, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %97
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %112 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %111, i32 0, i32 7
  store i32 %110, i32* %112, align 4
  %113 = load i64, i64* @bootverbose, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %109
  %116 = load i32, i32* %3, align 4
  %117 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %118 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %3, align 4
  %122 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %123 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %126 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %129 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %132 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %135 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %138 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %141 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %121, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0), i32 %124, i32 %127, i32 %130, i32 %133, i32 %136, i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %115, %109
  %145 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %146 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %149 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %152 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %155 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @GPIOBUS_PIN_SETFLAGS(i32 %147, i32 %150, i32 %153, i32 %156)
  %158 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %159 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %158, i32 0, i32 9
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %162 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %165 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %168 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @GPIOBUS_PIN_SETFLAGS(i32 %160, i32 %163, i32 %166, i32 %169)
  %171 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %172 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 255
  br i1 %174, label %175, label %189

175:                                              ; preds = %144
  %176 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %177 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %180 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %183 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %186 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @GPIOBUS_PIN_SETFLAGS(i32 %178, i32 %181, i32 %184, i32 %187)
  br label %189

189:                                              ; preds = %175, %144
  %190 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %191 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %194 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %197 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %200 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %201 = or i32 %199, %200
  %202 = call i32 @GPIOBUS_PIN_SETFLAGS(i32 %192, i32 %195, i32 %198, i32 %201)
  %203 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %204 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 255
  br i1 %206, label %207, label %221

207:                                              ; preds = %189
  %208 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %209 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %208, i32 0, i32 9
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %212 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %211, i32 0, i32 8
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %215 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %218 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %219 = or i32 %217, %218
  %220 = call i32 @GPIOBUS_PIN_SETFLAGS(i32 %210, i32 %213, i32 %216, i32 %219)
  br label %221

221:                                              ; preds = %207, %189
  %222 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %223 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 255
  br i1 %225, label %226, label %240

226:                                              ; preds = %221
  %227 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %228 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %227, i32 0, i32 9
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %231 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %234 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %237 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %238 = or i32 %236, %237
  %239 = call i32 @GPIOBUS_PIN_SETFLAGS(i32 %229, i32 %232, i32 %235, i32 %238)
  br label %240

240:                                              ; preds = %226, %221
  %241 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %242 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 255
  br i1 %244, label %245, label %259

245:                                              ; preds = %240
  %246 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %247 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %246, i32 0, i32 9
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %250 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %249, i32 0, i32 8
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %253 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %256 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %257 = or i32 %255, %256
  %258 = call i32 @GPIOBUS_PIN_SETFLAGS(i32 %248, i32 %251, i32 %254, i32 %257)
  br label %259

259:                                              ; preds = %245, %240
  %260 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %261 = call i32 @gpio_spi_chip_deactivate(%struct.gpio_spi_softc* %260, i32 -1)
  %262 = load i32, i32* %3, align 4
  %263 = call i32 @device_add_child(i32 %262, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 -1)
  %264 = load i32, i32* %3, align 4
  %265 = call i32 @bus_generic_attach(i32 %264)
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %259, %59, %34, %21
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local %struct.gpio_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @GPIOBUS_PIN_SETFLAGS(i32, i32, i32, i32) #1

declare dso_local i32 @gpio_spi_chip_deactivate(%struct.gpio_spi_softc*, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
