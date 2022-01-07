; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_alloc_rx_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_alloc_rx_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32 }
%struct.ena_ring = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.ena_rx_buffer = type { %struct.TYPE_12__*, %struct.ena_com_buf, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ena_com_buf = type { i32, i64 }
%struct.TYPE_11__ = type { i64 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@MJUM16BYTES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@ENA_DBG = common dso_local global i32 0, align 4
@ENA_RSC = common dso_local global i32 0, align 4
@ENA_RXPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Using tag %p for buffers' DMA mapping, mbuf %p len: %d\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@ENA_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to map mbuf, error: %d, nsegs: %d\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"ALLOC RX BUF: mbuf %p, rx_info %p, len %d, paddr %#jx\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*, %struct.ena_ring*, %struct.ena_rx_buffer*)* @ena_alloc_rx_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_alloc_rx_mbuf(%struct.ena_adapter* %0, %struct.ena_ring* %1, %struct.ena_rx_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_adapter*, align 8
  %6 = alloca %struct.ena_ring*, align 8
  %7 = alloca %struct.ena_rx_buffer*, align 8
  %8 = alloca %struct.ena_com_buf*, align 8
  %9 = alloca [1 x %struct.TYPE_11__], align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %5, align 8
  store %struct.ena_ring* %1, %struct.ena_ring** %6, align 8
  store %struct.ena_rx_buffer* %2, %struct.ena_rx_buffer** %7, align 8
  %13 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %14 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %170

21:                                               ; preds = %3
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = load i32, i32* @MT_DATA, align 4
  %24 = load i32, i32* @M_PKTHDR, align 4
  %25 = load i32, i32* @MJUM16BYTES, align 4
  %26 = call %struct.TYPE_12__* @m_getjcl(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %27, i32 0, i32 0
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %28, align 8
  %29 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %30 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = icmp eq %struct.TYPE_12__* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %21
  %37 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %38 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @counter_u64_add(i32 %40, i32 1)
  %42 = load i32, i32* @M_NOWAIT, align 4
  %43 = load i32, i32* @MT_DATA, align 4
  %44 = load i32, i32* @M_PKTHDR, align 4
  %45 = call %struct.TYPE_12__* @m_getcl(i32 %42, i32 %43, i32 %44)
  %46 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %47 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %46, i32 0, i32 0
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %47, align 8
  %48 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %49 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = icmp eq %struct.TYPE_12__* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %36
  %56 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %57 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @counter_u64_add(i32 %59, i32 1)
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %4, align 4
  br label %170

62:                                               ; preds = %36
  %63 = load i32, i32* @MCLBYTES, align 4
  store i32 %63, i32* %12, align 4
  br label %66

64:                                               ; preds = %21
  %65 = load i32, i32* @MJUM16BYTES, align 4
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %69 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  %72 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %73 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 %67, i32* %76, align 4
  %77 = load i32, i32* @ENA_DBG, align 4
  %78 = load i32, i32* @ENA_RSC, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @ENA_RXPTH, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %83 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %86 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %89 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @ena_trace(i32 %81, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %84, %struct.TYPE_12__* %87, i32 %92)
  %94 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %95 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %98 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %101 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %100, i32 0, i32 0
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %104 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %105 = call i32 @bus_dmamap_load_mbuf_sg(i32 %96, i32 %99, %struct.TYPE_12__* %102, %struct.TYPE_11__* %103, i32* %10, i32 %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %66
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 1
  br label %111

111:                                              ; preds = %108, %66
  %112 = phi i1 [ true, %66 ], [ %110, %108 ]
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = load i32, i32* @ENA_WARNING, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 (i32, i8*, ...) @ena_trace(i32 %117, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load %struct.ena_ring*, %struct.ena_ring** %6, align 8
  %122 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @counter_u64_add(i32 %124, i32 1)
  br label %162

126:                                              ; preds = %111
  %127 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %128 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %131 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %134 = call i32 @bus_dmamap_sync(i32 %129, i32 %132, i32 %133)
  %135 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %136 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %135, i32 0, i32 1
  store %struct.ena_com_buf* %136, %struct.ena_com_buf** %8, align 8
  %137 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.ena_com_buf*, %struct.ena_com_buf** %8, align 8
  %141 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.ena_com_buf*, %struct.ena_com_buf** %8, align 8
  %144 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* @ENA_DBG, align 4
  %146 = load i32, i32* @ENA_RSC, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @ENA_RXPTH, align 4
  %149 = or i32 %147, %148
  %150 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %151 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %150, i32 0, i32 0
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %154 = load %struct.ena_com_buf*, %struct.ena_com_buf** %8, align 8
  %155 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.ena_com_buf*, %struct.ena_com_buf** %8, align 8
  %158 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 (i32, i8*, ...) @ena_trace(i32 %149, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_12__* %152, %struct.ena_rx_buffer* %153, i32 %156, i32 %160)
  store i32 0, i32* %4, align 4
  br label %170

162:                                              ; preds = %116
  %163 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %164 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %163, i32 0, i32 0
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = call i32 @m_freem(%struct.TYPE_12__* %165)
  %167 = load %struct.ena_rx_buffer*, %struct.ena_rx_buffer** %7, align 8
  %168 = getelementptr inbounds %struct.ena_rx_buffer, %struct.ena_rx_buffer* %167, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %168, align 8
  %169 = load i32, i32* @EFAULT, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %162, %126, %55, %20
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_12__* @m_getjcl(i32, i32, i32, i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local %struct.TYPE_12__* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @ena_trace(i32, i8*, ...) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
