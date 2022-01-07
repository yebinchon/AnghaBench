; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc_subr.c_mmc_send_ext_csd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc_subr.c_mmc_send_ext_csd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_data = type { i32, i32, %struct.mmc_data*, i32 }
%struct.mmc_command = type { i32, i32, %struct.mmc_command*, i32 }

@MMC_EXTCSD_SIZE = common dso_local global i32 0, align 4
@MMC_SEND_EXT_CSD = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@CMD_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_send_ext_csd(i32 %0, i32 %1, %struct.mmc_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca %struct.mmc_command, align 8
  %8 = alloca %struct.mmc_data, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.mmc_data* %2, %struct.mmc_data** %6, align 8
  %10 = bitcast %struct.mmc_command* %7 to %struct.mmc_data*
  %11 = call i32 @memset(%struct.mmc_data* %10, i32 0, i32 24)
  %12 = call i32 @memset(%struct.mmc_data* %8, i32 0, i32 24)
  %13 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %14 = load i32, i32* @MMC_EXTCSD_SIZE, align 4
  %15 = call i32 @memset(%struct.mmc_data* %13, i32 0, i32 %14)
  %16 = load i32, i32* @MMC_SEND_EXT_CSD, align 4
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 3
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @MMC_RSP_R1, align 4
  %19 = load i32, i32* @MMC_CMD_ADTC, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = bitcast %struct.mmc_data* %8 to %struct.mmc_command*
  %23 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  store %struct.mmc_command* %22, %struct.mmc_command** %23, align 8
  %24 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %25 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %8, i32 0, i32 2
  store %struct.mmc_data* %24, %struct.mmc_data** %25, align 8
  %26 = load i32, i32* @MMC_EXTCSD_SIZE, align 4
  %27 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %8, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @MMC_DATA_READ, align 4
  %29 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %8, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = bitcast %struct.mmc_command* %7 to %struct.mmc_data*
  %33 = load i32, i32* @CMD_RETRIES, align 4
  %34 = call i32 @mmc_wait_for_cmd(i32 %30, i32 %31, %struct.mmc_data* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.mmc_data*, i32, i32) #1

declare dso_local i32 @mmc_wait_for_cmd(i32, i32, %struct.mmc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
