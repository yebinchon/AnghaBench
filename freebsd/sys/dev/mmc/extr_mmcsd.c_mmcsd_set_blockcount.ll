; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_set_blockcount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_set_blockcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmcsd_softc = type { i32, i32 }
%struct.mmc_command = type { i32, i32, i32, i32, %struct.mmc_command*, %struct.mmc_command* }
%struct.mmc_request = type { i32, i32, i32, i32, %struct.mmc_request*, %struct.mmc_request* }

@MMC_SET_BLOCK_COUNT = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmcsd_softc*, i32, i32)* @mmcsd_set_blockcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcsd_set_blockcount(%struct.mmcsd_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mmcsd_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_command, align 8
  %8 = alloca %struct.mmc_request, align 8
  store %struct.mmcsd_softc* %0, %struct.mmcsd_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @memset(%struct.mmc_request* %8, i32 0, i32 32)
  %10 = bitcast %struct.mmc_command* %7 to %struct.mmc_request*
  %11 = call i32 @memset(%struct.mmc_request* %10, i32 0, i32 32)
  %12 = bitcast %struct.mmc_request* %8 to %struct.mmc_command*
  %13 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 5
  store %struct.mmc_command* %12, %struct.mmc_command** %13, align 8
  %14 = bitcast %struct.mmc_command* %7 to %struct.mmc_request*
  %15 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %8, i32 0, i32 4
  store %struct.mmc_request* %14, %struct.mmc_request** %15, align 8
  %16 = load i32, i32* @MMC_SET_BLOCK_COUNT, align 4
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 65535
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, -2147483648
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %23, %3
  %28 = load i32, i32* @MMC_RSP_R1, align 4
  %29 = load i32, i32* @MMC_CMD_AC, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %4, align 8
  %33 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %4, align 8
  %36 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MMCBUS_WAIT_FOR_REQUEST(i32 %34, i32 %37, %struct.mmc_request* %8)
  %39 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  ret i32 %40
}

declare dso_local i32 @memset(%struct.mmc_request*, i32, i32) #1

declare dso_local i32 @MMCBUS_WAIT_FOR_REQUEST(i32, i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
