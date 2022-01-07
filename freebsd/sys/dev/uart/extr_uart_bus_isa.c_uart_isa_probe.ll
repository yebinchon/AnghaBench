; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_isa.c_uart_isa_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_isa.c_uart_isa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32* }

@isa_ns8250_ids = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i64 0, align 8
@uart_ns8250_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uart_isa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_isa_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @device_get_parent(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.uart_softc* @device_get_softc(i32 %8)
  store %struct.uart_softc* %9, %struct.uart_softc** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @isa_ns8250_ids, align 4
  %13 = call i64 @ISA_PNP_PROBE(i32 %10, i32 %11, i32 %12)
  %14 = load i64, i64* @ENXIO, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i64, i64* @ENXIO, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %21 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %20, i32 0, i32 0
  store i32* @uart_ns8250_class, i32** %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @uart_bus_probe(i32 %22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.uart_softc* @device_get_softc(i32) #1

declare dso_local i64 @ISA_PNP_PROBE(i32, i32, i32) #1

declare dso_local i32 @uart_bus_probe(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
