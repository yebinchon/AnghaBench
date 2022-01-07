; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_puc.c_uart_puc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_puc.c_uart_puc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32* }

@PUC_IVAR_TYPE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PUC_TYPE_SERIAL = common dso_local global i64 0, align 8
@uart_ns8250_class = common dso_local global i32 0, align 4
@PUC_IVAR_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uart_puc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_puc_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.uart_softc* @device_get_softc(i32 %10)
  store %struct.uart_softc* %11, %struct.uart_softc** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PUC_IVAR_TYPE, align 4
  %15 = call i64 @BUS_READ_IVAR(i32 %12, i32 %13, i32 %14, i64* %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %38

19:                                               ; preds = %1
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @PUC_TYPE_SERIAL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %38

25:                                               ; preds = %19
  %26 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %27 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %26, i32 0, i32 0
  store i32* @uart_ns8250_class, i32** %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @PUC_IVAR_CLOCK, align 4
  %31 = call i64 @BUS_READ_IVAR(i32 %28, i32 %29, i32 %30, i64* %6)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i64 0, i64* %6, align 8
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, i32* %3, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @uart_bus_probe(i32 %35, i32 0, i32 0, i64 %36, i32 0, i32 0, i32 0)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %23, %17
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.uart_softc* @device_get_softc(i32) #1

declare dso_local i64 @BUS_READ_IVAR(i32, i32, i32, i64*) #1

declare dso_local i32 @uart_bus_probe(i32, i32, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
