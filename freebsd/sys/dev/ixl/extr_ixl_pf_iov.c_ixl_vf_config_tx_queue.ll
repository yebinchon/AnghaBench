; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_tx_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ixl_vf = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.virtchnl_txq_info = type { i32, i32, i32, i32, i32 }
%struct.i40e_hmc_obj_txq = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"VF %d: PF TX queue %d / VF TX queue %d (Global VF %d)\0A\00", align 1
@I40E_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IXL_TX_CTX_BASE_UNITS = common dso_local global i32 0, align 4
@I40E_QTX_CTL_VF_QUEUE = common dso_local global i32 0, align 4
@I40E_QTX_CTL_PF_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QTX_CTL_VFVM_INDX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixl_pf*, %struct.ixl_vf*, %struct.virtchnl_txq_info*)* @ixl_vf_config_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_vf_config_tx_queue(%struct.ixl_pf* %0, %struct.ixl_vf* %1, %struct.virtchnl_txq_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca %struct.virtchnl_txq_info*, align 8
  %8 = alloca %struct.i40e_hw*, align 8
  %9 = alloca %struct.i40e_hmc_obj_txq, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store %struct.virtchnl_txq_info* %2, %struct.virtchnl_txq_info** %7, align 8
  %14 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %15 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %14, i32 0, i32 1
  store %struct.i40e_hw* %15, %struct.i40e_hw** %8, align 8
  %16 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %17 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %16, i32 0, i32 1
  %18 = load %struct.virtchnl_txq_info*, %struct.virtchnl_txq_info** %7, align 8
  %19 = getelementptr inbounds %struct.virtchnl_txq_info, %struct.virtchnl_txq_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ixl_pf_qidx_from_vsi_qidx(i32* %17, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %23 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %27 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %11, align 4
  %30 = call i32 @bzero(%struct.i40e_hmc_obj_txq* %9, i32 32)
  %31 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %32 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %35 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.virtchnl_txq_info*, %struct.virtchnl_txq_info** %7, align 8
  %39 = getelementptr inbounds %struct.virtchnl_txq_info, %struct.virtchnl_txq_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @DDPRINTF(i32 %33, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %40, i32 %41)
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @i40e_clear_lan_tx_queue_context(%struct.i40e_hw* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @I40E_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %4, align 4
  br label %113

51:                                               ; preds = %3
  %52 = load %struct.virtchnl_txq_info*, %struct.virtchnl_txq_info** %7, align 8
  %53 = getelementptr inbounds %struct.virtchnl_txq_info, %struct.virtchnl_txq_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IXL_TX_CTX_BASE_UNITS, align 4
  %56 = sdiv i32 %54, %55
  %57 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %9, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load %struct.virtchnl_txq_info*, %struct.virtchnl_txq_info** %7, align 8
  %59 = getelementptr inbounds %struct.virtchnl_txq_info, %struct.virtchnl_txq_info* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %9, i32 0, i32 5
  store i32 %60, i32* %61, align 4
  %62 = load %struct.virtchnl_txq_info*, %struct.virtchnl_txq_info** %7, align 8
  %63 = getelementptr inbounds %struct.virtchnl_txq_info, %struct.virtchnl_txq_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %9, i32 0, i32 4
  store i32 %64, i32* %65, align 8
  %66 = load %struct.virtchnl_txq_info*, %struct.virtchnl_txq_info** %7, align 8
  %67 = getelementptr inbounds %struct.virtchnl_txq_info, %struct.virtchnl_txq_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %9, i32 0, i32 3
  store i32 %68, i32* %69, align 4
  %70 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %71 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %9, i32 0, i32 2
  store i32 %77, i32* %78, align 8
  %79 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %9, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @i40e_set_lan_tx_queue_context(%struct.i40e_hw* %80, i32 %81, %struct.i40e_hmc_obj_txq* %9)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @I40E_SUCCESS, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %51
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %4, align 4
  br label %113

88:                                               ; preds = %51
  %89 = load i32, i32* @I40E_QTX_CTL_VF_QUEUE, align 4
  %90 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %91 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @I40E_QTX_CTL_PF_INDX_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = or i32 %89, %94
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @I40E_QTX_CTL_VFVM_INDX_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = or i32 %95, %98
  store i32 %99, i32* %13, align 4
  %100 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @I40E_QTX_CTL(i32 %101)
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @wr32(%struct.i40e_hw* %100, i32 %102, i32 %103)
  %105 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %106 = call i32 @ixl_flush(%struct.i40e_hw* %105)
  %107 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %108 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %107, i32 0, i32 1
  %109 = load %struct.virtchnl_txq_info*, %struct.virtchnl_txq_info** %7, align 8
  %110 = getelementptr inbounds %struct.virtchnl_txq_info, %struct.virtchnl_txq_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ixl_pf_qmgr_mark_queue_configured(i32* %108, i32 %111, i32 1)
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %88, %86, %49
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @ixl_pf_qidx_from_vsi_qidx(i32*, i32) #1

declare dso_local i32 @bzero(%struct.i40e_hmc_obj_txq*, i32) #1

declare dso_local i32 @DDPRINTF(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @i40e_clear_lan_tx_queue_context(%struct.i40e_hw*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @i40e_set_lan_tx_queue_context(%struct.i40e_hw*, i32, %struct.i40e_hmc_obj_txq*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_QTX_CTL(i32) #1

declare dso_local i32 @ixl_flush(%struct.i40e_hw*) #1

declare dso_local i32 @ixl_pf_qmgr_mark_queue_configured(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
