; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_app_sd_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_app_sd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32 }
%struct.mmc_data = type { i32, i32, %struct.mmc_data*, i64, i32 }
%struct.mmc_command = type { i32, i32, %struct.mmc_command*, i64, i32 }

@ACMD_SD_STATUS = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@CMD_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_softc*, i32, %struct.mmc_data*)* @mmc_app_sd_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_app_sd_status(%struct.mmc_softc* %0, i32 %1, %struct.mmc_data* %2) #0 {
  %4 = alloca %struct.mmc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca %struct.mmc_command, align 8
  %8 = alloca %struct.mmc_data, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mmc_data, align 8
  store %struct.mmc_softc* %0, %struct.mmc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mmc_data* %2, %struct.mmc_data** %6, align 8
  %12 = bitcast %struct.mmc_command* %7 to %struct.mmc_data*
  %13 = call i32 @memset(%struct.mmc_data* %12, i32 0, i32 32)
  %14 = call i32 @memset(%struct.mmc_data* %8, i32 0, i32 32)
  %15 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %16 = call i32 @memset(%struct.mmc_data* %15, i32 0, i32 64)
  %17 = load i32, i32* @ACMD_SD_STATUS, align 4
  %18 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 4
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @MMC_RSP_R1, align 4
  %20 = load i32, i32* @MMC_CMD_ADTC, align 4
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = bitcast %struct.mmc_data* %8 to %struct.mmc_command*
  %25 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  store %struct.mmc_command* %24, %struct.mmc_command** %25, align 8
  %26 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %27 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %8, i32 0, i32 2
  store %struct.mmc_data* %26, %struct.mmc_data** %27, align 8
  %28 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %8, i32 0, i32 1
  store i32 64, i32* %28, align 4
  %29 = load i32, i32* @MMC_DATA_READ, align 4
  %30 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %8, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load %struct.mmc_softc*, %struct.mmc_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mmc_softc*, %struct.mmc_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = bitcast %struct.mmc_command* %7 to %struct.mmc_data*
  %39 = load i32, i32* @CMD_RETRIES, align 4
  %40 = call i32 @mmc_wait_for_app_cmd(i32 %33, i32 %36, i32 %37, %struct.mmc_data* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %55, %3
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 16
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %45, i64 %47
  %49 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %49, i64 %51
  call void @be32toh(%struct.mmc_data* sret %11, %struct.mmc_data* byval(%struct.mmc_data) align 8 %52)
  %53 = bitcast %struct.mmc_data* %48 to i8*
  %54 = bitcast %struct.mmc_data* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 32, i1 false)
  br label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %41

58:                                               ; preds = %41
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @memset(%struct.mmc_data*, i32, i32) #1

declare dso_local i32 @mmc_wait_for_app_cmd(i32, i32, i32, %struct.mmc_data*, i32) #1

declare dso_local void @be32toh(%struct.mmc_data* sret, %struct.mmc_data* byval(%struct.mmc_data) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
