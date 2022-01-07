; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_cfg_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umcs.c_umcs7840_cfg_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ucom_softc = type { i64, %struct.umcs7840_softc* }
%struct.umcs7840_softc = type { i32 }

@MCS7840_UART_REG_MCR = common dso_local global i32 0, align 4
@MCS7840_UART_REG_IER = common dso_local global i32 0, align 4
@umcs7840_port_registers = common dso_local global %struct.TYPE_2__* null, align 8
@MCS7840_DEV_CONTROLx_RX_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Port %d has been closed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*)* @umcs7840_cfg_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umcs7840_cfg_close(%struct.ucom_softc* %0) #0 {
  %2 = alloca %struct.ucom_softc*, align 8
  %3 = alloca %struct.umcs7840_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %2, align 8
  %6 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %6, i32 0, i32 1
  %8 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %7, align 8
  store %struct.umcs7840_softc* %8, %struct.umcs7840_softc** %3, align 8
  %9 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %13 = call i32 @umcs7840_stop_read(%struct.ucom_softc* %12)
  %14 = load %struct.ucom_softc*, %struct.ucom_softc** %2, align 8
  %15 = call i32 @umcs7840_stop_write(%struct.ucom_softc* %14)
  %16 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @MCS7840_UART_REG_MCR, align 4
  %19 = call i32 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %16, i64 %17, i32 %18, i32 0)
  %20 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* @MCS7840_UART_REG_IER, align 4
  %23 = call i32 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc* %20, i64 %21, i32 %22, i32 0)
  %24 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @umcs7840_port_registers, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @umcs7840_get_reg_sync(%struct.umcs7840_softc* %24, i32 %29, i32* %5)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %50

33:                                               ; preds = %1
  %34 = load i32, i32* @MCS7840_DEV_CONTROLx_RX_DISABLE, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.umcs7840_softc*, %struct.umcs7840_softc** %3, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @umcs7840_port_registers, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @umcs7840_set_reg_sync(%struct.umcs7840_softc* %37, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %50

47:                                               ; preds = %33
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %47, %46, %32
  ret void
}

declare dso_local i32 @umcs7840_stop_read(%struct.ucom_softc*) #1

declare dso_local i32 @umcs7840_stop_write(%struct.ucom_softc*) #1

declare dso_local i32 @umcs7840_set_UART_reg_sync(%struct.umcs7840_softc*, i64, i32, i32) #1

declare dso_local i64 @umcs7840_get_reg_sync(%struct.umcs7840_softc*, i32, i32*) #1

declare dso_local i64 @umcs7840_set_reg_sync(%struct.umcs7840_softc*, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
