; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_bus_octeonusart.c_uart_octeon_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_bus_octeonusart.c_uart_octeon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.TYPE_3__, i32*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@uart_oct16550_class = common dso_local global i32 0, align 4
@uart_sysdevs = common dso_local global i32 0, align 4
@uart_bus_space_mem = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uart_octeon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_octeon_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @device_get_unit(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.uart_softc* @device_get_softc(i32 %8)
  store %struct.uart_softc* %9, %struct.uart_softc** %4, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 1
  store i32* @uart_oct16550_class, i32** %11, align 8
  %12 = call %struct.TYPE_4__* @SLIST_FIRST(i32* @uart_sysdevs)
  %13 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %14 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %13, i32 0, i32 2
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %20 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %19, i32 0, i32 0
  %21 = call i32 @bcopy(i32* %18, %struct.TYPE_3__* %20, i32 12)
  %22 = load i32, i32* @uart_bus_space_mem, align 4
  %23 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %24 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 8
  %26 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %27 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @CVMX_MIO_UARTX_RBR(i32 0)
  %31 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %32 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @uart_getrange(i32* %33)
  %35 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %36 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = call i64 @bus_space_map(i32 %29, i32 %30, i32 %34, i32 0, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %50

42:                                               ; preds = %1
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %45 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @uart_bus_probe(i32 %43, i32 %47, i32 0, i32 0, i32 0, i32 %48, i32 0)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %42, %40
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.uart_softc* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_4__* @SLIST_FIRST(i32*) #1

declare dso_local i32 @bcopy(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i64 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CVMX_MIO_UARTX_RBR(i32) #1

declare dso_local i32 @uart_getrange(i32*) #1

declare dso_local i32 @uart_bus_probe(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
