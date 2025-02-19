; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32, i32 }

@sbbc_solcons = common dso_local global i32 0, align 4
@cons_out_wrptr = common dso_local global i32 0, align 4
@cons_out_end = common dso_local global i32 0, align 4
@cons_out_begin = common dso_local global i32 0, align 4
@sbbc_solscir = common dso_local global i32 0, align 4
@SBBC_SRAM_CONS_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32)* @sbbc_uart_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbbc_uart_putc(%struct.uart_bas* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %9 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %12 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @sbbc_solcons, align 4
  %15 = load i32, i32* @cons_out_wrptr, align 4
  %16 = call i32 @SBBC_CONS_OFF(i32 %15)
  %17 = add nsw i32 %14, %16
  %18 = call i32 @SBBC_SRAM_READ_4(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @sbbc_solcons, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @SBBC_SRAM_WRITE_1(i32 %21, i32 %22)
  %24 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %25 = call i32 @uart_barrier(%struct.uart_bas* %24)
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @sbbc_solcons, align 4
  %29 = load i32, i32* @cons_out_end, align 4
  %30 = call i32 @SBBC_CONS_OFF(i32 %29)
  %31 = add nsw i32 %28, %30
  %32 = call i32 @SBBC_SRAM_READ_4(i32 %31)
  %33 = icmp eq i32 %27, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load i32, i32* @sbbc_solcons, align 4
  %36 = load i32, i32* @cons_out_begin, align 4
  %37 = call i32 @SBBC_CONS_OFF(i32 %36)
  %38 = add nsw i32 %35, %37
  %39 = call i32 @SBBC_SRAM_READ_4(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %34, %2
  %41 = load i32, i32* @sbbc_solcons, align 4
  %42 = load i32, i32* @cons_out_wrptr, align 4
  %43 = call i32 @SBBC_CONS_OFF(i32 %42)
  %44 = add nsw i32 %41, %43
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @SBBC_SRAM_WRITE_4(i32 %44, i32 %45)
  %47 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %48 = call i32 @uart_barrier(%struct.uart_bas* %47)
  %49 = load i32, i32* @sbbc_solscir, align 4
  %50 = load i32, i32* @sbbc_solscir, align 4
  %51 = call i32 @SBBC_SRAM_READ_4(i32 %50)
  %52 = load i32, i32* @SBBC_SRAM_CONS_OUT, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @SBBC_SRAM_WRITE_4(i32 %49, i32 %53)
  %55 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %56 = call i32 @uart_barrier(%struct.uart_bas* %55)
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @sbbc_send_intr(i32 %57, i32 %58)
  ret void
}

declare dso_local i32 @SBBC_SRAM_READ_4(i32) #1

declare dso_local i32 @SBBC_CONS_OFF(i32) #1

declare dso_local i32 @SBBC_SRAM_WRITE_1(i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @SBBC_SRAM_WRITE_4(i32, i32) #1

declare dso_local i32 @sbbc_send_intr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
