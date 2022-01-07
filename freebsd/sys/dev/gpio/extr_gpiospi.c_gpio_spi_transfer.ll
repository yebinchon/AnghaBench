; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiospi.c_gpio_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiospi.c_gpio_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.gpio_spi_softc = type { i32, i32, i32 }
%struct.spibus_ivar = type { i64, i32 }

@.str = private unnamed_addr constant [36 x i8] c"TX/RX command sizes should be equal\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"TX/RX data sizes should be equal\00", align 1
@SPIBUS_MODE_CPOL = common dso_local global i64 0, align 8
@SPIBUS_MODE_CPHA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.spi_command*)* @gpio_spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_spi_transfer(i32 %0, i32 %1, %struct.spi_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_command*, align 8
  %7 = alloca %struct.gpio_spi_softc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.spibus_ivar*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.spi_command* %2, %struct.spi_command** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.spibus_ivar* @SPIBUS_IVAR(i32 %12)
  store %struct.spibus_ivar* %13, %struct.spibus_ivar** %10, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.gpio_spi_softc* @device_get_softc(i32 %14)
  store %struct.gpio_spi_softc* %15, %struct.gpio_spi_softc** %7, align 8
  %16 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %17 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %20 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %26 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %29 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %35 = load %struct.spibus_ivar*, %struct.spibus_ivar** %10, align 8
  %36 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @gpio_spi_chip_activate(%struct.gpio_spi_softc* %34, i32 %37)
  %39 = load %struct.spibus_ivar*, %struct.spibus_ivar** %10, align 8
  %40 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SPIBUS_MODE_CPOL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %3
  %45 = load %struct.spibus_ivar*, %struct.spibus_ivar** %10, align 8
  %46 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SPIBUS_MODE_CPHA, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44, %3
  %51 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %52 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %55 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %58 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @GPIOBUS_PIN_SET(i32 %53, i32 %56, i32 %59, i32 1)
  br label %72

61:                                               ; preds = %44
  %62 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %63 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %66 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %69 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @GPIOBUS_PIN_SET(i32 %64, i32 %67, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %61, %50
  %73 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %74 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %9, align 8
  %77 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %78 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %8, align 8
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %105, %72
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %84 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %81
  %88 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %89 = load %struct.spibus_ivar*, %struct.spibus_ivar** %10, align 8
  %90 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.spibus_ivar*, %struct.spibus_ivar** %10, align 8
  %93 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @gpio_spi_txrx(%struct.gpio_spi_softc* %88, i32 %91, i64 %94, i32 %99)
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %87
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %81

108:                                              ; preds = %81
  %109 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %110 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  store i32* %112, i32** %9, align 8
  %113 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %114 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i32*
  store i32* %116, i32** %8, align 8
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %141, %108
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %120 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %144

123:                                              ; preds = %117
  %124 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %125 = load %struct.spibus_ivar*, %struct.spibus_ivar** %10, align 8
  %126 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.spibus_ivar*, %struct.spibus_ivar** %10, align 8
  %129 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @gpio_spi_txrx(%struct.gpio_spi_softc* %124, i32 %127, i64 %130, i32 %135)
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %136, i32* %140, align 4
  br label %141

141:                                              ; preds = %123
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  br label %117

144:                                              ; preds = %117
  %145 = load %struct.spibus_ivar*, %struct.spibus_ivar** %10, align 8
  %146 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SPIBUS_MODE_CPOL, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %156, label %150

150:                                              ; preds = %144
  %151 = load %struct.spibus_ivar*, %struct.spibus_ivar** %10, align 8
  %152 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @SPIBUS_MODE_CPHA, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %150, %144
  %157 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %158 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %161 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %164 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @GPIOBUS_PIN_SET(i32 %159, i32 %162, i32 %165, i32 1)
  br label %178

167:                                              ; preds = %150
  %168 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %169 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %172 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %175 = getelementptr inbounds %struct.gpio_spi_softc, %struct.gpio_spi_softc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @GPIOBUS_PIN_SET(i32 %170, i32 %173, i32 %176, i32 0)
  br label %178

178:                                              ; preds = %167, %156
  %179 = load %struct.gpio_spi_softc*, %struct.gpio_spi_softc** %7, align 8
  %180 = load %struct.spibus_ivar*, %struct.spibus_ivar** %10, align 8
  %181 = getelementptr inbounds %struct.spibus_ivar, %struct.spibus_ivar* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @gpio_spi_chip_deactivate(%struct.gpio_spi_softc* %179, i32 %182)
  ret i32 0
}

declare dso_local %struct.spibus_ivar* @SPIBUS_IVAR(i32) #1

declare dso_local %struct.gpio_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @gpio_spi_chip_activate(%struct.gpio_spi_softc*, i32) #1

declare dso_local i32 @GPIOBUS_PIN_SET(i32, i32, i32, i32) #1

declare dso_local i32 @gpio_spi_txrx(%struct.gpio_spi_softc*, i32, i64, i32) #1

declare dso_local i32 @gpio_spi_chip_deactivate(%struct.gpio_spi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
