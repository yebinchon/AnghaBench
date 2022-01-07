; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@REG_IER = common dso_local global i32 0, align 4
@REG_MCR = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32, i32, i32, i32)* @oct16550_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oct16550_init(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @oct16550_param(%struct.uart_bas* %12, i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %19 = load i32, i32* @REG_IER, align 4
  %20 = call i32 @uart_getreg(%struct.uart_bas* %18, i32 %19)
  %21 = and i32 %20, 0
  store i32 %21, i32* %11, align 4
  %22 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %23 = load i32, i32* @REG_IER, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @uart_setreg(%struct.uart_bas* %22, i32 %23, i32 %24)
  %26 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %27 = call i32 @uart_barrier(%struct.uart_bas* %26)
  %28 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %29 = call i32 @uart_barrier(%struct.uart_bas* %28)
  %30 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %31 = load i32, i32* @REG_MCR, align 4
  %32 = load i32, i32* @MCR_RTS, align 4
  %33 = load i32, i32* @MCR_DTR, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @uart_setreg(%struct.uart_bas* %30, i32 %31, i32 %34)
  %36 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %37 = call i32 @uart_barrier(%struct.uart_bas* %36)
  %38 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %39 = call i32 @oct16550_clrint(%struct.uart_bas* %38)
  ret void
}

declare dso_local i32 @oct16550_param(%struct.uart_bas*, i32, i32, i32, i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @oct16550_clrint(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
