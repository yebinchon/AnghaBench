; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_set_rss_hena.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_iavf_vc.c_iavf_set_rss_hena.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_sc = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.virtchnl_rss_hena = type { i32 }

@I40E_MAC_X722_VF = common dso_local global i64 0, align 8
@IXL_DEFAULT_RSS_HENA_X722 = common dso_local global i32 0, align 4
@IXL_DEFAULT_RSS_HENA_XL710 = common dso_local global i32 0, align 4
@VIRTCHNL_OP_SET_RSS_HENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_set_rss_hena(%struct.iavf_sc* %0) #0 {
  %2 = alloca %struct.iavf_sc*, align 8
  %3 = alloca %struct.virtchnl_rss_hena, align 4
  %4 = alloca %struct.i40e_hw*, align 8
  store %struct.iavf_sc* %0, %struct.iavf_sc** %2, align 8
  %5 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %6 = getelementptr inbounds %struct.iavf_sc, %struct.iavf_sc* %5, i32 0, i32 0
  store %struct.i40e_hw* %6, %struct.i40e_hw** %4, align 8
  %7 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %8 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @I40E_MAC_X722_VF, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @IXL_DEFAULT_RSS_HENA_X722, align 4
  %15 = getelementptr inbounds %struct.virtchnl_rss_hena, %struct.virtchnl_rss_hena* %3, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @IXL_DEFAULT_RSS_HENA_XL710, align 4
  %18 = getelementptr inbounds %struct.virtchnl_rss_hena, %struct.virtchnl_rss_hena* %3, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.iavf_sc*, %struct.iavf_sc** %2, align 8
  %21 = load i32, i32* @VIRTCHNL_OP_SET_RSS_HENA, align 4
  %22 = bitcast %struct.virtchnl_rss_hena* %3 to i32*
  %23 = call i32 @iavf_send_pf_msg(%struct.iavf_sc* %20, i32 %21, i32* %22, i32 4)
  ret i32 0
}

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_sc*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
