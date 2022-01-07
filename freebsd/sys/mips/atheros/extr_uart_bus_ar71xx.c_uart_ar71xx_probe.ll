; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_bus_ar71xx.c_uart_ar71xx_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_uart_bus_ar71xx.c_uart_ar71xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.TYPE_5__, %struct.TYPE_6__*, i32* }
%struct.TYPE_5__ = type { i32, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@uart_sysdevs = common dso_local global i32 0, align 4
@uart_ns8250_class = common dso_local global i32 0, align 4
@mips_bus_space_generic = common dso_local global i8* null, align 8
@AR71XX_UART_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uart_ar71xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_ar71xx_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @ar71xx_uart_freq()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.uart_softc* @device_get_softc(i32 %6)
  store %struct.uart_softc* %7, %struct.uart_softc** %3, align 8
  %8 = call %struct.TYPE_6__* @SLIST_FIRST(i32* @uart_sysdevs)
  %9 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 1
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %10, align 8
  %11 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 2
  store i32* @uart_ns8250_class, i32** %12, align 8
  %13 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %14 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %18 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %17, i32 0, i32 0
  %19 = call i32 @bcopy(%struct.TYPE_4__* %16, %struct.TYPE_5__* %18, i32 24)
  %20 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %21 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 2, i32* %24, align 8
  %25 = load i8*, i8** @mips_bus_space_generic, align 8
  %26 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %27 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i8* %25, i8** %30, align 8
  %31 = load i32, i32* @AR71XX_UART_ADDR, align 4
  %32 = call i8* @MIPS_PHYS_TO_KSEG1(i32 %31)
  %33 = getelementptr i8, i8* %32, i64 3
  %34 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %35 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i8* %33, i8** %38, align 8
  %39 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %40 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 2, i32* %41, align 8
  %42 = load i8*, i8** @mips_bus_space_generic, align 8
  %43 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %44 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i8* %42, i8** %45, align 8
  %46 = load i32, i32* @AR71XX_UART_ADDR, align 4
  %47 = call i8* @MIPS_PHYS_TO_KSEG1(i32 %46)
  %48 = getelementptr i8, i8* %47, i64 3
  %49 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %50 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @uart_bus_probe(i32 %52, i32 2, i32 0, i32 %53, i32 0, i32 0, i32 0)
  ret i32 %54
}

declare dso_local i32 @ar71xx_uart_freq(...) #1

declare dso_local %struct.uart_softc* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_6__* @SLIST_FIRST(i32*) #1

declare dso_local i32 @bcopy(%struct.TYPE_4__*, %struct.TYPE_5__*, i32) #1

declare dso_local i8* @MIPS_PHYS_TO_KSEG1(i32) #1

declare dso_local i32 @uart_bus_probe(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
