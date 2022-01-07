; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32, i32 }
%struct.mtx = type { i32 }

@sbbc_solcons = common dso_local global i32 0, align 4
@cons_in_rdptr = common dso_local global i32 0, align 4
@cons_in_end = common dso_local global i32 0, align 4
@cons_in_begin = common dso_local global i32 0, align 4
@sbbc_solscir = common dso_local global i32 0, align 4
@SBBC_SRAM_CONS_SPACE_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, %struct.mtx*)* @sbbc_uart_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbbc_uart_getc(%struct.uart_bas* %0, %struct.mtx* %1) #0 {
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca %struct.mtx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store %struct.mtx* %1, %struct.mtx** %4, align 8
  %9 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %10 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %13 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mtx*, %struct.mtx** %4, align 8
  %16 = call i32 @uart_lock(%struct.mtx* %15)
  br label %17

17:                                               ; preds = %21, %2
  %18 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %19 = call i64 @sbbc_uart_rxready(%struct.uart_bas* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.mtx*, %struct.mtx** %4, align 8
  %23 = call i32 @uart_unlock(%struct.mtx* %22)
  %24 = call i32 @DELAY(i32 4)
  %25 = load %struct.mtx*, %struct.mtx** %4, align 8
  %26 = call i32 @uart_lock(%struct.mtx* %25)
  br label %17

27:                                               ; preds = %17
  %28 = load i32, i32* @sbbc_solcons, align 4
  %29 = load i32, i32* @cons_in_rdptr, align 4
  %30 = call i32 @SBBC_CONS_OFF(i32 %29)
  %31 = add nsw i32 %28, %30
  %32 = call i32 @SBBC_SRAM_READ_4(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @sbbc_solcons, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i32 @SBBC_SRAM_READ_1(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %38 = call i32 @uart_barrier(%struct.uart_bas* %37)
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @sbbc_solcons, align 4
  %42 = load i32, i32* @cons_in_end, align 4
  %43 = call i32 @SBBC_CONS_OFF(i32 %42)
  %44 = add nsw i32 %41, %43
  %45 = call i32 @SBBC_SRAM_READ_4(i32 %44)
  %46 = icmp eq i32 %40, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %27
  %48 = load i32, i32* @sbbc_solcons, align 4
  %49 = load i32, i32* @cons_in_begin, align 4
  %50 = call i32 @SBBC_CONS_OFF(i32 %49)
  %51 = add nsw i32 %48, %50
  %52 = call i32 @SBBC_SRAM_READ_4(i32 %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %47, %27
  %54 = load i32, i32* @sbbc_solcons, align 4
  %55 = load i32, i32* @cons_in_rdptr, align 4
  %56 = call i32 @SBBC_CONS_OFF(i32 %55)
  %57 = add nsw i32 %54, %56
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @SBBC_SRAM_WRITE_4(i32 %57, i32 %58)
  %60 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %61 = call i32 @uart_barrier(%struct.uart_bas* %60)
  %62 = load i32, i32* @sbbc_solscir, align 4
  %63 = load i32, i32* @sbbc_solscir, align 4
  %64 = call i32 @SBBC_SRAM_READ_4(i32 %63)
  %65 = load i32, i32* @SBBC_SRAM_CONS_SPACE_IN, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @SBBC_SRAM_WRITE_4(i32 %62, i32 %66)
  %68 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %69 = call i32 @uart_barrier(%struct.uart_bas* %68)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @sbbc_send_intr(i32 %70, i32 %71)
  %73 = load %struct.mtx*, %struct.mtx** %4, align 8
  %74 = call i32 @uart_unlock(%struct.mtx* %73)
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @uart_lock(%struct.mtx*) #1

declare dso_local i64 @sbbc_uart_rxready(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(%struct.mtx*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @SBBC_SRAM_READ_4(i32) #1

declare dso_local i32 @SBBC_CONS_OFF(i32) #1

declare dso_local i32 @SBBC_SRAM_READ_1(i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @SBBC_SRAM_WRITE_4(i32, i32) #1

declare dso_local i32 @sbbc_send_intr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
