; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_free_rx_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_free_rx_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32 }
%struct.ena_ring = type { i32 }
%struct.ena_rx_buffer = type { i32*, i32 }

@ENA_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Trying to free unallocated buffer\0A\00", align 1
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*, %struct.ena_ring*, %struct.ena_rx_buffer*)* @ena_free_rx_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_free_rx_mbuf(%struct.ena_adapter* %0, %struct.ena_ring* %1, %struct.ena_rx_buffer* %2) #0 {
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca %struct.ena_ring*, align 8
  %6 = alloca %struct.ena_rx_buffer*, align 8
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store %struct.ena_ring* %1, %struct.ena_ring** %5, align 8
  store %struct.ena_rx_buffer* %2, %struct.ena_rx_buffer** %6, align 8
  %7 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %6, align 8
  %8 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @ENA_WARNING, align 4
  %13 = call i32 @ena_trace(i32 %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %36

14:                                               ; preds = %3
  %15 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %22 = call i32 @bus_dmamap_sync(i32 %17, i32 %20, i32 %21)
  %23 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bus_dmamap_unload(i32 %25, i32 %28)
  %30 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %6, align 8
  %31 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @m_freem(i32* %32)
  %34 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @ena_trace(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
