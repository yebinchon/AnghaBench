; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_bus_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_bus_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32, i64)* @imx_uart_bus_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_bus_ioctl(%struct.uart_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.uart_bas*, align 8
  %8 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 1
  store %struct.uart_bas* %10, %struct.uart_bas** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @uart_lock(i32 %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %22 [
    i32 128, label %16
    i32 129, label %17
  ]

16:                                               ; preds = %3
  br label %24

17:                                               ; preds = %3
  %18 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %19 = call i32 @imx_uart_getbaud(%struct.uart_bas* %18)
  %20 = load i64, i64* %6, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32 %19, i32* %21, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %22, %17, %16
  %25 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %26 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @uart_unlock(i32 %27)
  %29 = load i32, i32* %8, align 4
  ret i32 %29
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @imx_uart_getbaud(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
