; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_bytgpio.c_bytgpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_bytgpio.c_bytgpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bytgpio_softc = type { i32, i32*, i32*, i64, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"_UID\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to read _UID\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SCORE_PINS = common dso_local global i32 0, align 4
@SCORE_BANK_PREFIX = common dso_local global i32 0, align 4
@bytgpio_score_pins = common dso_local global i32 0, align 4
@NCORE_PINS = common dso_local global i32 0, align 4
@NCORE_BANK_PREFIX = common dso_local global i32 0, align 4
@bytgpio_ncore_pins = common dso_local global i32 0, align 4
@SUS_PINS = common dso_local global i32 0, align 4
@SUS_BANK_PREFIX = common dso_local global i32 0, align 4
@bytgpio_sus_pins = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid _UID value: %d\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"can't allocate resource\0A\00", align 1
@BYTGPIO_PCONF0 = common dso_local global i32 0, align 4
@BYTGPIO_PCONF0_FUNC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bytgpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bytgpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bytgpio_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.bytgpio_softc* @device_get_softc(i32 %10)
  store %struct.bytgpio_softc* %11, %struct.bytgpio_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %14 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @acpi_get_handle(i32 %15)
  %17 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %18 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %20 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @acpi_GetInteger(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %155

30:                                               ; preds = %1
  %31 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %32 = call i32 @BYTGPIO_LOCK_INIT(%struct.bytgpio_softc* %31)
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %64 [
    i32 129, label %34
    i32 130, label %44
    i32 128, label %54
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @SCORE_PINS, align 4
  %36 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %37 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @SCORE_BANK_PREFIX, align 4
  %39 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %40 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @bytgpio_score_pins, align 4
  %42 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %43 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  br label %68

44:                                               ; preds = %30
  %45 = load i32, i32* @NCORE_PINS, align 4
  %46 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %47 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @NCORE_BANK_PREFIX, align 4
  %49 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %50 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @bytgpio_ncore_pins, align 4
  %52 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %53 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  br label %68

54:                                               ; preds = %30
  %55 = load i32, i32* @SUS_PINS, align 4
  %56 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %57 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @SUS_BANK_PREFIX, align 4
  %59 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %60 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @bytgpio_sus_pins, align 4
  %62 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %63 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  br label %68

64:                                               ; preds = %30
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %151

68:                                               ; preds = %54, %44, %34
  %69 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %70 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* @M_DEVBUF, align 4
  %76 = load i32, i32* @M_WAITOK, align 4
  %77 = load i32, i32* @M_ZERO, align 4
  %78 = or i32 %76, %77
  %79 = call i32* @malloc(i32 %74, i32 %75, i32 %78)
  %80 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %81 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  %82 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %83 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %85 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SYS_RES_MEMORY, align 4
  %88 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %89 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %88, i32 0, i32 3
  %90 = load i32, i32* @RF_ACTIVE, align 4
  %91 = call i32* @bus_alloc_resource_any(i32 %86, i32 %87, i64* %89, i32 %90)
  %92 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %93 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %92, i32 0, i32 2
  store i32* %91, i32** %93, align 8
  %94 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %95 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %68
  %99 = load i32, i32* %3, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %151

101:                                              ; preds = %68
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %125, %101
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %105 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %102
  %109 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @BYTGPIO_PCONF0, align 4
  %112 = call i32 @BYGPIO_PIN_REGISTER(%struct.bytgpio_softc* %109, i32 %110, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @bytgpio_read_4(%struct.bytgpio_softc* %113, i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @BYTGPIO_PCONF0_FUNC_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %120 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  br label %125

125:                                              ; preds = %108
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %102

128:                                              ; preds = %102
  %129 = load i32, i32* %3, align 4
  %130 = call i32* @gpiobus_attach_bus(i32 %129)
  %131 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %132 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %131, i32 0, i32 4
  store i32* %130, i32** %132, align 8
  %133 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %134 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %133, i32 0, i32 4
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %150

137:                                              ; preds = %128
  %138 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %139 = call i32 @BYTGPIO_LOCK_DESTROY(%struct.bytgpio_softc* %138)
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @SYS_RES_MEMORY, align 4
  %142 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %143 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %146 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @bus_release_resource(i32 %140, i32 %141, i64 %144, i32* %147)
  %149 = load i32, i32* @ENXIO, align 4
  store i32 %149, i32* %2, align 4
  br label %155

150:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %155

151:                                              ; preds = %98, %64
  %152 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %153 = call i32 @BYTGPIO_LOCK_DESTROY(%struct.bytgpio_softc* %152)
  %154 = load i32, i32* @ENXIO, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %151, %150, %137, %26
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.bytgpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @acpi_GetInteger(i32, i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @BYTGPIO_LOCK_INIT(%struct.bytgpio_softc*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @BYGPIO_PIN_REGISTER(%struct.bytgpio_softc*, i32, i32) #1

declare dso_local i32 @bytgpio_read_4(%struct.bytgpio_softc*, i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @BYTGPIO_LOCK_DESTROY(%struct.bytgpio_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
