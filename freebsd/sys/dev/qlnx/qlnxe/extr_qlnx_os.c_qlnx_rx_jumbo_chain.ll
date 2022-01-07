; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_rx_jumbo_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_rx_jumbo_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.qlnx_fastpath = type { i32, i32, %struct.qlnx_rx_queue* }
%struct.qlnx_rx_queue = type { i32, i64, i32, %struct.sw_rx_data* }
%struct.sw_rx_data = type { i32, %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf*, i64, i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"mp = NULL\0A\00", align 1
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"New buffer allocation failed, dropping incoming packet and reusing its buffer\0A\00", align 1
@M_PKTHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.qlnx_fastpath*, %struct.mbuf*, i64)* @qlnx_rx_jumbo_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_rx_jumbo_chain(%struct.TYPE_5__* %0, %struct.qlnx_fastpath* %1, %struct.mbuf* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.qlnx_fastpath*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.sw_rx_data*, align 8
  %14 = alloca %struct.qlnx_rx_queue*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.qlnx_fastpath* %1, %struct.qlnx_fastpath** %7, align 8
  store %struct.mbuf* %2, %struct.mbuf** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %7, align 8
  %17 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %16, i32 0, i32 2
  %18 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %17, align 8
  store %struct.qlnx_rx_queue* %18, %struct.qlnx_rx_queue** %14, align 8
  store %struct.mbuf* null, %struct.mbuf** %10, align 8
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  br label %19

19:                                               ; preds = %134, %4
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %135

22:                                               ; preds = %19
  %23 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %14, align 8
  %24 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @RX_RING_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  %30 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %14, align 8
  %31 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %14, align 8
  %33 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %32, i32 0, i32 3
  %34 = load %struct.sw_rx_data*, %struct.sw_rx_data** %33, align 8
  %35 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %14, align 8
  %36 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %34, i64 %38
  store %struct.sw_rx_data* %39, %struct.sw_rx_data** %13, align 8
  %40 = load %struct.sw_rx_data*, %struct.sw_rx_data** %13, align 8
  %41 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %40, i32 0, i32 1
  %42 = load %struct.mbuf*, %struct.mbuf** %41, align 8
  store %struct.mbuf* %42, %struct.mbuf** %10, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %44 = icmp eq %struct.mbuf* %43, null
  br i1 %44, label %45, label %67

45:                                               ; preds = %22
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = call i32 @QL_DPRINT1(%struct.TYPE_5__* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %7, align 8
  %49 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %14, align 8
  %53 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* @RX_RING_SIZE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  %59 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %14, align 8
  %60 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %62 = icmp ne %struct.mbuf* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %45
  %64 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %65 = call i32 @m_freem(%struct.mbuf* %64)
  br label %66

66:                                               ; preds = %63, %45
  store i32 -1, i32* %5, align 4
  br label %143

67:                                               ; preds = %22
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sw_rx_data*, %struct.sw_rx_data** %13, align 8
  %72 = getelementptr inbounds %struct.sw_rx_data, %struct.sw_rx_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %75 = call i32 @bus_dmamap_sync(i32 %70, i32 %73, i32 %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %14, align 8
  %78 = call i64 @qlnx_alloc_rx_buffer(%struct.TYPE_5__* %76, %struct.qlnx_rx_queue* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %67
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = call i32 @QL_DPRINT1(%struct.TYPE_5__* %81, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %14, align 8
  %84 = call i32 @qlnx_reuse_rx_data(%struct.qlnx_rx_queue* %83)
  %85 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %7, align 8
  %86 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %90 = icmp ne %struct.mbuf* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %93 = call i32 @m_freem(%struct.mbuf* %92)
  br label %94

94:                                               ; preds = %91, %80
  store i32 -1, i32* %5, align 4
  br label %143

95:                                               ; preds = %67
  %96 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %14, align 8
  %97 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %96, i32 0, i32 2
  %98 = call i32 @ecore_chain_consume(i32* %97)
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %14, align 8
  %101 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %99, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %95
  %105 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %14, align 8
  %106 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %15, align 8
  br label %110

108:                                              ; preds = %95
  %109 = load i64, i64* %9, align 8
  store i64 %109, i64* %15, align 8
  br label %110

110:                                              ; preds = %108, %104
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %15, align 8
  %113 = sub nsw i64 %111, %112
  store i64 %113, i64* %9, align 8
  %114 = load i32, i32* @M_PKTHDR, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %117 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %121 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %120, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %121, align 8
  %122 = load i64, i64* %15, align 8
  %123 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %124 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %126 = icmp eq %struct.mbuf* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %110
  %128 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %128, %struct.mbuf** %12, align 8
  store %struct.mbuf* %128, %struct.mbuf** %11, align 8
  br label %134

129:                                              ; preds = %110
  %130 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %131 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %132 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %131, i32 0, i32 0
  store %struct.mbuf* %130, %struct.mbuf** %132, align 8
  %133 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %133, %struct.mbuf** %12, align 8
  br label %134

134:                                              ; preds = %129, %127
  br label %19

135:                                              ; preds = %19
  %136 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %137 = icmp ne %struct.mbuf* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %140 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %141 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %140, i32 0, i32 0
  store %struct.mbuf* %139, %struct.mbuf** %141, align 8
  br label %142

142:                                              ; preds = %138, %135
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %142, %94, %66
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @qlnx_alloc_rx_buffer(%struct.TYPE_5__*, %struct.qlnx_rx_queue*) #1

declare dso_local i32 @qlnx_reuse_rx_data(%struct.qlnx_rx_queue*) #1

declare dso_local i32 @ecore_chain_consume(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
