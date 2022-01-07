; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/fhc/extr_clkbrd.c_clkbrd_led_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/fhc/extr_clkbrd.c_clkbrd_led_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkbrd_softc = type { i32*, i32* }

@CLKBRD_CLK = common dso_local global i64 0, align 8
@CLK_CTRL = common dso_local global i32 0, align 4
@CLK_CTRL_RLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @clkbrd_led_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clkbrd_led_func(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clkbrd_softc*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.clkbrd_softc*
  store %struct.clkbrd_softc* %8, %struct.clkbrd_softc** %5, align 8
  %9 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %5, align 8
  %10 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @CLKBRD_CLK, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %5, align 8
  %16 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @CLKBRD_CLK, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CLK_CTRL, align 4
  %22 = call i32 @bus_space_read_1(i32 %14, i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @CLK_CTRL_RLED, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load i32, i32* @CLK_CTRL_RLED, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %5, align 8
  %36 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @CLKBRD_CLK, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %5, align 8
  %42 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @CLKBRD_CLK, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CLK_CTRL, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @bus_space_write_1(i32 %40, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %5, align 8
  %51 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @CLKBRD_CLK, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.clkbrd_softc*, %struct.clkbrd_softc** %5, align 8
  %57 = getelementptr inbounds %struct.clkbrd_softc, %struct.clkbrd_softc* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @CLKBRD_CLK, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CLK_CTRL, align 4
  %63 = call i32 @bus_space_read_1(i32 %55, i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
