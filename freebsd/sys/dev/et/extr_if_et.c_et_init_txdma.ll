; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_init_txdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_init_txdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { %struct.et_txstatus_data, %struct.et_txdesc_ring, i32 }
%struct.et_txstatus_data = type { i32 }
%struct.et_txdesc_ring = type { i64, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"can't init TX DMA engine\0A\00", align 1
@ET_TX_RING_HI = common dso_local global i32 0, align 4
@ET_TX_RING_LO = common dso_local global i32 0, align 4
@ET_TX_RING_CNT = common dso_local global i32 0, align 4
@ET_TX_NDESC = common dso_local global i64 0, align 8
@ET_TX_STATUS_HI = common dso_local global i32 0, align 4
@ET_TX_STATUS_LO = common dso_local global i32 0, align 4
@ET_TX_READY_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et_softc*)* @et_init_txdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_init_txdma(%struct.et_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et_softc*, align 8
  %4 = alloca %struct.et_txdesc_ring*, align 8
  %5 = alloca %struct.et_txstatus_data*, align 8
  %6 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %3, align 8
  %7 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %8 = call i32 @et_stop_txdma(%struct.et_softc* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %13 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @if_printf(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %62

17:                                               ; preds = %1
  %18 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %19 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %18, i32 0, i32 1
  store %struct.et_txdesc_ring* %19, %struct.et_txdesc_ring** %4, align 8
  %20 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %21 = load i32, i32* @ET_TX_RING_HI, align 4
  %22 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %4, align 8
  %23 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @ET_ADDR_HI(i32 %24)
  %26 = call i32 @CSR_WRITE_4(%struct.et_softc* %20, i32 %21, i64 %25)
  %27 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %28 = load i32, i32* @ET_TX_RING_LO, align 4
  %29 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %4, align 8
  %30 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @ET_ADDR_LO(i32 %31)
  %33 = call i32 @CSR_WRITE_4(%struct.et_softc* %27, i32 %28, i64 %32)
  %34 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %35 = load i32, i32* @ET_TX_RING_CNT, align 4
  %36 = load i64, i64* @ET_TX_NDESC, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i32 @CSR_WRITE_4(%struct.et_softc* %34, i32 %35, i64 %37)
  %39 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %40 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %39, i32 0, i32 0
  store %struct.et_txstatus_data* %40, %struct.et_txstatus_data** %5, align 8
  %41 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %42 = load i32, i32* @ET_TX_STATUS_HI, align 4
  %43 = load %struct.et_txstatus_data*, %struct.et_txstatus_data** %5, align 8
  %44 = getelementptr inbounds %struct.et_txstatus_data, %struct.et_txstatus_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ET_ADDR_HI(i32 %45)
  %47 = call i32 @CSR_WRITE_4(%struct.et_softc* %41, i32 %42, i64 %46)
  %48 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %49 = load i32, i32* @ET_TX_STATUS_LO, align 4
  %50 = load %struct.et_txstatus_data*, %struct.et_txstatus_data** %5, align 8
  %51 = getelementptr inbounds %struct.et_txstatus_data, %struct.et_txstatus_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ET_ADDR_LO(i32 %52)
  %54 = call i32 @CSR_WRITE_4(%struct.et_softc* %48, i32 %49, i64 %53)
  %55 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %56 = load i32, i32* @ET_TX_READY_POS, align 4
  %57 = call i32 @CSR_WRITE_4(%struct.et_softc* %55, i32 %56, i64 0)
  %58 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %4, align 8
  %59 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.et_txdesc_ring*, %struct.et_txdesc_ring** %4, align 8
  %61 = getelementptr inbounds %struct.et_txdesc_ring, %struct.et_txdesc_ring* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %17, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @et_stop_txdma(%struct.et_softc*) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i64) #1

declare dso_local i64 @ET_ADDR_HI(i32) #1

declare dso_local i64 @ET_ADDR_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
