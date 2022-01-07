; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_eth_rx_queue_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_eth_rx_queue_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_queue_cid = type { i32 }

@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_eth_rx_queue_stop(%struct.ecore_hwfn* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_queue_cid*, align 8
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.ecore_queue_cid*
  store %struct.ecore_queue_cid* %12, %struct.ecore_queue_cid** %9, align 8
  %13 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @IS_PF(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %21 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ecore_eth_pf_rx_queue_stop(%struct.ecore_hwfn* %20, %struct.ecore_queue_cid* %21, i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  br label %30

25:                                               ; preds = %4
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %27 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ecore_vf_pf_rxq_stop(%struct.ecore_hwfn* %26, %struct.ecore_queue_cid* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @ECORE_SUCCESS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %36 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %9, align 8
  %37 = call i32 @ecore_eth_queue_cid_release(%struct.ecore_hwfn* %35, %struct.ecore_queue_cid* %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %10, align 4
  ret i32 %39
}

declare dso_local i64 @IS_PF(i32) #1

declare dso_local i32 @ecore_eth_pf_rx_queue_stop(%struct.ecore_hwfn*, %struct.ecore_queue_cid*, i32, i32) #1

declare dso_local i32 @ecore_vf_pf_rxq_stop(%struct.ecore_hwfn*, %struct.ecore_queue_cid*, i32) #1

declare dso_local i32 @ecore_eth_queue_cid_release(%struct.ecore_hwfn*, %struct.ecore_queue_cid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
