; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_msm.c_msm_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_msm.c_msm_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@UART_DM_SR = common dso_local global i32 0, align 4
@UART_DM_SR_TXEMT = common dso_local global i32 0, align 4
@UART_DM_ISR = common dso_local global i32 0, align 4
@UART_DM_TX_READY = common dso_local global i32 0, align 4
@UART_DM_CR = common dso_local global i32 0, align 4
@UART_DM_CLEAR_TX_READY = common dso_local global i32 0, align 4
@UART_DM_NO_CHARS_FOR_TX = common dso_local global i32 0, align 4
@UART_DM_SR_TXRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32)* @msm_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_putc(%struct.uart_bas* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1000, i32* %5, align 4
  %6 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %7 = load i32, i32* @UART_DM_SR, align 4
  %8 = call i32 @uart_getreg(%struct.uart_bas* %6, i32 %7)
  %9 = load i32, i32* @UART_DM_SR_TXEMT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %26, %12
  %14 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %15 = load i32, i32* @UART_DM_ISR, align 4
  %16 = call i32 @uart_getreg(%struct.uart_bas* %14, i32 %15)
  %17 = load i32, i32* @UART_DM_TX_READY, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi i1 [ false, %13 ], [ %23, %20 ]
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = call i32 @DELAY(i32 4)
  br label %13

28:                                               ; preds = %24
  %29 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %30 = load i32, i32* @UART_DM_CR, align 4
  %31 = load i32, i32* @UART_DM_CLEAR_TX_READY, align 4
  %32 = call i32 @SETREG(%struct.uart_bas* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %2
  %34 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %35 = load i32, i32* @UART_DM_NO_CHARS_FOR_TX, align 4
  %36 = call i32 @uart_setreg(%struct.uart_bas* %34, i32 %35, i32 1)
  br label %37

37:                                               ; preds = %44, %33
  %38 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %39 = load i32, i32* @UART_DM_SR, align 4
  %40 = call i32 @uart_getreg(%struct.uart_bas* %38, i32 %39)
  %41 = load i32, i32* @UART_DM_SR_TXRDY, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 @DELAY(i32 4)
  br label %37

46:                                               ; preds = %37
  %47 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %48 = call i32 @UART_DM_TF(i32 0)
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 255
  %51 = call i32 @SETREG(%struct.uart_bas* %47, i32 %48, i32 %50)
  ret void
}

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @SETREG(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @UART_DM_TF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
