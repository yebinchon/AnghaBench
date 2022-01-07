; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_attach_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_ixl.c_ixl_if_attach_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, i64, i32, %struct.TYPE_10__, i32, %struct.i40e_hw, %struct.ixl_vsi }
%struct.TYPE_10__ = type { i32, i32 }
%struct.i40e_hw = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ixl_vsi = type { %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"interface setup failed!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Initial ixl_switch_config() failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Failed to init queue manager for PF queues, error %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Failed to reserve queues for PF LAN VSI, error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Allocating %d queues for PF LAN VSI; %d queues active\0A\00", align 1
@IXL_DEFAULT_PHY_INT_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"i40e_aq_set_phy_mask() failed: err %s, aq_err %s\0A\00", align 1
@IFLIB_INTR_MSIX = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"end: error %d\00", align 1
@ixl_enable_iwarp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ixl_if_attach_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_if_attach_post(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca %struct.ixl_vsi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @INIT_DBG_DEV(i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @iflib_get_dev(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.ixl_pf* @iflib_get_softc(i32 %14)
  store %struct.ixl_pf* %15, %struct.ixl_pf** %5, align 8
  %16 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %17 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %16, i32 0, i32 6
  store %struct.ixl_vsi* %17, %struct.ixl_vsi** %7, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @iflib_get_ifp(i32 %18)
  %20 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %21 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %23 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %22, i32 0, i32 5
  store %struct.i40e_hw* %23, %struct.i40e_hw** %6, align 8
  %24 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %25 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %30 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %32 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %37 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %40 = call i64 @ixl_setup_interface(i32 %38, %struct.ixl_pf* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %1
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  store i32 %45, i32* %8, align 4
  br label %161

46:                                               ; preds = %1
  %47 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %48 = call i64 @ixl_attach_get_link_status(%struct.ixl_pf* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %8, align 4
  br label %161

52:                                               ; preds = %46
  %53 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %54 = call i32 @ixl_switch_config(%struct.ixl_pf* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i8*, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %161

61:                                               ; preds = %52
  %62 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %63 = call i32 @ixl_init_filters(%struct.ixl_vsi* %62)
  %64 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %65 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %64, i32 0, i32 4
  %66 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %67 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ixl_pf_qmgr_init(i32* %65, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %161

77:                                               ; preds = %61
  %78 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %79 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %78, i32 0, i32 4
  %80 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %81 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %84 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @max(i32 %82, i32 %85)
  %87 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %88 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %87, i32 0, i32 3
  %89 = call i32 @ixl_pf_qmgr_alloc_contiguous(i32* %79, i32 %86, %struct.TYPE_10__* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %77
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (i32, i8*, ...) @device_printf(i32 %93, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  br label %161

96:                                               ; preds = %77
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %99 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %103 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %97, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %101, i32 %105)
  %107 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %108 = load i32, i32* @IXL_DEFAULT_PHY_INT_MASK, align 4
  %109 = call i32 @i40e_aq_set_phy_int_mask(%struct.i40e_hw* %107, i32 %108, i32* null)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %96
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @i40e_stat_str(%struct.i40e_hw* %114, i32 %115)
  %117 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %118 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %119 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @i40e_aq_str(%struct.i40e_hw* %117, i32 %121)
  %123 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %116, i32 %122)
  br label %161

124:                                              ; preds = %96
  %125 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %126 = call i32 @ixl_get_bus_info(%struct.ixl_pf* %125)
  %127 = load %struct.ixl_vsi*, %struct.ixl_vsi** %7, align 8
  %128 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @IFLIB_INTR_MSIX, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %124
  %135 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %136 = call i32 @ixl_configure_intr0_msix(%struct.ixl_pf* %135)
  %137 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %138 = call i32 @ixl_enable_intr0(%struct.i40e_hw* %137)
  br label %139

139:                                              ; preds = %134, %124
  %140 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %141 = call i32 @ixl_set_initial_advertised_speeds(%struct.ixl_pf* %140)
  %142 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %143 = call i32 @ixl_add_device_sysctls(%struct.ixl_pf* %142)
  %144 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %145 = call i32 @ixl_pf_reset_stats(%struct.ixl_pf* %144)
  %146 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %147 = call i32 @ixl_update_stats_counters(%struct.ixl_pf* %146)
  %148 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %149 = call i32 @ixl_add_hw_stats(%struct.ixl_pf* %148)
  %150 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %151 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  %153 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %154 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %155 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %154, i32 0, i32 2
  %156 = call i32 @i40e_get_link_status(%struct.i40e_hw* %153, i32* %155)
  %157 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %158 = call i32 @ixl_update_link_status(%struct.ixl_pf* %157)
  %159 = load i32, i32* %4, align 4
  %160 = call i32 @INIT_DBG_DEV(i32 %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %165

161:                                              ; preds = %112, %92, %73, %57, %50, %42
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %161, %139
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @INIT_DBG_DEV(i32, i8*) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local %struct.ixl_pf* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_ifp(i32) #1

declare dso_local i64 @ixl_setup_interface(i32, %struct.ixl_pf*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @ixl_attach_get_link_status(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_switch_config(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_init_filters(%struct.ixl_vsi*) #1

declare dso_local i32 @ixl_pf_qmgr_init(i32*, i32) #1

declare dso_local i32 @ixl_pf_qmgr_alloc_contiguous(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @i40e_aq_set_phy_int_mask(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i32 @i40e_stat_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_aq_str(%struct.i40e_hw*, i32) #1

declare dso_local i32 @ixl_get_bus_info(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_configure_intr0_msix(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_enable_intr0(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_set_initial_advertised_speeds(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_add_device_sysctls(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_pf_reset_stats(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_update_stats_counters(%struct.ixl_pf*) #1

declare dso_local i32 @ixl_add_hw_stats(%struct.ixl_pf*) #1

declare dso_local i32 @i40e_get_link_status(%struct.i40e_hw*, i32*) #1

declare dso_local i32 @ixl_update_link_status(%struct.ixl_pf*) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
