; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_fdt.c_uart_fdt_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_fdt.c_uart_fdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.uart_class* }
%struct.uart_class = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uart_fdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_fdt_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.uart_softc* @device_get_softc(i32 %10)
  store %struct.uart_softc* %11, %struct.uart_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ofw_bus_status_okay(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %64

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @uart_fdt_find_device(i32 %18)
  %20 = inttoptr i64 %19 to %struct.uart_class*
  %21 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %22 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %21, i32 0, i32 0
  store %struct.uart_class* %20, %struct.uart_class** %22, align 8
  %23 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %24 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %23, i32 0, i32 0
  %25 = load %struct.uart_class*, %struct.uart_class** %24, align 8
  %26 = icmp eq %struct.uart_class* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %64

29:                                               ; preds = %17
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @ofw_bus_get_node(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @uart_fdt_get_clock(i32 %32, i64* %6)
  store i32 %33, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %2, align 4
  br label %64

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @uart_fdt_get_shift(i32 %38, i64* %7)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %43 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %42, i32 0, i32 0
  %44 = load %struct.uart_class*, %struct.uart_class** %43, align 8
  %45 = call i64 @uart_getregshift(%struct.uart_class* %44)
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @uart_fdt_get_io_width(i32 %47, i64* %8)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %52 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %51, i32 0, i32 0
  %53 = load %struct.uart_class*, %struct.uart_class** %52, align 8
  %54 = call i64 @uart_getregiowidth(%struct.uart_class* %53)
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %50, %46
  %56 = load i32, i32* %3, align 4
  %57 = load i64, i64* %7, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i64, i64* %8, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* %6, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @uart_bus_probe(i32 %56, i32 %58, i32 %60, i32 %62, i32 0, i32 0, i32 0)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %55, %35, %27, %15
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.uart_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local i64 @uart_fdt_find_device(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @uart_fdt_get_clock(i32, i64*) #1

declare dso_local i64 @uart_fdt_get_shift(i32, i64*) #1

declare dso_local i64 @uart_getregshift(%struct.uart_class*) #1

declare dso_local i64 @uart_fdt_get_io_width(i32, i64*) #1

declare dso_local i64 @uart_getregiowidth(%struct.uart_class*) #1

declare dso_local i32 @uart_bus_probe(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
