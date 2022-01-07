; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_esp_sbus.c_esp_dma_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_esp_sbus.c_esp_dma_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp_softc = type { i32*, %struct.lsi64854_softc*, i32, %struct.ncr53c9x_softc }
%struct.lsi64854_softc = type { %struct.ncr53c9x_softc* }
%struct.ncr53c9x_softc = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to query OFW for clock-frequency\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"cannot allocate SCSI core registers\0A\00", align 1
@esp_sbus_glue = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"espattach failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @esp_dma_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_dma_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.esp_softc*, align 8
  %5 = alloca %struct.ncr53c9x_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.esp_softc* @device_get_softc(i32 %8)
  store %struct.esp_softc* %9, %struct.esp_softc** %4, align 8
  %10 = load %struct.esp_softc*, %struct.esp_softc** %4, align 8
  %11 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %10, i32 0, i32 3
  store %struct.ncr53c9x_softc* %11, %struct.ncr53c9x_softc** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.esp_softc*, %struct.esp_softc** %4, align 8
  %14 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ofw_bus_get_node(i32 %15)
  %17 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %18 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %17, i32 0, i32 0
  %19 = call i32 @OF_getprop(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %18, i32 4)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %68

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_get_parent(i32 %25)
  %27 = call %struct.esp_softc* @device_get_softc(i32 %26)
  %28 = bitcast %struct.esp_softc* %27 to %struct.lsi64854_softc*
  %29 = load %struct.esp_softc*, %struct.esp_softc** %4, align 8
  %30 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %29, i32 0, i32 1
  store %struct.lsi64854_softc* %28, %struct.lsi64854_softc** %30, align 8
  %31 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %32 = load %struct.esp_softc*, %struct.esp_softc** %4, align 8
  %33 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %32, i32 0, i32 1
  %34 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %33, align 8
  %35 = getelementptr inbounds %struct.lsi64854_softc, %struct.lsi64854_softc* %34, i32 0, i32 0
  store %struct.ncr53c9x_softc* %31, %struct.ncr53c9x_softc** %35, align 8
  store i32 0, i32* %7, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_MEMORY, align 4
  %38 = load i32, i32* @RF_ACTIVE, align 4
  %39 = call i32* @bus_alloc_resource_any(i32 %36, i32 %37, i32* %7, i32 %38)
  %40 = load %struct.esp_softc*, %struct.esp_softc** %4, align 8
  %41 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = icmp eq i32* %39, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %24
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %68

47:                                               ; preds = %24
  %48 = load %struct.esp_softc*, %struct.esp_softc** %4, align 8
  %49 = call i32 @espattach(%struct.esp_softc* %48, i32* @esp_sbus_glue)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %56

55:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %68

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SYS_RES_MEMORY, align 4
  %59 = load %struct.esp_softc*, %struct.esp_softc** %4, align 8
  %60 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @rman_get_rid(i32* %61)
  %63 = load %struct.esp_softc*, %struct.esp_softc** %4, align 8
  %64 = getelementptr inbounds %struct.esp_softc, %struct.esp_softc* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @bus_release_resource(i32 %57, i32 %58, i32 %62, i32* %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %56, %55, %43, %21
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.esp_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @espattach(%struct.esp_softc*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
