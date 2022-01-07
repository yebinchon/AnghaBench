; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_gpio_v2.c_mtk_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_gpio_softc = type { i64, i64, i32*, i32*, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i8*, i32, i32 }

@mtk_gpio_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"resets\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"mtk,bank-id\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"mtk,num-pins\00", align 1
@MTK_GPIO_PINS = common dso_local global i64 0, align 8
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INVIN = common dso_local global i32 0, align 4
@GPIO_PIN_INVOUT = common dso_local global i32 0, align 4
@INTR_POLARITY_HIGH = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@GPIOMAXNAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"gpio%c%d\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"could not register PIC ISRCs\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
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
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.mtk_gpio_softc* @device_get_softc(i32 %9)
  store %struct.mtk_gpio_softc* %10, %struct.mtk_gpio_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %13 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @mtk_gpio_spec, align 4
  %16 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %17 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @bus_alloc_resources(i32 %14, i32 %15, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %220

25:                                               ; preds = %1
  %26 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %27 = call i32 @MTK_GPIO_LOCK_INIT(%struct.mtk_gpio_softc* %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ofw_bus_get_node(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @OF_hasprop(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @mtk_soc_start_clock(i32 %34)
  br label %36

36:                                               ; preds = %33, %25
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @OF_hasprop(i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @mtk_soc_reset_device(i32 %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @OF_hasprop(i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @OF_getencprop(i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64* %8, i32 8)
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %54 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %61

55:                                               ; preds = %47, %43
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @device_get_unit(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %60 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %51
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @OF_hasprop(i32 %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @OF_getencprop(i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64* %7, i32 8)
  %68 = icmp sge i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %72 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %77

73:                                               ; preds = %65, %61
  %74 = load i64, i64* @MTK_GPIO_PINS, align 8
  %75 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %76 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  store i64 0, i64* %6, align 8
  br label %78

78:                                               ; preds = %142, %77
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %81 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %79, %82
  br i1 %83, label %84, label %145

84:                                               ; preds = %78
  %85 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %86 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @GPIO_PIN_INVIN, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @GPIO_PIN_INVOUT, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %93 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %92, i32 0, i32 5
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %91
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %101 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %102 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %101, i32 0, i32 5
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  store i32 %100, i32* %106, align 4
  %107 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %108 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %109 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %108, i32 0, i32 5
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  store i32 %107, i32* %113, align 8
  %114 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %115 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %114, i32 0, i32 5
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i64, i64* %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* @GPIOMAXNAME, align 4
  %122 = sub nsw i32 %121, 1
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @device_get_unit(i32 %123)
  %125 = add nsw i32 %124, 97
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @snprintf(i8* %120, i32 %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %125, i64 %126)
  %128 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %129 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %128, i32 0, i32 5
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i64, i64* %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* @GPIOMAXNAME, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8 0, i8* %138, align 1
  %139 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @mtk_gpio_pin_probe(%struct.mtk_gpio_softc* %139, i64 %140)
  br label %142

142:                                              ; preds = %84
  %143 = load i64, i64* %6, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %6, align 8
  br label %78

145:                                              ; preds = %78
  %146 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %147 = call i64 @mtk_pic_register_isrcs(%struct.mtk_gpio_softc* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @device_printf(i32 %150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %194

152:                                              ; preds = %145
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @OF_xref_from_node(i32 %154)
  %156 = call i32* @intr_pic_register(i32 %153, i32 %155)
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @device_printf(i32 %159, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %194

161:                                              ; preds = %152
  %162 = load i32, i32* %3, align 4
  %163 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %164 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @INTR_TYPE_MISC, align 4
  %169 = load i32, i32* @INTR_MPSAFE, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @mtk_gpio_intr, align 4
  %172 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %173 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %174 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %173, i32 0, i32 3
  %175 = call i64 @bus_setup_intr(i32 %162, i32 %167, i32 %170, i32 %171, i32* null, %struct.mtk_gpio_softc* %172, i32** %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %161
  br label %189

178:                                              ; preds = %161
  %179 = load i32, i32* %3, align 4
  %180 = call i32* @gpiobus_attach_bus(i32 %179)
  %181 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %182 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %181, i32 0, i32 4
  store i32* %180, i32** %182, align 8
  %183 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %184 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = icmp eq i32* %185, null
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  br label %189

188:                                              ; preds = %178
  store i32 0, i32* %2, align 4
  br label %220

189:                                              ; preds = %187, %177
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @OF_xref_from_node(i32 %191)
  %193 = call i32 @intr_pic_deregister(i32 %190, i32 %192)
  br label %194

194:                                              ; preds = %189, %158, %149
  %195 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %196 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %210

199:                                              ; preds = %194
  %200 = load i32, i32* %3, align 4
  %201 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %202 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %207 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @bus_teardown_intr(i32 %200, i32 %205, i32* %208)
  br label %210

210:                                              ; preds = %199, %194
  %211 = load i32, i32* %3, align 4
  %212 = load i32, i32* @mtk_gpio_spec, align 4
  %213 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %214 = getelementptr inbounds %struct.mtk_gpio_softc, %struct.mtk_gpio_softc* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @bus_release_resources(i32 %211, i32 %212, i32* %215)
  %217 = load %struct.mtk_gpio_softc*, %struct.mtk_gpio_softc** %4, align 8
  %218 = call i32 @MTK_GPIO_LOCK_DESTROY(%struct.mtk_gpio_softc* %217)
  %219 = load i32, i32* @ENXIO, align 4
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %210, %188, %21
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local %struct.mtk_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @MTK_GPIO_LOCK_INIT(%struct.mtk_gpio_softc*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @mtk_soc_start_clock(i32) #1

declare dso_local i32 @mtk_soc_reset_device(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i64) #1

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
