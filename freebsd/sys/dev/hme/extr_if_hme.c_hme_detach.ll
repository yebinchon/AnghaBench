; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, %struct.ifnet* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ifnet = type { i32 }

@HME_NTXQ = common dso_local global i32 0, align 4
@HME_NRXDESC = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hme_detach(%struct.hme_softc* %0) #0 {
  %2 = alloca %struct.hme_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.hme_softc* %0, %struct.hme_softc** %2, align 8
  %5 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %6 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %5, i32 0, i32 9
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %9 = call i32 @HME_LOCK(%struct.hme_softc* %8)
  %10 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %11 = call i32 @hme_stop(%struct.hme_softc* %10)
  %12 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %13 = call i32 @HME_UNLOCK(%struct.hme_softc* %12)
  %14 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %15 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %14, i32 0, i32 8
  %16 = call i32 @callout_drain(i32* %15)
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = call i32 @ether_ifdetach(%struct.ifnet* %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = call i32 @if_free(%struct.ifnet* %19)
  %21 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %22 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %25 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @device_delete_child(i32 %23, i32 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %46, %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @HME_NTXQ, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %34 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %37 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bus_dmamap_destroy(i32 %35, i32 %44)
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %28

49:                                               ; preds = %28
  %50 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %51 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %54 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @bus_dmamap_destroy(i32 %52, i32 %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %76, %49
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @HME_NRXDESC, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %64 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %67 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bus_dmamap_destroy(i32 %65, i32 %74)
  br label %76

76:                                               ; preds = %62
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %58

79:                                               ; preds = %58
  %80 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %81 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %84 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %87 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @bus_dmamap_sync(i32 %82, i32 %85, i32 %88)
  %90 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %91 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %94 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @bus_dmamap_unload(i32 %92, i32 %95)
  %97 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %98 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %101 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %105 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @bus_dmamem_free(i32 %99, i32 %103, i32 %106)
  %108 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %109 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @bus_dma_tag_destroy(i32 %110)
  %112 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %113 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @bus_dma_tag_destroy(i32 %114)
  %116 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %117 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @bus_dma_tag_destroy(i32 %118)
  %120 = load %struct.hme_softc*, %struct.hme_softc** %2, align 8
  %121 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @bus_dma_tag_destroy(i32 %122)
  ret void
}

declare dso_local i32 @HME_LOCK(%struct.hme_softc*) #1

declare dso_local i32 @hme_stop(%struct.hme_softc*) #1

declare dso_local i32 @HME_UNLOCK(%struct.hme_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
