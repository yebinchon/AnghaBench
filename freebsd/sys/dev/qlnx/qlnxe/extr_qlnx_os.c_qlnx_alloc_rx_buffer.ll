; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_alloc_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_alloc_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.ecore_dev }
%struct.ecore_dev = type { i32 }
%struct.qlnx_rx_queue = type { i64, i32, %struct.sw_rx_data*, i32 }
%struct.sw_rx_data = type { i64, i64, %struct.mbuf* }
%struct.mbuf = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.eth_rx_bd = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i64 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to allocate Rx data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"bus_dmamap_load failed[%d, 0x%016llx, %d]\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.qlnx_rx_queue*)* @qlnx_alloc_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_alloc_rx_buffer(%struct.TYPE_10__* %0, %struct.qlnx_rx_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.qlnx_rx_queue*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sw_rx_data*, align 8
  %9 = alloca %struct.eth_rx_bd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [1 x %struct.TYPE_11__], align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ecore_dev*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.qlnx_rx_queue* %1, %struct.qlnx_rx_queue** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  store %struct.ecore_dev* %17, %struct.ecore_dev** %15, align 8
  %18 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %19 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = load i32, i32* @MT_DATA, align 4
  %23 = load i32, i32* @M_PKTHDR, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.mbuf* @m_getjcl(i32 %21, i32 %22, i32 %23, i32 %24)
  store %struct.mbuf* %25, %struct.mbuf** %6, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = icmp eq %struct.mbuf* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = call i32 (%struct.TYPE_10__*, i8*, ...) @QL_DPRINT1(%struct.TYPE_10__* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %118

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 1
  store i32 %34, i32* %39, align 4
  store i64 0, i64* %11, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %12, i64 0, i64 0
  %46 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %47 = call i32 @bus_dmamap_load_mbuf_sg(i32 %42, i64 %43, %struct.mbuf* %44, %struct.TYPE_11__* %45, i32* %13, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %12, i64 0, i64 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %10, align 8
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %33
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %56, %53, %33
  %60 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %61 = call i32 @m_freem(%struct.mbuf* %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 (%struct.TYPE_10__*, i8*, ...) @QL_DPRINT1(%struct.TYPE_10__* %62, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %63, i64 %64, i32 %65)
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %118

69:                                               ; preds = %56
  %70 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %71 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %70, i32 0, i32 2
  %72 = load %struct.sw_rx_data*, %struct.sw_rx_data** %71, align 8
  %73 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %74 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %72, i64 %75
  store %struct.sw_rx_data* %76, %struct.sw_rx_data** %8, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %78 = load %struct.sw_rx_data*, %struct.sw_rx_data** %8, align 8
  %79 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %78, i32 0, i32 2
  store %struct.mbuf* %77, %struct.mbuf** %79, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.sw_rx_data*, %struct.sw_rx_data** %8, align 8
  %82 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.sw_rx_data*, %struct.sw_rx_data** %8, align 8
  %85 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %87 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %86, i32 0, i32 1
  %88 = call i64 @ecore_chain_produce(i32* %87)
  %89 = inttoptr i64 %88 to %struct.eth_rx_bd*
  store %struct.eth_rx_bd* %89, %struct.eth_rx_bd** %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @U64_HI(i64 %90)
  %92 = call i8* @htole32(i32 %91)
  %93 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %9, align 8
  %94 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  store i8* %92, i8** %95, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @U64_LO(i64 %96)
  %98 = call i8* @htole32(i32 %97)
  %99 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %9, align 8
  %100 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i8* %98, i8** %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %11, align 8
  %106 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %107 = call i32 @bus_dmamap_sync(i32 %104, i64 %105, i32 %106)
  %108 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %109 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, 1
  %112 = load i32, i32* @RX_RING_SIZE, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = and i64 %111, %114
  %116 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %117 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %69, %59, %28
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.mbuf* @m_getjcl(i32, i32, i32, i32) #1

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i64, %struct.mbuf*, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @ecore_chain_produce(i32*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @U64_HI(i64) #1

declare dso_local i32 @U64_LO(i64) #1

declare dso_local i32 @bus_dmamap_sync(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
