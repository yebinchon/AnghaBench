; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32, i32 }

@sbbc_solcons = common dso_local global i64 0, align 8
@cons_out_wrptr = common dso_local global i32 0, align 4
@cons_out_rdptr = common dso_local global i32 0, align 4
@sbbc_scsolir = common dso_local global i64 0, align 8
@SBBC_PCI_INT_STATUS = common dso_local global i32 0, align 4
@SBBC_PCI_INT_ENABLE = common dso_local global i32 0, align 4
@SBBC_PCI_ENABLE_INT_A = common dso_local global i32 0, align 4
@sbbc_scsolie = common dso_local global i64 0, align 8
@SBBC_SRAM_CONS_IN = common dso_local global i32 0, align 4
@SBBC_SRAM_CONS_BRK = common dso_local global i32 0, align 4
@SBBC_SRAM_CONS_SPACE_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @sbbc_uart_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbbc_uart_bus_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 1
  store %struct.uart_bas* %8, %struct.uart_bas** %3, align 8
  %9 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %10 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %13 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @uart_lock(i32 %17)
  %19 = load i64, i64* @sbbc_solcons, align 8
  %20 = load i32, i32* @cons_out_wrptr, align 4
  %21 = call i64 @SBBC_CONS_OFF(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @SBBC_SRAM_READ_4(i64 %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %32, %1
  %25 = load i64, i64* @sbbc_solcons, align 8
  %26 = load i32, i32* @cons_out_rdptr, align 4
  %27 = call i64 @SBBC_CONS_OFF(i32 %26)
  %28 = add nsw i64 %25, %27
  %29 = call i32 @SBBC_SRAM_READ_4(i64 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %24

33:                                               ; preds = %24
  %34 = call i32 (...) @cpu_spinwait()
  %35 = load i64, i64* @sbbc_scsolir, align 8
  %36 = call i32 @SBBC_SRAM_WRITE_4(i64 %35, i32 0)
  %37 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %38 = call i32 @uart_barrier(%struct.uart_bas* %37)
  %39 = load i32, i32* @SBBC_PCI_INT_STATUS, align 4
  %40 = load i64, i64* @sbbc_scsolir, align 8
  %41 = call i32 @SBBC_SRAM_READ_4(i64 %40)
  %42 = call i32 @SBBC_REGS_WRITE_4(i32 %39, i32 %41)
  %43 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %44 = call i32 @uart_barrier(%struct.uart_bas* %43)
  %45 = load i32, i32* @SBBC_PCI_INT_ENABLE, align 4
  %46 = load i32, i32* @SBBC_PCI_ENABLE_INT_A, align 4
  %47 = call i32 @SBBC_REGS_WRITE_4(i32 %45, i32 %46)
  %48 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %49 = call i32 @uart_barrier(%struct.uart_bas* %48)
  %50 = load i64, i64* @sbbc_scsolie, align 8
  %51 = load i64, i64* @sbbc_scsolie, align 8
  %52 = call i32 @SBBC_SRAM_READ_4(i64 %51)
  %53 = load i32, i32* @SBBC_SRAM_CONS_IN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SBBC_SRAM_CONS_BRK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SBBC_SRAM_CONS_SPACE_OUT, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @SBBC_SRAM_WRITE_4(i64 %50, i32 %58)
  %60 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %61 = call i32 @uart_barrier(%struct.uart_bas* %60)
  %62 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %63 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @uart_unlock(i32 %64)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @SBBC_SRAM_READ_4(i64) #1

declare dso_local i64 @SBBC_CONS_OFF(i32) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @SBBC_SRAM_WRITE_4(i64, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @SBBC_REGS_WRITE_4(i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
