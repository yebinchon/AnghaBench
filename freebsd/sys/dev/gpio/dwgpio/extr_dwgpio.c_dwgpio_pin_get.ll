; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/dwgpio/extr_dwgpio.c_dwgpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/dwgpio/extr_dwgpio.c_dwgpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwgpio_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32*)* @dwgpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwgpio_pin_get(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dwgpio_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.dwgpio_softc* @device_get_softc(i32 %10)
  store %struct.dwgpio_softc* %11, %struct.dwgpio_softc** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %31, %3
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %15 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %20 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %34

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %12

34:                                               ; preds = %29, %12
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %37 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %60

42:                                               ; preds = %34
  %43 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %44 = call i32 @GPIO_LOCK(%struct.dwgpio_softc* %43)
  %45 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %46 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %47 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @GPIO_EXT_PORT(i32 %48)
  %50 = call i32 @READ4(%struct.dwgpio_softc* %45, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %59 = call i32 @GPIO_UNLOCK(%struct.dwgpio_softc* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %42, %40
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.dwgpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.dwgpio_softc*) #1

declare dso_local i32 @READ4(%struct.dwgpio_softc*, i32) #1

declare dso_local i32 @GPIO_EXT_PORT(i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.dwgpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
