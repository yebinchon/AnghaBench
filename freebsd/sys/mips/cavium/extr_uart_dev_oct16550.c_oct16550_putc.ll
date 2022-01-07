; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@REG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32)* @oct16550_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oct16550_putc(%struct.uart_bas* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %7 = call i32 @oct16550_delay(%struct.uart_bas* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @oct16550_wait_txhr_empty(%struct.uart_bas* %8, i32 100, i32 %9)
  %11 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %12 = load i32, i32* @REG_DATA, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @uart_setreg(%struct.uart_bas* %11, i32 %12, i32 %13)
  %15 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %16 = call i32 @uart_barrier(%struct.uart_bas* %15)
  %17 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @oct16550_wait_txhr_empty(%struct.uart_bas* %17, i32 100, i32 %18)
  ret void
}

declare dso_local i32 @oct16550_delay(%struct.uart_bas*) #1

declare dso_local i32 @oct16550_wait_txhr_empty(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
