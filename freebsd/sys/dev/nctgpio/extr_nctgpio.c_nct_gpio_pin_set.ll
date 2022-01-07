; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nctgpio/extr_nctgpio.c_nct_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nctgpio/extr_nctgpio.c_nct_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @nct_gpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct_gpio_pin_set(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nct_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @NCT_IS_VALID_PIN(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %4, align 4
  br label %40

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.nct_softc* @device_get_softc(i32 %15)
  store %struct.nct_softc* %16, %struct.nct_softc** %8, align 8
  %17 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %18 = call i32 @GPIO_LOCK(%struct.nct_softc* %17)
  %19 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %20 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %14
  %30 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %31 = call i32 @GPIO_UNLOCK(%struct.nct_softc* %30)
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %14
  %34 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @nct_write_pin(%struct.nct_softc* %34, i64 %35, i64 %36)
  %38 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %39 = call i32 @GPIO_UNLOCK(%struct.nct_softc* %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %29, %12
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @NCT_IS_VALID_PIN(i64) #1

declare dso_local %struct.nct_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.nct_softc*) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.nct_softc*) #1

declare dso_local i32 @nct_write_pin(%struct.nct_softc*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
