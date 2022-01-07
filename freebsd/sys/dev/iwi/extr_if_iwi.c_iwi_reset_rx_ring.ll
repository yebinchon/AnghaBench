; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_reset_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_reset_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32 }
%struct.iwi_rx_ring = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*, %struct.iwi_rx_ring*)* @iwi_reset_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_reset_rx_ring(%struct.iwi_softc* %0, %struct.iwi_rx_ring* %1) #0 {
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca %struct.iwi_rx_ring*, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %3, align 8
  store %struct.iwi_rx_ring* %1, %struct.iwi_rx_ring** %4, align 8
  %5 = load %struct.iwi_rx_ring*, %struct.iwi_rx_ring** %4, align 8
  %6 = getelementptr inbounds %struct.iwi_rx_ring, %struct.iwi_rx_ring* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
