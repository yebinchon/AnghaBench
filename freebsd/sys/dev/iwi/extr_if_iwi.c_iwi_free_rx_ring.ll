; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_free_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_free_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32 }
%struct.iwi_rx_ring = type { i32, i32*, %struct.iwi_rx_data* }
%struct.iwi_rx_data = type { i32*, i32* }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*, %struct.iwi_rx_ring*)* @iwi_free_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_free_rx_ring(%struct.iwi_softc* %0, %struct.iwi_rx_ring* %1) #0 {
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca %struct.iwi_rx_ring*, align 8
  %5 = alloca %struct.iwi_rx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %3, align 8
  store %struct.iwi_rx_ring* %1, %struct.iwi_rx_ring** %4, align 8
  %7 = load %struct.iwi_rx_ring*, %struct.iwi_rx_ring** %4, align 8
  %8 = getelementptr inbounds %struct.iwi_rx_ring, %struct.iwi_rx_ring* %7, i32 0, i32 2
  %9 = load %struct.iwi_rx_data*, %struct.iwi_rx_data** %8, align 8
  %10 = icmp ne %struct.iwi_rx_data* %9, null
  br i1 %10, label %11, label %72

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %63, %11
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.iwi_rx_ring*, %struct.iwi_rx_ring** %4, align 8
  %15 = getelementptr inbounds %struct.iwi_rx_ring, %struct.iwi_rx_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %66

18:                                               ; preds = %12
  %19 = load %struct.iwi_rx_ring*, %struct.iwi_rx_ring** %4, align 8
  %20 = getelementptr inbounds %struct.iwi_rx_ring, %struct.iwi_rx_ring* %19, i32 0, i32 2
  %21 = load %struct.iwi_rx_data*, %struct.iwi_rx_data** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iwi_rx_data, %struct.iwi_rx_data* %21, i64 %23
  store %struct.iwi_rx_data* %24, %struct.iwi_rx_data** %5, align 8
  %25 = load %struct.iwi_rx_data*, %struct.iwi_rx_data** %5, align 8
  %26 = getelementptr inbounds %struct.iwi_rx_data, %struct.iwi_rx_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %18
  %30 = load %struct.iwi_rx_ring*, %struct.iwi_rx_ring** %4, align 8
  %31 = getelementptr inbounds %struct.iwi_rx_ring, %struct.iwi_rx_ring* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.iwi_rx_data*, %struct.iwi_rx_data** %5, align 8
  %34 = getelementptr inbounds %struct.iwi_rx_data, %struct.iwi_rx_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %37 = call i32 @bus_dmamap_sync(i32* %32, i32* %35, i32 %36)
  %38 = load %struct.iwi_rx_ring*, %struct.iwi_rx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.iwi_rx_ring, %struct.iwi_rx_ring* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.iwi_rx_data*, %struct.iwi_rx_data** %5, align 8
  %42 = getelementptr inbounds %struct.iwi_rx_data, %struct.iwi_rx_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @bus_dmamap_unload(i32* %40, i32* %43)
  %45 = load %struct.iwi_rx_data*, %struct.iwi_rx_data** %5, align 8
  %46 = getelementptr inbounds %struct.iwi_rx_data, %struct.iwi_rx_data* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @m_freem(i32* %47)
  br label %49

49:                                               ; preds = %29, %18
  %50 = load %struct.iwi_rx_data*, %struct.iwi_rx_data** %5, align 8
  %51 = getelementptr inbounds %struct.iwi_rx_data, %struct.iwi_rx_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.iwi_rx_ring*, %struct.iwi_rx_ring** %4, align 8
  %56 = getelementptr inbounds %struct.iwi_rx_ring, %struct.iwi_rx_ring* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.iwi_rx_data*, %struct.iwi_rx_data** %5, align 8
  %59 = getelementptr inbounds %struct.iwi_rx_data, %struct.iwi_rx_data* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @bus_dmamap_destroy(i32* %57, i32* %60)
  br label %62

62:                                               ; preds = %54, %49
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %12

66:                                               ; preds = %12
  %67 = load %struct.iwi_rx_ring*, %struct.iwi_rx_ring** %4, align 8
  %68 = getelementptr inbounds %struct.iwi_rx_ring, %struct.iwi_rx_ring* %67, i32 0, i32 2
  %69 = load %struct.iwi_rx_data*, %struct.iwi_rx_data** %68, align 8
  %70 = load i32, i32* @M_DEVBUF, align 4
  %71 = call i32 @free(%struct.iwi_rx_data* %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %2
  %73 = load %struct.iwi_rx_ring*, %struct.iwi_rx_ring** %4, align 8
  %74 = getelementptr inbounds %struct.iwi_rx_ring, %struct.iwi_rx_ring* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.iwi_rx_ring*, %struct.iwi_rx_ring** %4, align 8
  %79 = getelementptr inbounds %struct.iwi_rx_ring, %struct.iwi_rx_ring* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @bus_dma_tag_destroy(i32* %80)
  br label %82

82:                                               ; preds = %77, %72
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32*) #1

declare dso_local i32 @free(%struct.iwi_rx_data*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
