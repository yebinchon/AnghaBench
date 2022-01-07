; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiospi.c_gpio_spi_txrx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiospi.c_gpio_spi_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_spi_softc = type { i32, i32, i32, i32, i32 }

@SPIBUS_MODE_CPOL = common dso_local global i32 0, align 4
@SPIBUS_MODE_CPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_spi_softc*, i32, i32, i32)* @gpio_spi_txrx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_spi_txrx(%struct.gpio_spi_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gpio_spi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gpio_spi_softc* %0, %struct.gpio_spi_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 128, i32* %9, align 4
  br label %12

12:                                               ; preds = %160, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %163

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SPIBUS_MODE_CPOL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SPIBUS_MODE_CPHA, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %91

23:                                               ; preds = %19, %15
  %24 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %25 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %28 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %31 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = call i32 @GPIOBUS_PIN_SET(i32 %26, i32 %29, i32 %32, i32 %38)
  %40 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %41 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %44 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %47 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @GPIOBUS_PIN_SET(i32 %42, i32 %45, i32 %48, i32 0)
  %50 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %51 = call i32 @gpio_delay(%struct.gpio_spi_softc* %50)
  %52 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %53 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 255
  br i1 %55, label %56, label %76

56:                                               ; preds = %23
  %57 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %58 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %61 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %64 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @GPIOBUS_PIN_GET(i32 %59, i32 %62, i32 %65, i32* %11)
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i32, i32* %9, align 4
  br label %72

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %72, %23
  %77 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %78 = call i32 @gpio_delay(%struct.gpio_spi_softc* %77)
  %79 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %80 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %83 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %86 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @GPIOBUS_PIN_SET(i32 %81, i32 %84, i32 %87, i32 1)
  %89 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %90 = call i32 @gpio_delay(%struct.gpio_spi_softc* %89)
  br label %159

91:                                               ; preds = %19
  %92 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %93 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %96 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %99 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 0
  %107 = call i32 @GPIOBUS_PIN_SET(i32 %94, i32 %97, i32 %100, i32 %106)
  %108 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %109 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %112 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %115 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @GPIOBUS_PIN_SET(i32 %110, i32 %113, i32 %116, i32 1)
  %118 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %119 = call i32 @gpio_delay(%struct.gpio_spi_softc* %118)
  %120 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %121 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 255
  br i1 %123, label %124, label %144

124:                                              ; preds = %91
  %125 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %126 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %129 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %132 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @GPIOBUS_PIN_GET(i32 %127, i32 %130, i32 %133, i32* %11)
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %124
  %138 = load i32, i32* %9, align 4
  br label %140

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139, %137
  %141 = phi i32 [ %138, %137 ], [ 0, %139 ]
  %142 = load i32, i32* %10, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %140, %91
  %145 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %146 = call i32 @gpio_delay(%struct.gpio_spi_softc* %145)
  %147 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %148 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %151 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %154 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @GPIOBUS_PIN_SET(i32 %149, i32 %152, i32 %155, i32 0)
  %157 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %5, align 8
  %158 = call i32 @gpio_delay(%struct.gpio_spi_softc* %157)
  br label %159

159:                                              ; preds = %144, %76
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %9, align 4
  %162 = ashr i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %12

163:                                              ; preds = %12
  %164 = load i32, i32* %10, align 4
  %165 = and i32 %164, 255
  ret i32 %165
}

declare dso_local i32 @GPIOBUS_PIN_SET(i32, i32, i32, i32) #1

declare dso_local i32 @gpio_delay(%struct.gpio_spi_softc*) #1

declare dso_local i32 @GPIOBUS_PIN_GET(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
