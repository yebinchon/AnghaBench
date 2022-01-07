; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioths.c_gpioths_dht_initread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioths.c_gpioths_dht_initread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"err(GPIOBUS_PIN_SETFLAGS, OUT) = %d\0A\00", align 1
@GPIO_PIN_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"err(GPIOBUS_PIN_SET, LOW) = %d\0A\00", align 1
@GPIOTHS_DHT_STARTCYCLE = common dso_local global i32 0, align 4
@GPIO_PIN_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"err(GPIOBUS_PIN_SET, HIGH) = %d\0A\00", align 1
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"err(GPIOBUS_PIN_SETFLAGS, IN) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gpioths_dht_initread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpioths_dht_initread(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %10 = call i32 @GPIOBUS_PIN_SETFLAGS(i32 %7, i32 %8, i32 0, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %60

18:                                               ; preds = %2
  %19 = call i32 @DELAY(i32 1)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GPIO_PIN_LOW, align 4
  %23 = call i32 @GPIOBUS_PIN_SET(i32 %20, i32 %21, i32 0, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %60

31:                                               ; preds = %18
  %32 = load i32, i32* @GPIOTHS_DHT_STARTCYCLE, align 4
  %33 = call i32 @DELAY(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @GPIO_PIN_HIGH, align 4
  %37 = call i32 @GPIOBUS_PIN_SET(i32 %34, i32 %35, i32 0, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %60

45:                                               ; preds = %31
  %46 = call i32 @DELAY(i32 1)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %50 = call i32 @GPIOBUS_PIN_SETFLAGS(i32 %47, i32 %48, i32 0, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %45
  %59 = call i32 @DELAY(i32 1)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %53, %40, %26, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @GPIOBUS_PIN_SETFLAGS(i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @GPIOBUS_PIN_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
