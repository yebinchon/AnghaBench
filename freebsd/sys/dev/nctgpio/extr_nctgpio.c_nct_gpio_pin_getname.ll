; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nctgpio/extr_nctgpio.c_nct_gpio_pin_getname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nctgpio/extr_nctgpio.c_nct_gpio_pin_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIOMAXNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*)* @nct_gpio_pin_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct_gpio_pin_getname(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nct_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @NCT_IS_VALID_PIN(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %4, align 4
  br label %33

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.nct_softc* @device_get_softc(i32 %15)
  store %struct.nct_softc* %16, %struct.nct_softc** %8, align 8
  %17 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %18 = call i32 @GPIO_ASSERT_UNLOCKED(%struct.nct_softc* %17)
  %19 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %20 = call i32 @GPIO_LOCK(%struct.nct_softc* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %23 = getelementptr inbounds %struct.nct_softc, %struct.nct_softc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GPIOMAXNAME, align 4
  %30 = call i32 @memcpy(i8* %21, i32 %28, i32 %29)
  %31 = load %struct.nct_softc*, %struct.nct_softc** %8, align 8
  %32 = call i32 @GPIO_UNLOCK(%struct.nct_softc* %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %14, %12
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @NCT_IS_VALID_PIN(i64) #1

declare dso_local %struct.nct_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_ASSERT_UNLOCKED(%struct.nct_softc*) #1

declare dso_local i32 @GPIO_LOCK(%struct.nct_softc*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.nct_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
