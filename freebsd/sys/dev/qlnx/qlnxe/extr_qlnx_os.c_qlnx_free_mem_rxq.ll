; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_free_mem_rxq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_free_mem_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.ecore_dev }
%struct.ecore_dev = type { i32 }
%struct.qlnx_rx_queue = type { %struct.lro_ctrl, %struct.TYPE_11__, %struct.TYPE_11__, i32*, %struct.TYPE_10__* }
%struct.lro_ctrl = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i32* }

@ETH_TPA_MAX_AGGS_NUM = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.qlnx_rx_queue*)* @qlnx_free_mem_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_free_mem_rxq(%struct.TYPE_9__* %0, %struct.qlnx_rx_queue* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.qlnx_rx_queue*, align 8
  %5 = alloca %struct.ecore_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.qlnx_rx_queue* %1, %struct.qlnx_rx_queue** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store %struct.ecore_dev* %8, %struct.ecore_dev** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %11 = call i32 @qlnx_free_rx_buffers(%struct.TYPE_9__* %9, %struct.qlnx_rx_queue* %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %45, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ETH_TPA_MAX_AGGS_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %19 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %18, i32 0, i32 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %22
  %24 = call i32 @qlnx_free_tpa_mbuf(%struct.TYPE_9__* %17, %struct.TYPE_10__* %23)
  %25 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %26 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %25, i32 0, i32 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %16
  %35 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %36 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %35, i32 0, i32 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @m_freem(i32* %42)
  br label %44

44:                                               ; preds = %34, %16
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %12

48:                                               ; preds = %12
  %49 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %50 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = bitcast i32* %52 to i8*
  %54 = load i32, i32* @RX_RING_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 4, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @bzero(i8* %53, i32 %57)
  %59 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %60 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %48
  %65 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %66 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %67 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %66, i32 0, i32 2
  %68 = call i32 @ecore_chain_free(%struct.ecore_dev* %65, %struct.TYPE_11__* %67)
  %69 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %70 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %64, %48
  %73 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %74 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %97

78:                                               ; preds = %72
  %79 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %80 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %78
  %86 = load %struct.ecore_dev*, %struct.ecore_dev** %5, align 8
  %87 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %88 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %87, i32 0, i32 1
  %89 = call i32 @ecore_chain_free(%struct.ecore_dev* %86, %struct.TYPE_11__* %88)
  %90 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %91 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store i32* null, i32** %92, align 8
  %93 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %4, align 8
  %94 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %85, %78, %72
  ret void
}

declare dso_local i32 @qlnx_free_rx_buffers(%struct.TYPE_9__*, %struct.qlnx_rx_queue*) #1

declare dso_local i32 @qlnx_free_tpa_mbuf(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @ecore_chain_free(%struct.ecore_dev*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
