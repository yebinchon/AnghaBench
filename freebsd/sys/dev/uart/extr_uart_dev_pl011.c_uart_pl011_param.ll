; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_pl011.c_uart_pl011_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_pl011.c_uart_pl011_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@UART_CR = common dso_local global i32 0, align 4
@LCR_H_WLEN7 = common dso_local global i32 0, align 4
@LCR_H_WLEN6 = common dso_local global i32 0, align 4
@LCR_H_WLEN8 = common dso_local global i32 0, align 4
@LCR_H_STP2 = common dso_local global i32 0, align 4
@LCR_H_PEN = common dso_local global i32 0, align 4
@LCR_H_FEN = common dso_local global i32 0, align 4
@CR_RXE = common dso_local global i32 0, align 4
@CR_TXE = common dso_local global i32 0, align 4
@CR_UARTEN = common dso_local global i32 0, align 4
@UART_IBRD = common dso_local global i32 0, align 4
@IBRD_BDIVINT = common dso_local global i32 0, align 4
@UART_FBRD = common dso_local global i32 0, align 4
@FBRD_BDIVFRAC = common dso_local global i32 0, align 4
@UART_LCR_H = common dso_local global i32 0, align 4
@UART_IFLS = common dso_local global i32 0, align 4
@FIFO_IFLS_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32, i32, i32, i32)* @uart_pl011_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_pl011_param(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %15 = load i32, i32* @UART_CR, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @__uart_setreg(%struct.uart_bas* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %28 [
    i32 7, label %19
    i32 6, label %23
    i32 8, label %27
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* @LCR_H_WLEN7, align 4
  %21 = load i32, i32* %12, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %12, align 4
  br label %32

23:                                               ; preds = %5
  %24 = load i32, i32* @LCR_H_WLEN6, align 4
  %25 = load i32, i32* %12, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %12, align 4
  br label %32

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %5, %27
  %29 = load i32, i32* @LCR_H_WLEN8, align 4
  %30 = load i32, i32* %12, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %28, %23, %19
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @LCR_H_STP2, align 4
  %37 = load i32, i32* %12, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %12, align 4
  br label %44

39:                                               ; preds = %32
  %40 = load i32, i32* @LCR_H_STP2, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @LCR_H_PEN, align 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  br label %56

51:                                               ; preds = %44
  %52 = load i32, i32* @LCR_H_PEN, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i32, i32* @LCR_H_FEN, align 4
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* @CR_RXE, align 4
  %61 = load i32, i32* @CR_TXE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @CR_UARTEN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %68 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %56
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %76 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %77, 4
  %79 = load i32, i32* %7, align 4
  %80 = sdiv i32 %78, %79
  store i32 %80, i32* %13, align 4
  %81 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %82 = load i32, i32* @UART_IBRD, align 4
  %83 = load i32, i32* %13, align 4
  %84 = ashr i32 %83, 6
  %85 = load i32, i32* @IBRD_BDIVINT, align 4
  %86 = and i32 %84, %85
  %87 = call i32 @__uart_setreg(%struct.uart_bas* %81, i32 %82, i32 %86)
  %88 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %89 = load i32, i32* @UART_FBRD, align 4
  %90 = load i32, i32* %13, align 4
  %91 = and i32 %90, 63
  %92 = load i32, i32* @FBRD_BDIVFRAC, align 4
  %93 = and i32 %91, %92
  %94 = call i32 @__uart_setreg(%struct.uart_bas* %88, i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %74, %71, %56
  %96 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %97 = load i32, i32* @UART_LCR_H, align 4
  %98 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %99 = load i32, i32* @UART_LCR_H, align 4
  %100 = call i32 @__uart_getreg(%struct.uart_bas* %98, i32 %99)
  %101 = and i32 %100, -256
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @__uart_setreg(%struct.uart_bas* %96, i32 %97, i32 %103)
  %105 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %106 = load i32, i32* @UART_IFLS, align 4
  %107 = load i32, i32* @FIFO_IFLS_BITS, align 4
  %108 = call i32 @__uart_setreg(%struct.uart_bas* %105, i32 %106, i32 %107)
  %109 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %110 = load i32, i32* @UART_CR, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @__uart_setreg(%struct.uart_bas* %109, i32 %110, i32 %111)
  ret void
}

declare dso_local i32 @__uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @__uart_getreg(%struct.uart_bas*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
