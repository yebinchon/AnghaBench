; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_fdir.c_ixgbe_atr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_fdir.c_ixgbe_atr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_ring = type { i32 }
%struct.mbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_atr(%struct.tx_ring* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.tx_ring*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.tx_ring* %0, %struct.tx_ring** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %5 = load %struct.tx_ring*, %struct.tx_ring** %3, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %7 = call i32 @UNREFERENCED_2PARAMETER(%struct.tx_ring* %5, %struct.mbuf* %6)
  ret void
}

declare dso_local i32 @UNREFERENCED_2PARAMETER(%struct.tx_ring*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
