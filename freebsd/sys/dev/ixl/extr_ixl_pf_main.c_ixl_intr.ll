; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i64, %struct.ixl_vsi, %struct.i40e_hw }
%struct.ixl_vsi = type { i32, %struct.ixl_rx_queue* }
%struct.ixl_rx_queue = type { i32 }
%struct.i40e_hw = type { i32 }

@I40E_PFINT_ICR0 = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ADMINQ_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_QUEUE_0_MASK = common dso_local global i32 0, align 4
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0 = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTLN_CLEARPBA_MASK = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTLN_ITR_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_VFLR_MASK = common dso_local global i32 0, align 4
@IXL_ITR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_intr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ixl_pf*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.ixl_vsi*, align 8
  %7 = alloca %struct.ixl_rx_queue*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ixl_pf*
  store %struct.ixl_pf* %10, %struct.ixl_pf** %4, align 8
  %11 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %12 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %11, i32 0, i32 2
  store %struct.i40e_hw* %12, %struct.i40e_hw** %5, align 8
  %13 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %14 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %13, i32 0, i32 1
  store %struct.ixl_vsi* %14, %struct.ixl_vsi** %6, align 8
  %15 = load %struct.ixl_vsi*, %struct.ixl_vsi** %6, align 8
  %16 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %15, i32 0, i32 1
  %17 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %16, align 8
  store %struct.ixl_rx_queue* %17, %struct.ixl_rx_queue** %7, align 8
  %18 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %7, align 8
  %19 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %23 = load i32, i32* @I40E_PFINT_ICR0, align 4
  %24 = call i32 @rd32(%struct.i40e_hw* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @I40E_PFINT_ICR0_ADMINQ_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.ixl_vsi*, %struct.ixl_vsi** %6, align 8
  %31 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @iflib_admin_intr_deferred(i32 %32)
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %36 = call i32 @ixl_enable_intr0(%struct.i40e_hw* %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @I40E_PFINT_ICR0_QUEUE_0_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @iflib_admin_intr_deferred(i32) #1

declare dso_local i32 @ixl_enable_intr0(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
