; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macgpio.c_macgpio_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_macgpio.c_macgpio_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macgpio_softc = type { i32, i8**, i8**, i8** }

@GPIO_LEVELS_0 = common dso_local global i32 0, align 4
@GPIO_LEVELS_1 = common dso_local global i32 0, align 4
@GPIO_COUNT = common dso_local global i32 0, align 4
@GPIO_BASE = common dso_local global i64 0, align 8
@GPIO_EXTINT_COUNT = common dso_local global i32 0, align 4
@GPIO_EXTINT_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @macgpio_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macgpio_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.macgpio_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.macgpio_softc* @device_get_softc(i32 %5)
  store %struct.macgpio_softc* %6, %struct.macgpio_softc** %3, align 8
  %7 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %8 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GPIO_LEVELS_0, align 4
  %11 = call i8* @bus_read_4(i32 %9, i32 %10)
  %12 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %13 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %12, i32 0, i32 3
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  store i8* %11, i8** %15, align 8
  %16 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %17 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GPIO_LEVELS_1, align 4
  %20 = call i8* @bus_read_4(i32 %18, i32 %19)
  %21 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %22 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %21, i32 0, i32 3
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8* %20, i8** %24, align 8
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %44, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @GPIO_COUNT, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %31 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* @GPIO_BASE, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i8* @bus_read_1(i32 %32, i64 %36)
  %38 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %39 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %38, i32 0, i32 2
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  store i8* %37, i8** %43, align 8
  br label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %25

47:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @GPIO_EXTINT_COUNT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %48
  %53 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %54 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* @GPIO_EXTINT_BASE, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = call i8* @bus_read_1(i32 %55, i64 %59)
  %61 = load %struct.macgpio_softc*, %struct.macgpio_softc** %3, align 8
  %62 = getelementptr inbounds %struct.macgpio_softc, %struct.macgpio_softc* %61, i32 0, i32 1
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  store i8* %60, i8** %66, align 8
  br label %67

67:                                               ; preds = %52
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %48

70:                                               ; preds = %48
  ret i32 0
}

declare dso_local %struct.macgpio_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_read_4(i32, i32) #1

declare dso_local i8* @bus_read_1(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
