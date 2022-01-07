; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_terminate_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_terminate_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ll2_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ecore_hwfn = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_ptt = type { i32 }

@OSAL_NULL = common dso_local global %struct.ecore_ll2_info* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_AGAIN = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_LL2_TYPE_OOO = common dso_local global i64 0, align 8
@ECORE_LL2_TYPE_FCOE = common dso_local global i64 0, align 8
@ECORE_MF_UFP_SPECIFIC = common dso_local global i32 0, align 4
@ECORE_LLH_FILTER_ETHERTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_ll2_terminate_connection(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ll2_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_ptt*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %11, %struct.ecore_hwfn** %6, align 8
  %12 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** @OSAL_NULL, align 8
  store %struct.ecore_ll2_info* %12, %struct.ecore_ll2_info** %7, align 8
  %13 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %15 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %14)
  store %struct.ecore_ptt* %15, %struct.ecore_ptt** %9, align 8
  %16 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %17 = icmp ne %struct.ecore_ptt* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %19, i32* %3, align 4
  br label %105

20:                                               ; preds = %2
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.ecore_ll2_info* @ecore_ll2_handle_sanity_lock(%struct.ecore_hwfn* %21, i32 %22)
  store %struct.ecore_ll2_info* %23, %struct.ecore_ll2_info** %7, align 8
  %24 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %7, align 8
  %25 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** @OSAL_NULL, align 8
  %26 = icmp eq %struct.ecore_ll2_info* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %28, i32* %8, align 4
  br label %100

29:                                               ; preds = %20
  %30 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %7, align 8
  %31 = call i64 @ECORE_LL2_TX_REGISTERED(%struct.ecore_ll2_info* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %35 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %7, align 8
  %36 = call i32 @ecore_sp_ll2_tx_queue_stop(%struct.ecore_hwfn* %34, %struct.ecore_ll2_info* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ECORE_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %100

41:                                               ; preds = %33
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ecore_ll2_txq_flush(%struct.ecore_hwfn* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %29
  %46 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %7, align 8
  %47 = call i64 @ECORE_LL2_RX_REGISTERED(%struct.ecore_ll2_info* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %51 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %7, align 8
  %52 = call i32 @ecore_sp_ll2_rx_queue_stop(%struct.ecore_hwfn* %50, %struct.ecore_ll2_info* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %100

56:                                               ; preds = %49
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @ecore_ll2_rxq_flush(%struct.ecore_hwfn* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %45
  %61 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %7, align 8
  %62 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ECORE_LL2_TYPE_OOO, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %69 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ecore_ooo_release_all_isles(i32 %70)
  br label %72

72:                                               ; preds = %67, %60
  %73 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %7, align 8
  %74 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ECORE_LL2_TYPE_FCOE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %72
  %80 = load i32, i32* @ECORE_MF_UFP_SPECIFIC, align 4
  %81 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %82 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @OSAL_TEST_BIT(i32 %80, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %79
  %88 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %89 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* @ECORE_LLH_FILTER_ETHERTYPE, align 4
  %92 = call i32 @ecore_llh_remove_protocol_filter(%struct.TYPE_4__* %90, i32 0, i32 %91, i32 35078, i32 0)
  br label %93

93:                                               ; preds = %87, %79
  %94 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %95 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* @ECORE_LLH_FILTER_ETHERTYPE, align 4
  %98 = call i32 @ecore_llh_remove_protocol_filter(%struct.TYPE_4__* %96, i32 0, i32 %97, i32 35092, i32 0)
  br label %99

99:                                               ; preds = %93, %72
  br label %100

100:                                              ; preds = %99, %55, %40, %27
  %101 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %102 = load %struct.ecore_ptt*, %struct.ecore_ptt** %9, align 8
  %103 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %101, %struct.ecore_ptt* %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %18
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local %struct.ecore_ll2_info* @ecore_ll2_handle_sanity_lock(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @ECORE_LL2_TX_REGISTERED(%struct.ecore_ll2_info*) #1

declare dso_local i32 @ecore_sp_ll2_tx_queue_stop(%struct.ecore_hwfn*, %struct.ecore_ll2_info*) #1

declare dso_local i32 @ecore_ll2_txq_flush(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @ECORE_LL2_RX_REGISTERED(%struct.ecore_ll2_info*) #1

declare dso_local i32 @ecore_sp_ll2_rx_queue_stop(%struct.ecore_hwfn*, %struct.ecore_ll2_info*) #1

declare dso_local i32 @ecore_ll2_rxq_flush(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_ooo_release_all_isles(i32) #1

declare dso_local i32 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ecore_llh_remove_protocol_filter(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
