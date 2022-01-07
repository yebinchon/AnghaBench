; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiospi.c_gpio_spi_chip_deactivate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiospi.c_gpio_spi_chip_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_spi_softc = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"don't have CS%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_spi_softc*, i32)* @gpio_spi_chip_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_spi_chip_deactivate(%struct.gpio_spi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_spi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.gpio_spi_softc* %0, %struct.gpio_spi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %109 [
    i32 -1, label %6
    i32 0, label %65
    i32 1, label %76
    i32 2, label %87
    i32 3, label %98
  ]

6:                                                ; preds = %2
  %7 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @GPIOBUS_PIN_SET(i32 %9, i32 %12, i32 %15, i32 1)
  %17 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %18 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 255
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %115

22:                                               ; preds = %6
  %23 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %24 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @GPIOBUS_PIN_SET(i32 %25, i32 %28, i32 %31, i32 1)
  %33 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %34 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 255
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %115

38:                                               ; preds = %22
  %39 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %40 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %43 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %46 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @GPIOBUS_PIN_SET(i32 %41, i32 %44, i32 %47, i32 1)
  %49 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %50 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 255
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %115

54:                                               ; preds = %38
  %55 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %56 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %59 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %62 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @GPIOBUS_PIN_SET(i32 %57, i32 %60, i32 %63, i32 1)
  br label %115

65:                                               ; preds = %2
  %66 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %67 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %70 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %73 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @GPIOBUS_PIN_SET(i32 %68, i32 %71, i32 %74, i32 1)
  br label %115

76:                                               ; preds = %2
  %77 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %78 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %81 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %84 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @GPIOBUS_PIN_SET(i32 %79, i32 %82, i32 %85, i32 1)
  br label %115

87:                                               ; preds = %2
  %88 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %89 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %92 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %95 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @GPIOBUS_PIN_SET(i32 %90, i32 %93, i32 %96, i32 1)
  br label %115

98:                                               ; preds = %2
  %99 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %100 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %103 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %106 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @GPIOBUS_PIN_SET(i32 %101, i32 %104, i32 %107, i32 1)
  br label %115

109:                                              ; preds = %2
  %110 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %3, align 8
  %111 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %109, %98, %87, %76, %65, %54, %53, %37, %21
  ret void
}

declare dso_local i32 @GPIOBUS_PIN_SET(i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
