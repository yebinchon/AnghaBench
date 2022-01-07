; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_aoagpio_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_aoagpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_match = type { i64, i32* }
%struct.aoagpio_softc = type { i64, i8, i32*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"audio-gpio\00", align 1
@gpio_controls = common dso_local global %struct.gpio_match* null, align 8
@gpio_ctrls = common dso_local global %struct.aoagpio_softc** null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"audio-gpio-active-state\00", align 1
@GPIO_CTRL_EXTINT_SET = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aoagpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aoagpio_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gpio_match*, align 8
  %8 = alloca %struct.aoagpio_softc*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @ofw_bus_get_node(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %1
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %2, align 4
  br label %96

18:                                               ; preds = %13
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %20 = call i32 @bzero(i8* %19, i32 32)
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %23 = call i32 @OF_getprop(i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %22, i32 32)
  %24 = icmp sgt i32 %23, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  store i8* %26, i8** %6, align 8
  br label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = call i8* @ofw_bus_get_name(i32 %28)
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %27, %25
  %31 = load %struct.gpio_match*, %struct.gpio_match** @gpio_controls, align 8
  store %struct.gpio_match* %31, %struct.gpio_match** %7, align 8
  br label %32

32:                                               ; preds = %91, %30
  %33 = load %struct.gpio_match*, %struct.gpio_match** %7, align 8
  %34 = getelementptr inbounds %struct.gpio_match, %struct.gpio_match* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %94

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.gpio_match*, %struct.gpio_match** %7, align 8
  %40 = getelementptr inbounds %struct.gpio_match, %struct.gpio_match* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @strcmp(i8* %38, i32* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %90

44:                                               ; preds = %37
  %45 = load i32, i32* %3, align 4
  %46 = call %struct.aoagpio_softc* @device_get_softc(i32 %45)
  store %struct.aoagpio_softc* %46, %struct.aoagpio_softc** %8, align 8
  %47 = load %struct.aoagpio_softc*, %struct.aoagpio_softc** %8, align 8
  %48 = load %struct.aoagpio_softc**, %struct.aoagpio_softc*** @gpio_ctrls, align 8
  %49 = load %struct.gpio_match*, %struct.gpio_match** %7, align 8
  %50 = getelementptr inbounds %struct.gpio_match, %struct.gpio_match* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.aoagpio_softc*, %struct.aoagpio_softc** %48, i64 %51
  store %struct.aoagpio_softc* %47, %struct.aoagpio_softc** %52, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.aoagpio_softc*, %struct.aoagpio_softc** %8, align 8
  %55 = getelementptr inbounds %struct.aoagpio_softc, %struct.aoagpio_softc* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.gpio_match*, %struct.gpio_match** %7, align 8
  %57 = getelementptr inbounds %struct.gpio_match, %struct.gpio_match* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.aoagpio_softc*, %struct.aoagpio_softc** %8, align 8
  %60 = getelementptr inbounds %struct.aoagpio_softc, %struct.aoagpio_softc* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.aoagpio_softc*, %struct.aoagpio_softc** %8, align 8
  %62 = getelementptr inbounds %struct.aoagpio_softc, %struct.aoagpio_softc* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.aoagpio_softc*, %struct.aoagpio_softc** %8, align 8
  %64 = getelementptr inbounds %struct.aoagpio_softc, %struct.aoagpio_softc* %63, i32 0, i32 1
  store i8 0, i8* %64, align 8
  %65 = load %struct.aoagpio_softc*, %struct.aoagpio_softc** %8, align 8
  %66 = getelementptr inbounds %struct.aoagpio_softc, %struct.aoagpio_softc* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.aoagpio_softc*, %struct.aoagpio_softc** %8, align 8
  %69 = getelementptr inbounds %struct.aoagpio_softc, %struct.aoagpio_softc* %68, i32 0, i32 1
  %70 = call i32 @OF_getprop(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %69, i32 1)
  %71 = load %struct.gpio_match*, %struct.gpio_match** %7, align 8
  %72 = getelementptr inbounds %struct.gpio_match, %struct.gpio_match* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = shl i32 1, %74
  %76 = load i32, i32* @GPIO_CTRL_EXTINT_SET, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %44
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @aoagpio_int(i32 %80)
  br label %82

82:                                               ; preds = %79, %44
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.gpio_match*, %struct.gpio_match** %7, align 8
  %85 = getelementptr inbounds %struct.gpio_match, %struct.gpio_match* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @device_set_desc(i32 %83, i32* %86)
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @device_quiet(i32 %88)
  store i32 0, i32* %2, align 4
  br label %96

90:                                               ; preds = %37
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.gpio_match*, %struct.gpio_match** %7, align 8
  %93 = getelementptr inbounds %struct.gpio_match, %struct.gpio_match* %92, i32 1
  store %struct.gpio_match* %93, %struct.gpio_match** %7, align 8
  br label %32

94:                                               ; preds = %32
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %82, %16
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i8* @ofw_bus_get_name(i32) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local %struct.aoagpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @aoagpio_int(i32) #1

declare dso_local i32 @device_set_desc(i32, i32*) #1

declare dso_local i32 @device_quiet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
