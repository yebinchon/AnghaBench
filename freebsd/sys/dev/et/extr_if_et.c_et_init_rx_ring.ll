; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_init_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_init_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { %struct.et_rxstat_ring, %struct.et_rxstatus_data, i32, %struct.et_rxbuf_data* }
%struct.et_rxstat_ring = type { i32, i32, i32 }
%struct.et_rxstatus_data = type { i32, i32, i32 }
%struct.et_rxbuf_data = type { i32 (%struct.et_rxbuf_data*, i32)* }

@ET_RX_NRING = common dso_local global i32 0, align 4
@ET_RX_NDESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%d ring %d buf, newbuf failed: %d\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@ET_RXSTAT_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et_softc*)* @et_init_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_init_rx_ring(%struct.et_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et_softc*, align 8
  %4 = alloca %struct.et_rxstatus_data*, align 8
  %5 = alloca %struct.et_rxstat_ring*, align 8
  %6 = alloca %struct.et_rxbuf_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %3, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %48, %1
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @ET_RX_NRING, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  %15 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %16 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %15, i32 0, i32 3
  %17 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %17, i64 %19
  store %struct.et_rxbuf_data* %20, %struct.et_rxbuf_data** %6, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %44, %14
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ET_RX_NDESC, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %6, align 8
  %27 = getelementptr inbounds %struct.et_rxbuf_data, %struct.et_rxbuf_data* %26, i32 0, i32 0
  %28 = load i32 (%struct.et_rxbuf_data*, i32)*, i32 (%struct.et_rxbuf_data*, i32)** %27, align 8
  %29 = load %struct.et_rxbuf_data*, %struct.et_rxbuf_data** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 %28(%struct.et_rxbuf_data* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %36 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @if_printf(i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %85

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %21

47:                                               ; preds = %21
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %10

51:                                               ; preds = %10
  %52 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %53 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %52, i32 0, i32 1
  store %struct.et_rxstatus_data* %53, %struct.et_rxstatus_data** %4, align 8
  %54 = load %struct.et_rxstatus_data*, %struct.et_rxstatus_data** %4, align 8
  %55 = getelementptr inbounds %struct.et_rxstatus_data, %struct.et_rxstatus_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bzero(i32 %56, i32 4)
  %58 = load %struct.et_rxstatus_data*, %struct.et_rxstatus_data** %4, align 8
  %59 = getelementptr inbounds %struct.et_rxstatus_data, %struct.et_rxstatus_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.et_rxstatus_data*, %struct.et_rxstatus_data** %4, align 8
  %62 = getelementptr inbounds %struct.et_rxstatus_data, %struct.et_rxstatus_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %65 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @bus_dmamap_sync(i32 %60, i32 %63, i32 %66)
  %68 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %69 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %68, i32 0, i32 0
  store %struct.et_rxstat_ring* %69, %struct.et_rxstat_ring** %5, align 8
  %70 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %5, align 8
  %71 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ET_RXSTAT_RING_SIZE, align 4
  %74 = call i32 @bzero(i32 %72, i32 %73)
  %75 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %5, align 8
  %76 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %5, align 8
  %79 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %82 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @bus_dmamap_sync(i32 %77, i32 %80, i32 %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %51, %34
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @if_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
