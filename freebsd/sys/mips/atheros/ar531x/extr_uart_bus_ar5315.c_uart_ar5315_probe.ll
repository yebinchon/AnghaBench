; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_uart_bus_ar5315.c_uart_ar5315_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_uart_bus_ar5315.c_uart_ar5315_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.TYPE_5__, %struct.TYPE_6__*, i32* }
%struct.TYPE_5__ = type { i32, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@uart_sysdevs = common dso_local global i32 0, align 4
@uart_ns8250_class = common dso_local global i32 0, align 4
@mips_bus_space_generic = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uart_ar5315_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_ar5315_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @ar531x_ahb_freq()
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
  %31 = call i8* (...) @ar531x_uart_addr()
  %32 = getelementptr i8, i8* %31, i64 3
  %33 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %34 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i8* %32, i8** %37, align 8
  %38 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 2, i32* %40, align 8
  %41 = load i8*, i8** @mips_bus_space_generic, align 8
  %42 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %43 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  %45 = call i8* (...) @ar531x_uart_addr()
  %46 = getelementptr i8, i8* %45, i64 3
  %47 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %48 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @uart_bus_probe(i32 %50, i32 2, i32 0, i32 %51, i32 0, i32 0, i32 0)
  ret i32 %52
}

declare dso_local i32 @ar531x_ahb_freq(...) #1

declare dso_local %struct.uart_softc* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_6__* @SLIST_FIRST(i32*) #1

declare dso_local i32 @bcopy(%struct.TYPE_4__*, %struct.TYPE_5__*, i32) #1

declare dso_local i8* @ar531x_uart_addr(...) #1

declare dso_local i32 @uart_bus_probe(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
