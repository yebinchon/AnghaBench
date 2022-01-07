; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_init_tx_ring32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_init_tx_ring32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, %struct.bwi_txbuf_data*, %struct.bwi_ring_data* }
%struct.bwi_txbuf_data = type { i64, i64 }
%struct.bwi_ring_data = type { i64, i32, i32, i32 }

@BWI_TX_NRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ring_idx %d\00", align 1
@BWI_TX_NDESC = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BWI_TXRX32_RINGINFO_ADDR_MASK = common dso_local global i32 0, align 4
@BWI_TXRX32_RINGINFO_FUNC_MASK = common dso_local global i32 0, align 4
@BWI_TXRX32_RINGINFO_FUNC_TXRX = common dso_local global i32 0, align 4
@BWI_TX32_RINGINFO = common dso_local global i64 0, align 8
@BWI_TXRX32_CTRL_ADDRHI_MASK = common dso_local global i32 0, align 4
@BWI_TXRX32_CTRL_ENABLE = common dso_local global i32 0, align 4
@BWI_TX32_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_softc*, i32)* @bwi_init_tx_ring32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_init_tx_ring32(%struct.bwi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_ring_data*, align 8
  %6 = alloca %struct.bwi_txbuf_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @BWI_TX_NRING, align 4
  %12 = icmp slt i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @KASSERT(i32 %13, i8* %16)
  %18 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %18, i32 0, i32 2
  %20 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %20, i64 %22
  store %struct.bwi_ring_data* %23, %struct.bwi_ring_data** %5, align 8
  %24 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %25 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %24, i32 0, i32 1
  %26 = load %struct.bwi_txbuf_data*, %struct.bwi_txbuf_data** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.bwi_txbuf_data, %struct.bwi_txbuf_data* %26, i64 %28
  store %struct.bwi_txbuf_data* %29, %struct.bwi_txbuf_data** %6, align 8
  %30 = load %struct.bwi_txbuf_data*, %struct.bwi_txbuf_data** %6, align 8
  %31 = getelementptr inbounds %struct.bwi_txbuf_data, %struct.bwi_txbuf_data* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.bwi_txbuf_data*, %struct.bwi_txbuf_data** %6, align 8
  %33 = getelementptr inbounds %struct.bwi_txbuf_data, %struct.bwi_txbuf_data* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %5, align 8
  %35 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BWI_TX_NDESC, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @bzero(i32 %36, i32 %40)
  %42 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %43 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %5, align 8
  %46 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %49 = call i32 @bus_dmamap_sync(i32 %44, i32 %47, i32 %48)
  %50 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %5, align 8
  %51 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BWI_TXRX32_RINGINFO_ADDR_MASK, align 4
  %54 = call i32 @__SHIFTOUT(i32 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %5, align 8
  %56 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BWI_TXRX32_RINGINFO_FUNC_MASK, align 4
  %59 = call i32 @__SHIFTOUT(i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @BWI_TXRX32_RINGINFO_ADDR_MASK, align 4
  %62 = call i32 @__SHIFTIN(i32 %60, i32 %61)
  %63 = load i32, i32* @BWI_TXRX32_RINGINFO_FUNC_TXRX, align 4
  %64 = load i32, i32* @BWI_TXRX32_RINGINFO_FUNC_MASK, align 4
  %65 = call i32 @__SHIFTIN(i32 %63, i32 %64)
  %66 = or i32 %62, %65
  store i32 %66, i32* %7, align 4
  %67 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %68 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %5, align 8
  %69 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @BWI_TX32_RINGINFO, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %67, i64 %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @BWI_TXRX32_CTRL_ADDRHI_MASK, align 4
  %77 = call i32 @__SHIFTIN(i32 %75, i32 %76)
  %78 = load i32, i32* @BWI_TXRX32_CTRL_ENABLE, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %7, align 4
  %80 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %81 = load %struct.bwi_ring_data*, %struct.bwi_ring_data** %5, align 8
  %82 = getelementptr inbounds %struct.bwi_ring_data, %struct.bwi_ring_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BWI_TX32_CTRL, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %80, i64 %85, i32 %86)
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @__SHIFTIN(i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
