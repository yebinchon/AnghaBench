; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_eth_tx_queue_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_eth_tx_queue_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_queue_cid = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_eth_tx_queue_stop(%struct.ecore_hwfn* %0, i8* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecore_queue_cid*, align 8
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ecore_queue_cid*
  store %struct.ecore_queue_cid* %8, %struct.ecore_queue_cid** %5, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @IS_PF(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %16 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %5, align 8
  %17 = call i32 @ecore_eth_pf_tx_queue_stop(%struct.ecore_hwfn* %15, %struct.ecore_queue_cid* %16)
  store i32 %17, i32* %6, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %20 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %5, align 8
  %21 = call i32 @ecore_vf_pf_txq_stop(%struct.ecore_hwfn* %19, %struct.ecore_queue_cid* %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ECORE_SUCCESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %28 = load %struct.ecore_queue_cid*, %struct.ecore_queue_cid** %5, align 8
  %29 = call i32 @ecore_eth_queue_cid_release(%struct.ecore_hwfn* %27, %struct.ecore_queue_cid* %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i64 @IS_PF(i32) #1

declare dso_local i32 @ecore_eth_pf_tx_queue_stop(%struct.ecore_hwfn*, %struct.ecore_queue_cid*) #1

declare dso_local i32 @ecore_vf_pf_txq_stop(%struct.ecore_hwfn*, %struct.ecore_queue_cid*) #1

declare dso_local i32 @ecore_eth_queue_cid_release(%struct.ecore_hwfn*, %struct.ecore_queue_cid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
