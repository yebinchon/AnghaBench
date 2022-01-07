; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_txq_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_txq_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_txq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_txq*)* @xn_txq_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xn_txq_intr(%struct.netfront_txq* %0) #0 {
  %2 = alloca %struct.netfront_txq*, align 8
  store %struct.netfront_txq* %0, %struct.netfront_txq** %2, align 8
  %3 = load %struct.netfront_txq*, %struct.netfront_txq** %2, align 8
  %4 = call i32 @XN_TX_LOCK(%struct.netfront_txq* %3)
  %5 = load %struct.netfront_txq*, %struct.netfront_txq** %2, align 8
  %6 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %5, i32 0, i32 0
  %7 = call i64 @RING_HAS_UNCONSUMED_RESPONSES(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.netfront_txq*, %struct.netfront_txq** %2, align 8
  %11 = call i32 @xn_txeof(%struct.netfront_txq* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.netfront_txq*, %struct.netfront_txq** %2, align 8
  %14 = call i32 @xn_txq_start(%struct.netfront_txq* %13)
  %15 = load %struct.netfront_txq*, %struct.netfront_txq** %2, align 8
  %16 = call i32 @XN_TX_UNLOCK(%struct.netfront_txq* %15)
  ret void
}

declare dso_local i32 @XN_TX_LOCK(%struct.netfront_txq*) #1

declare dso_local i64 @RING_HAS_UNCONSUMED_RESPONSES(i32*) #1

declare dso_local i32 @xn_txeof(%struct.netfront_txq*) #1

declare dso_local i32 @xn_txq_start(%struct.netfront_txq*) #1

declare dso_local i32 @XN_TX_UNLOCK(%struct.netfront_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
