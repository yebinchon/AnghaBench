; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_nexus.c_altera_jtag_uart_nexus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/jtag_uart/extr_altera_jtag_uart_nexus.c_altera_jtag_uart_nexus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_jtag_uart_softc = type { i32*, i64, i32*, i64, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"couldn't map memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"IRQ unavailable; selecting polled operation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @altera_jtag_uart_nexus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_jtag_uart_nexus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.altera_jtag_uart_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.altera_jtag_uart_softc* @device_get_softc(i32 %5)
  store %struct.altera_jtag_uart_softc* %6, %struct.altera_jtag_uart_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %9 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @device_get_unit(i32 %10)
  %12 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %13 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %15 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @SYS_RES_MEMORY, align 4
  %18 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %19 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %18, i32 0, i32 1
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = call i8* @bus_alloc_resource_any(i32 %16, i32 %17, i64* %19, i32 %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %24 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %26 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %4, align 4
  br label %57

33:                                               ; preds = %1
  %34 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %35 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @SYS_RES_IRQ, align 4
  %38 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %39 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %38, i32 0, i32 3
  %40 = load i32, i32* @RF_ACTIVE, align 4
  %41 = load i32, i32* @RF_SHAREABLE, align 4
  %42 = or i32 %40, %41
  %43 = call i8* @bus_alloc_resource_any(i32 %36, i32 %37, i64* %39, i32 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %46 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %48 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %33
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %33
  %55 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %56 = call i32 @altera_jtag_uart_attach(%struct.altera_jtag_uart_softc* %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %29
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %57
  %61 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %62 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @SYS_RES_IRQ, align 4
  %68 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %69 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %72 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @bus_release_resource(i32 %66, i32 %67, i64 %70, i32* %73)
  br label %75

75:                                               ; preds = %65, %60
  %76 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %77 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @SYS_RES_MEMORY, align 4
  %83 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %84 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.altera_jtag_uart_softc*, %struct.altera_jtag_uart_softc** %3, align 8
  %87 = getelementptr inbounds %struct.altera_jtag_uart_softc, %struct.altera_jtag_uart_softc* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @bus_release_resource(i32 %81, i32 %82, i64 %85, i32* %88)
  br label %90

90:                                               ; preds = %80, %75
  br label %91

91:                                               ; preds = %90, %57
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.altera_jtag_uart_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @altera_jtag_uart_attach(%struct.altera_jtag_uart_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
