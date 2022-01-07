; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_quicc.c_quicc_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_quicc.c_quicc_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.uart_devinfo*, %struct.uart_bas }
%struct.uart_devinfo = type { i32, i32, i32, i32 }
%struct.uart_bas = type { i64 }

@UART_PARITY_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @quicc_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quicc_bus_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca %struct.uart_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 1
  store %struct.uart_bas* %8, %struct.uart_bas** %3, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 0
  %11 = load %struct.uart_devinfo*, %struct.uart_devinfo** %10, align 8
  %12 = icmp ne %struct.uart_devinfo* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %15 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %14, i32 0, i32 0
  %16 = load %struct.uart_devinfo*, %struct.uart_devinfo** %15, align 8
  store %struct.uart_devinfo* %16, %struct.uart_devinfo** %4, align 8
  %17 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %18 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %19 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %22 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %25 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %28 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @quicc_param(%struct.uart_bas* %17, i32 %20, i32 %23, i32 %26, i32 %29)
  br label %35

31:                                               ; preds = %1
  %32 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %33 = load i32, i32* @UART_PARITY_NONE, align 4
  %34 = call i32 @quicc_setup(%struct.uart_bas* %32, i32 9600, i32 8, i32 1, i32 %33)
  br label %35

35:                                               ; preds = %31, %13
  %36 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %37 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %38 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 1
  %41 = call i32 @QUICC_PRAM_SCC_RBASE(i64 %40)
  %42 = call i32 @quicc_read2(%struct.uart_bas* %36, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @quicc_read2(%struct.uart_bas* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, 36864
  %50 = call i32 @quicc_write2(%struct.uart_bas* %46, i32 %47, i32 %49)
  %51 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %52 = call i32 @quicc_bus_getsig(%struct.uart_softc* %51)
  ret i32 0
}

declare dso_local i32 @quicc_param(%struct.uart_bas*, i32, i32, i32, i32) #1

declare dso_local i32 @quicc_setup(%struct.uart_bas*, i32, i32, i32, i32) #1

declare dso_local i32 @quicc_read2(%struct.uart_bas*, i32) #1

declare dso_local i32 @QUICC_PRAM_SCC_RBASE(i64) #1

declare dso_local i32 @quicc_write2(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @quicc_bus_getsig(%struct.uart_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
