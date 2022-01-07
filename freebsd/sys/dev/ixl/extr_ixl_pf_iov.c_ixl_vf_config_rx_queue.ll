; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_rx_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.ixl_vf = type { i32, i32 }
%struct.virtchnl_rxq_info = type { i32, i64, i32, i32, i32, i32, i32, i64 }
%struct.i40e_hmc_obj_rxq = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"VF %d: PF RX queue %d / VF RX queue %d\0A\00", align 1
@IXL_VF_MAX_BUFFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IXL_VF_MAX_FRAME = common dso_local global i64 0, align 8
@ETHER_MIN_LEN = common dso_local global i64 0, align 8
@IXL_VF_MAX_HDR_BUFFER = common dso_local global i32 0, align 4
@I40E_HMC_OBJ_RX_HSPLIT_0_SPLIT_L2 = common dso_local global i32 0, align 4
@I40E_HMC_OBJ_RX_HSPLIT_0_SPLIT_IP = common dso_local global i32 0, align 4
@I40E_HMC_OBJ_RX_HSPLIT_0_SPLIT_TCP_UDP = common dso_local global i32 0, align 4
@I40E_HMC_OBJ_RX_HSPLIT_0_SPLIT_SCTP = common dso_local global i32 0, align 4
@I40E_RXQ_CTX_HBUFF_SHIFT = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4
@IXL_RX_CTX_BASE_UNITS = common dso_local global i32 0, align 4
@I40E_RXQ_CTX_DBUFF_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixl_pf*, %struct.ixl_vf*, %struct.virtchnl_rxq_info*)* @ixl_vf_config_rx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_vf_config_rx_queue(%struct.ixl_pf* %0, %struct.ixl_vf* %1, %struct.virtchnl_rxq_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca %struct.virtchnl_rxq_info*, align 8
  %8 = alloca %struct.i40e_hw*, align 8
  %9 = alloca %struct.i40e_hmc_obj_rxq, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store %struct.virtchnl_rxq_info* %2, %struct.virtchnl_rxq_info** %7, align 8
  %12 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %13 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %12, i32 0, i32 1
  store %struct.i40e_hw* %13, %struct.i40e_hw** %8, align 8
  %14 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %15 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %14, i32 0, i32 0
  %16 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %7, align 8
  %17 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ixl_pf_qidx_from_vsi_qidx(i32* %15, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = call i32 @bzero(%struct.i40e_hmc_obj_rxq* %9, i32 72)
  %21 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %22 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %25 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %7, align 8
  %29 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DDPRINTF(i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %30)
  %32 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %7, align 8
  %33 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IXL_VF_MAX_BUFFER, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %140

39:                                               ; preds = %3
  %40 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %7, align 8
  %41 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IXL_VF_MAX_FRAME, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %7, align 8
  %47 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ETHER_MIN_LEN, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45, %39
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %4, align 4
  br label %140

53:                                               ; preds = %45
  %54 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %7, align 8
  %55 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %53
  %59 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %7, align 8
  %60 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IXL_VF_MAX_HDR_BUFFER, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  br label %140

66:                                               ; preds = %58
  %67 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %7, align 8
  %68 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @I40E_HMC_OBJ_RX_HSPLIT_0_SPLIT_L2, align 4
  %71 = load i32, i32* @I40E_HMC_OBJ_RX_HSPLIT_0_SPLIT_IP, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @I40E_HMC_OBJ_RX_HSPLIT_0_SPLIT_TCP_UDP, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @I40E_HMC_OBJ_RX_HSPLIT_0_SPLIT_SCTP, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %69, %76
  %78 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %7, align 8
  %80 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @I40E_RXQ_CTX_HBUFF_SHIFT, align 4
  %83 = ashr i32 %81, %82
  %84 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 2
  store i32 2, i32* %85, align 8
  br label %86

86:                                               ; preds = %66, %53
  %87 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @i40e_clear_lan_rx_queue_context(%struct.i40e_hw* %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @I40E_SUCCESS, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %4, align 4
  br label %140

95:                                               ; preds = %86
  %96 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %7, align 8
  %97 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IXL_RX_CTX_BASE_UNITS, align 4
  %100 = sdiv i32 %98, %99
  %101 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 3
  store i32 %100, i32* %101, align 4
  %102 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %7, align 8
  %103 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 15
  store i32 %104, i32* %105, align 8
  %106 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %7, align 8
  %107 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @I40E_RXQ_CTX_DBUFF_SHIFT, align 4
  %110 = ashr i32 %108, %109
  %111 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 4
  store i32 %110, i32* %111, align 8
  %112 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 5
  store i32 1, i32* %112, align 4
  %113 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 6
  store i32 1, i32* %113, align 8
  %114 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 7
  store i32 1, i32* %114, align 4
  %115 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %7, align 8
  %116 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 8
  store i64 %117, i64* %118, align 8
  %119 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 9
  store i32 1, i32* %119, align 8
  %120 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 10
  store i32 1, i32* %120, align 4
  %121 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 11
  store i32 1, i32* %121, align 8
  %122 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 12
  store i32 1, i32* %122, align 4
  %123 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 13
  store i32 1, i32* %123, align 8
  %124 = getelementptr inbounds %struct.i40e_hmc_obj_rxq, %struct.i40e_hmc_obj_rxq* %9, i32 0, i32 14
  store i32 1, i32* %124, align 4
  %125 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @i40e_set_lan_rx_queue_context(%struct.i40e_hw* %125, i32 %126, %struct.i40e_hmc_obj_rxq* %9)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @I40E_SUCCESS, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %95
  %132 = load i32, i32* @EINVAL, align 4
  store i32 %132, i32* %4, align 4
  br label %140

133:                                              ; preds = %95
  %134 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %135 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %134, i32 0, i32 0
  %136 = load %struct.virtchnl_rxq_info*, %struct.virtchnl_rxq_info** %7, align 8
  %137 = getelementptr inbounds %struct.virtchnl_rxq_info, %struct.virtchnl_rxq_info* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ixl_pf_qmgr_mark_queue_configured(i32* %135, i32 %138, i32 0)
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %133, %131, %93, %64, %51, %37
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @ixl_pf_qidx_from_vsi_qidx(i32*, i32) #1

declare dso_local i32 @bzero(%struct.i40e_hmc_obj_rxq*, i32) #1

declare dso_local i32 @DDPRINTF(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @i40e_clear_lan_rx_queue_context(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_set_lan_rx_queue_context(%struct.i40e_hw*, i32, %struct.i40e_hmc_obj_rxq*) #1

declare dso_local i32 @ixl_pf_qmgr_mark_queue_configured(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
