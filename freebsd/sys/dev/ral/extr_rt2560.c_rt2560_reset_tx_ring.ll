; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_reset_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_reset_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { i32 }
%struct.rt2560_tx_ring = type { i32, i64, i64, i64, i64, i64, i32, i32, i32, %struct.rt2560_tx_data*, %struct.rt2560_tx_desc* }
%struct.rt2560_tx_data = type { i32*, i32*, i32 }
%struct.rt2560_tx_desc = type { i64 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2560_softc*, %struct.rt2560_tx_ring*)* @rt2560_reset_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_reset_tx_ring(%struct.rt2560_softc* %0, %struct.rt2560_tx_ring* %1) #0 {
  %3 = alloca %struct.rt2560_softc*, align 8
  %4 = alloca %struct.rt2560_tx_ring*, align 8
  %5 = alloca %struct.rt2560_tx_desc*, align 8
  %6 = alloca %struct.rt2560_tx_data*, align 8
  %7 = alloca i32, align 4
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %3, align 8
  store %struct.rt2560_tx_ring* %1, %struct.rt2560_tx_ring** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %68, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %11 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %71

14:                                               ; preds = %8
  %15 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %15, i32 0, i32 10
  %17 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rt2560_tx_desc, %struct.rt2560_tx_desc* %17, i64 %19
  store %struct.rt2560_tx_desc* %20, %struct.rt2560_tx_desc** %5, align 8
  %21 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %22 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %21, i32 0, i32 9
  %23 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %23, i64 %25
  store %struct.rt2560_tx_data* %26, %struct.rt2560_tx_data** %6, align 8
  %27 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %6, align 8
  %28 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %14
  %32 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %33 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %6, align 8
  %36 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %39 = call i32 @bus_dmamap_sync(i32 %34, i32 %37, i32 %38)
  %40 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %41 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %6, align 8
  %44 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bus_dmamap_unload(i32 %42, i32 %45)
  %47 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %6, align 8
  %48 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @m_freem(i32* %49)
  %51 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %6, align 8
  %52 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %31, %14
  %54 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %6, align 8
  %55 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %6, align 8
  %60 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @ieee80211_free_node(i32* %61)
  %63 = load %struct.rt2560_tx_data*, %struct.rt2560_tx_data** %6, align 8
  %64 = getelementptr inbounds %struct.rt2560_tx_data, %struct.rt2560_tx_data* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %58, %53
  %66 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %5, align 8
  %67 = getelementptr inbounds %struct.rt2560_tx_desc, %struct.rt2560_tx_desc* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %8

71:                                               ; preds = %8
  %72 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %73 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %76 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %79 = call i32 @bus_dmamap_sync(i32 %74, i32 %77, i32 %78)
  %80 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %81 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %80, i32 0, i32 5
  store i64 0, i64* %81, align 8
  %82 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %83 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %85 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %84, i32 0, i32 4
  store i64 0, i64* %85, align 8
  %86 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %87 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load %struct.rt2560_tx_ring*, %struct.rt2560_tx_ring** %4, align 8
  %89 = getelementptr inbounds %struct.rt2560_tx_ring, %struct.rt2560_tx_ring* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ieee80211_free_node(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
