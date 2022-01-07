; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v1.c_mtk_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_gpio_softc = type { i64, i32*, i32*, i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i8*, i32, i32 }

@mtk_gpio_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"resets\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"ralink,register-map\00", align 1
@GPIO_PIOMAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to read register map\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ralink,num-gpios\00", align 1
@MTK_GPIO_PINS = common dso_local global i64 0, align 8
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INVIN = common dso_local global i32 0, align 4
@GPIO_PIN_INVOUT = common dso_local global i32 0, align 4
@GPIO_INTR_EDGE_RISING = common dso_local global i32 0, align 4
@GPIO_INTR_EDGE_FALLING = common dso_local global i32 0, align 4
@INTR_POLARITY_HIGH = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@GPIOMAXNAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"gpio%c%d\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"could not register PIC ISRCs\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@mtk_gpio_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_gpio_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mtk_gpio_softc* @device_get_softc(i32 %8)
  store %struct.mtk_gpio_softc* %9, %struct.mtk_gpio_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @mtk_gpio_spec, align 4
  %15 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @bus_alloc_resources(i32 %13, i32 %14, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %217

24:                                               ; preds = %1
  %25 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %26 = call i32 @MTK_GPIO_LOCK_INIT(%struct.mtk_gpio_softc* %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @ofw_bus_get_node(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @OF_hasprop(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @mtk_soc_start_clock(i32 %33)
  br label %35

35:                                               ; preds = %32, %24
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @OF_hasprop(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @mtk_soc_reset_device(i32 %40)
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %45 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GPIO_PIOMAX, align 4
  %48 = call i64 @OF_getprop(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %47)
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %217

54:                                               ; preds = %42
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @OF_hasprop(i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @OF_getencprop(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i64* %7, i32 8)
  %61 = icmp sge i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %65 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %70

66:                                               ; preds = %58, %54
  %67 = load i64, i64* @MTK_GPIO_PINS, align 8
  %68 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %69 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %62
  store i64 0, i64* %6, align 8
  br label %71

71:                                               ; preds = %139, %70
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %74 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %142

77:                                               ; preds = %71
  %78 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %79 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @GPIO_PIN_INVIN, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @GPIO_PIN_INVOUT, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @GPIO_INTR_EDGE_RISING, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @GPIO_INTR_EDGE_FALLING, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %90 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %89, i32 0, i32 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %88
  store i32 %96, i32* %94, align 8
  %97 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %98 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %99 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %98, i32 0, i32 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  store i32 %97, i32* %103, align 4
  %104 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %105 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %106 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %105, i32 0, i32 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  store i32 %104, i32* %110, align 8
  %111 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %112 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %111, i32 0, i32 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load i32, i32* @GPIOMAXNAME, align 4
  %119 = sub nsw i32 %118, 1
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @device_get_unit(i32 %120)
  %122 = add nsw i32 %121, 97
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @snprintf(i8* %117, i32 %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %122, i64 %123)
  %125 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %126 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %125, i32 0, i32 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* @GPIOMAXNAME, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  store i8 0, i8* %135, align 1
  %136 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %137 = load i64, i64* %6, align 8
  %138 = call i32 @mtk_gpio_pin_probe(%struct.mtk_gpio_softc* %136, i64 %137)
  br label %139

139:                                              ; preds = %77
  %140 = load i64, i64* %6, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %6, align 8
  br label %71

142:                                              ; preds = %71
  %143 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %144 = call i64 @mtk_pic_register_isrcs(%struct.mtk_gpio_softc* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @device_printf(i32 %147, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %191

149:                                              ; preds = %142
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @OF_xref_from_node(i32 %151)
  %153 = call i32* @intr_pic_register(i32 %150, i32 %152)
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @device_printf(i32 %156, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %191

158:                                              ; preds = %149
  %159 = load i32, i32* %3, align 4
  %160 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %161 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @INTR_TYPE_MISC, align 4
  %166 = load i32, i32* @INTR_MPSAFE, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @mtk_gpio_intr, align 4
  %169 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %170 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %171 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %170, i32 0, i32 2
  %172 = call i64 @bus_setup_intr(i32 %159, i32 %164, i32 %167, i32 %168, i32* null, %struct.mtk_gpio_softc* %169, i32** %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %158
  br label %186

175:                                              ; preds = %158
  %176 = load i32, i32* %3, align 4
  %177 = call i32* @gpiobus_attach_bus(i32 %176)
  %178 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %179 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %178, i32 0, i32 3
  store i32* %177, i32** %179, align 8
  %180 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %181 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = icmp eq i32* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %175
  br label %186

185:                                              ; preds = %175
  store i32 0, i32* %2, align 4
  br label %217

186:                                              ; preds = %184, %174
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @OF_xref_from_node(i32 %188)
  %190 = call i32 @intr_pic_deregister(i32 %187, i32 %189)
  br label %191

191:                                              ; preds = %186, %155, %146
  %192 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %193 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %207

196:                                              ; preds = %191
  %197 = load i32, i32* %3, align 4
  %198 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %199 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %204 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @bus_teardown_intr(i32 %197, i32 %202, i32* %205)
  br label %207

207:                                              ; preds = %196, %191
  %208 = load i32, i32* %3, align 4
  %209 = load i32, i32* @mtk_gpio_spec, align 4
  %210 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %211 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @bus_release_resources(i32 %208, i32 %209, i32* %212)
  %214 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %215 = call i32 @MTK_GPIO_LOCK_DESTROY(%struct.mtk_gpio_softc* %214)
  %216 = load i32, i32* @ENXIO, align 4
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %207, %185, %50, %20
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local %struct.mtk_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @MTK_GPIO_LOCK_INIT(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @mtk_soc_start_clock(i32) #1

declare dso_local i32 @mtk_soc_reset_device(i32) #1

declare dso_local i64 @OF_getprop(i32, i8*, i32, i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i64) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @mtk_gpio_pin_probe(%struct.mtk_gpio_softc*, i64) #1

declare dso_local i64 @mtk_pic_register_isrcs(%struct.mtk_gpio_softc*) #1

declare dso_local i32* @intr_pic_register(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.mtk_gpio_softc*, i32**) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @intr_pic_deregister(i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @MTK_GPIO_LOCK_DESTROY(%struct.mtk_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
