; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_init_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_txrx.c_ixl_init_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_vsi = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.ixl_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_init_tx_ring(%struct.ixl_vsi* %0, %struct.ixl_tx_queue* %1) #0 {
  %3 = alloca %struct.ixl_vsi*, align 8
  %4 = alloca %struct.ixl_tx_queue*, align 8
  %5 = alloca %struct.tx_ring*, align 8
  store %struct.ixl_vsi* %0, %struct.ixl_vsi** %3, align 8
  store %struct.ixl_tx_queue* %1, %struct.ixl_tx_queue** %4, align 8
  %6 = load %struct.ixl_tx_queue*, %struct.ixl_tx_queue** %4, align 8
  %7 = getelementptr inbounds %struct.ixl_tx_queue, %struct.ixl_tx_queue* %6, i32 0, i32 0
  store %struct.tx_ring* %7, %struct.tx_ring** %5, align 8
  %8 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %9 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %13 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %20 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = add nsw i32 %18, %24
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @bzero(i8* %11, i32 %28)
  %30 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %31 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %34 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @wr32(i32 %32, i32 %35, i32 0)
  ret void
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @wr32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
