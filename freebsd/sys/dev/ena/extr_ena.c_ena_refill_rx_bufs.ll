; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_refill_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_refill_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i64, i64*, i32, i32, %struct.TYPE_2__, i32, %struct.ena_rx_buffer*, %struct.ena_adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.ena_rx_buffer = type { i32 }
%struct.ena_adapter = type { i32 }

@ENA_DBG = common dso_local global i32 0, align 4
@ENA_RXPTH = common dso_local global i32 0, align 4
@ENA_RSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"refill qid: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"RX buffer - next to use: %d\0A\00", align 1
@ENA_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to alloc buffer for rx queue %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to add buffer for rx queue %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"refilled rx qid %d with only %d mbufs (from %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_refill_rx_bufs(%struct.ena_ring* %0, i64 %1) #0 {
  %3 = alloca %struct.ena_ring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ena_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ena_rx_buffer*, align 8
  store %struct.ena_ring* %0, %struct.ena_ring** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %12 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %11, i32 0, i32 7
  %13 = load %struct.ena_adapter*, %struct.ena_adapter** %12, align 8
  store %struct.ena_adapter* %13, %struct.ena_adapter** %5, align 8
  %14 = load i32, i32* @ENA_DBG, align 4
  %15 = load i32, i32* @ENA_RXPTH, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ENA_RSC, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %20 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = call i32 (i32, i8*, i64, ...) @ena_trace(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %25 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %92, %2
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %95

31:                                               ; preds = %27
  %32 = load i32, i32* @ENA_DBG, align 4
  %33 = load i32, i32* @ENA_RXPTH, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ENA_RSC, align 4
  %36 = or i32 %34, %35
  %37 = load i64, i64* %6, align 8
  %38 = call i32 (i32, i8*, i64, ...) @ena_trace(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %40 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %7, align 8
  %45 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %46 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %45, i32 0, i32 6
  %47 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %47, i64 %48
  store %struct.ena_rx_buffer* %49, %struct.ena_rx_buffer** %10, align 8
  %50 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %51 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %52 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %10, align 8
  %53 = call i32 @ena_alloc_rx_mbuf(%struct.ena_adapter* %50, %struct.ena_ring* %51, %struct.ena_rx_buffer* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %31
  %60 = load i32, i32* @ENA_WARNING, align 4
  %61 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %62 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = call i32 (i32, i8*, i64, ...) @ena_trace(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  br label %95

66:                                               ; preds = %31
  %67 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %68 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %10, align 8
  %71 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %70, i32 0, i32 0
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @ena_com_add_single_rx_desc(i32 %69, i32* %71, i64 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %66
  %80 = load i32, i32* @ENA_WARNING, align 4
  %81 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %82 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = call i32 (i32, i8*, i64, ...) @ena_trace(i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  br label %95

86:                                               ; preds = %66
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %89 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ENA_RX_RING_IDX_NEXT(i64 %87, i32 %90)
  store i64 %91, i64* %6, align 8
  br label %92

92:                                               ; preds = %86
  %93 = load i64, i64* %8, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %8, align 8
  br label %27

95:                                               ; preds = %79, %59, %27
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %4, align 8
  %98 = icmp slt i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %95
  %103 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %104 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @counter_u64_add(i32 %106, i32 1)
  %108 = load i32, i32* @ENA_WARNING, align 4
  %109 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %110 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %4, align 8
  %115 = call i32 (i32, i8*, i64, ...) @ena_trace(i32 %108, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %112, i64 %113, i64 %114)
  br label %116

116:                                              ; preds = %102, %95
  %117 = load i64, i64* %8, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i64 @likely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = call i32 (...) @wmb()
  %124 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %125 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @ena_com_write_sq_doorbell(i32 %126)
  br label %128

128:                                              ; preds = %122, %116
  %129 = load i64, i64* %6, align 8
  %130 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %131 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i64, i64* %8, align 8
  %133 = trunc i64 %132 to i32
  ret i32 %133
}

declare dso_local i32 @ena_trace(i32, i8*, i64, ...) #1

declare dso_local i32 @ena_alloc_rx_mbuf(%struct.ena_adapter*, %struct.ena_ring*, %struct.ena_rx_buffer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_add_single_rx_desc(i32, i32*, i64) #1

declare dso_local i64 @ENA_RX_RING_IDX_NEXT(i64, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ena_com_write_sq_doorbell(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
