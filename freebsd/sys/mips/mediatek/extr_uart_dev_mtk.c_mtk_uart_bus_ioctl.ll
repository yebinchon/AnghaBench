; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_bus_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_uart_dev_mtk.c_mtk_uart_bus_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UART_CDDL_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32, i64)* @mtk_uart_bus_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_uart_bus_ioctl(%struct.uart_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.uart_bas*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 1
  store %struct.uart_bas* %12, %struct.uart_bas** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %14 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @uart_lock(i32 %15)
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %32 [
    i32 128, label %18
    i32 129, label %19
  ]

18:                                               ; preds = %3
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %21 = load i32, i32* @UART_CDDL_REG, align 4
  %22 = call i32 @uart_getreg(%struct.uart_bas* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %24 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 %26, 16
  %28 = sdiv i32 %25, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i64, i64* %6, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32 %29, i32* %31, align 4
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %32, %19, %18
  %35 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %36 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @uart_unlock(i32 %37)
  %39 = load i32, i32* %10, align 4
  ret i32 %39
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
