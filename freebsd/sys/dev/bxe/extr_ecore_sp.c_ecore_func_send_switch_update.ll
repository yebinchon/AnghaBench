; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_send_switch_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_func_send_switch_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_func_state_params = type { %struct.TYPE_2__, %struct.ecore_func_sp_obj* }
%struct.TYPE_2__ = type { %struct.ecore_func_switch_update_params }
%struct.ecore_func_switch_update_params = type { i32, i32, i32, i32, i32, i32 }
%struct.ecore_func_sp_obj = type { i32, i64 }
%struct.function_update_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i64 }

@ECORE_F_UPDATE_TX_SWITCH_SUSPEND_CHNG = common dso_local global i32 0, align 4
@ECORE_F_UPDATE_TX_SWITCH_SUSPEND = common dso_local global i32 0, align 4
@ECORE_F_UPDATE_SD_VLAN_TAG_CHNG = common dso_local global i32 0, align 4
@ECORE_F_UPDATE_SD_VLAN_ETH_TYPE_CHNG = common dso_local global i32 0, align 4
@ECORE_F_UPDATE_VLAN_FORCE_PRIO_CHNG = common dso_local global i32 0, align 4
@ECORE_F_UPDATE_VLAN_FORCE_PRIO_FLAG = common dso_local global i32 0, align 4
@ECORE_F_UPDATE_TUNNEL_CFG_CHNG = common dso_local global i32 0, align 4
@ECORE_F_UPDATE_TUNNEL_INNER_CLSS_L2GRE = common dso_local global i32 0, align 4
@ECORE_F_UPDATE_TUNNEL_INNER_CLSS_VXLAN = common dso_local global i32 0, align 4
@ECORE_F_UPDATE_TUNNEL_INNER_CLSS_L2GENEVE = common dso_local global i32 0, align 4
@ECORE_F_UPDATE_TUNNEL_INNER_RSS = common dso_local global i32 0, align 4
@SWITCH_UPDATE = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE = common dso_local global i32 0, align 4
@NONE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_func_state_params*)* @ecore_func_send_switch_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_func_send_switch_update(%struct.bxe_softc* %0, %struct.ecore_func_state_params* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.ecore_func_state_params*, align 8
  %5 = alloca %struct.ecore_func_sp_obj*, align 8
  %6 = alloca %struct.function_update_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_func_switch_update_params*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.ecore_func_state_params* %1, %struct.ecore_func_state_params** %4, align 8
  %9 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %4, align 8
  %10 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %9, i32 0, i32 1
  %11 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %10, align 8
  store %struct.ecore_func_sp_obj* %11, %struct.ecore_func_sp_obj** %5, align 8
  %12 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.function_update_data*
  store %struct.function_update_data* %15, %struct.function_update_data** %6, align 8
  %16 = load %struct.ecore_func_sp_obj*, %struct.ecore_func_sp_obj** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_func_sp_obj, %struct.ecore_func_sp_obj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ecore_func_state_params*, %struct.ecore_func_state_params** %4, align 8
  %20 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.ecore_func_switch_update_params* %21, %struct.ecore_func_switch_update_params** %8, align 8
  %22 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %23 = call i32 @ECORE_MEMSET(%struct.function_update_data* %22, i32 0, i32 88)
  %24 = load i32, i32* @ECORE_F_UPDATE_TX_SWITCH_SUSPEND_CHNG, align 4
  %25 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %26 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %25, i32 0, i32 3
  %27 = call i64 @ECORE_TEST_BIT(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %31 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* @ECORE_F_UPDATE_TX_SWITCH_SUSPEND, align 4
  %33 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %34 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %33, i32 0, i32 3
  %35 = call i64 @ECORE_TEST_BIT(i32 %32, i32* %34)
  %36 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %37 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %36, i32 0, i32 15
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %29, %2
  %39 = load i32, i32* @ECORE_F_UPDATE_SD_VLAN_TAG_CHNG, align 4
  %40 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %41 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %40, i32 0, i32 3
  %42 = call i64 @ECORE_TEST_BIT(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %46 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %48 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @ECORE_CPU_TO_LE16(i32 %49)
  %51 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %52 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %51, i32 0, i32 14
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %44, %38
  %54 = load i32, i32* @ECORE_F_UPDATE_SD_VLAN_ETH_TYPE_CHNG, align 4
  %55 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %56 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %55, i32 0, i32 3
  %57 = call i64 @ECORE_TEST_BIT(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %61 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  %62 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %63 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @ECORE_CPU_TO_LE16(i32 %64)
  %66 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %67 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %66, i32 0, i32 13
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %59, %53
  %69 = load i32, i32* @ECORE_F_UPDATE_VLAN_FORCE_PRIO_CHNG, align 4
  %70 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %71 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %70, i32 0, i32 3
  %72 = call i64 @ECORE_TEST_BIT(i32 %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %76 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %75, i32 0, i32 3
  store i32 1, i32* %76, align 4
  %77 = load i32, i32* @ECORE_F_UPDATE_VLAN_FORCE_PRIO_FLAG, align 4
  %78 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %79 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %78, i32 0, i32 3
  %80 = call i64 @ECORE_TEST_BIT(i32 %77, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %84 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %83, i32 0, i32 4
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %74
  %86 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %87 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %90 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %85, %68
  %92 = load i32, i32* @ECORE_F_UPDATE_TUNNEL_CFG_CHNG, align 4
  %93 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %94 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %93, i32 0, i32 3
  %95 = call i64 @ECORE_TEST_BIT(i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %148

97:                                               ; preds = %91
  %98 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %99 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %98, i32 0, i32 5
  store i32 1, i32* %99, align 4
  %100 = load i32, i32* @ECORE_F_UPDATE_TUNNEL_INNER_CLSS_L2GRE, align 4
  %101 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %102 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %101, i32 0, i32 3
  %103 = call i64 @ECORE_TEST_BIT(i32 %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %107 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %106, i32 0, i32 6
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %105, %97
  %109 = load i32, i32* @ECORE_F_UPDATE_TUNNEL_INNER_CLSS_VXLAN, align 4
  %110 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %111 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %110, i32 0, i32 3
  %112 = call i64 @ECORE_TEST_BIT(i32 %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %116 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %115, i32 0, i32 7
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %108
  %118 = load i32, i32* @ECORE_F_UPDATE_TUNNEL_INNER_CLSS_L2GENEVE, align 4
  %119 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %120 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %119, i32 0, i32 3
  %121 = call i64 @ECORE_TEST_BIT(i32 %118, i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %125 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %124, i32 0, i32 8
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %123, %117
  %127 = load i32, i32* @ECORE_F_UPDATE_TUNNEL_INNER_RSS, align 4
  %128 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %129 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %128, i32 0, i32 3
  %130 = call i64 @ECORE_TEST_BIT(i32 %127, i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %134 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %133, i32 0, i32 9
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %126
  %136 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %137 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @ECORE_CPU_TO_LE16(i32 %138)
  %140 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %141 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %140, i32 0, i32 12
  store i8* %139, i8** %141, align 8
  %142 = load %struct.ecore_func_switch_update_params*, %struct.ecore_func_switch_update_params** %8, align 8
  %143 = getelementptr inbounds %struct.ecore_func_switch_update_params, %struct.ecore_func_switch_update_params* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @ECORE_CPU_TO_LE16(i32 %144)
  %146 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %147 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %146, i32 0, i32 11
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %135, %91
  %149 = load i32, i32* @SWITCH_UPDATE, align 4
  %150 = load %struct.function_update_data*, %struct.function_update_data** %6, align 8
  %151 = getelementptr inbounds %struct.function_update_data, %struct.function_update_data* %150, i32 0, i32 10
  store i32 %149, i32* %151, align 8
  %152 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %153 = load i32, i32* @RAMROD_CMD_ID_COMMON_FUNCTION_UPDATE, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @NONE_CONNECTION_TYPE, align 4
  %156 = call i32 @ecore_sp_post(%struct.bxe_softc* %152, i32 %153, i32 0, i32 %154, i32 %155)
  ret i32 %156
}

declare dso_local i32 @ECORE_MEMSET(%struct.function_update_data*, i32, i32) #1

declare dso_local i64 @ECORE_TEST_BIT(i32, i32*) #1

declare dso_local i8* @ECORE_CPU_TO_LE16(i32) #1

declare dso_local i32 @ecore_sp_post(%struct.bxe_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
