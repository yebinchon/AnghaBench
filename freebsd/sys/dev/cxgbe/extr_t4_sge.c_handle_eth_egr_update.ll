; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_handle_eth_egr_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_handle_eth_egr_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32* }
%struct.sge_eq = type { i32, i64, i32 }
%struct.sge_txq = type { i32, i32 }

@EQ_TYPEMASK = common dso_local global i32 0, align 4
@EQ_ETH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_eq*)* @handle_eth_egr_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_eth_egr_update(%struct.adapter* %0, %struct.sge_eq* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_eq*, align 8
  %5 = alloca %struct.sge_txq*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_eq* %1, %struct.sge_eq** %4, align 8
  %6 = load %struct.sge_eq*, %struct.sge_eq** %4, align 8
  %7 = bitcast %struct.sge_eq* %6 to i8*
  %8 = bitcast i8* %7 to %struct.sge_txq*
  store %struct.sge_txq* %8, %struct.sge_txq** %5, align 8
  %9 = load %struct.sge_eq*, %struct.sge_eq** %4, align 8
  %10 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @EQ_TYPEMASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @EQ_ETH, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @MPASS(i32 %16)
  %18 = load %struct.sge_eq*, %struct.sge_eq** %4, align 8
  %19 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %18, i32 0, i32 2
  %20 = call i32 @atomic_readandclear_int(i32* %19)
  %21 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %22 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mp_ring_check_drainage(i32 %23, i32 0)
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.sge_eq*, %struct.sge_eq** %4, align 8
  %29 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %34 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %33, i32 0, i32 0
  %35 = call i32 @taskqueue_enqueue(i32 %32, i32* %34)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @atomic_readandclear_int(i32*) #1

declare dso_local i32 @mp_ring_check_drainage(i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
