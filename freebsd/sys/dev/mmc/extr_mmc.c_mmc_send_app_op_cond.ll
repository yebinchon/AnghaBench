; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_send_app_op_cond.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_send_app_op_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32 }
%struct.mmc_command = type { i32, i32, i32*, i32*, i32 }

@MMC_ERR_NONE = common dso_local global i32 0, align 4
@ACMD_SD_SEND_OP_COND = common dso_local global i32 0, align 4
@MMC_RSP_R3 = common dso_local global i32 0, align 4
@MMC_CMD_BCR = common dso_local global i32 0, align 4
@CMD_RETRIES = common dso_local global i32 0, align 4
@MMC_OCR_CARD_BUSY = common dso_local global i32 0, align 4
@MMC_OCR_VOLTAGE = common dso_local global i32 0, align 4
@MMC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_softc*, i32, i32*)* @mmc_send_app_op_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_send_app_op_cond(%struct.mmc_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mmc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mmc_command, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_softc* %0, %struct.mmc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @MMC_ERR_NONE, align 4
  store i32 %10, i32* %8, align 4
  %11 = call i32 @memset(%struct.mmc_command* %7, i32 0, i32 32)
  %12 = load i32, i32* @ACMD_SD_SEND_OP_COND, align 4
  %13 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 4
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @MMC_RSP_R3, align 4
  %17 = load i32, i32* @MMC_CMD_BCR, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 3
  store i32* null, i32** %20, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %54, %3
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 1000
  br i1 %23, label %24, label %57

24:                                               ; preds = %21
  %25 = load %struct.mmc_softc*, %struct.mmc_softc** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mmc_softc*, %struct.mmc_softc** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CMD_RETRIES, align 4
  %32 = call i32 @mmc_wait_for_app_cmd(i32 %27, i32 %30, i32 0, %struct.mmc_command* %7, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MMC_ERR_NONE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %57

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MMC_OCR_CARD_BUSY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @MMC_OCR_VOLTAGE, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %37
  br label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @MMC_ERR_TIMEOUT, align 4
  store i32 %52, i32* %8, align 4
  %53 = call i32 @mmc_ms_delay(i32 10)
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %21

57:                                               ; preds = %50, %36, %21
  %58 = load i32*, i32** %6, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @MMC_ERR_NONE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %60, %57
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i32 @mmc_wait_for_app_cmd(i32, i32, i32, %struct.mmc_command*, i32) #1

declare dso_local i32 @mmc_ms_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
