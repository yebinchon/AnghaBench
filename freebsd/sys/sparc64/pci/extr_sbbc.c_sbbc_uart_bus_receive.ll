; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i64, i32, i32*, %struct.uart_bas }
%struct.uart_bas = type { i32, i32 }

@sbbc_solcons = common dso_local global i64 0, align 8
@cons_in_end = common dso_local global i32 0, align 4
@cons_in_rdptr = common dso_local global i32 0, align 4
@cons_in_wrptr = common dso_local global i32 0, align 4
@UART_STAT_OVERRUN = common dso_local global i32 0, align 4
@cons_in_begin = common dso_local global i32 0, align 4
@sbbc_solscir = common dso_local global i64 0, align 8
@SBBC_SRAM_CONS_SPACE_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @sbbc_uart_bus_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbbc_uart_bus_receive(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 3
  store %struct.uart_bas* %11, %struct.uart_bas** %3, align 8
  %12 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %13 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %16 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %19 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @uart_lock(i32 %20)
  %22 = load i64, i64* @sbbc_solcons, align 8
  %23 = load i32, i32* @cons_in_end, align 4
  %24 = call i64 @SBBC_CONS_OFF(i32 %23)
  %25 = add nsw i64 %22, %24
  %26 = call i64 @SBBC_SRAM_READ_4(i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* @sbbc_solcons, align 8
  %28 = load i32, i32* @cons_in_rdptr, align 4
  %29 = call i64 @SBBC_CONS_OFF(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i64 @SBBC_SRAM_READ_4(i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* @sbbc_solcons, align 8
  %33 = load i32, i32* @cons_in_wrptr, align 4
  %34 = call i64 @SBBC_CONS_OFF(i32 %33)
  %35 = add nsw i64 %32, %34
  %36 = call i64 @SBBC_SRAM_READ_4(i64 %35)
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %72, %1
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %43 = call i64 @uart_rx_full(%struct.uart_softc* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %47 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %48 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %51 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %46, i32* %53, align 4
  br label %73

54:                                               ; preds = %41
  %55 = load i64, i64* @sbbc_solcons, align 8
  %56 = load i64, i64* %8, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @SBBC_SRAM_READ_1(i64 %57)
  store i32 %58, i32* %6, align 4
  %59 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @uart_rx_put(%struct.uart_softc* %59, i32 %60)
  %62 = load i64, i64* %8, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %54
  %67 = load i64, i64* @sbbc_solcons, align 8
  %68 = load i32, i32* @cons_in_begin, align 4
  %69 = call i64 @SBBC_CONS_OFF(i32 %68)
  %70 = add nsw i64 %67, %69
  %71 = call i64 @SBBC_SRAM_READ_4(i64 %70)
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %66, %54
  br label %37

73:                                               ; preds = %45, %37
  %74 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %75 = call i32 @uart_barrier(%struct.uart_bas* %74)
  %76 = load i64, i64* @sbbc_solcons, align 8
  %77 = load i32, i32* @cons_in_rdptr, align 4
  %78 = call i64 @SBBC_CONS_OFF(i32 %77)
  %79 = add nsw i64 %76, %78
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @SBBC_SRAM_WRITE_4(i64 %79, i64 %80)
  %82 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %83 = call i32 @uart_barrier(%struct.uart_bas* %82)
  %84 = load i64, i64* @sbbc_solscir, align 8
  %85 = load i64, i64* @sbbc_solscir, align 8
  %86 = call i64 @SBBC_SRAM_READ_4(i64 %85)
  %87 = load i64, i64* @SBBC_SRAM_CONS_SPACE_IN, align 8
  %88 = or i64 %86, %87
  %89 = call i32 @SBBC_SRAM_WRITE_4(i64 %84, i64 %88)
  %90 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %91 = call i32 @uart_barrier(%struct.uart_bas* %90)
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @sbbc_send_intr(i32 %92, i32 %93)
  %95 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %96 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @uart_unlock(i32 %97)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i64 @SBBC_SRAM_READ_4(i64) #1

declare dso_local i64 @SBBC_CONS_OFF(i32) #1

declare dso_local i64 @uart_rx_full(%struct.uart_softc*) #1

declare dso_local i32 @SBBC_SRAM_READ_1(i64) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @SBBC_SRAM_WRITE_4(i64, i64) #1

declare dso_local i32 @sbbc_send_intr(i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
