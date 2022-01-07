; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_read_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_read_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_mmc_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_command* }
%struct.mmc_command = type { i32, i32* }

@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@JZ_MSC_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4780_mmc_softc*)* @jz4780_mmc_read_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_mmc_read_response(%struct.jz4780_mmc_softc* %0) #0 {
  %2 = alloca %struct.jz4780_mmc_softc*, align 8
  %3 = alloca %struct.mmc_command*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.jz4780_mmc_softc* %0, %struct.jz4780_mmc_softc** %2, align 8
  %6 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %7 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  store %struct.mmc_command* %10, %struct.mmc_command** %3, align 8
  %11 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %100

17:                                               ; preds = %1
  %18 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MMC_RSP_136, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %17
  %25 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %26 = load i32, i32* @JZ_MSC_RES, align 4
  %27 = call i32 @JZ_MMC_READ_2(%struct.jz4780_mmc_softc* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %66, %24
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %69

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 %32, 24
  %34 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %41 = load i32, i32* @JZ_MSC_RES, align 4
  %42 = call i32 @JZ_MMC_READ_2(%struct.jz4780_mmc_softc* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 %43, 8
  %45 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %46 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %44
  store i32 %52, i32* %50, align 4
  %53 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %54 = load i32, i32* @JZ_MSC_RES, align 4
  %55 = call i32 @JZ_MMC_READ_2(%struct.jz4780_mmc_softc* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = ashr i32 %56, 8
  %58 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %59 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %57
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %31
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %28

69:                                               ; preds = %28
  br label %99

70:                                               ; preds = %17
  %71 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %72 = load i32, i32* @JZ_MSC_RES, align 4
  %73 = call i32 @JZ_MMC_READ_2(%struct.jz4780_mmc_softc* %71, i32 %72)
  %74 = shl i32 %73, 24
  %75 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %76 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %74, i32* %78, align 4
  %79 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %80 = load i32, i32* @JZ_MSC_RES, align 4
  %81 = call i32 @JZ_MMC_READ_2(%struct.jz4780_mmc_softc* %79, i32 %80)
  %82 = shl i32 %81, 8
  %83 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %84 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %82
  store i32 %88, i32* %86, align 4
  %89 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %2, align 8
  %90 = load i32, i32* @JZ_MSC_RES, align 4
  %91 = call i32 @JZ_MMC_READ_2(%struct.jz4780_mmc_softc* %89, i32 %90)
  %92 = and i32 %91, 255
  %93 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %94 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %92
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %70, %69
  br label %100

100:                                              ; preds = %99, %1
  ret void
}

declare dso_local i32 @JZ_MMC_READ_2(%struct.jz4780_mmc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
