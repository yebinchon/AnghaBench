; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_getsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_getsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, i32, i32 }

@REG_MSR = common dso_local global i32 0, align 4
@UART_PPS_NARROW_PULSE = common dso_local global i32 0, align 4
@DSR = common dso_local global i32 0, align 4
@CTS = common dso_local global i32 0, align 4
@DCD = common dso_local global i32 0, align 4
@RI = common dso_local global i32 0, align 4
@SER_MASK_DELTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns8250_bus_getsig(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  br label %6

6:                                                ; preds = %60, %1
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @uart_lock(i32 %13)
  %15 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 3
  %17 = load i32, i32* @REG_MSR, align 4
  %18 = call i32 @uart_getreg(i32* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %20 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @uart_unlock(i32 %21)
  %23 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %24 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UART_PPS_NARROW_PULSE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %6
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @DSR, align 4
  %33 = call i32 @SIGCHGHW(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @CTS, align 4
  %37 = call i32 @SIGCHGHW(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @DCD, align 4
  %41 = call i32 @SIGCHGHW(i32 %38, i32 %39, i32 %40)
  br label %55

42:                                               ; preds = %6
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @DSR, align 4
  %46 = call i32 @SIGCHGSW(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @CTS, align 4
  %50 = call i32 @SIGCHGSW(i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @DCD, align 4
  %54 = call i32 @SIGCHGSW(i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %42, %29
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @RI, align 4
  %59 = call i32 @SIGCHGSW(i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55
  %61 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %62 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SER_MASK_DELTA, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = call i32 @atomic_cmpset_32(i32* %62, i32 %63, i32 %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br i1 %70, label %6, label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(i32*, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

declare dso_local i32 @SIGCHGHW(i32, i32, i32) #1

declare dso_local i32 @SIGCHGSW(i32, i32, i32) #1

declare dso_local i32 @atomic_cmpset_32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
