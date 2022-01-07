; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_bus_getsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_bus_getsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32 }

@SER_CTS = common dso_local global i32 0, align 4
@SER_DCTS = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@SER_DDCD = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@SER_DDSR = common dso_local global i32 0, align 4
@SER_MASK_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @sbbc_uart_bus_getsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbbc_uart_bus_getsig(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  br label %7

7:                                                ; preds = %31, %1
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SER_CTS, align 4
  %15 = load i32, i32* @SER_DCTS, align 4
  %16 = call i32 @SIGCHG(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SER_DCD, align 4
  %20 = load i32, i32* @SER_DDCD, align 4
  %21 = call i32 @SIGCHG(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SER_DSR, align 4
  %25 = load i32, i32* @SER_DDSR, align 4
  %26 = call i32 @SIGCHG(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SER_MASK_DELTA, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %7
  %32 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %33 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @atomic_cmpset_32(i32* %33, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %7, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @SIGCHG(i32, i32, i32, i32) #1

declare dso_local i32 @atomic_cmpset_32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
