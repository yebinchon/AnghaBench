; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_txdesc_dmamap_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_txdesc_dmamap_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_tx_ring = type { i32, i32 }
%struct.hn_txdesc = type { i64, i32, i32 }
%struct.mbuf = type { i32 }

@HN_NVS_CHIM_IDX_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"txd uses chim\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@HN_TX_DATA_SEGCNT_MAX = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@HN_TXD_FLAG_DMAMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_tx_ring*, %struct.hn_txdesc*, %struct.mbuf**, i32*, i32*)* @hn_txdesc_dmamap_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_txdesc_dmamap_load(%struct.hn_tx_ring* %0, %struct.hn_txdesc* %1, %struct.mbuf** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hn_tx_ring*, align 8
  %8 = alloca %struct.hn_txdesc*, align 8
  %9 = alloca %struct.mbuf**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mbuf*, align 8
  store %struct.hn_tx_ring* %0, %struct.hn_tx_ring** %7, align 8
  store %struct.hn_txdesc* %1, %struct.hn_txdesc** %8, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  store %struct.mbuf* %16, %struct.mbuf** %12, align 8
  %17 = load %struct.hn_txdesc*, %struct.hn_txdesc** %8, align 8
  %18 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HN_NVS_CHIM_IDX_INVALID, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %25 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hn_txdesc*, %struct.hn_txdesc** %8, align 8
  %28 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %34 = call i32 @bus_dmamap_load_mbuf_sg(i32 %26, i32 %29, %struct.mbuf* %30, i32* %31, i32* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @EFBIG, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %5
  %39 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %40 = load i32, i32* @M_NOWAIT, align 4
  %41 = load i32, i32* @HN_TX_DATA_SEGCNT_MAX, align 4
  %42 = call %struct.mbuf* @m_collapse(%struct.mbuf* %39, i32 %40, i32 %41)
  store %struct.mbuf* %42, %struct.mbuf** %14, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %44 = icmp eq %struct.mbuf* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOBUFS, align 4
  store i32 %46, i32* %6, align 4
  br label %85

47:                                               ; preds = %38
  %48 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %48, %struct.mbuf** %12, align 8
  %49 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  store %struct.mbuf* %48, %struct.mbuf** %49, align 8
  br label %50

50:                                               ; preds = %47
  %51 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %52 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %56 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hn_txdesc*, %struct.hn_txdesc** %8, align 8
  %59 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %65 = call i32 @bus_dmamap_load_mbuf_sg(i32 %57, i32 %60, %struct.mbuf* %61, i32* %62, i32* %63, i32 %64)
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %50, %5
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %66
  %70 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %7, align 8
  %71 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hn_txdesc*, %struct.hn_txdesc** %8, align 8
  %74 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %77 = call i32 @bus_dmamap_sync(i32 %72, i32 %75, i32 %76)
  %78 = load i32, i32* @HN_TXD_FLAG_DMAMAP, align 4
  %79 = load %struct.hn_txdesc*, %struct.hn_txdesc** %8, align 8
  %80 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %69, %66
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %45
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, i32*, i32*, i32) #1

declare dso_local %struct.mbuf* @m_collapse(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
