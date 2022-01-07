; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_add_device_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_if_iavf.c_iavf_add_device_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { i32, %struct.TYPE_2__, i32, %struct.ixl_vsi }
%struct.TYPE_2__ = type { i32 }
%struct.ixl_vsi = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"current_speed\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@iavf_sysctl_current_speed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Current Port Speed\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"tx_itr\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@iavf_sysctl_tx_itr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Immediately set TX ITR value for all queues\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"rx_itr\00", align 1
@iavf_sysctl_rx_itr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Immediately set RX ITR value for all queues\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CTLFLAG_SKIP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"Debug Sysctls\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"shared_debug_mask\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Shared code debug message level\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"core_debug_mask\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Non-shared code debug message level\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"filter_list\00", align 1
@iavf_sysctl_sw_filter_list = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"SW Filter List\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"queue_interrupt_table\00", align 1
@iavf_sysctl_queue_interrupt_table = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [36 x i8] c"View MSI-X indices for TX/RX queues\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"do_vf_reset\00", align 1
@CTLFLAG_WR = common dso_local global i32 0, align 4
@iavf_sysctl_vf_reset = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [27 x i8] c"Request a VF reset from PF\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"do_vflr_reset\00", align 1
@iavf_sysctl_vflr_reset = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [29 x i8] c"Request a VFLR reset from HW\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"vsi\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_sc*)* @iavf_add_device_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_add_device_sysctls(%struct.iavf_sc* %0) #0 {
  %2 = alloca %struct.iavf_sc*, align 8
  %3 = alloca %struct.ixl_vsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.iavf_sc* %0, %struct.iavf_sc** %2, align 8
  %9 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %10 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %9, i32 0, i32 3
  store %struct.ixl_vsi* %10, %struct.ixl_vsi** %3, align 8
  %11 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %12 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %14)
  store %struct.sysctl_ctx_list* %15, %struct.sysctl_ctx_list** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %16)
  %18 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %17)
  store %struct.sysctl_oid_list* %18, %struct.sysctl_oid_list** %6, align 8
  %19 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %20 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLTYPE_STRING, align 4
  %23 = load i32, i32* @CTLFLAG_RD, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %26 = load i32, i32* @iavf_sysctl_current_speed, align 4
  %27 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %19, %struct.sysctl_oid_list* %20, i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %24, %struct.iavf_sc* %25, i32 0, i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %29 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %30 = load i32, i32* @OID_AUTO, align 4
  %31 = load i32, i32* @CTLTYPE_INT, align 4
  %32 = load i32, i32* @CTLFLAG_RW, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %35 = load i32, i32* @iavf_sysctl_tx_itr, align 4
  %36 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %28, %struct.sysctl_oid_list* %29, i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %33, %struct.iavf_sc* %34, i32 0, i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %37 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %38 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %39 = load i32, i32* @OID_AUTO, align 4
  %40 = load i32, i32* @CTLTYPE_INT, align 4
  %41 = load i32, i32* @CTLFLAG_RW, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %44 = load i32, i32* @iavf_sysctl_rx_itr, align 4
  %45 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %37, %struct.sysctl_oid_list* %38, i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %42, %struct.iavf_sc* %43, i32 0, i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %46 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %47 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %48 = load i32, i32* @OID_AUTO, align 4
  %49 = load i32, i32* @CTLFLAG_RD, align 4
  %50 = load i32, i32* @CTLFLAG_SKIP, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %46, %struct.sysctl_oid_list* %47, i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %51, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store %struct.sysctl_oid* %52, %struct.sysctl_oid** %7, align 8
  %53 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %54 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %53)
  store %struct.sysctl_oid_list* %54, %struct.sysctl_oid_list** %8, align 8
  %55 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %56 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %57 = load i32, i32* @OID_AUTO, align 4
  %58 = load i32, i32* @CTLFLAG_RW, align 4
  %59 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %60 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %55, %struct.sysctl_oid_list* %56, i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %58, i32* %61, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %63 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %64 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %65 = load i32, i32* @OID_AUTO, align 4
  %66 = load i32, i32* @CTLFLAG_RW, align 4
  %67 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %68 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %67, i32 0, i32 0
  %69 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %63, %struct.sysctl_oid_list* %64, i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %66, i32* %68, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0))
  %70 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %71 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %72 = load i32, i32* @OID_AUTO, align 4
  %73 = load i32, i32* @CTLTYPE_STRING, align 4
  %74 = load i32, i32* @CTLFLAG_RD, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %77 = load i32, i32* @iavf_sysctl_sw_filter_list, align 4
  %78 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %70, %struct.sysctl_oid_list* %71, i32 %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %75, %struct.iavf_sc* %76, i32 0, i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %79 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %80 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %81 = load i32, i32* @OID_AUTO, align 4
  %82 = load i32, i32* @CTLTYPE_STRING, align 4
  %83 = load i32, i32* @CTLFLAG_RD, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %86 = load i32, i32* @iavf_sysctl_queue_interrupt_table, align 4
  %87 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %79, %struct.sysctl_oid_list* %80, i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %84, %struct.iavf_sc* %85, i32 0, i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0))
  %88 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %89 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %90 = load i32, i32* @OID_AUTO, align 4
  %91 = load i32, i32* @CTLTYPE_INT, align 4
  %92 = load i32, i32* @CTLFLAG_WR, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %95 = load i32, i32* @iavf_sysctl_vf_reset, align 4
  %96 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %88, %struct.sysctl_oid_list* %89, i32 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %93, %struct.iavf_sc* %94, i32 0, i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %97 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %98 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %99 = load i32, i32* @OID_AUTO, align 4
  %100 = load i32, i32* @CTLTYPE_INT, align 4
  %101 = load i32, i32* @CTLFLAG_WR, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %104 = load i32, i32* @iavf_sysctl_vflr_reset, align 4
  %105 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %97, %struct.sysctl_oid_list* %98, i32 %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %102, %struct.iavf_sc* %103, i32 0, i32 %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %108 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %109 = call i32 @ixl_add_vsi_sysctls(i32 %106, %struct.ixl_vsi* %107, %struct.sysctl_ctx_list* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %112 = call i32 @ixl_add_queues_sysctls(i32 %110, %struct.ixl_vsi* %111)
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.iavf_sc*, i32, i32, i8*, i8*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @ixl_add_vsi_sysctls(i32, %struct.ixl_vsi*, %struct.sysctl_ctx_list*, i8*) #1

declare dso_local i32 @ixl_add_queues_sysctls(i32, %struct.ixl_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
