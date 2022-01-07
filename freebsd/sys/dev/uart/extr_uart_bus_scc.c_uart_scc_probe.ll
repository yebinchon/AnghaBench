; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_scc.c_uart_scc_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_bus_scc.c_uart_scc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32* }

@SCC_IVAR_MODE = common dso_local global i32 0, align 4
@SCC_IVAR_CLASS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SCC_MODE_ASYNC = common dso_local global i64 0, align 8
@uart_quicc_class = common dso_local global i32 0, align 4
@uart_sab82532_class = common dso_local global i32 0, align 4
@uart_z8530_class = common dso_local global i32 0, align 4
@SCC_IVAR_CHANNEL = common dso_local global i32 0, align 4
@SCC_IVAR_CLOCK = common dso_local global i32 0, align 4
@SCC_IVAR_REGSHFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uart_scc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_scc_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_parent(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.uart_softc* @device_get_softc(i32 %12)
  store %struct.uart_softc* %13, %struct.uart_softc** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SCC_IVAR_MODE, align 4
  %17 = call i64 @BUS_READ_IVAR(i32 %14, i32 %15, i32 %16, i64* %8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @SCC_IVAR_CLASS, align 4
  %23 = call i64 @BUS_READ_IVAR(i32 %20, i32 %21, i32 %22, i64* %7)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %1
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %72

27:                                               ; preds = %19
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @SCC_MODE_ASYNC, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %72

33:                                               ; preds = %27
  %34 = load i64, i64* %7, align 8
  switch i64 %34, label %44 [
    i64 130, label %35
    i64 129, label %38
    i64 128, label %41
  ]

35:                                               ; preds = %33
  %36 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %37 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %36, i32 0, i32 0
  store i32* @uart_quicc_class, i32** %37, align 8
  br label %46

38:                                               ; preds = %33
  %39 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %40 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %39, i32 0, i32 0
  store i32* @uart_sab82532_class, i32** %40, align 8
  br label %46

41:                                               ; preds = %33
  %42 = load %struct.uart_softc*, %struct.uart_softc** %5, align 8
  %43 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %42, i32 0, i32 0
  store i32* @uart_z8530_class, i32** %43, align 8
  br label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %72

46:                                               ; preds = %41, %38, %35
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SCC_IVAR_CHANNEL, align 4
  %50 = call i64 @BUS_READ_IVAR(i32 %47, i32 %48, i32 %49, i64* %6)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SCC_IVAR_CLOCK, align 4
  %56 = call i64 @BUS_READ_IVAR(i32 %53, i32 %54, i32 %55, i64* %7)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @SCC_IVAR_REGSHFT, align 4
  %62 = call i64 @BUS_READ_IVAR(i32 %59, i32 %60, i32 %61, i64* %9)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58, %52, %46
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %2, align 4
  br label %72

66:                                               ; preds = %58
  %67 = load i32, i32* %3, align 4
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @uart_bus_probe(i32 %67, i64 %68, i32 0, i64 %69, i32 0, i64 %70, i32 0)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %66, %64, %44, %31, %25
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.uart_softc* @device_get_softc(i32) #1

declare dso_local i64 @BUS_READ_IVAR(i32, i32, i32, i64*) #1

declare dso_local i32 @uart_bus_probe(i32, i64, i32, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
