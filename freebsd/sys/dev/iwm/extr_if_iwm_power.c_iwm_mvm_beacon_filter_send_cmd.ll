; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_power.c_iwm_mvm_beacon_filter_send_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_power.c_iwm_mvm_beacon_filter_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_beacon_filter_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IWM_REPLY_BEACON_FILTERING_CMD = common dso_local global i32 0, align 4
@IWM_DEBUG_PWRSAVE = common dso_local global i32 0, align 4
@IWM_DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ba_enable_beacon_abort is: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"ba_escape_timer is: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"bf_debug_flag is: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"bf_enable_beacon_filter is: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"bf_energy_delta is: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"bf_escape_timer is: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"bf_roaming_energy_delta is: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"bf_roaming_state is: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"bf_temp_threshold is: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"bf_temp_fast_filter is: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"bf_temp_slow_filter is: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.iwm_beacon_filter_cmd*)* @iwm_mvm_beacon_filter_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_mvm_beacon_filter_send_cmd(%struct.iwm_softc* %0, %struct.iwm_beacon_filter_cmd* %1) #0 {
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_beacon_filter_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  store %struct.iwm_beacon_filter_cmd* %1, %struct.iwm_beacon_filter_cmd** %4, align 8
  %6 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %7 = load i32, i32* @IWM_REPLY_BEACON_FILTERING_CMD, align 4
  %8 = load %struct.iwm_beacon_filter_cmd*, %struct.iwm_beacon_filter_cmd** %4, align 8
  %9 = call i32 @iwm_mvm_send_cmd_pdu(%struct.iwm_softc* %6, i32 %7, i32 0, i32 44, %struct.iwm_beacon_filter_cmd* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %112, label %12

12:                                               ; preds = %2
  %13 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %14 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %15 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.iwm_beacon_filter_cmd*, %struct.iwm_beacon_filter_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.iwm_beacon_filter_cmd, %struct.iwm_beacon_filter_cmd* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32toh(i32 %19)
  %21 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %13, i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %23 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %24 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.iwm_beacon_filter_cmd*, %struct.iwm_beacon_filter_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.iwm_beacon_filter_cmd, %struct.iwm_beacon_filter_cmd* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32toh(i32 %28)
  %30 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %22, i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %32 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %33 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.iwm_beacon_filter_cmd*, %struct.iwm_beacon_filter_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.iwm_beacon_filter_cmd, %struct.iwm_beacon_filter_cmd* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32toh(i32 %37)
  %39 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %31, i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %41 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %42 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.iwm_beacon_filter_cmd*, %struct.iwm_beacon_filter_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.iwm_beacon_filter_cmd, %struct.iwm_beacon_filter_cmd* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32toh(i32 %46)
  %48 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %40, i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %50 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %51 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.iwm_beacon_filter_cmd*, %struct.iwm_beacon_filter_cmd** %4, align 8
  %54 = getelementptr inbounds %struct.iwm_beacon_filter_cmd, %struct.iwm_beacon_filter_cmd* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32toh(i32 %55)
  %57 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %49, i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %59 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %60 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.iwm_beacon_filter_cmd*, %struct.iwm_beacon_filter_cmd** %4, align 8
  %63 = getelementptr inbounds %struct.iwm_beacon_filter_cmd, %struct.iwm_beacon_filter_cmd* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32toh(i32 %64)
  %66 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %58, i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  %67 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %68 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %69 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.iwm_beacon_filter_cmd*, %struct.iwm_beacon_filter_cmd** %4, align 8
  %72 = getelementptr inbounds %struct.iwm_beacon_filter_cmd, %struct.iwm_beacon_filter_cmd* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32toh(i32 %73)
  %75 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %67, i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  %76 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %77 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %78 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.iwm_beacon_filter_cmd*, %struct.iwm_beacon_filter_cmd** %4, align 8
  %81 = getelementptr inbounds %struct.iwm_beacon_filter_cmd, %struct.iwm_beacon_filter_cmd* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le32toh(i32 %82)
  %84 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %76, i32 %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %86 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %87 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.iwm_beacon_filter_cmd*, %struct.iwm_beacon_filter_cmd** %4, align 8
  %90 = getelementptr inbounds %struct.iwm_beacon_filter_cmd, %struct.iwm_beacon_filter_cmd* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32toh(i32 %91)
  %93 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %85, i32 %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %92)
  %94 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %95 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %96 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.iwm_beacon_filter_cmd*, %struct.iwm_beacon_filter_cmd** %4, align 8
  %99 = getelementptr inbounds %struct.iwm_beacon_filter_cmd, %struct.iwm_beacon_filter_cmd* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32toh(i32 %100)
  %102 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %94, i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %101)
  %103 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %104 = load i32, i32* @IWM_DEBUG_PWRSAVE, align 4
  %105 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.iwm_beacon_filter_cmd*, %struct.iwm_beacon_filter_cmd** %4, align 8
  %108 = getelementptr inbounds %struct.iwm_beacon_filter_cmd, %struct.iwm_beacon_filter_cmd* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @le32toh(i32 %109)
  %111 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %103, i32 %106, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %12, %2
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @iwm_mvm_send_cmd_pdu(%struct.iwm_softc*, i32, i32, i32, %struct.iwm_beacon_filter_cmd*) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i32) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
