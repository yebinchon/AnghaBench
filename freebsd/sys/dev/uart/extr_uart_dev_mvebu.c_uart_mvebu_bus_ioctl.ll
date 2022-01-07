; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mvebu.c_uart_mvebu_bus_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mvebu.c_uart_mvebu_bus_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UART_CTRL = common dso_local global i32 0, align 4
@CTRL_SND_BRK_SEQ = common dso_local global i32 0, align 4
@UART_CCR = common dso_local global i32 0, align 4
@CCR_BAUDRATE_DIV = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32, i64)* @uart_mvebu_bus_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_mvebu_bus_ioctl(%struct.uart_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.uart_bas*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %13 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %12, i32 0, i32 1
  store %struct.uart_bas* %13, %struct.uart_bas** %7, align 8
  %14 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %15 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @uart_lock(i32 %16)
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %56 [
    i32 128, label %19
    i32 129, label %41
  ]

19:                                               ; preds = %3
  %20 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %21 = load i32, i32* @UART_CTRL, align 4
  %22 = call i32 @uart_getreg(%struct.uart_bas* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @CTRL_SND_BRK_SEQ, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @CTRL_SND_BRK_SEQ, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %36 = load i32, i32* @UART_CTRL, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @uart_setreg(%struct.uart_bas* %35, i32 %36, i32 %37)
  %39 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %40 = call i32 @uart_barrier(%struct.uart_bas* %39)
  br label %58

41:                                               ; preds = %3
  %42 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %43 = load i32, i32* @UART_CCR, align 4
  %44 = call i32 @uart_getreg(%struct.uart_bas* %42, i32 %43)
  %45 = load i32, i32* @CCR_BAUDRATE_DIV, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %10, align 4
  %47 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %48 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %50, 16
  %52 = sdiv i32 %49, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i64, i64* %6, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32 %53, i32* %55, align 4
  br label %58

56:                                               ; preds = %3
  %57 = load i32, i32* @ENOTTY, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %56, %41, %34
  %59 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %60 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @uart_unlock(i32 %61)
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
