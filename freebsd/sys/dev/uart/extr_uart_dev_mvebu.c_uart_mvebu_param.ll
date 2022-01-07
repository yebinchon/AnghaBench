; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mvebu.c_uart_mvebu_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_mvebu.c_uart_mvebu_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@UART_CTRL = common dso_local global i32 0, align 4
@CTRL_TX_FIFO_RST = common dso_local global i32 0, align 4
@CTRL_RX_FIFO_RST = common dso_local global i32 0, align 4
@CTRL_LPBK_EN = common dso_local global i32 0, align 4
@CTRL_TWO_STOP = common dso_local global i32 0, align 4
@CTRL_PAR_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UART_CCR = common dso_local global i32 0, align 4
@CCR_BAUDRATE_DIV = common dso_local global i32 0, align 4
@CTRL_ST_MIRR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, i32, i32, i32, i32)* @uart_mvebu_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_mvebu_param(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %16 = load i32, i32* @UART_CTRL, align 4
  %17 = call i32 @uart_getreg(%struct.uart_bas* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %19 = load i32, i32* @UART_CTRL, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @CTRL_TX_FIFO_RST, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CTRL_RX_FIFO_RST, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CTRL_LPBK_EN, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @uart_setreg(%struct.uart_bas* %18, i32 %19, i32 %26)
  %28 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %29 = call i32 @uart_barrier(%struct.uart_bas* %28)
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %36 [
    i32 2, label %31
    i32 1, label %35
  ]

31:                                               ; preds = %5
  %32 = load i32, i32* @CTRL_TWO_STOP, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %41

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %5, %35
  %37 = load i32, i32* @CTRL_TWO_STOP, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %10, align 4
  switch i32 %42, label %47 [
    i32 3, label %43
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* @CTRL_PAR_EN, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %52

47:                                               ; preds = %41
  %48 = load i32, i32* @CTRL_PAR_EN, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %52
  %56 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %57 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @uart_mvebu_divisor(i32 %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %14, align 4
  br label %81

65:                                               ; preds = %55
  %66 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %67 = load i32, i32* @UART_CCR, align 4
  %68 = call i32 @uart_getreg(%struct.uart_bas* %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* @CCR_BAUDRATE_DIV, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %74 = load i32, i32* @UART_CCR, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @uart_setreg(%struct.uart_bas* %73, i32 %74, i32 %77)
  %79 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %80 = call i32 @uart_barrier(%struct.uart_bas* %79)
  br label %81

81:                                               ; preds = %65, %63
  br label %82

82:                                               ; preds = %81, %52
  %83 = load i32, i32* @CTRL_ST_MIRR_EN, align 4
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %87 = load i32, i32* @UART_CTRL, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @uart_setreg(%struct.uart_bas* %86, i32 %87, i32 %88)
  %90 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %91 = call i32 @uart_barrier(%struct.uart_bas* %90)
  %92 = load i32, i32* %14, align 4
  ret i32 %92
}

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_mvebu_divisor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
