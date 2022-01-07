; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_ptt_get_bar_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_hw.c_ecore_ptt_get_bar_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ptt = type { i32 }

@PXP_EXTERNAL_BAR_PF_WINDOW_START = common dso_local global i64 0, align 8
@PXP_EXTERNAL_BAR_PF_WINDOW_SINGLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ecore_ptt_get_bar_addr(%struct.ecore_ptt* %0) #0 {
  %2 = alloca %struct.ecore_ptt*, align 8
  store %struct.ecore_ptt* %0, %struct.ecore_ptt** %2, align 8
  %3 = load i64, i64* @PXP_EXTERNAL_BAR_PF_WINDOW_START, align 8
  %4 = load %struct.ecore_ptt*, %struct.ecore_ptt** %2, align 8
  %5 = getelementptr inbounds %struct.ecore_ptt, %struct.ecore_ptt* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PXP_EXTERNAL_BAR_PF_WINDOW_SINGLE_SIZE, align 4
  %8 = mul nsw i32 %6, %7
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %3, %9
  ret i64 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
