; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_bytgpio.c_bytgpio_pad_is_gpio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_bytgpio.c_bytgpio_pad_is_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bytgpio_softc = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PADCONF_FUNC_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bytgpio_softc*, i32)* @bytgpio_pad_is_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bytgpio_pad_is_gpio(%struct.bytgpio_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bytgpio_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.bytgpio_softc* %0, %struct.bytgpio_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %7 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PADCONF_FUNC_ANY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %33, label %16

16:                                               ; preds = %2
  %17 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %18 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bytgpio_softc*, %struct.bytgpio_softc** %4, align 8
  %25 = getelementptr inbounds %struct.bytgpio_softc, %struct.bytgpio_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %23, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %16, %2
  store i32 1, i32* %3, align 4
  br label %35

34:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
