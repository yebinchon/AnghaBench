; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_bus_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@SAB_DAFO = common dso_local global i32 0, align 4
@SAB_DAFO_XBRK = common dso_local global i32 0, align 4
@SAB_MODE = common dso_local global i32 0, align 4
@SAB_MODE_RTS = common dso_local global i32 0, align 4
@SAB_MODE_FRTS = common dso_local global i32 0, align 4
@SAB_MODE_FCTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32, i64)* @sab82532_bus_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sab82532_bus_ioctl(%struct.uart_softc* %0, i32 %1, i64 %2) #0 {
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
  switch i32 %17, label %91 [
    i32 130, label %18
    i32 129, label %40
    i32 128, label %69
  ]

18:                                               ; preds = %3
  %19 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %20 = load i32, i32* @SAB_DAFO, align 4
  %21 = call i32 @uart_getreg(%struct.uart_bas* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @SAB_DAFO_XBRK, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %33

28:                                               ; preds = %18
  %29 = load i32, i32* @SAB_DAFO_XBRK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %35 = load i32, i32* @SAB_DAFO, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @uart_setreg(%struct.uart_bas* %34, i32 %35, i32 %36)
  %38 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %39 = call i32 @uart_barrier(%struct.uart_bas* %38)
  br label %93

40:                                               ; preds = %3
  %41 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %42 = load i32, i32* @SAB_MODE, align 4
  %43 = call i32 @uart_getreg(%struct.uart_bas* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i32, i32* @SAB_MODE_RTS, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @SAB_MODE_FRTS, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %62

54:                                               ; preds = %40
  %55 = load i32, i32* @SAB_MODE_RTS, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @SAB_MODE_FRTS, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %54, %46
  %63 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %64 = load i32, i32* @SAB_MODE, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @uart_setreg(%struct.uart_bas* %63, i32 %64, i32 %65)
  %67 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %68 = call i32 @uart_barrier(%struct.uart_bas* %67)
  br label %93

69:                                               ; preds = %3
  %70 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %71 = load i32, i32* @SAB_MODE, align 4
  %72 = call i32 @uart_getreg(%struct.uart_bas* %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32, i32* @SAB_MODE_FCTS, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %84

80:                                               ; preds = %69
  %81 = load i32, i32* @SAB_MODE_FCTS, align 4
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %86 = load i32, i32* @SAB_MODE, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @uart_setreg(%struct.uart_bas* %85, i32 %86, i32 %87)
  %89 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %90 = call i32 @uart_barrier(%struct.uart_bas* %89)
  br label %93

91:                                               ; preds = %3
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %84, %62, %33
  %94 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %95 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @uart_unlock(i32 %96)
  %98 = load i32, i32* %10, align 4
  ret i32 %98
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
