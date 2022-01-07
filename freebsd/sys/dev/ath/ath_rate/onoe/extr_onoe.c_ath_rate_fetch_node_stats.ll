; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/onoe/extr_onoe.c_ath_rate_fetch_node_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_rate/onoe/extr_onoe.c_ath_rate_fetch_node_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_node = type { i32 }
%struct.ath_rateioctl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.ath_node*, %struct.ath_rateioctl*)* @ath_rate_fetch_node_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_rate_fetch_node_stats(%struct.ath_softc* %0, %struct.ath_node* %1, %struct.ath_rateioctl* %2) #0 {
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_node*, align 8
  %6 = alloca %struct.ath_rateioctl*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_node* %1, %struct.ath_node** %5, align 8
  store %struct.ath_rateioctl* %2, %struct.ath_rateioctl** %6, align 8
  %7 = load i32, i32* @EINVAL, align 4
  ret i32 %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
