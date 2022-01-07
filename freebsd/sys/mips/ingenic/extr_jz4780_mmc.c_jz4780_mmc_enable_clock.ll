; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_enable_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_enable_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_mmc_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_mmc_softc*)* @jz4780_mmc_enable_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_mmc_enable_clock(%struct.jz4780_mmc_softc* %0) #0 {
  %2 = alloca %struct.jz4780_mmc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.jz4780_mmc_softc* %0, %struct.jz4780_mmc_softc** %2, align 8
  %4 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %5 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %8 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %7, i32 0, i32 0
  %9 = call i32 @clk_get_by_ofw_name(i32 %6, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %14 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_enable(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %22 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %25 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_set_freq(i32 %23, i32 %27, i32 0)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %34 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_release(i32 %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local i32 @clk_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
