; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_free_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_free_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { %struct.TYPE_2__*, %struct.ena_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.ena_ring = type { i32, %struct.ena_rx_buffer* }
%struct.ena_rx_buffer = type { i64, i32* }

@IFCAP_NETMAP = common dso_local global i32 0, align 4
@IFF_DYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*, i32)* @ena_free_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_free_rx_bufs(%struct.ena_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ena_rx_buffer*, align 8
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %8, i32 0, i32 1
  %10 = load %struct.ena_ring*, %struct.ena_ring** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %10, i64 %12
  store %struct.ena_ring* %13, %struct.ena_ring** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %37, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %17 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %22 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %21, i32 0, i32 1
  %23 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %23, i64 %25
  store %struct.ena_rx_buffer* %26, %struct.ena_rx_buffer** %7, align 8
  %27 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %33 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %34 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %35 = call i32 @ena_free_rx_mbuf(%struct.ena_adapter* %32, %struct.ena_ring* %33, %struct.ena_rx_buffer* %34)
  br label %36

36:                                               ; preds = %31, %20
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %14

40:                                               ; preds = %14
  ret void
}

declare dso_local i32 @ena_free_rx_mbuf(%struct.ena_adapter*, %struct.ena_ring*, %struct.ena_rx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
