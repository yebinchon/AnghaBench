; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/dwgpio/extr_dwgpio.c_dwgpio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/dwgpio/extr_dwgpio.c_dwgpio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwgpio_softc = type { i32, i32, i32, i32*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MTX_DEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"port %d\0A\00", align 1
@GPIO_VER_ID_CODE = common dso_local global i32 0, align 4
@boothowto = common dso_local global i32 0, align 4
@RB_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Version = 0x%08x\0A\00", align 1
@GPIO_CONFIG_REG2 = common dso_local global i32 0, align 4
@ENCODED_ID_PWIDTH_M = common dso_local global i32 0, align 4
@DEFAULT_CAPS = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIOMAXNAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"dwgpio%d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dwgpio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwgpio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwgpio_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.dwgpio_softc* @device_get_softc(i32 %9)
  store %struct.dwgpio_softc* %10, %struct.dwgpio_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  %13 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %14 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ofw_bus_get_node(i32 %15)
  %17 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %18 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %21 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %23 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_get_nameunit(i32 %24)
  %26 = load i32, i32* @MTX_DEF, align 4
  %27 = call i32 @mtx_init(i32* %23, i32 %25, i32* null, i32 %26)
  %28 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %29 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %32 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %31, i32 0, i32 0
  %33 = call i64 @OF_getencprop(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %32, i32 4)
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %148

37:                                               ; preds = %1
  %38 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %39 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %43 = load i32, i32* @GPIO_VER_ID_CODE, align 4
  %44 = call i32 @READ4(%struct.dwgpio_softc* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @boothowto, align 4
  %46 = load i32, i32* @RB_VERBOSE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %37
  %50 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %51 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %37
  %56 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %57 = load i32, i32* @GPIO_CONFIG_REG2, align 4
  %58 = call i32 @READ4(%struct.dwgpio_softc* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %61 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ENCODED_ID_PWIDTH_S(i32 %62)
  %64 = ashr i32 %59, %63
  %65 = load i32, i32* @ENCODED_ID_PWIDTH_M, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %70 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %130, %55
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %74 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %133

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %80 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 4
  %86 = load i32, i32* @DEFAULT_CAPS, align 4
  %87 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %88 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %87, i32 0, i32 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  store i32 %86, i32* %93, align 4
  %94 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %95 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %96 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @GPIO_SWPORT_DDR(i32 %97)
  %99 = call i32 @READ4(%struct.dwgpio_softc* %94, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = shl i32 1, %100
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %77
  %105 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  br label %108

106:                                              ; preds = %77
  %107 = load i32, i32* @GPIO_PIN_INPUT, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %111 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %110, i32 0, i32 4
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  store i32 %109, i32* %116, align 4
  %117 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %118 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %117, i32 0, i32 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @GPIOMAXNAME, align 4
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @device_get_unit(i32 %126)
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @snprintf(i32 %124, i32 %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %108
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %71

133:                                              ; preds = %71
  %134 = load i32, i32* %3, align 4
  %135 = call i32* @gpiobus_attach_bus(i32 %134)
  %136 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %137 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %136, i32 0, i32 3
  store i32* %135, i32** %137, align 8
  %138 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %139 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %133
  %143 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %4, align 8
  %144 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %143, i32 0, i32 2
  %145 = call i32 @mtx_destroy(i32* %144)
  %146 = load i32, i32* @ENXIO, align 4
  store i32 %146, i32* %2, align 4
  br label %148

147:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %142, %35
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.dwgpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @READ4(%struct.dwgpio_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @ENCODED_ID_PWIDTH_S(i32) #1

declare dso_local i32 @GPIO_SWPORT_DDR(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32* @gpiobus_attach_bus(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
