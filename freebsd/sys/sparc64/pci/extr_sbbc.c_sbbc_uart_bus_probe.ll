; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_bus_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i8*, i8*, %struct.uart_bas }
%struct.uart_bas = type { i32, i32 }

@sbbc_console = common dso_local global i64 0, align 8
@sbbc_solcons = common dso_local global i64 0, align 8
@cons_in_end = common dso_local global i32 0, align 4
@cons_in_begin = common dso_local global i32 0, align 4
@cons_out_end = common dso_local global i32 0, align 4
@cons_out_begin = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @sbbc_uart_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbbc_uart_bus_probe(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %7 = load i64, i64* @sbbc_console, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %1
  %10 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 2
  store %struct.uart_bas* %11, %struct.uart_bas** %4, align 8
  %12 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %13 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %16 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i64, i64* @sbbc_solcons, align 8
  %19 = load i32, i32* @cons_in_end, align 4
  %20 = call i64 @SBBC_CONS_OFF(i32 %19)
  %21 = add nsw i64 %18, %20
  %22 = call i8* @SBBC_SRAM_READ_4(i64 %21)
  %23 = load i64, i64* @sbbc_solcons, align 8
  %24 = load i32, i32* @cons_in_begin, align 4
  %25 = call i64 @SBBC_CONS_OFF(i32 %24)
  %26 = add nsw i64 %23, %25
  %27 = call i8* @SBBC_SRAM_READ_4(i64 %26)
  %28 = ptrtoint i8* %22 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sub nsw i64 %30, 1
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %34 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i64, i64* @sbbc_solcons, align 8
  %36 = load i32, i32* @cons_out_end, align 4
  %37 = call i64 @SBBC_CONS_OFF(i32 %36)
  %38 = add nsw i64 %35, %37
  %39 = call i8* @SBBC_SRAM_READ_4(i64 %38)
  %40 = load i64, i64* @sbbc_solcons, align 8
  %41 = load i32, i32* @cons_out_begin, align 4
  %42 = call i64 @SBBC_CONS_OFF(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i8* @SBBC_SRAM_READ_4(i64 %43)
  %45 = ptrtoint i8* %39 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sub nsw i64 %47, 1
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %51 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  store i32 0, i32* %2, align 4
  br label %54

52:                                               ; preds = %1
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %9
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i8* @SBBC_SRAM_READ_4(i64) #1

declare dso_local i64 @SBBC_CONS_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
