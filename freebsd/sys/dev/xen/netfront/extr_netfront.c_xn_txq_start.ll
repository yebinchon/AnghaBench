; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_txq_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_txq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_txq = type { i32, %struct.netfront_info* }
%struct.netfront_info = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_txq*)* @xn_txq_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xn_txq_start(%struct.netfront_txq* %0) #0 {
  %2 = alloca %struct.netfront_txq*, align 8
  %3 = alloca %struct.netfront_info*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.netfront_txq* %0, %struct.netfront_txq** %2, align 8
  %5 = load %struct.netfront_txq*, %struct.netfront_txq** %2, align 8
  %6 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %5, i32 0, i32 1
  %7 = load %struct.netfront_info*, %struct.netfront_info** %6, align 8
  store %struct.netfront_info* %7, %struct.netfront_info** %3, align 8
  %8 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %9 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.netfront_txq*, %struct.netfront_txq** %2, align 8
  %12 = call i32 @XN_TX_LOCK_ASSERT(%struct.netfront_txq* %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = load %struct.netfront_txq*, %struct.netfront_txq** %2, align 8
  %15 = getelementptr inbounds %struct.netfront_txq, %struct.netfront_txq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @drbr_empty(%struct.ifnet* %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.netfront_txq*, %struct.netfront_txq** %2, align 8
  %21 = call i32 @xn_txq_mq_start_locked(%struct.netfront_txq* %20, i32* null)
  br label %22

22:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @XN_TX_LOCK_ASSERT(%struct.netfront_txq*) #1

declare dso_local i32 @drbr_empty(%struct.ifnet*, i32) #1

declare dso_local i32 @xn_txq_mq_start_locked(%struct.netfront_txq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
