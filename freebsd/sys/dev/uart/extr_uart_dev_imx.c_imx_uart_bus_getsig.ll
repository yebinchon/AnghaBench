; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_bus_getsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_imx.c_imx_uart_bus_getsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32 }

@USR2 = common dso_local global i32 0, align 4
@DCDIN = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@SER_DDCD = common dso_local global i32 0, align 4
@SER_MASK_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @imx_uart_bus_getsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_bus_getsig(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  br label %7

7:                                                ; preds = %38, %1
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %13 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @uart_lock(i32 %14)
  %16 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %17 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %16, i32 0, i32 2
  %18 = load i32, i32* @USR2, align 4
  %19 = call i32 @REG(i32 %18)
  %20 = call i32 @GETREG(i32* %17, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %22 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @uart_unlock(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @USR2, align 4
  %27 = load i32, i32* @DCDIN, align 4
  %28 = call i32 @FLD(i32 %26, i32 %27)
  %29 = and i32 %25, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SER_DCD, align 4
  %32 = load i32, i32* @SER_DDCD, align 4
  %33 = call i32 @SIGCHG(i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SER_MASK_DELTA, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %7
  %39 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %40 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @atomic_cmpset_32(i32* %40, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %7, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @GETREG(i32*, i32) #1

declare dso_local i32 @REG(i32) #1

declare dso_local i32 @uart_unlock(i32) #1

declare dso_local i32 @SIGCHG(i32, i32, i32, i32) #1

declare dso_local i32 @FLD(i32, i32) #1

declare dso_local i32 @atomic_cmpset_32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
