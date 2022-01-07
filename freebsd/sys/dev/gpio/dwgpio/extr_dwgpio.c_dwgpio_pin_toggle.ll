; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/dwgpio/extr_dwgpio.c_dwgpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/dwgpio/extr_dwgpio.c_dwgpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwgpio_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @dwgpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwgpio_pin_toggle(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.dwgpio_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.dwgpio_softc* @device_get_softc(i32 %9)
  store %struct.dwgpio_softc* %10, %struct.dwgpio_softc** %6, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %6, align 8
  %14 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %6, align 8
  %19 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %33

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %11

33:                                               ; preds = %28, %11
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %6, align 8
  %36 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %76

41:                                               ; preds = %33
  %42 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %6, align 8
  %43 = call i32 @GPIO_LOCK(%struct.dwgpio_softc* %42)
  %44 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %6, align 8
  %45 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %6, align 8
  %46 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @GPIO_SWPORT_DR(i32 %47)
  %49 = call i32 @READ4(%struct.dwgpio_softc* %44, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %41
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 1, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %66

61:                                               ; preds = %41
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %61, %55
  %67 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %6, align 8
  %68 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %6, align 8
  %69 = getelementptr inbounds %struct.dwgpio_softc, %struct.dwgpio_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @GPIO_SWPORT_DR(i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @WRITE4(%struct.dwgpio_softc* %67, i32 %71, i32 %72)
  %74 = load %struct.dwgpio_softc*, %struct.dwgpio_softc** %6, align 8
  %75 = call i32 @GPIO_UNLOCK(%struct.dwgpio_softc* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %66, %39
  %77 = load i32, i32* %3, align 4
  ret i32 %77
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
