; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_gpio.c_jz4780_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_gpio_softc = type { i32*, i32*, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i8*, i32, i32 }

@jz4780_gpio_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ingenic,pull-ups\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"ingenic,pull-downs\00", align 1
@JZ4780_GPIO_PINS = common dso_local global i64 0, align 8
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_PULLUP = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i32 0, align 4
@INTR_POLARITY_CONFORM = common dso_local global i32 0, align 4
@INTR_TRIGGER_CONFORM = common dso_local global i32 0, align 4
@GPIOMAXNAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"gpio%c%d\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@jz4780_gpio_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jz4780_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4780_gpio_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.jz4780_gpio_softc* @device_get_softc(i32 %9)
  store %struct.jz4780_gpio_softc* %10, %struct.jz4780_gpio_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %13 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @jz4780_gpio_spec, align 4
  %16 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %17 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @bus_alloc_resources(i32 %14, i32 %15, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %211

25:                                               ; preds = %1
  %26 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %27 = call i32 @JZ4780_GPIO_LOCK_INIT(%struct.jz4780_gpio_softc* %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ofw_bus_get_node(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @OF_getencprop(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64* %8, i32 8)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @OF_getencprop(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64* %7, i32 8)
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %135, %25
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @JZ4780_GPIO_PINS, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %138

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %41 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 %39, i64* %45, align 8
  %46 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %47 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %50 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %48
  store i32 %56, i32* %54, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = trunc i64 %58 to i32
  %60 = shl i32 1, %59
  %61 = sext i32 %60 to i64
  %62 = and i64 %57, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %38
  %65 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %66 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %67 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %65
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %64, %38
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %6, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 1, %77
  %79 = sext i32 %78 to i64
  %80 = and i64 %75, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %74
  %83 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %84 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %85 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %84, i32 0, i32 3
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %83
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %82, %74
  %93 = load i32, i32* @INTR_POLARITY_CONFORM, align 4
  %94 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %95 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i64, i64* %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 4
  store i32 %93, i32* %99, align 4
  %100 = load i32, i32* @INTR_TRIGGER_CONFORM, align 4
  %101 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %102 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %101, i32 0, i32 3
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  store i32 %100, i32* %106, align 8
  %107 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %108 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %107, i32 0, i32 3
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* @GPIOMAXNAME, align 4
  %115 = sub nsw i32 %114, 1
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @device_get_unit(i32 %116)
  %118 = add nsw i32 %117, 97
  %119 = load i64, i64* %6, align 8
  %120 = call i32 @snprintf(i8* %113, i32 %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %118, i64 %119)
  %121 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %122 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* @GPIOMAXNAME, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  store i8 0, i8* %131, align 1
  %132 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %133 = load i64, i64* %6, align 8
  %134 = call i32 @jz4780_gpio_pin_probe(%struct.jz4780_gpio_softc* %132, i64 %133)
  br label %135

135:                                              ; preds = %92
  %136 = load i64, i64* %6, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %6, align 8
  br label %34

138:                                              ; preds = %34
  %139 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %140 = call i64 @jz4780_gpio_register_isrcs(%struct.jz4780_gpio_softc* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %185

143:                                              ; preds = %138
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @OF_xref_from_node(i32 %145)
  %147 = call i32* @intr_pic_register(i32 %144, i32 %146)
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @device_printf(i32 %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %185

152:                                              ; preds = %143
  %153 = load i32, i32* %3, align 4
  %154 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %155 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @INTR_TYPE_MISC, align 4
  %160 = load i32, i32* @INTR_MPSAFE, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @jz4780_gpio_intr, align 4
  %163 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %164 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %165 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %164, i32 0, i32 1
  %166 = call i64 @bus_setup_intr(i32 %153, i32 %158, i32 %161, i32 %162, i32* null, %struct.jz4780_gpio_softc* %163, i32** %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %152
  br label %180

169:                                              ; preds = %152
  %170 = load i32, i32* %3, align 4
  %171 = call i32* @gpiobus_attach_bus(i32 %170)
  %172 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %173 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %172, i32 0, i32 2
  store i32* %171, i32** %173, align 8
  %174 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %175 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %169
  br label %180

179:                                              ; preds = %169
  store i32 0, i32* %2, align 4
  br label %211

180:                                              ; preds = %178, %168
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @OF_xref_from_node(i32 %182)
  %184 = call i32 @intr_pic_deregister(i32 %181, i32 %183)
  br label %185

185:                                              ; preds = %180, %149, %142
  %186 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %187 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %185
  %191 = load i32, i32* %3, align 4
  %192 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %193 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %198 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @bus_teardown_intr(i32 %191, i32 %196, i32* %199)
  br label %201

201:                                              ; preds = %190, %185
  %202 = load i32, i32* %3, align 4
  %203 = load i32, i32* @jz4780_gpio_spec, align 4
  %204 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %205 = getelementptr inbounds %struct.jz4780_gpio_softc, %struct.jz4780_gpio_softc* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @bus_release_resources(i32 %202, i32 %203, i32* %206)
  %208 = load %struct.jz4780_gpio_softc*, %struct.jz4780_gpio_softc** %4, align 8
  %209 = call i32 @JZ4780_GPIO_LOCK_DESTROY(%struct.jz4780_gpio_softc* %208)
  %210 = load i32, i32* @ENXIO, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %201, %179, %21
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.jz4780_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @JZ4780_GPIO_LOCK_INIT(%struct.jz4780_gpio_softc*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i64) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @jz4780_gpio_pin_probe(%struct.jz4780_gpio_softc*, i64) #1

declare dso_local i64 @jz4780_gpio_register_isrcs(%struct.jz4780_gpio_softc*) #1

declare dso_local i32* @intr_pic_register(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.jz4780_gpio_softc*, i32**) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @intr_pic_deregister(i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @JZ4780_GPIO_LOCK_DESTROY(%struct.jz4780_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
