; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_reconfigure_unicast_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_reconfigure_unicast_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ecore_filter_ucast = type { i32, i32, i32, i32, i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_FILTER_ADD = common dso_local global i32 0, align 4
@ECORE_ETH_VF_NUM_VLAN_FILTERS = common dso_local global i32 0, align 4
@ECORE_FILTER_VLAN = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Reconfiguring VLAN [0x%04x] for VF [%04x]\0A\00", align 1
@ECORE_SPQ_MODE_CB = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to configure VLAN [%04x] to VF [%04x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_vf_info*)* @ecore_iov_reconfigure_unicast_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iov_reconfigure_unicast_vlan(%struct.ecore_hwfn* %0, %struct.ecore_vf_info* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_vf_info*, align 8
  %5 = alloca %struct.ecore_filter_ucast, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_vf_info* %1, %struct.ecore_vf_info** %4, align 8
  %8 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %8, i32* %6, align 4
  %9 = call i32 @OSAL_MEMSET(%struct.ecore_filter_ucast* %5, i32 0, i32 24)
  %10 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %5, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %5, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %13 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %5, i32 0, i32 5
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @ECORE_FILTER_ADD, align 4
  %17 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %5, i32 0, i32 4
  store i32 %16, i32* %17, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %74, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ECORE_ETH_VF_NUM_VLAN_FILTERS, align 4
  %21 = add nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %77

23:                                               ; preds = %18
  %24 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %25 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %74

35:                                               ; preds = %23
  %36 = load i32, i32* @ECORE_FILTER_VLAN, align 4
  %37 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %5, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %39 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %5, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %49 = load i32, i32* @ECORE_MSG_IOV, align 4
  %50 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %5, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %53 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %48, i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %57 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %58 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ECORE_SPQ_MODE_CB, align 4
  %61 = load i32, i32* @OSAL_NULL, align 4
  %62 = call i32 @ecore_sp_eth_filter_ucast(%struct.ecore_hwfn* %56, i32 %59, %struct.ecore_filter_ucast* %5, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %35
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %67 = getelementptr inbounds %struct.ecore_filter_ucast, %struct.ecore_filter_ucast* %5, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %4, align 8
  %70 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %66, i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %71)
  br label %77

73:                                               ; preds = %35
  br label %74

74:                                               ; preds = %73, %34
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %18

77:                                               ; preds = %65, %18
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_filter_ucast*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @ecore_sp_eth_filter_ucast(%struct.ecore_hwfn*, i32, %struct.ecore_filter_ucast*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
