; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.bfe_softc* }
%struct.bfe_softc = type { i32, i32, i32, i32, i32, i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@BFE_FLAG_LINK = common dso_local global i32 0, align 4
@BFE_TX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BFE_DMATX_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @bfe_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.bfe_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 2
  %8 = load %struct.bfe_softc*, %struct.bfe_softc** %7, align 8
  store %struct.bfe_softc* %8, %struct.bfe_softc** %3, align 8
  %9 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %10 = call i32 @BFE_LOCK_ASSERT(%struct.bfe_softc* %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %22 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BFE_FLAG_LINK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %1
  br label %109

28:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %69, %28
  %30 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 1
  %32 = call i32 @IFQ_DRV_IS_EMPTY(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %36 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BFE_TX_LIST_CNT, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br label %41

41:                                               ; preds = %34, %29
  %42 = phi i1 [ false, %29 ], [ %40, %34 ]
  br i1 %42, label %43, label %75

43:                                               ; preds = %41
  %44 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 1
  %46 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %47 = call i32 @IFQ_DRV_DEQUEUE(i32* %45, %struct.mbuf* %46)
  %48 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %49 = icmp eq %struct.mbuf* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %75

51:                                               ; preds = %43
  %52 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %53 = call i64 @bfe_encap(%struct.bfe_softc* %52, %struct.mbuf** %4)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %57 = icmp eq %struct.mbuf* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %75

59:                                               ; preds = %55
  %60 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 1
  %62 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %63 = call i32 @IFQ_DRV_PREPEND(i32* %61, %struct.mbuf* %62)
  %64 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %65 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %75

69:                                               ; preds = %51
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %73 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %74 = call i32 @BPF_MTAP(%struct.ifnet* %72, %struct.mbuf* %73)
  br label %29

75:                                               ; preds = %59, %58, %50, %41
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %75
  %79 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %80 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %83 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %86 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @bus_dmamap_sync(i32 %81, i32 %84, i32 %87)
  %89 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %90 = load i32, i32* @BFE_DMATX_PTR, align 4
  %91 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %92 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %89, i32 %90, i32 %96)
  %98 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %99 = load i32, i32* @BFE_DMATX_PTR, align 4
  %100 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %101 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %98, i32 %99, i32 %105)
  %107 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %108 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %107, i32 0, i32 3
  store i32 5, i32* %108, align 4
  br label %109

109:                                              ; preds = %27, %78, %75
  ret void
}

declare dso_local i32 @BFE_LOCK_ASSERT(%struct.bfe_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @bfe_encap(%struct.bfe_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bfe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
