; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_map_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_map_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.ixl_vf = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK = common dso_local global i32 0, align 4
@I40E_VPLAN_MAPENA_TXRX_ENA_MASK = common dso_local global i32 0, align 4
@I40E_VPLAN_QTABLE_QINDEX_SHIFT = common dso_local global i32 0, align 4
@IXL_MAX_VSI_QUEUES = common dso_local global i32 0, align 4
@I40E_VPLAN_QTABLE_QINDEX_MASK = common dso_local global i32 0, align 4
@I40E_VSILAN_QTABLE_QINDEX_0_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*)* @ixl_vf_map_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_map_queues(%struct.ixl_pf* %0, %struct.ixl_vf* %1) #0 {
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.ixl_vf*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %4, align 8
  %8 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %9 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %8, i32 0, i32 0
  store %struct.i40e_hw* %9, %struct.i40e_hw** %5, align 8
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %11 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %12 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @I40E_VSILAN_QBASE(i32 %14)
  %16 = load i32, i32* @I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK, align 4
  %17 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %10, i32 %15, i32 %16)
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %19 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %20 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @I40E_VPLAN_MAPENA(i32 %21)
  %23 = load i32, i32* @I40E_VPLAN_MAPENA_TXRX_ENA_MASK, align 4
  %24 = call i32 @wr32(%struct.i40e_hw* %18, i32 %22, i32 %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %47, %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %28 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %25
  %33 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %34 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @ixl_pf_qidx_from_vsi_qidx(i32* %34, i32 %35)
  %37 = load i32, i32* @I40E_VPLAN_QTABLE_QINDEX_SHIFT, align 4
  %38 = shl i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %42 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @I40E_VPLAN_QTABLE(i32 %40, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @wr32(%struct.i40e_hw* %39, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %25

50:                                               ; preds = %25
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @IXL_MAX_VSI_QUEUES, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %59 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @I40E_VPLAN_QTABLE(i32 %57, i32 %60)
  %62 = load i32, i32* @I40E_VPLAN_QTABLE_QINDEX_MASK, align 4
  %63 = call i32 @wr32(%struct.i40e_hw* %56, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %51

67:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %84, %67
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %71 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %68
  %76 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %77 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %80 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %79, i32 0, i32 0
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @ixl_pf_qidx_from_vsi_qidx(i32* %80, i32 %81)
  %83 = call i32 @ixl_vf_map_vsi_queue(%struct.i40e_hw* %76, %struct.ixl_vf* %77, i32 %78, i32 %82)
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %68

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %98, %87
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @IXL_MAX_VSI_QUEUES, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %94 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @I40E_VSILAN_QTABLE_QINDEX_0_MASK, align 4
  %97 = call i32 @ixl_vf_map_vsi_queue(%struct.i40e_hw* %93, %struct.ixl_vf* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %88

101:                                              ; preds = %88
  %102 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %103 = call i32 @ixl_flush(%struct.i40e_hw* %102)
  ret void
}

declare dso_local i32 @i40e_write_rx_ctl(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VSILAN_QBASE(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VPLAN_MAPENA(i32) #1

declare dso_local i32 @ixl_pf_qidx_from_vsi_qidx(i32*, i32) #1

declare dso_local i32 @I40E_VPLAN_QTABLE(i32, i32) #1

declare dso_local i32 @ixl_vf_map_vsi_queue(%struct.i40e_hw*, %struct.ixl_vf*, i32, i32) #1

declare dso_local i32 @ixl_flush(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
