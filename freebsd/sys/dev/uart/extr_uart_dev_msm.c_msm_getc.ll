; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_msm.c_msm_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_msm.c_msm_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }
%struct.mtx = type { i32 }

@UART_DM_SR = common dso_local global i32 0, align 4
@UART_DM_SR_RXRDY = common dso_local global i32 0, align 4
@UART_DM_SR_UART_OVERRUN = common dso_local global i32 0, align 4
@UART_DM_CR = common dso_local global i32 0, align 4
@UART_DM_RESET_ERROR_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, %struct.mtx*)* @msm_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_getc(%struct.uart_bas* %0, %struct.mtx* %1) #0 {
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca %struct.mtx*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store %struct.mtx* %1, %struct.mtx** %4, align 8
  %6 = load %struct.mtx*, %struct.mtx** %4, align 8
  %7 = call i32 @uart_lock(%struct.mtx* %6)
  br label %8

8:                                                ; preds = %16, %2
  %9 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %10 = load i32, i32* @UART_DM_SR, align 4
  %11 = call i32 @uart_getreg(%struct.uart_bas* %9, i32 %10)
  %12 = load i32, i32* @UART_DM_SR_RXRDY, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @UART_DM_SR_RXRDY, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = call i32 @DELAY(i32 4)
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %20 = load i32, i32* @UART_DM_SR, align 4
  %21 = call i32 @uart_getreg(%struct.uart_bas* %19, i32 %20)
  %22 = load i32, i32* @UART_DM_SR_UART_OVERRUN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %27 = load i32, i32* @UART_DM_CR, align 4
  %28 = load i32, i32* @UART_DM_RESET_ERROR_STATUS, align 4
  %29 = call i32 @uart_setreg(%struct.uart_bas* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %32 = call i32 @UART_DM_RF(i32 0)
  %33 = call i32 @uart_getreg(%struct.uart_bas* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.mtx*, %struct.mtx** %4, align 8
  %35 = call i32 @uart_unlock(%struct.mtx* %34)
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @uart_lock(%struct.mtx*) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @UART_DM_RF(i32) #1

declare dso_local i32 @uart_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
