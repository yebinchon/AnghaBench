; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_gpio.c_octeon_gpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_gpio.c_octeon_gpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_gpio_pin = type { i32, i32, i64 }
%struct.octeon_gpio_softc = type { i32, i32*, %struct.TYPE_6__*, i32, i32*, %struct.octeon_gpio_softc**, i32**, i32*, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"octeon_gpio: Only one gpio module supported\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@OCTEON_GPIO_IRQS = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@OCTEON_IRQ_GPIO0 = common dso_local global i64 0, align 8
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to allocate IRQ resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@octeon_gpio_filter = common dso_local global i32 0, align 4
@octeon_gpio_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"WARNING: unable to register interrupt handler\0A\00", align 1
@octeon_gpio_pins = common dso_local global %struct.octeon_gpio_pin* null, align 8
@GPIOMAXNAME = common dso_local global i32 0, align 4
@DEFAULT_CAPS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"[pin%d] output=%d, invinput=%d, intr=%d, intr_type=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rising edge\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@OCTEON_GPIO_IRQ_EDGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @octeon_gpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_gpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_gpio_softc*, align 8
  %5 = alloca %struct.octeon_gpio_pin*, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.octeon_gpio_softc* @device_get_softc(i32 %8)
  store %struct.octeon_gpio_softc* %9, %struct.octeon_gpio_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @device_get_unit(i32 %10)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %16 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %15, i32 0, i32 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_get_nameunit(i32 %17)
  %19 = load i32, i32* @MTX_DEF, align 4
  %20 = call i32 @mtx_init(i32* %16, i32 %18, i32* null, i32 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %99, %1
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @OCTEON_GPIO_IRQS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %102

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @SYS_RES_IRQ, align 4
  %28 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %29 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %28, i32 0, i32 7
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i64, i64* @OCTEON_IRQ_GPIO0, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load i64, i64* @OCTEON_IRQ_GPIO0, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i32, i32* @RF_SHAREABLE, align 4
  %43 = load i32, i32* @RF_ACTIVE, align 4
  %44 = or i32 %42, %43
  %45 = call i32* @bus_alloc_resource(i32 %26, i32 %27, i32* %33, i64 %37, i64 %41, i32 1, i32 %44)
  %46 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %47 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %46, i32 0, i32 6
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  store i32* %45, i32** %51, align 8
  %52 = icmp eq i32* %45, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %25
  %54 = load i32, i32* %3, align 4
  %55 = call i32 (i32, i8*, ...) @device_printf(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @octeon_gpio_detach(i32 %56)
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %2, align 4
  br label %217

59:                                               ; preds = %25
  %60 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %61 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %62 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %61, i32 0, i32 5
  %63 = load %struct.octeon_gpio_softc**, %struct.octeon_gpio_softc*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %63, i64 %65
  store %struct.octeon_gpio_softc* %60, %struct.octeon_gpio_softc** %66, align 8
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %69 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %68, i32 0, i32 6
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @INTR_TYPE_MISC, align 4
  %76 = load i32, i32* @octeon_gpio_filter, align 4
  %77 = load i32, i32* @octeon_gpio_intr, align 4
  %78 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %79 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %78, i32 0, i32 5
  %80 = load %struct.octeon_gpio_softc**, %struct.octeon_gpio_softc*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %80, i64 %82
  %84 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %85 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i64 @bus_setup_intr(i32 %67, i32* %74, i32 %75, i32 %76, i32 %77, %struct.octeon_gpio_softc** %83, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %59
  %93 = load i32, i32* %3, align 4
  %94 = call i32 (i32, i8*, ...) @device_printf(i32 %93, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @octeon_gpio_detach(i32 %95)
  %97 = load i32, i32* @ENXIO, align 4
  store i32 %97, i32* %2, align 4
  br label %217

98:                                               ; preds = %59
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %21

102:                                              ; preds = %21
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %105 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load %struct.octeon_gpio_pin*, %struct.octeon_gpio_pin** @octeon_gpio_pins, align 8
  store %struct.octeon_gpio_pin* %106, %struct.octeon_gpio_pin** %5, align 8
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %112, %102
  %108 = load %struct.octeon_gpio_pin*, %struct.octeon_gpio_pin** %5, align 8
  %109 = getelementptr inbounds %struct.octeon_gpio_pin, %struct.octeon_gpio_pin* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %166

112:                                              ; preds = %107
  %113 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %114 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.octeon_gpio_pin*, %struct.octeon_gpio_pin** %5, align 8
  %122 = getelementptr inbounds %struct.octeon_gpio_pin, %struct.octeon_gpio_pin* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @GPIOMAXNAME, align 4
  %125 = call i32 @strncpy(i32 %120, i64 %123, i32 %124)
  %126 = load %struct.octeon_gpio_pin*, %struct.octeon_gpio_pin** %5, align 8
  %127 = getelementptr inbounds %struct.octeon_gpio_pin, %struct.octeon_gpio_pin* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %130 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %129, i32 0, i32 2
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  store i32 %128, i32* %135, align 4
  %136 = load i32, i32* @DEFAULT_CAPS, align 4
  %137 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %138 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %137, i32 0, i32 2
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  store i32 %136, i32* %143, align 8
  %144 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %145 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %144, i32 0, i32 2
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i64 0, i64* %150, align 8
  %151 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %152 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %153 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %152, i32 0, i32 2
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 %156
  %158 = load %struct.octeon_gpio_pin*, %struct.octeon_gpio_pin** %5, align 8
  %159 = getelementptr inbounds %struct.octeon_gpio_pin, %struct.octeon_gpio_pin* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @octeon_gpio_pin_configure(%struct.octeon_gpio_softc* %151, %struct.TYPE_6__* %157, i32 %160)
  %162 = load %struct.octeon_gpio_pin*, %struct.octeon_gpio_pin** %5, align 8
  %163 = getelementptr inbounds %struct.octeon_gpio_pin, %struct.octeon_gpio_pin* %162, i32 1
  store %struct.octeon_gpio_pin* %163, %struct.octeon_gpio_pin** %5, align 8
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %107

166:                                              ; preds = %107
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %169 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load i64, i64* @bootverbose, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %203

172:                                              ; preds = %166
  store i32 0, i32* %7, align 4
  br label %173

173:                                              ; preds = %199, %172
  %174 = load i32, i32* %7, align 4
  %175 = icmp slt i32 %174, 16
  br i1 %175, label %176, label %202

176:                                              ; preds = %173
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @CVMX_GPIO_BIT_CFGX(i32 %177)
  %179 = call i8* @cvmx_read_csr(i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store i8* %179, i8** %180, align 8
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* %7, align 4
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %198 = call i32 (i32, i8*, ...) @device_printf(i32 %181, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %182, i32 %185, i32 %188, i32 %191, i8* %197)
  br label %199

199:                                              ; preds = %176
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  br label %173

202:                                              ; preds = %173
  br label %203

203:                                              ; preds = %202, %166
  %204 = load i32, i32* %3, align 4
  %205 = call i32* @gpiobus_attach_bus(i32 %204)
  %206 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %207 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %206, i32 0, i32 1
  store i32* %205, i32** %207, align 8
  %208 = load %struct.octeon_gpio_softc*, %struct.octeon_gpio_softc** %4, align 8
  %209 = getelementptr inbounds %struct.octeon_gpio_softc, %struct.octeon_gpio_softc* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = icmp eq i32* %210, null
  br i1 %211, label %212, label %216

212:                                              ; preds = %203
  %213 = load i32, i32* %3, align 4
  %214 = call i32 @octeon_gpio_detach(i32 %213)
  %215 = load i32, i32* @ENXIO, align 4
  store i32 %215, i32* %2, align 4
  br label %217

216:                                              ; preds = %203
  store i32 0, i32* %2, align 4
  br label %217

217:                                              ; preds = %216, %212, %92, %53
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local %struct.octeon_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @bus_alloc_resource(i32, i32, i32*, i64, i64, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @octeon_gpio_detach(i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32, %struct.octeon_gpio_softc**, i32*) #1

declare dso_local i32 @strncpy(i32, i64, i32) #1

declare dso_local i32 @octeon_gpio_pin_configure(%struct.octeon_gpio_softc*, %struct.TYPE_6__*, i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GPIO_BIT_CFGX(i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
