; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.ti_softc* }
%struct.ti_softc = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.mbuf = type { i32 }

@TI_TX_RING_CNT = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@TI_MB_SENDPROD_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @ti_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.ti_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 2
  %8 = load %struct.ti_softc*, %struct.ti_softc** %7, align 8
  store %struct.ti_softc* %8, %struct.ti_softc** %3, align 8
  br label %9

9:                                                ; preds = %49, %1
  %10 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 1
  %12 = call i32 @IFQ_DRV_IS_EMPTY(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @TI_TX_RING_CNT, align 4
  %19 = sub nsw i32 %18, 16
  %20 = icmp slt i32 %17, %19
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi i1 [ false, %9 ], [ %20, %14 ]
  br i1 %22, label %23, label %55

23:                                               ; preds = %21
  %24 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 1
  %26 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %27 = call i32 @IFQ_DRV_DEQUEUE(i32* %25, %struct.mbuf* %26)
  %28 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %29 = icmp eq %struct.mbuf* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %55

31:                                               ; preds = %23
  %32 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %33 = call i64 @ti_encap(%struct.ti_softc* %32, %struct.mbuf** %4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %37 = icmp eq %struct.mbuf* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %55

39:                                               ; preds = %35
  %40 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 1
  %42 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %43 = call i32 @IFQ_DRV_PREPEND(i32* %41, %struct.mbuf* %42)
  %44 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %45 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %55

49:                                               ; preds = %31
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %54 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %52, %struct.mbuf* %53)
  br label %9

55:                                               ; preds = %39, %38, %30, %21
  %56 = load i32, i32* %5, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %70 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %74 = call i32 @bus_dmamap_sync(i32 %68, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %64, %58
  %76 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %77 = load i32, i32* @TI_MB_SENDPROD_IDX, align 4
  %78 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @CSR_WRITE_4(%struct.ti_softc* %76, i32 %77, i32 %80)
  %82 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %82, i32 0, i32 1
  store i32 5, i32* %83, align 4
  br label %84

84:                                               ; preds = %75, %55
  ret void
}

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @ti_encap(%struct.ti_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
