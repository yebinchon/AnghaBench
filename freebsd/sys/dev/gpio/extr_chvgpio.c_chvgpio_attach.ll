; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_chvgpio.c_chvgpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_chvgpio.c_chvgpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chvgpio_softc = type { i64*, i32*, i64, i32*, i64, i32*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"_UID\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to read _UID\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SW_BANK_PREFIX = common dso_local global i32 0, align 4
@chv_southwest_pins = common dso_local global i64* null, align 8
@chv_southwest_pin_names = common dso_local global i32 0, align 4
@N_BANK_PREFIX = common dso_local global i32 0, align 4
@chv_north_pins = common dso_local global i64* null, align 8
@chv_north_pin_names = common dso_local global i32 0, align 4
@E_BANK_PREFIX = common dso_local global i32 0, align 4
@chv_east_pins = common dso_local global i64* null, align 8
@chv_east_pin_names = common dso_local global i32 0, align 4
@SE_BANK_PREFIX = common dso_local global i32 0, align 4
@chv_southeast_pins = common dso_local global i64* null, align 8
@chv_southeast_pin_names = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid _UID value: %d\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"can't allocate memory resource\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"can't allocate irq resource\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@chvgpio_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"unable to setup irq: error %d\0A\00", align 1
@CHVGPIO_INTERRUPT_MASK = common dso_local global i32 0, align 4
@CHVGPIO_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @chvgpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chvgpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.chvgpio_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.chvgpio_softc* @device_get_softc(i32 %9)
  store %struct.chvgpio_softc* %10, %struct.chvgpio_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %13 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @acpi_get_handle(i32 %14)
  %16 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %17 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %16, i32 0, i32 12
  store i32 %15, i32* %17, align 8
  %18 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %19 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @acpi_GetInteger(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @ACPI_FAILURE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %248

29:                                               ; preds = %1
  %30 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %31 = call i32 @CHVGPIO_LOCK_INIT(%struct.chvgpio_softc* %30)
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %73 [
    i32 128, label %33
    i32 130, label %43
    i32 131, label %53
    i32 129, label %63
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* @SW_BANK_PREFIX, align 4
  %35 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %36 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 4
  %37 = load i64*, i64** @chv_southwest_pins, align 8
  %38 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %39 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %38, i32 0, i32 0
  store i64* %37, i64** %39, align 8
  %40 = load i32, i32* @chv_southwest_pin_names, align 4
  %41 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %42 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  br label %78

43:                                               ; preds = %29
  %44 = load i32, i32* @N_BANK_PREFIX, align 4
  %45 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %46 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %45, i32 0, i32 11
  store i32 %44, i32* %46, align 4
  %47 = load i64*, i64** @chv_north_pins, align 8
  %48 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %49 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %48, i32 0, i32 0
  store i64* %47, i64** %49, align 8
  %50 = load i32, i32* @chv_north_pin_names, align 4
  %51 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %52 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 8
  br label %78

53:                                               ; preds = %29
  %54 = load i32, i32* @E_BANK_PREFIX, align 4
  %55 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %56 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 4
  %57 = load i64*, i64** @chv_east_pins, align 8
  %58 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %59 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %58, i32 0, i32 0
  store i64* %57, i64** %59, align 8
  %60 = load i32, i32* @chv_east_pin_names, align 4
  %61 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %62 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 8
  br label %78

63:                                               ; preds = %29
  %64 = load i32, i32* @SE_BANK_PREFIX, align 4
  %65 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %66 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %65, i32 0, i32 11
  store i32 %64, i32* %66, align 4
  %67 = load i64*, i64** @chv_southeast_pins, align 8
  %68 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %69 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %68, i32 0, i32 0
  store i64* %67, i64** %69, align 8
  %70 = load i32, i32* @chv_southeast_pin_names, align 4
  %71 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %72 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 8
  br label %78

73:                                               ; preds = %29
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %2, align 4
  br label %248

78:                                               ; preds = %63, %53, %43, %33
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %106, %78
  %80 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %81 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %79
  %89 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %90 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %97 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  %102 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %103 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %88
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %79

109:                                              ; preds = %79
  %110 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %111 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %110, i32 0, i32 4
  store i64 0, i64* %111, align 8
  %112 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %113 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SYS_RES_MEMORY, align 4
  %116 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %117 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %116, i32 0, i32 4
  %118 = load i32, i32* @RF_ACTIVE, align 4
  %119 = call i8* @bus_alloc_resource_any(i32 %114, i32 %115, i64* %117, i32 %118)
  %120 = bitcast i8* %119 to i32*
  %121 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %122 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %121, i32 0, i32 3
  store i32* %120, i32** %122, align 8
  %123 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %124 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %109
  %128 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %129 = call i32 @CHVGPIO_LOCK_DESTROY(%struct.chvgpio_softc* %128)
  %130 = load i32, i32* %3, align 4
  %131 = call i32 (i32, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %132 = load i32, i32* @ENOMEM, align 4
  store i32 %132, i32* %2, align 4
  br label %248

133:                                              ; preds = %109
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @SYS_RES_IRQ, align 4
  %136 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %137 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %136, i32 0, i32 2
  %138 = load i32, i32* @RF_ACTIVE, align 4
  %139 = call i8* @bus_alloc_resource_any(i32 %134, i32 %135, i64* %137, i32 %138)
  %140 = bitcast i8* %139 to i32*
  %141 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %142 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %141, i32 0, i32 1
  store i32* %140, i32** %142, align 8
  %143 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %144 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %162, label %147

147:                                              ; preds = %133
  %148 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %149 = call i32 @CHVGPIO_LOCK_DESTROY(%struct.chvgpio_softc* %148)
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @SYS_RES_MEMORY, align 4
  %152 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %153 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %156 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @bus_release_resource(i32 %150, i32 %151, i64 %154, i32* %157)
  %159 = load i32, i32* %3, align 4
  %160 = call i32 (i32, i8*, ...) @device_printf(i32 %159, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %161 = load i32, i32* @ENOMEM, align 4
  store i32 %161, i32* %2, align 4
  br label %248

162:                                              ; preds = %133
  %163 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %164 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %167 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* @INTR_TYPE_MISC, align 4
  %170 = load i32, i32* @INTR_MPSAFE, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @chvgpio_intr, align 4
  %173 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %174 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %175 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %174, i32 0, i32 7
  %176 = call i32 @bus_setup_intr(i32 %165, i32* %168, i32 %171, i32* null, i32 %172, %struct.chvgpio_softc* %173, i32* %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %206

179:                                              ; preds = %162
  %180 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %181 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = call i32 (i32, i8*, ...) @device_printf(i32 %182, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %183)
  %185 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %186 = call i32 @CHVGPIO_LOCK_DESTROY(%struct.chvgpio_softc* %185)
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* @SYS_RES_MEMORY, align 4
  %189 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %190 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %193 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @bus_release_resource(i32 %187, i32 %188, i64 %191, i32* %194)
  %196 = load i32, i32* %3, align 4
  %197 = load i32, i32* @SYS_RES_IRQ, align 4
  %198 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %199 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %202 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @bus_release_resource(i32 %196, i32 %197, i64 %200, i32* %203)
  %205 = load i32, i32* @ENXIO, align 4
  store i32 %205, i32* %2, align 4
  br label %248

206:                                              ; preds = %162
  %207 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %208 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %207, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* @CHVGPIO_INTERRUPT_MASK, align 4
  %211 = call i32 @bus_write_4(i32* %209, i32 %210, i32 0)
  %212 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %213 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* @CHVGPIO_INTERRUPT_STATUS, align 4
  %216 = call i32 @bus_write_4(i32* %214, i32 %215, i32 65535)
  %217 = load i32, i32* %3, align 4
  %218 = call i32* @gpiobus_attach_bus(i32 %217)
  %219 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %220 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %219, i32 0, i32 5
  store i32* %218, i32** %220, align 8
  %221 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %222 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %221, i32 0, i32 5
  %223 = load i32*, i32** %222, align 8
  %224 = icmp eq i32* %223, null
  br i1 %224, label %225, label %247

225:                                              ; preds = %206
  %226 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %227 = call i32 @CHVGPIO_LOCK_DESTROY(%struct.chvgpio_softc* %226)
  %228 = load i32, i32* %3, align 4
  %229 = load i32, i32* @SYS_RES_MEMORY, align 4
  %230 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %231 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %234 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @bus_release_resource(i32 %228, i32 %229, i64 %232, i32* %235)
  %237 = load i32, i32* %3, align 4
  %238 = load i32, i32* @SYS_RES_IRQ, align 4
  %239 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %240 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.chvgpio_softc*, %struct.chvgpio_softc** %4, align 8
  %243 = getelementptr inbounds %struct.chvgpio_softc, %struct.chvgpio_softc* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @bus_release_resource(i32 %237, i32 %238, i64 %241, i32* %244)
  %246 = load i32, i32* @ENXIO, align 4
  store i32 %246, i32* %2, align 4
  br label %248

247:                                              ; preds = %206
  store i32 0, i32* %2, align 4
  br label %248

248:                                              ; preds = %247, %225, %179, %147, %127, %73, %25
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local %struct.chvgpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @acpi_GetInteger(i32, i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @CHVGPIO_LOCK_INIT(%struct.chvgpio_softc*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @CHVGPIO_LOCK_DESTROY(%struct.chvgpio_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.chvgpio_softc*, i32*) #1

declare dso_local i32 @bus_write_4(i32*, i32, i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
