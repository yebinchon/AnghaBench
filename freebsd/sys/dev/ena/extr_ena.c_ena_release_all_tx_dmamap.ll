; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_release_all_tx_dmamap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_release_all_tx_dmamap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i32, %struct.ena_tx_buffer*, %struct.ena_adapter* }
%struct.ena_tx_buffer = type { i32*, i32*, %struct.ena_netmap_tx_info }
%struct.ena_netmap_tx_info = type { i32** }
%struct.ena_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENA_PKT_MAX_BUFS = common dso_local global i32 0, align 4
@IFCAP_NETMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_ring*)* @ena_release_all_tx_dmamap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_release_all_tx_dmamap(%struct.ena_ring* %0) #0 {
  %2 = alloca %struct.ena_ring*, align 8
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca %struct.ena_tx_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ena_ring* %0, %struct.ena_ring** %2, align 8
  %7 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %8 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %7, i32 0, i32 2
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %8, align 8
  store %struct.ena_adapter* %9, %struct.ena_adapter** %3, align 8
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %52, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %16 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %13
  %20 = load %struct.ena_ring*, %struct.ena_ring** %2, align 8
  %21 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %20, i32 0, i32 1
  %22 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %22, i64 %24
  store %struct.ena_tx_buffer* %25, %struct.ena_tx_buffer** %4, align 8
  %26 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bus_dmamap_destroy(i32 %31, i32* %34)
  %36 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %30, %19
  %39 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %4, align 8
  %46 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @bus_dmamap_destroy(i32 %44, i32* %47)
  %49 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %4, align 8
  %50 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %43, %38
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %13

55:                                               ; preds = %13
  ret void
}

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
