; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_init_tx_cidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_init_tx_cidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, %struct.ixl_tx_queue*, %struct.TYPE_2__* }
%struct.ixl_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i64 }
%struct.TYPE_2__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_init_tx_cidx(%struct.ixl_vsi* %0) #0 {
  %2 = alloca %struct.ixl_vsi*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca %struct.ixl_tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tx_ring*, align 8
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %2, align 8
  %7 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %8 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %11 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %10, i32 0, i32 1
  %12 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %11, align 8
  store %struct.ixl_tx_queue* %12, %struct.ixl_tx_queue** %4, align 8
  br label %13

13:                                               ; preds = %30, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %16 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %4, align 8
  %21 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %20, i32 0, i32 0
  store %struct.tx_ring* %21, %struct.tx_ring** %6, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, 1
  %28 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %29 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %4, align 8
  %34 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %33, i32 1
  store %struct.ixl_tx_queue* %34, %struct.ixl_tx_queue** %4, align 8
  br label %13

35:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
