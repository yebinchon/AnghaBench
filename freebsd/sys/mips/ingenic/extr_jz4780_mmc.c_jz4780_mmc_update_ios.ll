; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_update_ios.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_update_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_mmc_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i32, i64 }

@JZ_BUS_WIDTH_M = common dso_local global i32 0, align 4
@JZ_BUS_1BIT = common dso_local global i32 0, align 4
@JZ_BUS_4BIT = common dso_local global i32 0, align 4
@JZ_BUS_8BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @jz4780_mmc_update_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_mmc_update_ios(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jz4780_mmc_softc*, align 8
  %7 = alloca %struct.mmc_ios*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.jz4780_mmc_softc* @device_get_softc(i32 %9)
  store %struct.jz4780_mmc_softc* %10, %struct.jz4780_mmc_softc** %6, align 8
  %11 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %6, align 8
  %12 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.mmc_ios* %13, %struct.mmc_ios** %7, align 8
  %14 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %15 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %6, align 8
  %20 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %21 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @jz4780_mmc_config_clock(%struct.jz4780_mmc_softc* %19, i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %70

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.mmc_ios*, %struct.mmc_ios** %7, align 8
  %31 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %69 [
    i32 130, label %33
    i32 129, label %45
    i32 128, label %57
  ]

33:                                               ; preds = %29
  %34 = load i32, i32* @JZ_BUS_WIDTH_M, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %6, align 8
  %37 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @JZ_BUS_1BIT, align 4
  %41 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %6, align 8
  %42 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %69

45:                                               ; preds = %29
  %46 = load i32, i32* @JZ_BUS_WIDTH_M, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %6, align 8
  %49 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* @JZ_BUS_4BIT, align 4
  %53 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %6, align 8
  %54 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %69

57:                                               ; preds = %29
  %58 = load i32, i32* @JZ_BUS_WIDTH_M, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %6, align 8
  %61 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @JZ_BUS_8BIT, align 4
  %65 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %6, align 8
  %66 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %29, %57, %45, %33
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %26
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.jz4780_mmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @jz4780_mmc_config_clock(%struct.jz4780_mmc_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
