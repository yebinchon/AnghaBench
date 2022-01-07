; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_configure_queue_intr_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_configure_queue_intr_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.ixl_vsi, %struct.i40e_hw }
%struct.ixl_vsi = type { i32, i32 }
%struct.i40e_hw = type { i32 }

@I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK = common dso_local global i32 0, align 4
@I40E_QUEUE_TYPE_RX = common dso_local global i32 0, align 4
@I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_MASK = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_CAUSE_ENA_MASK = common dso_local global i32 0, align 4
@IXL_RX_ITR = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_ITR_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_MSIX_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QUEUE_TYPE_TX = common dso_local global i32 0, align 4
@I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_CAUSE_ENA_MASK = common dso_local global i32 0, align 4
@IXL_TX_ITR = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_ITR_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_MSIX_INDX_SHIFT = common dso_local global i32 0, align 4
@IXL_QUEUE_EOL = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_configure_queue_intr_msix(%struct.ixl_pf* %0) #0 {
  %2 = alloca %struct.ixl_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.ixl_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %2, align 8
  %8 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %9 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %8, i32 0, i32 1
  store %struct.i40e_hw* %9, %struct.i40e_hw** %3, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %2, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 0
  store %struct.ixl_vsi* %11, %struct.ixl_vsi** %4, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %87, %1
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %15 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ixl_vsi*, %struct.ixl_vsi** %4, align 8
  %18 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @max(i32 %16, i32 %19)
  %21 = icmp slt i32 %13, %20
  br i1 %21, label %22, label %92

22:                                               ; preds = %12
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @I40E_PFINT_DYN_CTLN(i32 %24)
  %26 = call i32 @wr32(%struct.i40e_hw* %23, i32 %25, i32 0)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @I40E_QUEUE_TYPE_RX, align 4
  %33 = load i32, i32* @I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* @I40E_PFINT_LNKLSTN_FIRSTQ_TYPE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = or i32 %31, %36
  store i32 %37, i32* %5, align 4
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @I40E_PFINT_LNKLSTN(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @wr32(%struct.i40e_hw* %38, i32 %40, i32 %41)
  %43 = load i32, i32* @I40E_QINT_RQCTL_CAUSE_ENA_MASK, align 4
  %44 = load i32, i32* @IXL_RX_ITR, align 4
  %45 = load i32, i32* @I40E_QINT_RQCTL_ITR_INDX_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %43, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @I40E_QINT_RQCTL_MSIX_INDX_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @I40E_QINT_RQCTL_NEXTQ_INDX_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %51, %54
  %56 = load i32, i32* @I40E_QUEUE_TYPE_TX, align 4
  %57 = load i32, i32* @I40E_QINT_RQCTL_NEXTQ_TYPE_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %55, %58
  store i32 %59, i32* %5, align 4
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @I40E_QINT_RQCTL(i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @wr32(%struct.i40e_hw* %60, i32 %62, i32 %63)
  %65 = load i32, i32* @I40E_QINT_TQCTL_CAUSE_ENA_MASK, align 4
  %66 = load i32, i32* @IXL_TX_ITR, align 4
  %67 = load i32, i32* @I40E_QINT_TQCTL_ITR_INDX_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %65, %68
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @I40E_QINT_TQCTL_MSIX_INDX_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %69, %72
  %74 = load i32, i32* @IXL_QUEUE_EOL, align 4
  %75 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = or i32 %73, %76
  %78 = load i32, i32* @I40E_QUEUE_TYPE_RX, align 4
  %79 = load i32, i32* @I40E_QINT_TQCTL_NEXTQ_TYPE_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = or i32 %77, %80
  store i32 %81, i32* %5, align 4
  %82 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @I40E_QINT_TQCTL(i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @wr32(%struct.i40e_hw* %82, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %22
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %12

92:                                               ; preds = %12
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_PFINT_DYN_CTLN(i32) #1

declare dso_local i32 @I40E_PFINT_LNKLSTN(i32) #1

declare dso_local i32 @I40E_QINT_RQCTL(i32) #1

declare dso_local i32 @I40E_QINT_TQCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
