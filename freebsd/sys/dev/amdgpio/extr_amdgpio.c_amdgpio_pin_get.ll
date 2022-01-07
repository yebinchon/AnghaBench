; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdgpio/extr_amdgpio.c_amdgpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdgpio/extr_amdgpio.c_amdgpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"pin %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@OUTPUT_VALUE_OFF = common dso_local global i32 0, align 4
@GPIO_PIN_HIGH = common dso_local global i32 0, align 4
@GPIO_PIN_LOW = common dso_local global i32 0, align 4
@PIN_STS_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"pin %d value 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32*)* @amdgpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpio_pin_get(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.amdgpio_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.amdgpio_softc* @device_get_softc(i32 %11)
  store %struct.amdgpio_softc* %12, %struct.amdgpio_softc** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @amdgpio_valid_pin(%struct.amdgpio_softc* %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %73

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %8, align 8
  %24 = call i32 @AMDGPIO_LOCK(%struct.amdgpio_softc* %23)
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @AMDGPIO_PIN_REGISTER(i64 %25)
  store i64 %26, i64* %9, align 8
  %27 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @amdgpio_read_4(%struct.amdgpio_softc* %27, i64 %28)
  store i64 %29, i64* %10, align 8
  %30 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %8, align 8
  %31 = getelementptr inbounds %struct.amdgpio_softc, %struct.amdgpio_softc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %21
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* @OUTPUT_VALUE_OFF, align 4
  %43 = call i64 @BIT(i32 %42)
  %44 = and i64 %41, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @GPIO_PIN_HIGH, align 4
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  br label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @GPIO_PIN_LOW, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %66

53:                                               ; preds = %21
  %54 = load i64, i64* %10, align 8
  %55 = load i32, i32* @PIN_STS_OFF, align 4
  %56 = call i64 @BIT(i32 %55)
  %57 = and i64 %54, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @GPIO_PIN_HIGH, align 4
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  br label %65

62:                                               ; preds = %53
  %63 = load i32, i32* @GPIO_PIN_LOW, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i64, i64* %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %67, i32 %69)
  %71 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %8, align 8
  %72 = call i32 @AMDGPIO_UNLOCK(%struct.amdgpio_softc* %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %66, %19
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.amdgpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @dprintf(i8*, i64, ...) #1

declare dso_local i32 @amdgpio_valid_pin(%struct.amdgpio_softc*, i64) #1

declare dso_local i32 @AMDGPIO_LOCK(%struct.amdgpio_softc*) #1

declare dso_local i64 @AMDGPIO_PIN_REGISTER(i64) #1

declare dso_local i64 @amdgpio_read_4(%struct.amdgpio_softc*, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @AMDGPIO_UNLOCK(%struct.amdgpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
