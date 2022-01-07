; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_reset_tx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_reset_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32 }
%struct.iwi_tx_ring = type { i32, i64, i64, i64, i32, %struct.iwi_tx_data* }
%struct.iwi_tx_data = type { i32*, i32*, i32 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*, %struct.iwi_tx_ring*)* @iwi_reset_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_reset_tx_ring(%struct.iwi_softc* %0, %struct.iwi_tx_ring* %1) #0 {
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca %struct.iwi_tx_ring*, align 8
  %5 = alloca %struct.iwi_tx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %3, align 8
  store %struct.iwi_tx_ring* %1, %struct.iwi_tx_ring** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %59, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %10 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %62

13:                                               ; preds = %7
  %14 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %15 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %14, i32 0, i32 5
  %16 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %16, i64 %18
  store %struct.iwi_tx_data* %19, %struct.iwi_tx_data** %5, align 8
  %20 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %5, align 8
  %21 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %13
  %25 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %26 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %5, align 8
  %29 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %32 = call i32 @bus_dmamap_sync(i32 %27, i32 %30, i32 %31)
  %33 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %5, align 8
  %37 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @bus_dmamap_unload(i32 %35, i32 %38)
  %40 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %5, align 8
  %41 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @m_freem(i32* %42)
  %44 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %5, align 8
  %45 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %24, %13
  %47 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %5, align 8
  %48 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %5, align 8
  %53 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ieee80211_free_node(i32* %54)
  %56 = load %struct.iwi_tx_data*, %struct.iwi_tx_data** %5, align 8
  %57 = getelementptr inbounds %struct.iwi_tx_data, %struct.iwi_tx_data* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %51, %46
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %7

62:                                               ; preds = %7
  %63 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %64 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %66 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.iwi_tx_ring*, %struct.iwi_tx_ring** %4, align 8
  %68 = getelementptr inbounds %struct.iwi_tx_ring, %struct.iwi_tx_ring* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
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
