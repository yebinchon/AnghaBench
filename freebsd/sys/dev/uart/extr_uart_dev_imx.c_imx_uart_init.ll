; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@UCR1 = common dso_local global i32 0, align 4
@UARTEN = common dso_local global i32 0, align 4
@UCR2 = common dso_local global i32 0, align 4
@RXEN = common dso_local global i32 0, align 4
@TXEN = common dso_local global i32 0, align 4
@WS = common dso_local global i32 0, align 4
@STPB = common dso_local global i32 0, align 4
@PROE = common dso_local global i32 0, align 4
@PREN = common dso_local global i32 0, align 4
@UFCR = common dso_local global i32 0, align 4
@IMXUART_UFCR_RFDIV_MASK = common dso_local global i32 0, align 4
@IMXUART_UFCR_RFDIV_DIV1 = common dso_local global i32 0, align 4
@UBIR = common dso_local global i32 0, align 4
@UBMR = common dso_local global i32 0, align 4
@IMXUART_UFCR_TXTL_MASK = common dso_local global i32 0, align 4
@IMXUART_UFCR_RXTL_MASK = common dso_local global i32 0, align 4
@IMX_FIFOSZ = common dso_local global i32 0, align 4
@IMX_TXFIFO_LEVEL = common dso_local global i32 0, align 4
@IMXUART_UFCR_TXTL_SHIFT = common dso_local global i32 0, align 4
@IMX_RXFIFO_LEVEL = common dso_local global i32 0, align 4
@IMXUART_UFCR_RXTL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32, i32, i32, i32)* @imx_uart_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_init(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %14 = load i32, i32* @UCR1, align 4
  %15 = call i32 @REG(i32 %14)
  %16 = load i32, i32* @UCR1, align 4
  %17 = load i32, i32* @UARTEN, align 4
  %18 = call i32 @FLD(i32 %16, i32 %17)
  %19 = call i32 @SET(%struct.uart_bas* %13, i32 %15, i32 %18)
  %20 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %21 = load i32, i32* @UCR2, align 4
  %22 = call i32 @REG(i32 %21)
  %23 = load i32, i32* @UCR2, align 4
  %24 = load i32, i32* @RXEN, align 4
  %25 = call i32 @FLD(i32 %23, i32 %24)
  %26 = load i32, i32* @UCR2, align 4
  %27 = load i32, i32* @TXEN, align 4
  %28 = call i32 @FLD(i32 %26, i32 %27)
  %29 = or i32 %25, %28
  %30 = call i32 @SET(%struct.uart_bas* %20, i32 %22, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 7
  br i1 %32, label %33, label %38

33:                                               ; preds = %5
  %34 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %35 = load i32, i32* @UCR2, align 4
  %36 = load i32, i32* @WS, align 4
  %37 = call i32 @DIS(%struct.uart_bas* %34, i32 %35, i32 %36)
  br label %43

38:                                               ; preds = %5
  %39 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %40 = load i32, i32* @UCR2, align 4
  %41 = load i32, i32* @WS, align 4
  %42 = call i32 @ENA(%struct.uart_bas* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %48 = load i32, i32* @UCR2, align 4
  %49 = load i32, i32* @STPB, align 4
  %50 = call i32 @ENA(%struct.uart_bas* %47, i32 %48, i32 %49)
  br label %56

51:                                               ; preds = %43
  %52 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %53 = load i32, i32* @UCR2, align 4
  %54 = load i32, i32* @STPB, align 4
  %55 = call i32 @DIS(%struct.uart_bas* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %10, align 4
  switch i32 %57, label %77 [
    i32 129, label %58
    i32 132, label %67
    i32 131, label %76
    i32 128, label %76
    i32 130, label %76
  ]

58:                                               ; preds = %56
  %59 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %60 = load i32, i32* @UCR2, align 4
  %61 = load i32, i32* @PROE, align 4
  %62 = call i32 @DIS(%struct.uart_bas* %59, i32 %60, i32 %61)
  %63 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %64 = load i32, i32* @UCR2, align 4
  %65 = load i32, i32* @PREN, align 4
  %66 = call i32 @ENA(%struct.uart_bas* %63, i32 %64, i32 %65)
  br label %82

67:                                               ; preds = %56
  %68 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %69 = load i32, i32* @UCR2, align 4
  %70 = load i32, i32* @PROE, align 4
  %71 = call i32 @ENA(%struct.uart_bas* %68, i32 %69, i32 %70)
  %72 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %73 = load i32, i32* @UCR2, align 4
  %74 = load i32, i32* @PREN, align 4
  %75 = call i32 @ENA(%struct.uart_bas* %72, i32 %73, i32 %74)
  br label %82

76:                                               ; preds = %56, %56, %56
  br label %77

77:                                               ; preds = %56, %76
  %78 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %79 = load i32, i32* @UCR2, align 4
  %80 = load i32, i32* @PREN, align 4
  %81 = call i32 @DIS(%struct.uart_bas* %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %67, %58
  %83 = load i32, i32* %7, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %82
  %86 = call i32 (...) @imx_ccm_uart_hz()
  store i32 %86, i32* %11, align 4
  %87 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %88 = load i32, i32* @UFCR, align 4
  %89 = call i32 @REG(i32 %88)
  %90 = call i32 @GETREG(%struct.uart_bas* %87, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @IMXUART_UFCR_RFDIV_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = load i32, i32* @IMXUART_UFCR_RFDIV_DIV1, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %12, align 4
  %97 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %98 = load i32, i32* @UFCR, align 4
  %99 = call i32 @REG(i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @SETREG(%struct.uart_bas* %97, i32 %99, i32 %100)
  %102 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %103 = load i32, i32* @UBIR, align 4
  %104 = call i32 @REG(i32 %103)
  %105 = call i32 @SETREG(%struct.uart_bas* %102, i32 %104, i32 15)
  %106 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %107 = load i32, i32* @UBMR, align 4
  %108 = call i32 @REG(i32 %107)
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %7, align 4
  %111 = sdiv i32 %109, %110
  %112 = sub nsw i32 %111, 1
  %113 = call i32 @SETREG(%struct.uart_bas* %106, i32 %108, i32 %112)
  br label %114

114:                                              ; preds = %85, %82
  %115 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %116 = load i32, i32* @UFCR, align 4
  %117 = call i32 @REG(i32 %116)
  %118 = call i32 @GETREG(%struct.uart_bas* %115, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* @IMXUART_UFCR_TXTL_MASK, align 4
  %120 = load i32, i32* @IMXUART_UFCR_RXTL_MASK, align 4
  %121 = or i32 %119, %120
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %12, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* @IMX_FIFOSZ, align 4
  %126 = load i32, i32* @IMX_TXFIFO_LEVEL, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load i32, i32* @IMXUART_UFCR_TXTL_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* @IMX_RXFIFO_LEVEL, align 4
  %133 = load i32, i32* @IMXUART_UFCR_RXTL_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = load i32, i32* %12, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %12, align 4
  %137 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %138 = load i32, i32* @UFCR, align 4
  %139 = call i32 @REG(i32 %138)
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @SETREG(%struct.uart_bas* %137, i32 %139, i32 %140)
  ret void
}

declare dso_local i32 @SET(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @REG(i32) #1

declare dso_local i32 @FLD(i32, i32) #1

declare dso_local i32 @DIS(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @ENA(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @imx_ccm_uart_hz(...) #1

declare dso_local i32 @GETREG(%struct.uart_bas*, i32) #1

declare dso_local i32 @SETREG(%struct.uart_bas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
