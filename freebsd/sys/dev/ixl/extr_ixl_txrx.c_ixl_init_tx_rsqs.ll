; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_init_tx_rsqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_init_tx_rsqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, %struct.ixl_tx_queue*, %struct.TYPE_2__* }
%struct.ixl_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@QIDX_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_init_tx_rsqs(%struct.ixl_vsi* %0) #0 {
  %2 = alloca %struct.ixl_vsi*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca %struct.ixl_tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tx_ring*, align 8
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %2, align 8
  %8 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %9 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %12 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %11, i32 0, i32 1
  %13 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %12, align 8
  store %struct.ixl_tx_queue* %13, %struct.ixl_tx_queue** %4, align 8
  br label %14

14:                                               ; preds = %56, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ixl_vsi*, %struct.ixl_vsi** %2, align 8
  %17 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %61

20:                                               ; preds = %14
  %21 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %4, align 8
  %22 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %21, i32 0, i32 0
  store %struct.tx_ring* %22, %struct.tx_ring** %7, align 8
  %23 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %24 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %27 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %35 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %52, %20
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load i32, i32* @QIDX_INVALID, align 4
  %46 = load %struct.tx_ring*, %struct.tx_ring** %7, align 8
  %47 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %36

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  %59 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %4, align 8
  %60 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %59, i32 1
  store %struct.ixl_tx_queue* %60, %struct.ixl_tx_queue** %4, align 8
  br label %14

61:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
