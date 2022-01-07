; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_power.c_iwm_mvm_power_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_power.c_iwm_mvm_power_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_mac_power_cmd = type { i32, i32, i32, i32, i32, i32 }

@IWM_DEBUG_PWRSAVE = common dso_local global i32 0, align 4
@IWM_DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Sending power table command on mac id 0x%X for power level %d, flags = 0x%X\0A\00", align 1
@iwm_power_scheme = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Keep alive = %u sec\0A\00", align 1
@IWM_POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Disable power management\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Rx timeout = %u usec\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Tx timeout = %u usec\0A\00", align 1
@IWM_POWER_FLAGS_SKIP_OVER_DTIM_MSK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"DTIM periods to skip = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwm_softc*, %struct.iwm_mac_power_cmd*)* @iwm_mvm_power_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_mvm_power_log(%struct.iwm_softc* %0, %struct.iwm_mac_power_cmd* %1) #0 {
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_mac_power_cmd*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  store %struct.iwm_mac_power_cmd* %1, %struct.iwm_mac_power_cmd** %4, align 8
  %5 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %6 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %7 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.iwm_mac_power_cmd, %struct.iwm_mac_power_cmd* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @iwm_power_scheme, align 4
  %13 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.iwm_mac_power_cmd, %struct.iwm_mac_power_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16toh(i32 %15)
  %17 = call i32 (%struct.iwm_softc*, i32, i8*, ...) @IWM_DPRINTF(%struct.iwm_softc* %5, i32 %8, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %16)
  %18 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %19 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %20 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.iwm_mac_power_cmd, %struct.iwm_mac_power_cmd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16toh(i32 %24)
  %26 = call i32 (%struct.iwm_softc*, i32, i8*, ...) @IWM_DPRINTF(%struct.iwm_softc* %18, i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.iwm_mac_power_cmd, %struct.iwm_mac_power_cmd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IWM_POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK, align 4
  %31 = call i32 @htole16(i32 %30)
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %2
  %35 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %36 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %37 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %38 = or i32 %36, %37
  %39 = call i32 (%struct.iwm_softc*, i32, i8*, ...) @IWM_DPRINTF(%struct.iwm_softc* %35, i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %75

40:                                               ; preds = %2
  %41 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %42 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %43 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.iwm_mac_power_cmd, %struct.iwm_mac_power_cmd* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32toh(i32 %47)
  %49 = call i32 (%struct.iwm_softc*, i32, i8*, ...) @IWM_DPRINTF(%struct.iwm_softc* %41, i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %51 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %52 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %4, align 8
  %55 = getelementptr inbounds %struct.iwm_mac_power_cmd, %struct.iwm_mac_power_cmd* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32toh(i32 %56)
  %58 = call i32 (%struct.iwm_softc*, i32, i8*, ...) @IWM_DPRINTF(%struct.iwm_softc* %50, i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %4, align 8
  %60 = getelementptr inbounds %struct.iwm_mac_power_cmd, %struct.iwm_mac_power_cmd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IWM_POWER_FLAGS_SKIP_OVER_DTIM_MSK, align 4
  %63 = call i32 @htole16(i32 %62)
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %40
  %67 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %68 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %69 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.iwm_mac_power_cmd*, %struct.iwm_mac_power_cmd** %4, align 8
  %72 = getelementptr inbounds %struct.iwm_mac_power_cmd, %struct.iwm_mac_power_cmd* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (%struct.iwm_softc*, i32, i8*, ...) @IWM_DPRINTF(%struct.iwm_softc* %67, i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %34, %66, %40
  ret void
}

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, ...) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
