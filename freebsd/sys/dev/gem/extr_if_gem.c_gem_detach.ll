; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i32, %struct.ifnet* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }
%struct.ifnet = type { i32 }

@GEM_NRXDESC = common dso_local global i32 0, align 4
@GEM_TXQUEUELEN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gem_detach(%struct.gem_softc* %0) #0 {
  %2 = alloca %struct.gem_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.gem_softc* %0, %struct.gem_softc** %2, align 8
  %5 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %6 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %5, i32 0, i32 12
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = call i32 @ether_ifdetach(%struct.ifnet* %8)
  %10 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %11 = call i32 @GEM_LOCK(%struct.gem_softc* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = call i32 @gem_stop(%struct.ifnet* %12, i32 1)
  %14 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %15 = call i32 @GEM_UNLOCK(%struct.gem_softc* %14)
  %16 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %17 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %16, i32 0, i32 11
  %18 = call i32 @callout_drain(i32* %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %20 = call i32 @if_free(%struct.ifnet* %19)
  %21 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %22 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %25 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @device_delete_child(i32 %23, i32 %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %56, %1
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @GEM_NRXDESC, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %28
  %33 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %34 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %33, i32 0, i32 7
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %32
  %43 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %44 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %47 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %46, i32 0, i32 7
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @bus_dmamap_destroy(i32 %45, i32* %53)
  br label %55

55:                                               ; preds = %42, %32
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %28

59:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %88, %59
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @GEM_TXQUEUELEN, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %60
  %65 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %66 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %65, i32 0, i32 6
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %64
  %75 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %76 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %79 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %78, i32 0, i32 6
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @bus_dmamap_destroy(i32 %77, i32* %85)
  br label %87

87:                                               ; preds = %74, %64
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %60

91:                                               ; preds = %60
  %92 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %93 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %94 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @GEM_CDSYNC(%struct.gem_softc* %92, i32 %95)
  %97 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %98 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %101 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @bus_dmamap_unload(i32 %99, i32 %102)
  %104 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %105 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %108 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %111 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @bus_dmamem_free(i32 %106, i32 %109, i32 %112)
  %114 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %115 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @bus_dma_tag_destroy(i32 %116)
  %118 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %119 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @bus_dma_tag_destroy(i32 %120)
  %122 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %123 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @bus_dma_tag_destroy(i32 %124)
  %126 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %127 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @bus_dma_tag_destroy(i32 %128)
  ret void
}

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @GEM_LOCK(%struct.gem_softc*) #1

declare dso_local i32 @gem_stop(%struct.ifnet*, i32) #1

declare dso_local i32 @GEM_UNLOCK(%struct.gem_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @GEM_CDSYNC(%struct.gem_softc*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
