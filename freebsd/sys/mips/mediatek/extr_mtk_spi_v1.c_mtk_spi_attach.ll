; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_spi_v1.c_mtk_spi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_spi_v1.c_mtk_spi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_spi_softc = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Could not map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"non-flash\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"cs-gpios\00", align 1
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"spibus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_spi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_spi_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.mtk_spi_softc* @device_get_softc(i32 %6)
  store %struct.mtk_spi_softc* %7, %struct.mtk_spi_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SYS_RES_MEMORY, align 4
  %13 = load i32, i32* @RF_SHAREABLE, align 4
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @bus_alloc_resource_any(i32 %11, i32 %12, i32* %5, i32 %15)
  %17 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %87

27:                                               ; preds = %1
  %28 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %4, align 8
  %29 = call i64 @mtk_spi_wait(%struct.mtk_spi_softc* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SYS_RES_MEMORY, align 4
  %34 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bus_release_resource(i32 %32, i32 %33, i32 0, i32 %36)
  %38 = load i32, i32* @EBUSY, align 4
  store i32 %38, i32* %2, align 4
  br label %87

39:                                               ; preds = %27
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @ofw_bus_has_prop(i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %4, align 8
  %45 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %49

46:                                               ; preds = %39
  %47 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %4, align 8
  %48 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %4, align 8
  %52 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %51, i32 0, i32 1
  %53 = call i32 @ofw_gpiobus_parse_gpios(i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_2__** %52)
  %54 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %4, align 8
  %55 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = icmp ne %struct.TYPE_2__* %56, null
  br i1 %57, label %58, label %82

58:                                               ; preds = %49
  %59 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %4, align 8
  %60 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %4, align 8
  %65 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %70 = call i32 @GPIO_PIN_SETFLAGS(i32 %63, i32 %68, i32 %69)
  %71 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %4, align 8
  %72 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mtk_spi_softc*, %struct.mtk_spi_softc** %4, align 8
  %77 = getelementptr inbounds %struct.mtk_spi_softc, %struct.mtk_spi_softc* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @GPIO_PIN_SET(i32 %75, i32 %80, i32 1)
  br label %82

82:                                               ; preds = %58, %49
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @device_add_child(i32 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @bus_generic_attach(i32 %85)
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %82, %31, %23
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.mtk_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @mtk_spi_wait(%struct.mtk_spi_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i64 @ofw_bus_has_prop(i32, i8*) #1

declare dso_local i32 @ofw_gpiobus_parse_gpios(i32, i8*, %struct.TYPE_2__**) #1

declare dso_local i32 @GPIO_PIN_SETFLAGS(i32, i32, i32) #1

declare dso_local i32 @GPIO_PIN_SET(i32, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
