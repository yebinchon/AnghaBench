; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/dwgpio/extr_dwgpio.c_dwgpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/dwgpio/extr_dwgpio.c_dwgpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwgpio_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @dwgpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwgpio_pin_set(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwgpio_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.dwgpio_softc* @device_get_softc(i32 %11)
  store %struct.dwgpio_softc* %12, %struct.dwgpio_softc** %8, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %32, %3
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %16 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %21 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %35

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %13

35:                                               ; preds = %30, %13
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %38 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %4, align 4
  br label %75

43:                                               ; preds = %35
  %44 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %45 = call i32 @GPIO_LOCK(%struct.dwgpio_softc* %44)
  %46 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %47 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %48 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GPIO_SWPORT_DR(i32 %49)
  %51 = call i32 @READ4(%struct.dwgpio_softc* %46, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 1, %55
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %65

59:                                               ; preds = %43
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 1, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %67 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %68 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @GPIO_SWPORT_DR(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @WRITE4(%struct.dwgpio_softc* %66, i32 %70, i32 %71)
  %73 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %8, align 8
  %74 = call i32 @GPIO_UNLOCK(%struct.dwgpio_softc* %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %65, %41
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.dwgpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.dwgpio_softc*) #1

declare dso_local i32 @READ4(%struct.dwgpio_softc*, i32) #1

declare dso_local i32 @GPIO_SWPORT_DR(i32) #1

declare dso_local i32 @WRITE4(%struct.dwgpio_softc*, i32, i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.dwgpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
