; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_free_tx_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_free_tx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.qlnx_fastpath = type { i32, i32, i32, i32 }
%struct.qlnx_tx_queue = type { i64, %struct.TYPE_14__*, i32, %struct.TYPE_11__, i32* }
%struct.TYPE_14__ = type { i64, %struct.mbuf*, i64 }
%struct.mbuf = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.eth_tx_bd = type { i32 }
%struct.eth_tx_1st_bd = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@QL_ERR_INJCT_TX_INT_MBUF_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [127 x i8] c"(mp == NULL)  tx_idx = 0x%x ecore_prod_idx = 0x%x ecore_cons_idx = 0x%x hw_bd_cons = 0x%x txq_db_last = 0x%x elem_left = 0x%x\0A\00", align 1
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.qlnx_fastpath*, %struct.qlnx_tx_queue*)* @qlnx_free_tx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_free_tx_pkt(%struct.TYPE_15__* %0, %struct.qlnx_fastpath* %1, %struct.qlnx_tx_queue* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.qlnx_fastpath*, align 8
  %6 = alloca %struct.qlnx_tx_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.eth_tx_bd*, align 8
  %12 = alloca %struct.eth_tx_1st_bd*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.qlnx_fastpath* %1, %struct.qlnx_fastpath** %5, align 8
  store %struct.qlnx_tx_queue* %2, %struct.qlnx_tx_queue** %6, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %15 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %18 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load %struct.mbuf*, %struct.mbuf** %22, align 8
  store %struct.mbuf* %23, %struct.mbuf** %8, align 8
  %24 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %25 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %24, i32 0, i32 1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %32 = icmp eq %struct.mbuf* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %3
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = load i32, i32* @QL_ERR_INJCT_TX_INT_MBUF_NULL, align 4
  %36 = call i64 @QL_ERR_INJECT(%struct.TYPE_15__* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %33, %3
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = load i32, i32* @QL_ERR_INJCT_TX_INT_MBUF_NULL, align 4
  %41 = call i32 @QL_RESET_ERR_INJECT(%struct.TYPE_15__* %39, i32 %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %44 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %47 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %46, i32 0, i32 2
  %48 = call i32 @ecore_chain_get_prod_idx(i32* %47)
  %49 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %50 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %49, i32 0, i32 2
  %51 = call i32 @ecore_chain_get_cons_idx(i32* %50)
  %52 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %53 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16toh(i32 %55)
  %57 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %58 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %62 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %61, i32 0, i32 2
  %63 = call i32 @ecore_chain_get_elem_left(i32* %62)
  %64 = call i32 @QL_DPRINT1(%struct.TYPE_15__* %42, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %51, i32 %56, i32 %60, i32 %63)
  %65 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %66 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %70 = call i32 @qlnx_trigger_dump(%struct.TYPE_15__* %69)
  br label %144

71:                                               ; preds = %33
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @QLNX_INC_OPACKETS(i32 %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @QLNX_INC_OBYTES(i32 %78, i32 %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %9, align 8
  %88 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %89 = call i32 @bus_dmamap_sync(i32 %86, i64 %87, i32 %88)
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @bus_dmamap_unload(i32 %92, i64 %93)
  %95 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %96 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %100 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %104 = call i32 @m_freem(%struct.mbuf* %103)
  br label %105

105:                                              ; preds = %71
  %106 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %107 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %106, i32 0, i32 2
  %108 = call %struct.eth_tx_bd* @ecore_chain_consume(i32* %107)
  %109 = bitcast %struct.eth_tx_bd* %108 to %struct.eth_tx_1st_bd*
  store %struct.eth_tx_1st_bd* %109, %struct.eth_tx_1st_bd** %12, align 8
  %110 = load %struct.eth_tx_1st_bd*, %struct.eth_tx_1st_bd** %12, align 8
  %111 = getelementptr inbounds %struct.eth_tx_1st_bd, %struct.eth_tx_1st_bd* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %13, align 4
  store i32 1, i32* %10, align 4
  br label %114

114:                                              ; preds = %122, %105
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %120 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %119, i32 0, i32 2
  %121 = call %struct.eth_tx_bd* @ecore_chain_consume(i32* %120)
  store %struct.eth_tx_bd* %121, %struct.eth_tx_bd** %11, align 8
  br label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %114

125:                                              ; preds = %114
  %126 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %127 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %126, i32 0, i32 1
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  store i64 0, i64* %131, align 8
  %132 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %133 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %132, i32 0, i32 1
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %137, align 8
  %138 = load %struct.qlnx_tx_queue*, %struct.qlnx_tx_queue** %6, align 8
  %139 = getelementptr inbounds %struct.qlnx_tx_queue, %struct.qlnx_tx_queue* %138, i32 0, i32 1
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = load i64, i64* %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  br label %144

144:                                              ; preds = %125, %38
  ret void
}

declare dso_local i64 @QL_ERR_INJECT(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @QL_RESET_ERR_INJECT(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_15__*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ecore_chain_get_prod_idx(i32*) #1

declare dso_local i32 @ecore_chain_get_cons_idx(i32*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @ecore_chain_get_elem_left(i32*) #1

declare dso_local i32 @qlnx_trigger_dump(%struct.TYPE_15__*) #1

declare dso_local i32 @QLNX_INC_OPACKETS(i32) #1

declare dso_local i32 @QLNX_INC_OBYTES(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i64, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i64) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.eth_tx_bd* @ecore_chain_consume(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
