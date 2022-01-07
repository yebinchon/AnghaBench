; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dma_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dma_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwmmc_softc = type { i32, i32, i32, i32 }
%struct.mmc_command = type { %struct.mmc_data* }
%struct.mmc_data = type { i32 }

@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwmmc_softc*, %struct.mmc_command*)* @dma_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_done(%struct.dwmmc_softc* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.dwmmc_softc*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  store %struct.dwmmc_softc* %0, %struct.dwmmc_softc** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %6 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %7 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 0
  %8 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  store %struct.mmc_data* %8, %struct.mmc_data** %5, align 8
  %9 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %10 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MMC_DATA_WRITE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %17 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %23 = call i32 @bus_dmamap_sync(i32 %18, i32 %21, i32 %22)
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %26 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %29 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %32 = call i32 @bus_dmamap_sync(i32 %27, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %15
  %34 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %35 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %38 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %41 = call i32 @bus_dmamap_sync(i32 %36, i32 %39, i32 %40)
  %42 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %43 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %46 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bus_dmamap_unload(i32 %44, i32 %47)
  ret i32 0
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
