; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_mcast_setup_e1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_mcast_setup_e1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_mcast_ramrod_params = type { i32, %struct.ecore_mcast_obj* }
%struct.ecore_mcast_obj = type { i32, i32, i32 (%struct.ecore_mcast_obj*)*, i32, %struct.ecore_raw_obj }
%struct.ecore_raw_obj = type { i32, i32, i32 (%struct.ecore_raw_obj*)*, i64 }
%struct.mac_configuration_cmd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAC_CONFIGURATION_ENTRY_ACTION_TYPE = common dso_local global i32 0, align 4
@T_ETH_MAC_COMMAND_INVALIDATE = common dso_local global i32 0, align 4
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_SET_MAC = common dso_local global i32 0, align 4
@ETH_CONNECTION_TYPE = common dso_local global i32 0, align 4
@ECORE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_mcast_ramrod_params*, i32)* @ecore_mcast_setup_e1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_mcast_setup_e1(%struct.bxe_softc* %0, %struct.ecore_mcast_ramrod_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.ecore_mcast_ramrod_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_mcast_obj*, align 8
  %9 = alloca %struct.ecore_raw_obj*, align 8
  %10 = alloca %struct.mac_configuration_cmd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.ecore_mcast_ramrod_params* %1, %struct.ecore_mcast_ramrod_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %15 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %14, i32 0, i32 1
  %16 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %15, align 8
  store %struct.ecore_mcast_obj* %16, %struct.ecore_mcast_obj** %8, align 8
  %17 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %18 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %17, i32 0, i32 4
  store %struct.ecore_raw_obj* %18, %struct.ecore_raw_obj** %9, align 8
  %19 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %20 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.mac_configuration_cmd*
  store %struct.mac_configuration_cmd* %22, %struct.mac_configuration_cmd** %10, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %10, align 8
  %24 = call i32 @ECORE_MEMSET(%struct.mac_configuration_cmd* %23, i32 0, i32 8)
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %43, %3
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %28 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %10, align 8
  %33 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MAC_CONFIGURATION_ENTRY_ACTION_TYPE, align 4
  %41 = load i32, i32* @T_ETH_MAC_COMMAND_INVALIDATE, align 4
  %42 = call i32 @ECORE_SET_FLAG(i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %48 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %49 = call i32 @ecore_mcast_handle_pending_cmds_e1(%struct.bxe_softc* %47, %struct.ecore_mcast_ramrod_params* %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %51 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %50, i32 0, i32 3
  %52 = call i64 @ECORE_LIST_IS_EMPTY(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %56 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %55, i32 0, i32 2
  %57 = load i32 (%struct.ecore_mcast_obj*)*, i32 (%struct.ecore_mcast_obj*)** %56, align 8
  %58 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %59 = call i32 %57(%struct.ecore_mcast_obj* %58)
  br label %60

60:                                               ; preds = %54, %46
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %65 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ecore_mcast_handle_current_cmd(%struct.bxe_softc* %64, %struct.ecore_mcast_ramrod_params* %65, i32 %66, i32 0)
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %63, %60
  %69 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %70 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %73 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %78 = getelementptr inbounds %struct.ecore_mcast_obj, %struct.ecore_mcast_obj* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %76, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @ECORE_DBG_BREAK_IF(i32 %81)
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %84 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @ecore_mcast_set_rdata_hdr_e1(%struct.bxe_softc* %83, %struct.ecore_mcast_ramrod_params* %84, i32 %85)
  %87 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %88 = load %struct.ecore_mcast_obj*, %struct.ecore_mcast_obj** %8, align 8
  %89 = call i32 @ecore_mcast_refresh_registry_e1(%struct.bxe_softc* %87, %struct.ecore_mcast_obj* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %68
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %4, align 4
  br label %124

94:                                               ; preds = %68
  %95 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %96 = load %struct.ecore_mcast_ramrod_params*, %struct.ecore_mcast_ramrod_params** %6, align 8
  %97 = getelementptr inbounds %struct.ecore_mcast_ramrod_params, %struct.ecore_mcast_ramrod_params* %96, i32 0, i32 0
  %98 = call i64 @ECORE_TEST_BIT(i32 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %102 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %101, i32 0, i32 2
  %103 = load i32 (%struct.ecore_raw_obj*)*, i32 (%struct.ecore_raw_obj*)** %102, align 8
  %104 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %105 = call i32 %103(%struct.ecore_raw_obj* %104)
  %106 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %106, i32* %4, align 4
  br label %124

107:                                              ; preds = %94
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %109 = load i32, i32* @RAMROD_CMD_ID_ETH_SET_MAC, align 4
  %110 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %111 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %9, align 8
  %114 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @ETH_CONNECTION_TYPE, align 4
  %117 = call i32 @ecore_sp_post(%struct.bxe_softc* %108, i32 %109, i32 %112, i32 %115, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %107
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %4, align 4
  br label %124

122:                                              ; preds = %107
  %123 = load i32, i32* @ECORE_PENDING, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %120, %100, %92
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @ECORE_MEMSET(%struct.mac_configuration_cmd*, i32, i32) #1

declare dso_local i32 @ECORE_SET_FLAG(i32, i32, i32) #1

declare dso_local i32 @ecore_mcast_handle_pending_cmds_e1(%struct.bxe_softc*, %struct.ecore_mcast_ramrod_params*) #1

declare dso_local i64 @ECORE_LIST_IS_EMPTY(i32*) #1

declare dso_local i32 @ecore_mcast_handle_current_cmd(%struct.bxe_softc*, %struct.ecore_mcast_ramrod_params*, i32, i32) #1

declare dso_local i32 @ECORE_DBG_BREAK_IF(i32) #1

declare dso_local i32 @ecore_mcast_set_rdata_hdr_e1(%struct.bxe_softc*, %struct.ecore_mcast_ramrod_params*, i32) #1

declare dso_local i32 @ecore_mcast_refresh_registry_e1(%struct.bxe_softc*, %struct.ecore_mcast_obj*) #1

declare dso_local i64 @ECORE_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ecore_sp_post(%struct.bxe_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
