; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_send_phy_cfg_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_send_phy_cfg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iwm_phy_cfg_cmd = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@IWM_DEBUG_CMD = common dso_local global i32 0, align 4
@IWM_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Sending Phy CFG command: 0x%x\0A\00", align 1
@IWM_PHY_CONFIGURATION_CMD = common dso_local global i32 0, align 4
@IWM_CMD_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*)* @iwm_send_phy_cfg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_send_phy_cfg_cmd(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_softc*, align 8
  %3 = alloca %struct.iwm_phy_cfg_cmd, align 4
  %4 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %2, align 8
  %5 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %6 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %9 = call i32 @iwm_mvm_get_phy_config(%struct.iwm_softc* %8)
  %10 = call i32 @htole32(i32 %9)
  %11 = getelementptr inbounds %struct.iwm_phy_cfg_cmd, %struct.iwm_phy_cfg_cmd* %3, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %13 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.iwm_phy_cfg_cmd, %struct.iwm_phy_cfg_cmd* %3, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %23 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.iwm_phy_cfg_cmd, %struct.iwm_phy_cfg_cmd* %3, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %33 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %34 = load i32, i32* @IWM_DEBUG_RESET, align 4
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.iwm_phy_cfg_cmd, %struct.iwm_phy_cfg_cmd* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %32, i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %40 = load i32, i32* @IWM_PHY_CONFIGURATION_CMD, align 4
  %41 = load i32, i32* @IWM_CMD_SYNC, align 4
  %42 = call i32 @iwm_mvm_send_cmd_pdu(%struct.iwm_softc* %39, i32 %40, i32 %41, i32 12, %struct.iwm_phy_cfg_cmd* %3)
  ret i32 %42
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @iwm_mvm_get_phy_config(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i32) #1

declare dso_local i32 @iwm_mvm_send_cmd_pdu(%struct.iwm_softc*, i32, i32, i32, %struct.iwm_phy_cfg_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
