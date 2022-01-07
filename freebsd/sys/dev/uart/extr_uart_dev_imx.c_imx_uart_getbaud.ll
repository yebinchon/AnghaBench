; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_getbaud.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_getbaud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@imx_uart_getbaud.predivs = internal constant [8 x i32] [i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 7, i32 1], align 16
@imx_uart_getbaud.std_rates = internal constant [9 x i32] [i32 9600, i32 14400, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 16
@UFCR = common dso_local global i32 0, align 4
@IMXUART_UFCR_RFDIV_MASK = common dso_local global i32 0, align 4
@IMXUART_UFCR_RFDIV_SHIFT = common dso_local global i32 0, align 4
@UBIR = common dso_local global i32 0, align 4
@UBMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*)* @imx_uart_getbaud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_getbaud(%struct.uart_bas* %0) #0 {
  %2 = alloca %struct.uart_bas*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %2, align 8
  %10 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %11 = load i32, i32* @UFCR, align 4
  %12 = call i32 @REG(i32 %11)
  %13 = call i32 @GETREG(%struct.uart_bas* %10, i32 %12)
  %14 = load i32, i32* @IMXUART_UFCR_RFDIV_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @IMXUART_UFCR_RFDIV_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = call i32 (...) @imx_ccm_uart_hz()
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* @imx_uart_getbaud.predivs, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %18, %22
  store i32 %23, i32* %3, align 4
  %24 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %25 = load i32, i32* @UBIR, align 4
  %26 = call i32 @REG(i32 %25)
  %27 = call i32 @GETREG(%struct.uart_bas* %24, i32 %26)
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %30 = load i32, i32* @UBMR, align 4
  %31 = call i32 @REG(i32 %30)
  %32 = call i32 @GETREG(%struct.uart_bas* %29, i32 %31)
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = sdiv i32 %34, 16
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 %40, 100
  %42 = sdiv i32 %41, 103
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %43, 100
  %45 = sdiv i32 %44, 97
  store i32 %45, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %65, %1
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @nitems(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @imx_uart_getbaud.std_rates, i64 0, i64 0))
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [9 x i32], [9 x i32]* @imx_uart_getbaud.std_rates, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  store i32 %63, i32* %6, align 4
  br label %68

64:                                               ; preds = %58, %50
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %46

68:                                               ; preds = %62, %46
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @GETREG(%struct.uart_bas*, i32) #1

declare dso_local i32 @REG(i32) #1

declare dso_local i32 @imx_ccm_uart_hz(...) #1

declare dso_local i32 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
