; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_add_device_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_add_device_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@ixgbe_sysctl_flowcntl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@IXGBE_SYSCTL_DESC_SET_FC = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"advertise_speed\00", align 1
@ixgbe_sysctl_advertise = common dso_local global i32 0, align 4
@IXGBE_SYSCTL_DESC_ADV_SPEED = common dso_local global i8* null, align 8
@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"dmac\00", align 1
@CTLTYPE_U16 = common dso_local global i32 0, align 4
@ixgbe_sysctl_dmac = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"DMA Coalesce\00", align 1
@IXGBE_DEV_ID_X550EM_X_10G_T = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"wol_enable\00", align 1
@ixgbe_sysctl_wol_enable = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Enable/Disable Wake on LAN\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"wufc\00", align 1
@CTLTYPE_U32 = common dso_local global i32 0, align 4
@ixgbe_sysctl_wufc = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Enable/Disable Wake Up Filters\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"External PHY sysctls\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@ixgbe_sysctl_phy_temp = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"Current External PHY Temperature (Celsius)\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"overtemp_occurred\00", align 1
@ixgbe_sysctl_phy_overtemp_occurred = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [45 x i8] c"External PHY High Temperature Event Occurred\00", align 1
@IXGBE_FEATURE_EEE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"eee_state\00", align 1
@ixgbe_sysctl_eee_state = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"EEE Power Save State\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@ixgbe_sysctl_power_state = common dso_local global i32 0, align 4
@ixgbe_sysctl_print_rss_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixgbe_add_device_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_add_device_sysctls(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca %struct.sysctl_ctx_list*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca %struct.sysctl_oid_list*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.adapter* @iflib_get_softc(i32 %10)
  store %struct.adapter* %11, %struct.adapter** %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @iflib_get_dev(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  store %struct.ixgbe_hw* %15, %struct.ixgbe_hw** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %16)
  store %struct.sysctl_ctx_list* %17, %struct.sysctl_ctx_list** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %18)
  %20 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %19)
  store %struct.sysctl_oid_list* %20, %struct.sysctl_oid_list** %6, align 8
  %21 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %22 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %23 = load i32, i32* @OID_AUTO, align 4
  %24 = load i32, i32* @CTLTYPE_INT, align 4
  %25 = load i32, i32* @CTLFLAG_RW, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = load i32, i32* @ixgbe_sysctl_flowcntl, align 4
  %29 = load i8*, i8** @IXGBE_SYSCTL_DESC_SET_FC, align 8
  %30 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %21, %struct.sysctl_oid_list* %22, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %26, %struct.adapter* %27, i32 0, i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %32 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %33 = load i32, i32* @OID_AUTO, align 4
  %34 = load i32, i32* @CTLTYPE_INT, align 4
  %35 = load i32, i32* @CTLFLAG_RW, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = load i32, i32* @ixgbe_sysctl_advertise, align 4
  %39 = load i8*, i8** @IXGBE_SYSCTL_DESC_ADV_SPEED, align 8
  %40 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %31, %struct.sysctl_oid_list* %32, i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %36, %struct.adapter* %37, i32 0, i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ixgbe_mac_X550, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %1
  %48 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %49 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %50 = load i32, i32* @OID_AUTO, align 4
  %51 = load i32, i32* @CTLTYPE_U16, align 4
  %52 = load i32, i32* @CTLFLAG_RW, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.adapter*, %struct.adapter** %3, align 8
  %55 = load i32, i32* @ixgbe_sysctl_dmac, align 4
  %56 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %48, %struct.sysctl_oid_list* %49, i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %53, %struct.adapter* %54, i32 0, i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %47, %1
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IXGBE_DEV_ID_X550EM_X_10G_T, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %65 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %66 = load i32, i32* @OID_AUTO, align 4
  %67 = load i32, i32* @CTLTYPE_INT, align 4
  %68 = load i32, i32* @CTLFLAG_RW, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.adapter*, %struct.adapter** %3, align 8
  %71 = load i32, i32* @ixgbe_sysctl_wol_enable, align 4
  %72 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %64, %struct.sysctl_oid_list* %65, i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %69, %struct.adapter* %70, i32 0, i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %73 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %74 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %75 = load i32, i32* @OID_AUTO, align 4
  %76 = load i32, i32* @CTLTYPE_U32, align 4
  %77 = load i32, i32* @CTLFLAG_RW, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.adapter*, %struct.adapter** %3, align 8
  %80 = load i32, i32* @ixgbe_sysctl_wufc, align 4
  %81 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %73, %struct.sysctl_oid_list* %74, i32 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %78, %struct.adapter* %79, i32 0, i32 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %82

82:                                               ; preds = %63, %57
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %84 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IXGBE_DEV_ID_X550EM_X_10G_T, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %82
  %89 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %90 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %91 = load i32, i32* @OID_AUTO, align 4
  %92 = load i32, i32* @CTLFLAG_RD, align 4
  %93 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %89, %struct.sysctl_oid_list* %90, i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %92, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  store %struct.sysctl_oid* %93, %struct.sysctl_oid** %8, align 8
  %94 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %95 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %94)
  store %struct.sysctl_oid_list* %95, %struct.sysctl_oid_list** %9, align 8
  %96 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %97 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %98 = load i32, i32* @OID_AUTO, align 4
  %99 = load i32, i32* @CTLTYPE_U16, align 4
  %100 = load i32, i32* @CTLFLAG_RD, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.adapter*, %struct.adapter** %3, align 8
  %103 = load i32, i32* @ixgbe_sysctl_phy_temp, align 4
  %104 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %96, %struct.sysctl_oid_list* %97, i32 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %101, %struct.adapter* %102, i32 0, i32 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %105 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %106 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %9, align 8
  %107 = load i32, i32* @OID_AUTO, align 4
  %108 = load i32, i32* @CTLTYPE_U16, align 4
  %109 = load i32, i32* @CTLFLAG_RD, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.adapter*, %struct.adapter** %3, align 8
  %112 = load i32, i32* @ixgbe_sysctl_phy_overtemp_occurred, align 4
  %113 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %105, %struct.sysctl_oid_list* %106, i32 %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %110, %struct.adapter* %111, i32 0, i32 %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  br label %114

114:                                              ; preds = %88, %82
  %115 = load %struct.adapter*, %struct.adapter** %3, align 8
  %116 = getelementptr inbounds %struct.adapter, %struct.adapter* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @IXGBE_FEATURE_EEE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %114
  %122 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %123 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %124 = load i32, i32* @OID_AUTO, align 4
  %125 = load i32, i32* @CTLTYPE_INT, align 4
  %126 = load i32, i32* @CTLFLAG_RW, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.adapter*, %struct.adapter** %3, align 8
  %129 = load i32, i32* @ixgbe_sysctl_eee_state, align 4
  %130 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %122, %struct.sysctl_oid_list* %123, i32 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %127, %struct.adapter* %128, i32 0, i32 %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  br label %131

131:                                              ; preds = %121, %114
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.adapter*, i32, i32, i8*, i8*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
