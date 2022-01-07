; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_set_blocklen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_set_blocklen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32 }
%struct.mmc_command = type { i32, i32*, i32, i32 }

@MMC_SET_BLOCKLEN = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@CMD_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_softc*, i32)* @mmc_set_blocklen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_set_blocklen(%struct.mmc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_command, align 8
  %6 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @memset(%struct.mmc_command* %5, i32 0, i32 24)
  %8 = load i32, i32* @MMC_SET_BLOCKLEN, align 4
  %9 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %5, i32 0, i32 3
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %5, i32 0, i32 2
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @MMC_RSP_R1, align 4
  %13 = load i32, i32* @MMC_CMD_AC, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %5, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CMD_RETRIES, align 4
  %24 = call i32 @mmc_wait_for_cmd(i32 %19, i32 %22, %struct.mmc_command* %5, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i32 @mmc_wait_for_cmd(i32, i32, %struct.mmc_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
