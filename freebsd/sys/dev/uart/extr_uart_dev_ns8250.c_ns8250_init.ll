; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i64 }

@DEFAULT_RCLK = common dso_local global i64 0, align 8
@REG_IER = common dso_local global i32 0, align 4
@REG_FCR = common dso_local global i32 0, align 4
@REG_MCR = common dso_local global i32 0, align 4
@MCR_IE = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@FCR_UART_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32, i32, i32, i32)* @ns8250_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns8250_init(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %14 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i64, i64* @DEFAULT_RCLK, align 8
  %19 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %20 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %17, %5
  %22 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @ns8250_param(%struct.uart_bas* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %29 = load i32, i32* @REG_IER, align 4
  %30 = call i32 @uart_getreg(%struct.uart_bas* %28, i32 %29)
  %31 = and i32 %30, 224
  store i32 %31, i32* %11, align 4
  %32 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %33 = load i32, i32* @REG_IER, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @uart_setreg(%struct.uart_bas* %32, i32 %33, i32 %34)
  %36 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %37 = call i32 @uart_barrier(%struct.uart_bas* %36)
  store i32 0, i32* %12, align 4
  %38 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %39 = load i32, i32* @REG_FCR, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @uart_setreg(%struct.uart_bas* %38, i32 %39, i32 %40)
  %42 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %43 = call i32 @uart_barrier(%struct.uart_bas* %42)
  %44 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %45 = load i32, i32* @REG_MCR, align 4
  %46 = load i32, i32* @MCR_IE, align 4
  %47 = load i32, i32* @MCR_RTS, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MCR_DTR, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @uart_setreg(%struct.uart_bas* %44, i32 %45, i32 %50)
  %52 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %53 = call i32 @uart_barrier(%struct.uart_bas* %52)
  %54 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %55 = call i32 @ns8250_clrint(%struct.uart_bas* %54)
  ret void
}

declare dso_local i32 @ns8250_param(%struct.uart_bas*, i32, i32, i32, i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @ns8250_clrint(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
