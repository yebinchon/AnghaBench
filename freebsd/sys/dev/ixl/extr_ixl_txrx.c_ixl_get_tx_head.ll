; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_get_tx_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_get_tx_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_tx_queue = type { %struct.tx_ring, %struct.TYPE_3__* }
%struct.tx_ring = type { i32* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixl_tx_queue*)* @ixl_get_tx_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_get_tx_head(%struct.ixl_tx_queue* %0) #0 {
  %2 = alloca %struct.ixl_tx_queue*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.tx_ring*, align 8
  %5 = alloca i8*, align 8
  store %struct.ixl_tx_queue* %0, %struct.ixl_tx_queue** %2, align 8
  %6 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %2, align 8
  %7 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %3, align 8
  %11 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %2, align 8
  %12 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %11, i32 0, i32 0
  store %struct.tx_ring* %12, %struct.tx_ring** %4, align 8
  %13 = load %struct.tx_ring*, %struct.tx_ring** %4, align 8
  %14 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = bitcast i32* %21 to i8*
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load volatile i32, i32* %24, align 4
  %26 = call i32 @LE32_TO_CPU(i32 %25)
  ret i32 %26
}

declare dso_local i32 @LE32_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
