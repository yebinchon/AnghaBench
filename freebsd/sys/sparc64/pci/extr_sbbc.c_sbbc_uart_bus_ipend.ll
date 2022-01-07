; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_bus_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_bus_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32, i32 }

@SBBC_PCI_INT_STATUS = common dso_local global i32 0, align 4
@sbbc_scsolir = common dso_local global i64 0, align 8
@SBBC_SRAM_CONS_IN = common dso_local global i64 0, align 8
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@SBBC_SRAM_CONS_BRK = common dso_local global i64 0, align 8
@SER_INT_BREAK = common dso_local global i32 0, align 4
@SBBC_SRAM_CONS_SPACE_OUT = common dso_local global i64 0, align 8
@sbbc_solcons = common dso_local global i64 0, align 8
@cons_out_rdptr = common dso_local global i32 0, align 4
@cons_out_wrptr = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @sbbc_uart_bus_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbbc_uart_bus_ipend(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 1
  store %struct.uart_bas* %11, %struct.uart_bas** %4, align 8
  %12 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %13 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %16 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %19 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @uart_lock(i32 %20)
  %22 = load i32, i32* @SBBC_PCI_INT_STATUS, align 4
  %23 = call i64 @SBBC_REGS_READ_4(i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %28 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @uart_unlock(i32 %29)
  store i32 0, i32* %2, align 4
  br label %87

31:                                               ; preds = %1
  %32 = load i64, i64* @sbbc_scsolir, align 8
  %33 = call i64 @SBBC_SRAM_READ_4(i64 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* @sbbc_scsolir, align 8
  %35 = call i32 @SBBC_SRAM_WRITE_4(i64 %34, i32 0)
  %36 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %37 = call i32 @uart_barrier(%struct.uart_bas* %36)
  %38 = load i32, i32* @SBBC_PCI_INT_STATUS, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @SBBC_REGS_WRITE_4(i32 %38, i64 %39)
  %41 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %42 = call i32 @uart_barrier(%struct.uart_bas* %41)
  %43 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %44 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @uart_unlock(i32 %45)
  store i32 0, i32* %7, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @SBBC_SRAM_CONS_IN, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %31
  %52 = load i32, i32* @SER_INT_RXREADY, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %31
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @SBBC_SRAM_CONS_BRK, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @SER_INT_BREAK, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @SBBC_SRAM_CONS_SPACE_OUT, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = load i64, i64* @sbbc_solcons, align 8
  %71 = load i32, i32* @cons_out_rdptr, align 4
  %72 = call i64 @SBBC_CONS_OFF(i32 %71)
  %73 = add nsw i64 %70, %72
  %74 = call i64 @SBBC_SRAM_READ_4(i64 %73)
  %75 = load i64, i64* @sbbc_solcons, align 8
  %76 = load i32, i32* @cons_out_wrptr, align 4
  %77 = call i64 @SBBC_CONS_OFF(i32 %76)
  %78 = add nsw i64 %75, %77
  %79 = call i64 @SBBC_SRAM_READ_4(i64 %78)
  %80 = icmp eq i64 %74, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load i32, i32* @SER_INT_TXIDLE, align 4
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %81, %69, %64
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %26
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i64 @SBBC_REGS_READ_4(i32) #1

declare dso_local i32 @uart_unlock(i32) #1

declare dso_local i64 @SBBC_SRAM_READ_4(i64) #1

declare dso_local i32 @SBBC_SRAM_WRITE_4(i64, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @SBBC_REGS_WRITE_4(i32, i64) #1

declare dso_local i64 @SBBC_CONS_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
