; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clock.c_jz4780_ehci_clk_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_clock.c_jz4780_ehci_clk_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_clock_softc = type { i32, i32 }

@JZ4780_CLK_OTGPHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_clock_softc*)* @jz4780_ehci_clk_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_ehci_clk_config(%struct.jz4780_clock_softc* %0) #0 {
  %2 = alloca %struct.jz4780_clock_softc*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jz4780_clock_softc* %0, %struct.jz4780_clock_softc** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 -1, i32* %6, align 4
  %7 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %2, align 8
  %8 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.jz4780_clock_softc*, %struct.jz4780_clock_softc** %2, align 8
  %11 = getelementptr inbounds %struct.jz4780_clock_softc, %struct.jz4780_clock_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @JZ4780_CLK_OTGPHY, align 4
  %14 = call i64 @clk_get_by_id(i32 %9, i32 %12, i32 %13, i32** %3)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %34

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @clk_get_parent(i32* %18, i32** %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %34

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @clk_get_freq(i32* %23, i32* %5)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %34

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @clk_set_freq(i32* %28, i32 %29, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %32, %26, %21, %16
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @clk_release(i32* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @clk_release(i32* %37)
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i64 @clk_get_by_id(i32, i32, i32, i32**) #1

declare dso_local i64 @clk_get_parent(i32*, i32**) #1

declare dso_local i64 @clk_get_freq(i32*, i32*) #1

declare dso_local i64 @clk_set_freq(i32*, i32, i32) #1

declare dso_local i32 @clk_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
