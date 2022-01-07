; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_eth_cqe_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_spq.c_ecore_eth_cqe_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.eth_slow_path_rx_cqe = type { i32 }

@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to handle RXQ CQE [cmd 0x%02x]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_eth_cqe_completion(%struct.ecore_hwfn* %0, %struct.eth_slow_path_rx_cqe* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.eth_slow_path_rx_cqe*, align 8
  %5 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.eth_slow_path_rx_cqe* %1, %struct.eth_slow_path_rx_cqe** %4, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = load %struct.eth_slow_path_rx_cqe*, %struct.eth_slow_path_rx_cqe** %4, align 8
  %8 = load i32, i32* @PROTOCOLID_ETH, align 4
  %9 = call i32 @ecore_cqe_completion(%struct.ecore_hwfn* %6, %struct.eth_slow_path_rx_cqe* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %14 = load %struct.eth_slow_path_rx_cqe*, %struct.eth_slow_path_rx_cqe** %4, align 8
  %15 = getelementptr inbounds %struct.eth_slow_path_rx_cqe, %struct.eth_slow_path_rx_cqe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %13, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %12, %2
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @ecore_cqe_completion(%struct.ecore_hwfn*, %struct.eth_slow_path_rx_cqe*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
