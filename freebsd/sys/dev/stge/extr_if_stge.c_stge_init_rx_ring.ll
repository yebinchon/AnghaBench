; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_init_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_init_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { %struct.TYPE_3__, %struct.stge_ring_data }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.stge_ring_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@STGE_RX_RING_SZ = common dso_local global i32 0, align 4
@STGE_RX_RING_CNT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stge_softc*)* @stge_init_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stge_init_rx_ring(%struct.stge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stge_softc*, align 8
  %4 = alloca %struct.stge_ring_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %3, align 8
  %7 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %11 = call i32 @STGE_RXCHAIN_RESET(%struct.stge_softc* %10)
  %12 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %13 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %12, i32 0, i32 1
  store %struct.stge_ring_data* %13, %struct.stge_ring_data** %4, align 8
  %14 = load %struct.stge_ring_data*, %struct.stge_ring_data** %4, align 8
  %15 = getelementptr inbounds %struct.stge_ring_data, %struct.stge_ring_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* @STGE_RX_RING_SZ, align 4
  %18 = call i32 @bzero(%struct.TYPE_4__* %16, i32 %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %60, %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @STGE_RX_RING_CNT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @stge_newbuf(%struct.stge_softc* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOBUFS, align 4
  store i32 %29, i32* %2, align 4
  br label %76

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @STGE_RX_RING_CNT, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %37 = call i32 @STGE_RX_RING_ADDR(%struct.stge_softc* %36, i32 0)
  store i32 %37, i32* %5, align 4
  br label %43

38:                                               ; preds = %30
  %39 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @STGE_RX_RING_ADDR(%struct.stge_softc* %39, i32 %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @htole64(i32 %44)
  %46 = load %struct.stge_ring_data*, %struct.stge_ring_data** %4, align 8
  %47 = getelementptr inbounds %struct.stge_ring_data, %struct.stge_ring_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %45, i32* %52, align 8
  %53 = load %struct.stge_ring_data*, %struct.stge_ring_data** %4, align 8
  %54 = getelementptr inbounds %struct.stge_ring_data, %struct.stge_ring_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %19

63:                                               ; preds = %19
  %64 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %65 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %69 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %73 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @bus_dmamap_sync(i32 %67, i32 %71, i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %63, %28
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @STGE_RXCHAIN_RESET(%struct.stge_softc*) #1

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @stge_newbuf(%struct.stge_softc*, i32) #1

declare dso_local i32 @STGE_RX_RING_ADDR(%struct.stge_softc*, i32) #1

declare dso_local i32 @htole64(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
