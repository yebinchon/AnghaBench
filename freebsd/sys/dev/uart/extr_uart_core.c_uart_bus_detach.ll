; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_bus_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_core.c_uart_bus_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.TYPE_5__*, i32, i32*, i32, i32, i32*, i32, i32, %struct.uart_softc*, %struct.uart_softc*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.uart_softc*)*, i32* }
%struct.TYPE_6__ = type { i64 }

@M_UART = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_bus_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.uart_softc* @device_get_softc(i32 %4)
  store %struct.uart_softc* %5, %struct.uart_softc** %3, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 11
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %14 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %13, i32 0, i32 11
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %19 = call i32 @UART_DETACH(%struct.uart_softc* %18)
  %20 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %21 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %20, i32 0, i32 11
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %26 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %25, i32 0, i32 11
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (%struct.uart_softc*)*, i32 (%struct.uart_softc*)** %28, align 8
  %30 = icmp ne i32 (%struct.uart_softc*)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %33 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %32, i32 0, i32 11
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.uart_softc*)*, i32 (%struct.uart_softc*)** %35, align 8
  %37 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %38 = call i32 %36(%struct.uart_softc* %37)
  br label %42

39:                                               ; preds = %24, %17
  %40 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %41 = call i32 @uart_tty_detach(%struct.uart_softc* %40)
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %44 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %43, i32 0, i32 10
  %45 = load %struct.uart_softc*, %struct.uart_softc** %44, align 8
  %46 = load i32, i32* @M_UART, align 4
  %47 = call i32 @free(%struct.uart_softc* %45, i32 %46)
  %48 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %49 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %48, i32 0, i32 9
  %50 = load %struct.uart_softc*, %struct.uart_softc** %49, align 8
  %51 = load i32, i32* @M_UART, align 4
  %52 = call i32 @free(%struct.uart_softc* %50, i32 %51)
  %53 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %54 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %42
  %58 = load i32, i32* %2, align 4
  %59 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %60 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %59, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %63 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bus_teardown_intr(i32 %58, i32* %61, i32 %64)
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @SYS_RES_IRQ, align 4
  %68 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %69 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %72 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @bus_release_resource(i32 %66, i32 %67, i32 %70, i32* %73)
  br label %75

75:                                               ; preds = %57, %42
  %76 = load i32, i32* %2, align 4
  %77 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %78 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %81 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %84 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @bus_release_resource(i32 %76, i32 %79, i32 %82, i32* %85)
  %87 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %88 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %87, i32 0, i32 2
  %89 = call i32 @mtx_destroy(i32* %88)
  %90 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %91 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %2, align 4
  %96 = call %struct.TYPE_6__* @device_get_driver(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %94, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %75
  %101 = load i32, i32* %2, align 4
  %102 = call i32 @device_set_softc(i32 %101, i32* null)
  %103 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %104 = load i32, i32* @M_UART, align 4
  %105 = call i32 @free(%struct.uart_softc* %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %75
  ret i32 0
}

declare dso_local %struct.uart_softc* @device_get_softc(i32) #1

declare dso_local i32 @UART_DETACH(%struct.uart_softc*) #1

declare dso_local i32 @uart_tty_detach(%struct.uart_softc*) #1

declare dso_local i32 @free(%struct.uart_softc*, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local %struct.TYPE_6__* @device_get_driver(i32) #1

declare dso_local i32 @device_set_softc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
