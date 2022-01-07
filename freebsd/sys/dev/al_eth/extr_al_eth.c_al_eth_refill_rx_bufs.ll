; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_refill_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_refill_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32, %struct.al_eth_ring* }
%struct.al_eth_ring = type { i64, i32, %struct.al_eth_rx_buffer* }
%struct.al_eth_rx_buffer = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"failed to alloc buffer for rx queue %d\0A\00", align 1
@AL_ETH_RX_FLAGS_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to add buffer for rx queue %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"refilled rx queue %d with %d pages only - available %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_eth_adapter*, i32, i32)* @al_eth_refill_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_refill_rx_bufs(%struct.al_eth_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.al_eth_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.al_eth_ring*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.al_eth_rx_buffer*, align 8
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %12, i32 0, i32 1
  %14 = load %struct.al_eth_ring*, %struct.al_eth_ring** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %14, i64 %16
  store %struct.al_eth_ring* %17, %struct.al_eth_ring** %7, align 8
  %18 = load %struct.al_eth_ring*, %struct.al_eth_ring** %7, align 8
  %19 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %66, %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %21
  %26 = load %struct.al_eth_ring*, %struct.al_eth_ring** %7, align 8
  %27 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %26, i32 0, i32 2
  %28 = load %struct.al_eth_rx_buffer*, %struct.al_eth_rx_buffer** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.al_eth_rx_buffer, %struct.al_eth_rx_buffer* %28, i64 %29
  store %struct.al_eth_rx_buffer* %30, %struct.al_eth_rx_buffer** %11, align 8
  %31 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %32 = load %struct.al_eth_ring*, %struct.al_eth_ring** %7, align 8
  %33 = load %struct.al_eth_rx_buffer*, %struct.al_eth_rx_buffer** %11, align 8
  %34 = call i64 @al_eth_alloc_rx_buf(%struct.al_eth_adapter* %31, %struct.al_eth_ring* %32, %struct.al_eth_rx_buffer* %33)
  %35 = icmp slt i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @__predict_false(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %25
  %40 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %69

45:                                               ; preds = %25
  %46 = load %struct.al_eth_ring*, %struct.al_eth_ring** %7, align 8
  %47 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.al_eth_rx_buffer*, %struct.al_eth_rx_buffer** %11, align 8
  %50 = getelementptr inbounds %struct.al_eth_rx_buffer, %struct.al_eth_rx_buffer* %49, i32 0, i32 0
  %51 = load i32, i32* @AL_ETH_RX_FLAGS_INT, align 4
  %52 = call i32 @al_eth_rx_buffer_add(i32 %48, i32* %50, i32 %51, i32* null)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i64 @__predict_false(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %69

62:                                               ; preds = %45
  %63 = load %struct.al_eth_ring*, %struct.al_eth_ring** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i64 @AL_ETH_RX_RING_IDX_NEXT(%struct.al_eth_ring* %63, i64 %64)
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %21

69:                                               ; preds = %56, %39, %21
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ult i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @__predict_false(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %69
  %77 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.al_eth_ring*, %struct.al_eth_ring** %7, align 8
  %83 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @al_udma_available_get(i32 %84)
  %86 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %76, %69
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @__predict_true(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load %struct.al_eth_ring*, %struct.al_eth_ring** %7, align 8
  %93 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @al_eth_rx_buffer_action(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %87
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.al_eth_ring*, %struct.al_eth_ring** %7, align 8
  %100 = getelementptr inbounds %struct.al_eth_ring, %struct.al_eth_ring* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @al_eth_alloc_rx_buf(%struct.al_eth_adapter*, %struct.al_eth_ring*, %struct.al_eth_rx_buffer*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @al_eth_rx_buffer_add(i32, i32*, i32, i32*) #1

declare dso_local i64 @AL_ETH_RX_RING_IDX_NEXT(%struct.al_eth_ring*, i64) #1

declare dso_local i32 @al_udma_available_get(i32) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @al_eth_rx_buffer_action(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
