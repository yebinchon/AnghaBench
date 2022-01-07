; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_pio_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_pio_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_mmc_softc = type { i32 }
%struct.mmc_data = type { i32, i32, i64 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@JZ_DATA_FIFO_FULL = common dso_local global i32 0, align 4
@JZ_DATA_FIFO_EMPTY = common dso_local global i32 0, align 4
@JZ_MSC_STAT = common dso_local global i32 0, align 4
@JZ_MSC_TXFIFO = common dso_local global i32 0, align 4
@JZ_MSC_RXFIFO = common dso_local global i32 0, align 4
@JZ_MSC_IMASK = common dso_local global i32 0, align 4
@JZ_INT_TXFIFO_WR_REQ = common dso_local global i32 0, align 4
@JZ_INT_RXFIFO_RD_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_mmc_softc*, %struct.mmc_data*)* @jz4780_mmc_pio_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_mmc_pio_transfer(%struct.jz4780_mmc_softc* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jz4780_mmc_softc*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.jz4780_mmc_softc* %0, %struct.jz4780_mmc_softc** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  %10 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %11 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MMC_DATA_WRITE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @JZ_DATA_FIFO_FULL, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @JZ_DATA_FIFO_EMPTY, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %6, align 4
  %30 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %31 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %73, %28
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 2
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %33
  %41 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %42 = load i32, i32* @JZ_MSC_STAT, align 4
  %43 = call i32 @JZ_MMC_READ_4(%struct.jz4780_mmc_softc* %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %89

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %53 = load i32, i32* @JZ_MSC_TXFIFO, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %52, i32 %53, i32 %58)
  br label %68

60:                                               ; preds = %48
  %61 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %62 = load i32, i32* @JZ_MSC_RXFIFO, align 4
  %63 = call i32 @JZ_MMC_READ_4(%struct.jz4780_mmc_softc* %61, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %60, %51
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  %71 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %72 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %33

76:                                               ; preds = %33
  %77 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %78 = load i32, i32* @JZ_MSC_IMASK, align 4
  %79 = call i32 @JZ_MMC_READ_4(%struct.jz4780_mmc_softc* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* @JZ_INT_TXFIFO_WR_REQ, align 4
  %81 = load i32, i32* @JZ_INT_RXFIFO_RD_REQ, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %4, align 8
  %86 = load i32, i32* @JZ_MSC_IMASK, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %85, i32 %86, i32 %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %76, %47
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @JZ_MMC_READ_4(%struct.jz4780_mmc_softc*, i32) #1

declare dso_local i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
