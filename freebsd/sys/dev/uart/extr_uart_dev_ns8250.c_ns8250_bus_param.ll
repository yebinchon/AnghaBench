; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_ns8250.c_ns8250_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.ns8250_softc = type { i64 }

@DW_REG_USR = common dso_local global i32 0, align 4
@USR_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns8250_bus_param(%struct.uart_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ns8250_softc*, align 8
  %13 = alloca %struct.uart_bas*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.uart_softc*, %struct.uart_softc** %7, align 8
  %17 = bitcast %struct.uart_softc* %16 to %struct.ns8250_softc*
  store %struct.ns8250_softc* %17, %struct.ns8250_softc** %12, align 8
  %18 = load %struct.uart_softc*, %struct.uart_softc** %7, align 8
  %19 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %18, i32 0, i32 1
  store %struct.uart_bas* %19, %struct.uart_bas** %13, align 8
  %20 = load %struct.uart_softc*, %struct.uart_softc** %7, align 8
  %21 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @uart_lock(i32 %22)
  %24 = load %struct.ns8250_softc*, %struct.ns8250_softc** %12, align 8
  %25 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %5
  store i32 10240, i32* %15, align 4
  br label %29

29:                                               ; preds = %42, %28
  %30 = load %struct.uart_bas*, %struct.uart_bas** %13, align 8
  %31 = load i32, i32* @DW_REG_USR, align 4
  %32 = call i32 @uart_getreg(%struct.uart_bas* %30, i32 %31)
  %33 = load i32, i32* @USR_BUSY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %36, %29
  %41 = phi i1 [ false, %29 ], [ %39, %36 ]
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = call i32 @DELAY(i32 4)
  br label %29

44:                                               ; preds = %40
  %45 = load i32, i32* %15, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.uart_softc*, %struct.uart_softc** %7, align 8
  %49 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @uart_unlock(i32 %50)
  %52 = load i32, i32* @EIO, align 4
  store i32 %52, i32* %6, align 4
  br label %66

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %5
  %55 = load %struct.uart_bas*, %struct.uart_bas** %13, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @ns8250_param(%struct.uart_bas* %55, i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.uart_softc*, %struct.uart_softc** %7, align 8
  %62 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @uart_unlock(i32 %63)
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %54, %47
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @uart_unlock(i32) #1

declare dso_local i32 @ns8250_param(%struct.uart_bas*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
