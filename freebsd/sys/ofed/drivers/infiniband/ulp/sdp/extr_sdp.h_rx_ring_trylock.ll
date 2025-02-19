; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp.h_rx_ring_trylock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/sdp/extr_sdp.h_rx_ring_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_rx_ring = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdp_rx_ring*)* @rx_ring_trylock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_ring_trylock(%struct.sdp_rx_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdp_rx_ring*, align 8
  store %struct.sdp_rx_ring* %0, %struct.sdp_rx_ring** %3, align 8
  %4 = load %struct.sdp_rx_ring*, %struct.sdp_rx_ring** %3, align 8
  %5 = getelementptr inbounds %struct.sdp_rx_ring, %struct.sdp_rx_ring* %4, i32 0, i32 1
  %6 = call i32 @rw_rlock(i32* %5)
  %7 = load %struct.sdp_rx_ring*, %struct.sdp_rx_ring** %3, align 8
  %8 = getelementptr inbounds %struct.sdp_rx_ring, %struct.sdp_rx_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.sdp_rx_ring*, %struct.sdp_rx_ring** %3, align 8
  %13 = call i32 @rx_ring_unlock(%struct.sdp_rx_ring* %12)
  store i32 0, i32* %2, align 4
  br label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local i32 @rx_ring_unlock(%struct.sdp_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
