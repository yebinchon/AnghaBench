; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_can_resume_eth_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_can_resume_eth_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_ring = type { %struct.sge_eq* }
%struct.sge_eq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_ring*)* @can_resume_eth_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_resume_eth_tx(%struct.mp_ring* %0) #0 {
  %2 = alloca %struct.mp_ring*, align 8
  %3 = alloca %struct.sge_eq*, align 8
  store %struct.mp_ring* %0, %struct.mp_ring** %2, align 8
  %4 = load %struct.mp_ring*, %struct.mp_ring** %2, align 8
  %5 = getelementptr inbounds %struct.mp_ring, %struct.mp_ring* %4, i32 0, i32 0
  %6 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  store %struct.sge_eq* %6, %struct.sge_eq** %3, align 8
  %7 = load %struct.sge_eq*, %struct.sge_eq** %3, align 8
  %8 = call i32 @total_available_tx_desc(%struct.sge_eq* %7)
  %9 = load %struct.sge_eq*, %struct.sge_eq** %3, align 8
  %10 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %11, 8
  %13 = icmp sgt i32 %8, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i32 @total_available_tx_desc(%struct.sge_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
