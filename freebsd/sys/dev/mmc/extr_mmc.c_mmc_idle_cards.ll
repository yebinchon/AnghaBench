; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_idle_cards.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_idle_cards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32 }
%struct.mmc_command = type { i32, i32*, i64, i32 }

@cs_high = common dso_local global i32 0, align 4
@MMC_GO_IDLE_STATE = common dso_local global i32 0, align 4
@MMC_RSP_NONE = common dso_local global i32 0, align 4
@MMC_CMD_BC = common dso_local global i32 0, align 4
@CMD_RETRIES = common dso_local global i32 0, align 4
@cs_dontcare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_softc*)* @mmc_idle_cards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_idle_cards(%struct.mmc_softc* %0) #0 {
  %2 = alloca %struct.mmc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_command, align 8
  store %struct.mmc_softc* %0, %struct.mmc_softc** %2, align 8
  %5 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @cs_high, align 4
  %10 = call i32 @mmcbr_set_chip_select(i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @mmcbr_update_ios(i32 %11)
  %13 = call i32 @mmc_ms_delay(i32 1)
  %14 = call i32 @memset(%struct.mmc_command* %4, i32 0, i32 32)
  %15 = load i32, i32* @MMC_GO_IDLE_STATE, align 4
  %16 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %4, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %4, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @MMC_RSP_NONE, align 4
  %19 = load i32, i32* @MMC_CMD_BC, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %4, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %4, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %24 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mmc_softc*, %struct.mmc_softc** %2, align 8
  %27 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CMD_RETRIES, align 4
  %30 = call i32 @mmc_wait_for_cmd(i32 %25, i32 %28, %struct.mmc_command* %4, i32 %29)
  %31 = call i32 @mmc_ms_delay(i32 1)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @cs_dontcare, align 4
  %34 = call i32 @mmcbr_set_chip_select(i32 %32, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @mmcbr_update_ios(i32 %35)
  %37 = call i32 @mmc_ms_delay(i32 1)
  ret void
}

declare dso_local i32 @mmcbr_set_chip_select(i32, i32) #1

declare dso_local i32 @mmcbr_update_ios(i32) #1

declare dso_local i32 @mmc_ms_delay(i32) #1

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i32 @mmc_wait_for_cmd(i32, i32, %struct.mmc_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
