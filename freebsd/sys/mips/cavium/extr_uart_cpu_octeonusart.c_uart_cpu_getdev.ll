; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_cpu_octeonusart.c_uart_cpu_getdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_cpu_octeonusart.c_uart_cpu_getdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_class = type { i32 }
%struct.uart_devinfo = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32*, i64 }

@uart_oct16550_class = common dso_local global %struct.uart_class zeroinitializer, align 4
@uart_bus_space_io = common dso_local global i32* null, align 8
@octeon_uart_tag = common dso_local global i32 0, align 4
@uart_bus_space_mem = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@UART_PARITY_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_cpu_getdev(i32 %0, %struct.uart_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_devinfo*, align 8
  %6 = alloca %struct.uart_class*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.uart_devinfo* %1, %struct.uart_devinfo** %5, align 8
  store %struct.uart_class* @uart_oct16550_class, %struct.uart_class** %6, align 8
  store i32* null, i32** @uart_bus_space_io, align 8
  store i32* @octeon_uart_tag, i32** @uart_bus_space_mem, align 8
  %7 = load i32*, i32** @uart_bus_space_mem, align 8
  %8 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %9 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  store i32* %7, i32** %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %13 = load %struct.uart_class*, %struct.uart_class** %6, align 8
  %14 = call i64 @uart_getenv(i32 %11, %struct.uart_devinfo* %12, %struct.uart_class* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.uart_class*, %struct.uart_class** %6, align 8
  %19 = call i32 @uart_getops(%struct.uart_class* %18)
  %20 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %21 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %23 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %26 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @CVMX_MIO_UARTX_RBR(i32 0)
  %30 = load %struct.uart_class*, %struct.uart_class** %6, align 8
  %31 = call i32 @uart_getrange(%struct.uart_class* %30)
  %32 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %33 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = call i64 @bus_space_map(i32* %28, i32 %29, i32 %31, i32 0, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %17
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %3, align 4
  br label %55

39:                                               ; preds = %17
  %40 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %41 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 3, i32* %42, align 8
  %43 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %44 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %47 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %46, i32 0, i32 0
  store i32 115200, i32* %47, align 8
  %48 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %49 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %48, i32 0, i32 1
  store i32 8, i32* %49, align 4
  %50 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %51 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  %52 = load i32, i32* @UART_PARITY_NONE, align 4
  %53 = load %struct.uart_devinfo*, %struct.uart_devinfo** %5, align 8
  %54 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %39, %37, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @uart_getenv(i32, %struct.uart_devinfo*, %struct.uart_class*) #1

declare dso_local i32 @uart_getops(%struct.uart_class*) #1

declare dso_local i64 @bus_space_map(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @CVMX_MIO_UARTX_RBR(i32) #1

declare dso_local i32 @uart_getrange(%struct.uart_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
