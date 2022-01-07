; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_pio_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_pio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwmmc_softc = type { i32 }
%struct.mmc_command = type { %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, i64 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"xfer_len not aligned\00", align 1
@SDMMC_STATUS = common dso_local global i32 0, align 4
@SDMMC_STATUS_FIFO_FULL = common dso_local global i32 0, align 4
@SDMMC_DATA = common dso_local global i32 0, align 4
@SDMMC_RINTSTS = common dso_local global i32 0, align 4
@SDMMC_INTMASK_TXDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwmmc_softc*, %struct.mmc_command*)* @pio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pio_write(%struct.dwmmc_softc* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.dwmmc_softc*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.dwmmc_softc* %0, %struct.dwmmc_softc** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %8 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %9 = icmp eq %struct.mmc_command* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 0
  %13 = load %struct.mmc_data*, %struct.mmc_data** %12, align 8
  %14 = icmp eq %struct.mmc_data* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  br label %78

16:                                               ; preds = %10
  %17 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %17, i32 0, i32 0
  %19 = load %struct.mmc_data*, %struct.mmc_data** %18, align 8
  store %struct.mmc_data* %19, %struct.mmc_data** %5, align 8
  %20 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %21 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MMC_DATA_WRITE, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %78

27:                                               ; preds = %16
  %28 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %29 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %40 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  store i32* %44, i32** %6, align 8
  br label %45

45:                                               ; preds = %62, %27
  %46 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %47 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %50 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %45
  %54 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %55 = load i32, i32* @SDMMC_STATUS, align 4
  %56 = call i32 @READ4(%struct.dwmmc_softc* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SDMMC_STATUS_FIFO_FULL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %73

62:                                               ; preds = %53
  %63 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %64 = load i32, i32* @SDMMC_DATA, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %6, align 8
  %67 = load i32, i32* %65, align 4
  %68 = call i32 @WRITE4(%struct.dwmmc_softc* %63, i32 %64, i32 %67)
  %69 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %70 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 4
  store i32 %72, i32* %70, align 4
  br label %45

73:                                               ; preds = %61, %45
  %74 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %75 = load i32, i32* @SDMMC_RINTSTS, align 4
  %76 = load i32, i32* @SDMMC_INTMASK_TXDR, align 4
  %77 = call i32 @WRITE4(%struct.dwmmc_softc* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %26, %15
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @READ4(%struct.dwmmc_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.dwmmc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
