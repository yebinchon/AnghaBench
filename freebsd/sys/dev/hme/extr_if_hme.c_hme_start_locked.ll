; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i64 }
%struct.hme_softc = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@HME_LINK = common dso_local global i32 0, align 4
@HME_NTXDESC = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @hme_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hme_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.hme_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.hme_softc*
  store %struct.hme_softc* %10, %struct.hme_softc** %3, align 8
  store i32 0, i32* %6, align 4
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
  %21 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %22 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HME_LINK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %1
  br label %93

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %71, %28
  %30 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 1
  %32 = call i32 @IFQ_DRV_IS_EMPTY(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %36 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HME_NTXDESC, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %38, %40
  br label %42

42:                                               ; preds = %34, %29
  %43 = phi i1 [ false, %29 ], [ %41, %34 ]
  br i1 %43, label %44, label %77

44:                                               ; preds = %42
  %45 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 1
  %47 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %48 = call i32 @IFQ_DRV_DEQUEUE(i32* %46, %struct.mbuf* %47)
  %49 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %50 = icmp eq %struct.mbuf* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %77

52:                                               ; preds = %44
  %53 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %54 = call i32 @hme_load_txmbuf(%struct.hme_softc* %53, %struct.mbuf** %4)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %52
  %58 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %59 = icmp eq %struct.mbuf* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %77

61:                                               ; preds = %57
  %62 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %63 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 1
  %69 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %70 = call i32 @IFQ_DRV_PREPEND(i32* %68, %struct.mbuf* %69)
  br label %77

71:                                               ; preds = %52
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %75 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %76 = call i32 @BPF_MTAP(%struct.ifnet* %74, %struct.mbuf* %75)
  br label %29

77:                                               ; preds = %61, %60, %51, %42
  %78 = load i32, i32* %6, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %82 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %85 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %88 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @bus_dmamap_sync(i32 %83, i32 %86, i32 %89)
  %91 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %92 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %91, i32 0, i32 1
  store i32 5, i32* %92, align 4
  br label %93

93:                                               ; preds = %27, %80, %77
  ret void
}

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @hme_load_txmbuf(%struct.hme_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
