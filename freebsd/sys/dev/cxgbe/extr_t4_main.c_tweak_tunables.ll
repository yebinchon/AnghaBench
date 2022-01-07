; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_tweak_tunables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_tweak_tunables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp_ncpus = common dso_local global i32 0, align 4
@t4_ntxq = common dso_local global i32 0, align 4
@NTXQ = common dso_local global i32 0, align 4
@t4_ntxq_vi = common dso_local global i32 0, align 4
@NTXQ_VI = common dso_local global i32 0, align 4
@t4_nrxq = common dso_local global i32 0, align 4
@NRXQ = common dso_local global i32 0, align 4
@t4_nrxq_vi = common dso_local global i32 0, align 4
@NRXQ_VI = common dso_local global i32 0, align 4
@t4_toecaps_allowed = common dso_local global i32 0, align 4
@t4_rdmacaps_allowed = common dso_local global i32 0, align 4
@t4_iscsicaps_allowed = common dso_local global i32 0, align 4
@t4_tmr_idx = common dso_local global i64 0, align 8
@SGE_NTIMERS = common dso_local global i64 0, align 8
@TMR_IDX = common dso_local global i64 0, align 8
@t4_pktc_idx = common dso_local global i32 0, align 4
@SGE_NCOUNTERS = common dso_local global i32 0, align 4
@PKTC_IDX = common dso_local global i32 0, align 4
@t4_qsize_txq = common dso_local global i32 0, align 4
@t4_qsize_rxq = common dso_local global i32 0, align 4
@INTR_MSIX = common dso_local global i32 0, align 4
@INTR_MSI = common dso_local global i32 0, align 4
@INTR_INTX = common dso_local global i32 0, align 4
@t4_intr_types = common dso_local global i32 0, align 4
@t4_num_vis = common dso_local global i32 0, align 4
@vi_mac_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cxgbe: number of VIs limited to %d\0A\00", align 1
@pcie_relaxed_ordering = common dso_local global i32 0, align 4
@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8
@FW_CAPS_CONFIG_ISCSI_INITIATOR_PDU = common dso_local global i32 0, align 4
@FW_CAPS_CONFIG_ISCSI_T10DIF = common dso_local global i32 0, align 4
@FW_CAPS_CONFIG_ISCSI_TARGET_PDU = common dso_local global i32 0, align 4
@FW_CAPS_CONFIG_RDMA_RDDP = common dso_local global i32 0, align 4
@FW_CAPS_CONFIG_RDMA_RDMAC = common dso_local global i32 0, align 4
@FW_CAPS_CONFIG_TOE = common dso_local global i32 0, align 4
@NNMRXQ_VI = common dso_local global i32 0, align 4
@NNMTXQ_VI = common dso_local global i32 0, align 4
@NOFLDRXQ = common dso_local global i32 0, align 4
@NOFLDRXQ_VI = common dso_local global i32 0, align 4
@NOFLDTXQ = common dso_local global i32 0, align 4
@NOFLDTXQ_VI = common dso_local global i32 0, align 4
@PKTC_IDX_OFLD = common dso_local global i32 0, align 4
@TMR_IDX_OFLD = common dso_local global i64 0, align 8
@t4_nnmrxq_vi = common dso_local global i32 0, align 4
@t4_nnmtxq_vi = common dso_local global i32 0, align 4
@t4_nofldrxq = common dso_local global i32 0, align 4
@t4_nofldrxq_vi = common dso_local global i32 0, align 4
@t4_nofldtxq = common dso_local global i32 0, align 4
@t4_nofldtxq_vi = common dso_local global i32 0, align 4
@t4_pktc_idx_ofld = common dso_local global i32 0, align 4
@t4_tmr_idx_ofld = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tweak_tunables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tweak_tunables() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @mp_ncpus, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @t4_ntxq, align 4
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @NTXQ, align 4
  %8 = call i32 @calculate_nqueues(i32* @t4_ntxq, i32 %6, i32 %7)
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @NTXQ_VI, align 4
  %12 = call i32 @calculate_nqueues(i32* @t4_ntxq_vi, i32 %10, i32 %11)
  %13 = load i32, i32* @t4_nrxq, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @NRXQ, align 4
  %18 = call i32 @calculate_nqueues(i32* @t4_nrxq, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %9
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @NRXQ_VI, align 4
  %22 = call i32 @calculate_nqueues(i32* @t4_nrxq_vi, i32 %20, i32 %21)
  %23 = load i32, i32* @t4_toecaps_allowed, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* @t4_toecaps_allowed, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i32, i32* @t4_rdmacaps_allowed, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* @t4_rdmacaps_allowed, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* @t4_iscsicaps_allowed, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* @t4_iscsicaps_allowed, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i64, i64* @t4_tmr_idx, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @t4_tmr_idx, align 8
  %39 = load i64, i64* @SGE_NTIMERS, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %34
  %42 = load i64, i64* @TMR_IDX, align 8
  store i64 %42, i64* @t4_tmr_idx, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* @t4_pktc_idx, align 4
  %45 = icmp slt i32 %44, -1
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @t4_pktc_idx, align 4
  %48 = load i32, i32* @SGE_NCOUNTERS, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %43
  %51 = load i32, i32* @PKTC_IDX, align 4
  store i32 %51, i32* @t4_pktc_idx, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32, i32* @t4_qsize_txq, align 4
  %54 = icmp slt i32 %53, 128
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 128, i32* @t4_qsize_txq, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* @t4_qsize_rxq, align 4
  %58 = icmp slt i32 %57, 128
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 128, i32* @t4_qsize_rxq, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %61

61:                                               ; preds = %65, %60
  %62 = load i32, i32* @t4_qsize_rxq, align 4
  %63 = and i32 %62, 7
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @t4_qsize_rxq, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @t4_qsize_rxq, align 4
  br label %61

68:                                               ; preds = %61
  %69 = load i32, i32* @INTR_MSIX, align 4
  %70 = load i32, i32* @INTR_MSI, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @INTR_INTX, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @t4_intr_types, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* @t4_intr_types, align 4
  %76 = load i32, i32* @t4_num_vis, align 4
  %77 = icmp slt i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 1, i32* @t4_num_vis, align 4
  br label %79

79:                                               ; preds = %78, %68
  %80 = load i32, i32* @t4_num_vis, align 4
  %81 = load i32, i32* @vi_mac_funcs, align 4
  %82 = call i32 @nitems(i32 %81)
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, i32* @vi_mac_funcs, align 4
  %86 = call i32 @nitems(i32 %85)
  store i32 %86, i32* @t4_num_vis, align 4
  %87 = load i32, i32* @t4_num_vis, align 4
  %88 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* @pcie_relaxed_ordering, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @pcie_relaxed_ordering, align 4
  %94 = icmp sgt i32 %93, 2
  br i1 %94, label %95, label %101

95:                                               ; preds = %92, %89
  store i32 1, i32* @pcie_relaxed_ordering, align 4
  %96 = load i64, i64* @cpu_vendor_id, align 8
  %97 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 0, i32* @pcie_relaxed_ordering, align 4
  br label %100

100:                                              ; preds = %99, %95
  br label %101

101:                                              ; preds = %100, %92
  ret void
}

declare dso_local i32 @calculate_nqueues(i32*, i32, i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
