; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.ste_softc* }
%struct.ste_softc = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64, %struct.ste_chain*, i32, i32, %struct.ste_chain* }
%struct.ste_chain = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@STE_FLAG_LINK = common dso_local global i32 0, align 4
@STE_TX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@STE_DMACTL = common dso_local global i32 0, align 4
@STE_DMACTL_TXDMA_STALL = common dso_local global i32 0, align 4
@STE_TX_DMALIST_PTR = common dso_local global i32 0, align 4
@STE_TX_DMAPOLL_PERIOD = common dso_local global i32 0, align 4
@STE_DMACTL_TXDMA_UNSTALL = common dso_local global i32 0, align 4
@STE_TX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @ste_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.ste_softc*, align 8
  %4 = alloca %struct.ste_chain*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 2
  %9 = load %struct.ste_softc*, %struct.ste_softc** %8, align 8
  store %struct.ste_softc* %9, %struct.ste_softc** %3, align 8
  %10 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %11 = call i32 @STE_LOCK_ASSERT(%struct.ste_softc* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @STE_FLAG_LINK, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %1
  br label %166

29:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %149, %29
  %31 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 1
  %33 = call i32 @IFQ_DRV_IS_EMPTY(i32* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %159

36:                                               ; preds = %30
  %37 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @STE_TX_LIST_CNT, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %46 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %159

50:                                               ; preds = %36
  %51 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 1
  %53 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %54 = call i32 @IFQ_DRV_DEQUEUE(i32* %52, %struct.mbuf* %53)
  %55 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %56 = icmp eq %struct.mbuf* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %159

58:                                               ; preds = %50
  %59 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  %62 = load %struct.ste_chain*, %struct.ste_chain** %61, align 8
  %63 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %62, i64 %66
  store %struct.ste_chain* %67, %struct.ste_chain** %4, align 8
  %68 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %69 = load %struct.ste_chain*, %struct.ste_chain** %4, align 8
  %70 = call i64 @ste_encap(%struct.ste_softc* %68, %struct.mbuf** %5, %struct.ste_chain* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %58
  %73 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %74 = icmp eq %struct.mbuf* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %159

76:                                               ; preds = %72
  %77 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 1
  %79 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %80 = call i32 @IFQ_DRV_PREPEND(i32* %78, %struct.mbuf* %79)
  br label %159

81:                                               ; preds = %58
  %82 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load %struct.ste_chain*, %struct.ste_chain** %84, align 8
  %86 = icmp eq %struct.ste_chain* %85, null
  br i1 %86, label %87, label %123

87:                                               ; preds = %81
  %88 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %89 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %93 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %97 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @bus_dmamap_sync(i32 %91, i32 %95, i32 %98)
  %100 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %101 = load i32, i32* @STE_DMACTL, align 4
  %102 = load i32, i32* @STE_DMACTL_TXDMA_STALL, align 4
  %103 = call i32 @STE_SETBIT4(%struct.ste_softc* %100, i32 %101, i32 %102)
  %104 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %105 = call i32 @ste_wait(%struct.ste_softc* %104)
  %106 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %107 = load i32, i32* @STE_TX_DMALIST_PTR, align 4
  %108 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %109 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @STE_ADDR_LO(i32 %111)
  %113 = call i32 @CSR_WRITE_4(%struct.ste_softc* %106, i32 %107, i32 %112)
  %114 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %115 = load i32, i32* @STE_TX_DMAPOLL_PERIOD, align 4
  %116 = call i32 @CSR_WRITE_1(%struct.ste_softc* %114, i32 %115, i32 64)
  %117 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %118 = load i32, i32* @STE_DMACTL, align 4
  %119 = load i32, i32* @STE_DMACTL_TXDMA_UNSTALL, align 4
  %120 = call i32 @STE_SETBIT4(%struct.ste_softc* %117, i32 %118, i32 %119)
  %121 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %122 = call i32 @ste_wait(%struct.ste_softc* %121)
  br label %149

123:                                              ; preds = %81
  %124 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %125 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load %struct.ste_chain*, %struct.ste_chain** %126, align 8
  %128 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %131 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load %struct.ste_chain*, %struct.ste_chain** %132, align 8
  %134 = getelementptr inbounds %struct.ste_chain, %struct.ste_chain* %133, i32 0, i32 1
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store i32 %129, i32* %136, align 4
  %137 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %138 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %142 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %146 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @bus_dmamap_sync(i32 %140, i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %123, %87
  %150 = load %struct.ste_chain*, %struct.ste_chain** %4, align 8
  %151 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %152 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  store %struct.ste_chain* %150, %struct.ste_chain** %153, align 8
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  %156 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %157 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %158 = call i32 @BPF_MTAP(%struct.ifnet* %156, %struct.mbuf* %157)
  br label %30

159:                                              ; preds = %76, %75, %57, %44, %30
  %160 = load i32, i32* %6, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* @STE_TX_TIMEOUT, align 4
  %164 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %165 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %28, %162, %159
  ret void
}

declare dso_local i32 @STE_LOCK_ASSERT(%struct.ste_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @ste_encap(%struct.ste_softc*, %struct.mbuf**, %struct.ste_chain*) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @STE_SETBIT4(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @ste_wait(%struct.ste_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @STE_ADDR_LO(i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.ste_softc*, i32, i32) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
