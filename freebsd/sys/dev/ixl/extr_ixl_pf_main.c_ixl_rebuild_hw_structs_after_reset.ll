; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_rebuild_hw_structs_after_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_rebuild_hw_structs_after_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, i32, i32, %struct.ixl_vsi, %struct.i40e_hw }
%struct.ixl_vsi = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.i40e_hw = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Rebuilding driver state...\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"PF reset failure %s\0A\00", align 1
@I40E_ERR_FIRMWARE_API_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Unable to initialize Admin Queue, error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"ixl_get_hw_capabilities failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"init_lan_hmc failed: %d\0A\00", align 1
@I40E_HMC_MODEL_DIRECT_ONLY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"configure_lan_hmc failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Failed to reserve queues for PF LAN VSI, error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"ixl_rebuild_hw_structs_after_reset: ixl_switch_config() failed: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IXL_DEFAULT_PHY_INT_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [56 x i8] c"init: i40e_aq_set_phy_mask() failed: err %d, aq_err %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [72 x i8] c"init: setting link flow control failed; retcode %d, fc_err_mask 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IFLIB_INTR_MSIX = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [31 x i8] c"Rebuilding driver state done.\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Reload the driver to recover\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_rebuild_hw_structs_after_reset(%struct.ixl_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.ixl_vsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  %9 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %10 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %9, i32 0, i32 4
  store %struct.i40e_hw* %10, %struct.i40e_hw** %4, align 8
  %11 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %12 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %11, i32 0, i32 3
  store %struct.ixl_vsi* %12, %struct.ixl_vsi** %5, align 8
  %13 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %14 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i32, i8*, ...) @device_printf(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %19 = call i32 @i40e_pf_reset(%struct.i40e_hw* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @i40e_stat_str(%struct.i40e_hw* %24, i32 %25)
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %159

28:                                               ; preds = %1
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %30 = call i32 @i40e_init_adminq(%struct.i40e_hw* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @I40E_ERR_FIRMWARE_API_VERSION, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %159

41:                                               ; preds = %33, %28
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %43 = call i32 @i40e_clear_pxe_mode(%struct.i40e_hw* %42)
  %44 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %45 = call i32 @ixl_get_hw_capabilities(%struct.ixl_pf* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %159

52:                                               ; preds = %41
  %53 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %54 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %55 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %59 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @i40e_init_lan_hmc(%struct.i40e_hw* %53, i32 %57, i32 %61, i32 0, i32 0)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  br label %159

69:                                               ; preds = %52
  %70 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %71 = load i32, i32* @I40E_HMC_MODEL_DIRECT_ONLY, align 4
  %72 = call i32 @i40e_configure_lan_hmc(%struct.i40e_hw* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  br label %159

79:                                               ; preds = %69
  %80 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %81 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %80, i32 0, i32 1
  %82 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %83 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %86 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %85, i32 0, i32 0
  %87 = call i32 @ixl_pf_qmgr_alloc_contiguous(i32* %81, i32 %84, i32* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 (i32, i8*, ...) @device_printf(i32 %91, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %79
  %95 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %96 = call i32 @ixl_switch_config(%struct.ixl_pf* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EIO, align 4
  store i32 %103, i32* %7, align 4
  br label %159

104:                                              ; preds = %94
  %105 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %106 = load i32, i32* @IXL_DEFAULT_PHY_INT_MASK, align 4
  %107 = call i32 @i40e_aq_set_phy_int_mask(%struct.i40e_hw* %105, i32 %106, i32* null)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %114 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @device_printf(i32 %111, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %112, i32 %116)
  %118 = load i32, i32* @EIO, align 4
  store i32 %118, i32* %7, align 4
  br label %159

119:                                              ; preds = %104
  %120 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %121 = call i32 @i40e_set_fc(%struct.i40e_hw* %120, i32* %8, i32 1)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 (i32, i8*, ...) @device_printf(i32 %125, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.9, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load i32, i32* @EIO, align 4
  store i32 %129, i32* %7, align 4
  br label %159

130:                                              ; preds = %119
  %131 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %132 = call i32 @ixl_del_default_hw_filters(%struct.ixl_vsi* %131)
  %133 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %134 = call i64 @ixl_attach_get_link_status(%struct.ixl_pf* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* @EINVAL, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %136, %130
  %139 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %140 = load i32, i32* @TRUE, align 4
  %141 = call i32 @i40e_aq_set_dcb_parameters(%struct.i40e_hw* %139, i32 %140, i32* null)
  %142 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %143 = call i32 @ixl_get_fw_lldp_status(%struct.ixl_pf* %142)
  %144 = load %struct.ixl_vsi*, %struct.ixl_vsi** %5, align 8
  %145 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @IFLIB_INTR_MSIX, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %138
  %152 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %153 = call i32 @ixl_configure_intr0_msix(%struct.ixl_pf* %152)
  %154 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %155 = call i32 @ixl_enable_intr0(%struct.i40e_hw* %154)
  br label %156

156:                                              ; preds = %151, %138
  %157 = load i32, i32* %6, align 4
  %158 = call i32 (i32, i8*, ...) @device_printf(i32 %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %163

159:                                              ; preds = %124, %110, %99, %75, %65, %48, %37, %22
  %160 = load i32, i32* %6, align 4
  %161 = call i32 (i32, i8*, ...) @device_printf(i32 %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %159, %156
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @i40e_pf_reset(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_init_adminq(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_clear_pxe_mode(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_get_hw_capabilities(%struct.ixl_pf*) #1

declare dso_local i32 @i40e_init_lan_hmc(%struct.i40e_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @i40e_configure_lan_hmc(%struct.i40e_hw*, i32) #1

declare dso_local i32 @ixl_pf_qmgr_alloc_contiguous(i32*, i32, i32*) #1

declare dso_local i32 @ixl_switch_config(%struct.ixl_pf*) #1

declare dso_local i32 @i40e_aq_set_phy_int_mask(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @i40e_set_fc(%struct.i40e_hw*, i32*, i32) #1

declare dso_local i32 @ixl_del_default_hw_filters(%struct.ixl_vsi*) #1

declare dso_local i64 @ixl_attach_get_link_status(%struct.ixl_pf*) #1

declare dso_local i32 @i40e_aq_set_dcb_parameters(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @ixl_get_fw_lldp_status(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_configure_intr0_msix(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_enable_intr0(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
