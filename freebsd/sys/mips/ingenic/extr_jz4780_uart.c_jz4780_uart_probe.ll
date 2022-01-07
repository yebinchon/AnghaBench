; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_uart.c_jz4780_uart_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_uart.c_jz4780_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_uart_softc = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.uart_class* }
%struct.uart_class = type { i32 }
%struct.ofw_compat_data = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot get UART clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Cannot enable UART clock: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"baud\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Cannot determine UART clock frequency: %d\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"got UART clock: %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jz4780_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_uart_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4780_uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ofw_compat_data*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.jz4780_uart_softc* @device_get_softc(i32 %9)
  store %struct.jz4780_uart_softc* %10, %struct.jz4780_uart_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @ofw_bus_status_okay(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %2, align 4
  br label %108

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @compat_data, align 4
  %19 = call %struct.ofw_compat_data* @ofw_bus_search_compatible(i32 %17, i32 %18)
  store %struct.ofw_compat_data* %19, %struct.ofw_compat_data** %8, align 8
  %20 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %8, align 8
  %21 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %108

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.jz4780_uart_softc*, %struct.jz4780_uart_softc** %4, align 8
  %29 = getelementptr inbounds %struct.jz4780_uart_softc, %struct.jz4780_uart_softc* %28, i32 0, i32 2
  %30 = call i32 @clk_get_by_ofw_name(i32 %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %2, align 4
  br label %108

38:                                               ; preds = %26
  %39 = load %struct.jz4780_uart_softc*, %struct.jz4780_uart_softc** %4, align 8
  %40 = getelementptr inbounds %struct.jz4780_uart_softc, %struct.jz4780_uart_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_enable(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %2, align 4
  br label %108

50:                                               ; preds = %38
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.jz4780_uart_softc*, %struct.jz4780_uart_softc** %4, align 8
  %53 = getelementptr inbounds %struct.jz4780_uart_softc, %struct.jz4780_uart_softc* %52, i32 0, i32 1
  %54 = call i32 @clk_get_by_ofw_name(i32 %51, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @device_printf(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @ENXIO, align 4
  store i32 %61, i32* %2, align 4
  br label %108

62:                                               ; preds = %50
  %63 = load %struct.jz4780_uart_softc*, %struct.jz4780_uart_softc** %4, align 8
  %64 = getelementptr inbounds %struct.jz4780_uart_softc, %struct.jz4780_uart_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @clk_enable(i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %2, align 4
  br label %108

74:                                               ; preds = %62
  %75 = load %struct.jz4780_uart_softc*, %struct.jz4780_uart_softc** %4, align 8
  %76 = getelementptr inbounds %struct.jz4780_uart_softc, %struct.jz4780_uart_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @clk_get_freq(i32 %77, i32* %5)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %2, align 4
  br label %108

86:                                               ; preds = %74
  %87 = load i64, i64* @bootverbose, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %8, align 8
  %95 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.uart_class*
  %98 = load %struct.jz4780_uart_softc*, %struct.jz4780_uart_softc** %4, align 8
  %99 = getelementptr inbounds %struct.jz4780_uart_softc, %struct.jz4780_uart_softc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store %struct.uart_class* %97, %struct.uart_class** %101, align 8
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @jz4780_uart_get_shift(i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @uart_bus_probe(i32 %104, i32 %105, i32 0, i32 %106, i32 0, i32 0, i32 0)
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %93, %81, %69, %57, %45, %33, %24, %14
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.jz4780_uart_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local %struct.ofw_compat_data* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_freq(i32, i32*) #1

declare dso_local i32 @jz4780_uart_get_shift(i32) #1

declare dso_local i32 @uart_bus_probe(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
