; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_bus_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_bus_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.uart_bas }
%struct.uart_bas = type { i32, i32 }

@UART_FLUSH_TRANSMITTER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@UART_FLUSH_RECEIVER = common dso_local global i32 0, align 4
@sbbc_solcons = common dso_local global i64 0, align 8
@cons_in_rdptr = common dso_local global i32 0, align 4
@cons_in_wrptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32)* @sbbc_uart_bus_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbbc_uart_bus_flush(%struct.uart_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 0
  store %struct.uart_bas* %10, %struct.uart_bas** %6, align 8
  %11 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %12 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %15 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @UART_FLUSH_TRANSMITTER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  store i32 %22, i32* %3, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @UART_FLUSH_RECEIVER, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load i64, i64* @sbbc_solcons, align 8
  %30 = load i32, i32* @cons_in_rdptr, align 4
  %31 = call i64 @SBBC_CONS_OFF(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = load i64, i64* @sbbc_solcons, align 8
  %34 = load i32, i32* @cons_in_wrptr, align 4
  %35 = call i64 @SBBC_CONS_OFF(i32 %34)
  %36 = add nsw i64 %33, %35
  %37 = call i32 @SBBC_SRAM_READ_4(i64 %36)
  %38 = call i32 @SBBC_SRAM_WRITE_4(i64 %32, i32 %37)
  %39 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %40 = call i32 @uart_barrier(%struct.uart_bas* %39)
  br label %41

41:                                               ; preds = %28, %23
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @SBBC_SRAM_WRITE_4(i64, i32) #1

declare dso_local i64 @SBBC_CONS_OFF(i32) #1

declare dso_local i32 @SBBC_SRAM_READ_4(i64) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
