; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_z8530.c_z8530_bus_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.z8530_softc = type { i32 }

@TPC_BRK = common dso_local global i32 0, align 4
@WR_TPC = common dso_local global i32 0, align 4
@RR_TCH = common dso_local global i32 0, align 4
@RR_TCL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32, i64)* @z8530_bus_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z8530_bus_ioctl(%struct.uart_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.z8530_softc*, align 8
  %8 = alloca %struct.uart_bas*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %13 = bitcast %struct.uart_softc* %12 to %struct.z8530_softc*
  store %struct.z8530_softc* %13, %struct.z8530_softc** %7, align 8
  %14 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %15 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %14, i32 0, i32 1
  store %struct.uart_bas* %15, %struct.uart_bas** %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %17 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @uart_lock(i32 %18)
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %66 [
    i32 128, label %21
    i32 129, label %46
  ]

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* @TPC_BRK, align 4
  %26 = load %struct.z8530_softc*, %struct.z8530_softc** %7, align 8
  %27 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %37

30:                                               ; preds = %21
  %31 = load i32, i32* @TPC_BRK, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.z8530_softc*, %struct.z8530_softc** %7, align 8
  %34 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %39 = load i32, i32* @WR_TPC, align 4
  %40 = load %struct.z8530_softc*, %struct.z8530_softc** %7, align 8
  %41 = getelementptr inbounds %struct.z8530_softc, %struct.z8530_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @uart_setmreg(%struct.uart_bas* %38, i32 %39, i32 %42)
  %44 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %45 = call i32 @uart_barrier(%struct.uart_bas* %44)
  br label %68

46:                                               ; preds = %3
  %47 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %48 = load i32, i32* @RR_TCH, align 4
  %49 = call i32 @uart_getmreg(%struct.uart_bas* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = shl i32 %50, 8
  %52 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %53 = load i32, i32* @RR_TCL, align 4
  %54 = call i32 @uart_getmreg(%struct.uart_bas* %52, i32 %53)
  %55 = or i32 %51, %54
  store i32 %55, i32* %10, align 4
  %56 = load %struct.uart_bas*, %struct.uart_bas** %8, align 8
  %57 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 2
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 2
  %62 = sdiv i32 %59, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i64, i64* %6, align 8
  %65 = inttoptr i64 %64 to i32*
  store i32 %63, i32* %65, align 4
  br label %68

66:                                               ; preds = %3
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %66, %46, %37
  %69 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %70 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @uart_unlock(i32 %71)
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_setmreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_getmreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
