; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_bytgpio.c_bytgpio_pin_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_bytgpio.c_bytgpio_pin_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bytgpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@BYTGPIO_PAD_VAL = common dso_local global i32 0, align 4
@BYTGPIO_PAD_VAL_DIR_MASK = common dso_local global i32 0, align 4
@BYTGPIO_PAD_VAL_I_INPUT_ENABLED = common dso_local global i32 0, align 4
@BYTGPIO_PAD_VAL_I_OUTPUT_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @bytgpio_pin_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bytgpio_pin_setflags(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bytgpio_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.bytgpio_softc* @device_get_softc(i32 %12)
  store %struct.bytgpio_softc* %13, %struct.bytgpio_softc** %8, align 8
  %14 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @bytgpio_valid_pin(%struct.bytgpio_softc* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %85

20:                                               ; preds = %3
  %21 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @bytgpio_pad_is_gpio(%struct.bytgpio_softc* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %27 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %11, align 4
  br label %30

29:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %11, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %4, align 4
  br label %85

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %4, align 4
  br label %85

46:                                               ; preds = %38
  %47 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %8, align 8
  %48 = call i32 @BYTGPIO_LOCK(%struct.bytgpio_softc* %47)
  %49 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @BYTGPIO_PAD_VAL, align 4
  %52 = call i32 @BYGPIO_PIN_REGISTER(%struct.bytgpio_softc* %49, i32 %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @bytgpio_read_4(%struct.bytgpio_softc* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @BYTGPIO_PAD_VAL_DIR_MASK, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %46
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @BYTGPIO_PAD_VAL_I_INPUT_ENABLED, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %63, %46
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @BYTGPIO_PAD_VAL_I_OUTPUT_ENABLED, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @bytgpio_write_4(%struct.bytgpio_softc* %79, i32 %80, i32 %81)
  %83 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %8, align 8
  %84 = call i32 @BYTGPIO_UNLOCK(%struct.bytgpio_softc* %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %78, %44, %36, %18
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.bytgpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @bytgpio_valid_pin(%struct.bytgpio_softc*, i32) #1

declare dso_local i64 @bytgpio_pad_is_gpio(%struct.bytgpio_softc*, i32) #1

declare dso_local i32 @BYTGPIO_LOCK(%struct.bytgpio_softc*) #1

declare dso_local i32 @BYGPIO_PIN_REGISTER(%struct.bytgpio_softc*, i32, i32) #1

declare dso_local i32 @bytgpio_read_4(%struct.bytgpio_softc*, i32) #1

declare dso_local i32 @bytgpio_write_4(%struct.bytgpio_softc*, i32, i32) #1

declare dso_local i32 @BYTGPIO_UNLOCK(%struct.bytgpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
