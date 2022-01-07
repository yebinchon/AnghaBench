; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_list_rx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_list_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { %struct.TYPE_3__, %struct.nge_ring_data, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.nge_ring_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NGE_RX_RING_CNT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nge_softc*)* @nge_list_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nge_list_rx_init(%struct.nge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nge_softc*, align 8
  %4 = alloca %struct.nge_ring_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nge_softc* %0, %struct.nge_softc** %3, align 8
  %7 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %10, i32 0, i32 2
  store i32* null, i32** %11, align 8
  %12 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %13 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %12, i32 0, i32 3
  store i32 0, i32* %13, align 8
  %14 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %15 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %14, i32 0, i32 1
  store %struct.nge_ring_data* %15, %struct.nge_ring_data** %4, align 8
  %16 = load %struct.nge_ring_data*, %struct.nge_ring_data** %4, align 8
  %17 = getelementptr inbounds %struct.nge_ring_data, %struct.nge_ring_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* @NGE_RX_RING_CNT, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @bzero(%struct.TYPE_4__* %18, i32 %22)
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %59, %1
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @NGE_RX_RING_CNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @nge_newbuf(%struct.nge_softc* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOBUFS, align 4
  store i32 %34, i32* %2, align 4
  br label %75

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @NGE_RX_RING_CNT, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %42 = call i32 @NGE_RX_RING_ADDR(%struct.nge_softc* %41, i32 0)
  store i32 %42, i32* %5, align 4
  br label %48

43:                                               ; preds = %35
  %44 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @NGE_RX_RING_ADDR(%struct.nge_softc* %44, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @NGE_ADDR_LO(i32 %49)
  %51 = call i32 @htole32(i32 %50)
  %52 = load %struct.nge_ring_data*, %struct.nge_ring_data** %4, align 8
  %53 = getelementptr inbounds %struct.nge_ring_data, %struct.nge_ring_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %51, i32* %58, align 4
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %24

62:                                               ; preds = %24
  %63 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %64 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %68 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %72 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @bus_dmamap_sync(i32 %66, i32 %70, i32 %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %62, %33
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @nge_newbuf(%struct.nge_softc*, i32) #1

declare dso_local i32 @NGE_RX_RING_ADDR(%struct.nge_softc*, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @NGE_ADDR_LO(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
