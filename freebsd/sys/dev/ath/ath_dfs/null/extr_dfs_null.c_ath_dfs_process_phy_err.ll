; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_dfs/null/extr_dfs_null.c_ath_dfs_process_phy_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_dfs/null/extr_dfs_null.c_ath_dfs_process_phy_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.mbuf = type { i32 }
%struct.ath_rx_status = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_dfs_process_phy_err(%struct.ath_softc* %0, %struct.mbuf* %1, i32 %2, %struct.ath_rx_status* %3) #0 {
  %5 = alloca %struct.ath_softc*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_rx_status*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ath_rx_status* %3, %struct.ath_rx_status** %8, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
