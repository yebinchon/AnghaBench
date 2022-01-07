; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macgpio.c_macgpio_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macgpio.c_macgpio_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macgpio_softc = type { i32*, i32, i32*, i32* }

@GPIO_LEVELS_0 = common dso_local global i32 0, align 4
@GPIO_LEVELS_1 = common dso_local global i32 0, align 4
@GPIO_COUNT = common dso_local global i32 0, align 4
@GPIO_BASE = common dso_local global i64 0, align 8
@GPIO_EXTINT_COUNT = common dso_local global i32 0, align 4
@GPIO_EXTINT_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @macgpio_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macgpio_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.macgpio_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.macgpio_softc* @device_get_softc(i32 %5)
  store %struct.macgpio_softc* %6, %struct.macgpio_softc** %3, align 8
  %7 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %8 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GPIO_LEVELS_0, align 4
  %11 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %12 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bus_write_4(i32 %9, i32 %10, i32 %15)
  %17 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %18 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GPIO_LEVELS_1, align 4
  %21 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %22 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bus_write_4(i32 %19, i32 %20, i32 %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %47, %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @GPIO_COUNT, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %33 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* @GPIO_BASE, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %40 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bus_write_1(i32 %34, i64 %38, i32 %45)
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %27

50:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %71, %50
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @GPIO_EXTINT_COUNT, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %57 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* @GPIO_EXTINT_BASE, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %64 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bus_write_1(i32 %58, i64 %62, i32 %69)
  br label %71

71:                                               ; preds = %55
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %51

74:                                               ; preds = %51
  ret i32 0
}

declare dso_local %struct.macgpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @bus_write_1(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
