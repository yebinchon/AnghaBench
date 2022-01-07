; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioiic.c_gpioiic_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpioiic.c_gpioiic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiobus_ivar = type { i64 }

@GPIOIIC_MIN_PINS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"gpioiic needs at least %d GPIO pins (only %d given).\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"GPIO I2C bit-banging driver\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpioiic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpioiic_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpiobus_ivar*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32 %5)
  store %struct.gpiobus_ivar* %6, %struct.gpiobus_ivar** %4, align 8
  %7 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %4, align 8
  %8 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GPIOIIC_MIN_PINS, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i64, i64* @GPIOIIC_MIN_PINS, align 8
  %15 = load %struct.gpiobus_ivar*, %struct.gpiobus_ivar** %4, align 8
  %16 = getelementptr inbounds %struct.gpiobus_ivar, %struct.gpiobus_ivar* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %17)
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_set_desc(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.gpiobus_ivar* @GPIOBUS_IVAR(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i64) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
