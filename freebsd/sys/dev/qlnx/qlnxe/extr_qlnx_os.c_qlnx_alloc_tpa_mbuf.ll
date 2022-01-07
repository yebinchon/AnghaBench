; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_alloc_tpa_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_alloc_tpa_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.qlnx_agg_info = type { %struct.sw_rx_data }
%struct.sw_rx_data = type { i64, i64, %struct.mbuf* }
%struct.mbuf = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to allocate Rx data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"bus_dmamap_load failed[%d, 0x%016llx, %d]\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, %struct.qlnx_agg_info*)* @qlnx_alloc_tpa_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_alloc_tpa_mbuf(%struct.TYPE_8__* %0, i32 %1, %struct.qlnx_agg_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlnx_agg_info*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1 x %struct.TYPE_9__], align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sw_rx_data*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qlnx_agg_info* %2, %struct.qlnx_agg_info** %7, align 8
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = load i32, i32* @MT_DATA, align 4
  %17 = load i32, i32* @M_PKTHDR, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.mbuf* @m_getjcl(i32 %15, i32 %16, i32 %17, i32 %18)
  store %struct.mbuf* %19, %struct.mbuf** %8, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %21 = icmp eq %struct.mbuf* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = call i32 (%struct.TYPE_8__*, i8*, ...) @QL_DPRINT1(%struct.TYPE_8__* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %83

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 1
  store i32 %28, i32* %33, align 4
  store i64 0, i64* %10, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %39 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %40 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %41 = call i32 @bus_dmamap_load_mbuf_sg(i32 %36, i64 %37, %struct.mbuf* %38, %struct.TYPE_9__* %39, i32* %12, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = getelementptr inbounds [1 x %struct.TYPE_9__], [1 x %struct.TYPE_9__]* %11, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %27
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %63

53:                                               ; preds = %50, %47, %27
  %54 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %55 = call i32 @m_freem(%struct.mbuf* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 (%struct.TYPE_8__*, i8*, ...) @QL_DPRINT1(%struct.TYPE_8__* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %57, i64 %58, i32 %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %83

63:                                               ; preds = %50
  %64 = load %struct.qlnx_agg_info*, %struct.qlnx_agg_info** %7, align 8
  %65 = getelementptr inbounds %struct.qlnx_agg_info, %struct.qlnx_agg_info* %64, i32 0, i32 0
  store %struct.sw_rx_data* %65, %struct.sw_rx_data** %14, align 8
  %66 = load %struct.sw_rx_data*, %struct.sw_rx_data** %14, align 8
  %67 = call i32 @memset(%struct.sw_rx_data* %66, i32 0, i32 24)
  %68 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %69 = load %struct.sw_rx_data*, %struct.sw_rx_data** %14, align 8
  %70 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %69, i32 0, i32 2
  store %struct.mbuf* %68, %struct.mbuf** %70, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.sw_rx_data*, %struct.sw_rx_data** %14, align 8
  %73 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.sw_rx_data*, %struct.sw_rx_data** %14, align 8
  %76 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %82 = call i32 @bus_dmamap_sync(i32 %79, i64 %80, i32 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %63, %53, %22
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.mbuf* @m_getjcl(i32, i32, i32, i32) #1

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i64, %struct.mbuf*, %struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @memset(%struct.sw_rx_data*, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
