; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_mmc_softc = type { i32, i32 }

@JZ_MSC_CTRL = common dso_local global i32 0, align 4
@JZ_CLOCK_STOP = common dso_local global i32 0, align 4
@JZ_MSC_STAT = common dso_local global i32 0, align 4
@JZ_CLK_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Failed to stop clk.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@JZ_RESET = common dso_local global i32 0, align 4
@JZ_IS_RESETTING = common dso_local global i32 0, align 4
@JZ_MSC_RESTO = common dso_local global i32 0, align 4
@JZ_MSC_RDTO = common dso_local global i32 0, align 4
@JZ_MSC_IMASK = common dso_local global i32 0, align 4
@JZ_MSC_IFLG = common dso_local global i32 0, align 4
@JZ_MSC_INT_ERR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_mmc_softc*)* @jz4780_mmc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_mmc_reset(%struct.jz4780_mmc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jz4780_mmc_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.jz4780_mmc_softc* %0, %struct.jz4780_mmc_softc** %3, align 8
  %5 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %6 = load i32, i32* @JZ_MSC_CTRL, align 4
  %7 = load i32, i32* @JZ_CLOCK_STOP, align 4
  %8 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %5, i32 %6, i32 %7)
  store i32 1000, i32* %4, align 4
  br label %9

9:                                                ; preds = %21, %1
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %15 = load i32, i32* @JZ_MSC_STAT, align 4
  %16 = call i32 @JZ_MMC_READ_4(%struct.jz4780_mmc_softc* %14, i32 %15)
  %17 = load i32, i32* @JZ_CLK_EN, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %23

21:                                               ; preds = %13
  %22 = call i32 @DELAY(i32 100)
  br label %9

23:                                               ; preds = %20, %9
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %28 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %31, i32* %2, align 4
  br label %71

32:                                               ; preds = %23
  %33 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %34 = load i32, i32* @JZ_MSC_CTRL, align 4
  %35 = load i32, i32* @JZ_RESET, align 4
  %36 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %33, i32 %34, i32 %35)
  store i32 10, i32* %4, align 4
  br label %37

37:                                               ; preds = %49, %32
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %4, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %43 = load i32, i32* @JZ_MSC_STAT, align 4
  %44 = call i32 @JZ_MMC_READ_4(%struct.jz4780_mmc_softc* %42, i32 %43)
  %45 = load i32, i32* @JZ_IS_RESETTING, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %51

49:                                               ; preds = %41
  %50 = call i32 @DELAY(i32 1000)
  br label %37

51:                                               ; preds = %48, %37
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %54, %51
  %56 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %57 = load i32, i32* @JZ_MSC_RESTO, align 4
  %58 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %56, i32 %57, i32 65535)
  %59 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %60 = load i32, i32* @JZ_MSC_RDTO, align 4
  %61 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %59, i32 %60, i32 -1)
  %62 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %63 = load i32, i32* @JZ_MSC_IMASK, align 4
  %64 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %62, i32 %63, i32 -1)
  %65 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %66 = load i32, i32* @JZ_MSC_IFLG, align 4
  %67 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %65, i32 %66, i32 -1)
  %68 = load i32, i32* @JZ_MSC_INT_ERR_BITS, align 4
  %69 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %3, align 8
  %70 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %55, %26
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc*, i32, i32) #1

declare dso_local i32 @JZ_MMC_READ_4(%struct.jz4780_mmc_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
