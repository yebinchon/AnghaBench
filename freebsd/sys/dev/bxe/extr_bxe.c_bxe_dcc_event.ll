; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_dcc_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_dcc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@DBG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"dcc_event 0x%08x\0A\00", align 1
@DRV_STATUS_DCC_DISABLE_ENABLE_PF = common dso_local global i32 0, align 4
@FUNC_MF_CFG_FUNC_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"mf_cfg function disabled\0A\00", align 1
@BXE_MF_FUNC_DIS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"mf_cfg function enabled\0A\00", align 1
@DRV_STATUS_DCC_BANDWIDTH_ALLOCATION = common dso_local global i32 0, align 4
@DRV_MSG_CODE_DCC_FAILURE = common dso_local global i32 0, align 4
@DRV_MSG_CODE_DCC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i32)* @bxe_dcc_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_dcc_event(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %6 = load i32, i32* @DBG_INTR, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %5, i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DRV_STATUS_DCC_DISABLE_ENABLE_PF, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %2
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %15 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %20 = call i64 @SC_VN(%struct.bxe_softc* %19)
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FUNC_MF_CFG_FUNC_DISABLED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %13
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %28 = load i32, i32* @DBG_INTR, align 4
  %29 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %27, i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @BXE_MF_FUNC_DIS, align 4
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %36 = call i32 @bxe_e1h_disable(%struct.bxe_softc* %35)
  br label %49

37:                                               ; preds = %13
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %39 = load i32, i32* @DBG_INTR, align 4
  %40 = call i32 (%struct.bxe_softc*, i32, i8*, ...) @BLOGD(%struct.bxe_softc* %38, i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @BXE_MF_FUNC_DIS, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %44 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %48 = call i32 @bxe_e1h_enable(%struct.bxe_softc* %47)
  br label %49

49:                                               ; preds = %37, %26
  %50 = load i32, i32* @DRV_STATUS_DCC_DISABLE_ENABLE_PF, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %2
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @DRV_STATUS_DCC_BANDWIDTH_ALLOCATION, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %61 = call i32 @bxe_config_mf_bw(%struct.bxe_softc* %60)
  %62 = load i32, i32* @DRV_STATUS_DCC_BANDWIDTH_ALLOCATION, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %54
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %71 = load i32, i32* @DRV_MSG_CODE_DCC_FAILURE, align 4
  %72 = call i32 @bxe_fw_command(%struct.bxe_softc* %70, i32 %71, i32 0)
  br label %77

73:                                               ; preds = %66
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %75 = load i32, i32* @DRV_MSG_CODE_DCC_OK, align 4
  %76 = call i32 @bxe_fw_command(%struct.bxe_softc* %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %73, %69
  ret void
}

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, ...) #1

declare dso_local i64 @SC_VN(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_e1h_disable(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_e1h_enable(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_config_mf_bw(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_fw_command(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
