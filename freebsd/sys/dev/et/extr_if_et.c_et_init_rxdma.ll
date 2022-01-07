; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_init_rxdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_init_rxdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i32, i32, %struct.et_rxdesc_ring*, %struct.et_rxstat_ring, %struct.et_rxstatus_data, i32 }
%struct.et_rxdesc_ring = type { i32, i64, i32 }
%struct.et_rxstat_ring = type { i64, i64, i32 }
%struct.et_rxstatus_data = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"can't init RX DMA engine\0A\00", align 1
@ET_RX_STATUS_HI = common dso_local global i32 0, align 4
@ET_RX_STATUS_LO = common dso_local global i32 0, align 4
@ET_RXSTAT_HI = common dso_local global i32 0, align 4
@ET_RXSTAT_LO = common dso_local global i32 0, align 4
@ET_RXSTAT_CNT = common dso_local global i32 0, align 4
@ET_RX_NSTAT = common dso_local global i32 0, align 4
@ET_RXSTAT_POS = common dso_local global i32 0, align 4
@ET_RXSTAT_MINCNT = common dso_local global i32 0, align 4
@ET_RX_RING1_HI = common dso_local global i32 0, align 4
@ET_RX_RING1_LO = common dso_local global i32 0, align 4
@ET_RX_RING1_CNT = common dso_local global i32 0, align 4
@ET_RX_NDESC = common dso_local global i32 0, align 4
@ET_RX_RING1_POS = common dso_local global i32 0, align 4
@ET_RX_RING1_POS_WRAP = common dso_local global i32 0, align 4
@ET_RX_RING1_MINCNT = common dso_local global i32 0, align 4
@ET_RX_RING0_HI = common dso_local global i32 0, align 4
@ET_RX_RING0_LO = common dso_local global i32 0, align 4
@ET_RX_RING0_CNT = common dso_local global i32 0, align 4
@ET_RX_RING0_POS = common dso_local global i32 0, align 4
@ET_RX_RING0_POS_WRAP = common dso_local global i32 0, align 4
@ET_RX_RING0_MINCNT = common dso_local global i32 0, align 4
@ET_RX_INTR_NPKTS = common dso_local global i32 0, align 4
@ET_RX_INTR_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et_softc*)* @et_init_rxdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_init_rxdma(%struct.et_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et_softc*, align 8
  %4 = alloca %struct.et_rxstatus_data*, align 8
  %5 = alloca %struct.et_rxstat_ring*, align 8
  %6 = alloca %struct.et_rxdesc_ring*, align 8
  %7 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %3, align 8
  %8 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %9 = call i32 @et_stop_rxdma(%struct.et_softc* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %14 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @if_printf(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %158

18:                                               ; preds = %1
  %19 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %20 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %19, i32 0, i32 4
  store %struct.et_rxstatus_data* %20, %struct.et_rxstatus_data** %4, align 8
  %21 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %22 = load i32, i32* @ET_RX_STATUS_HI, align 4
  %23 = load %struct.et_rxstatus_data*, %struct.et_rxstatus_data** %4, align 8
  %24 = getelementptr inbounds %struct.et_rxstatus_data, %struct.et_rxstatus_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ET_ADDR_HI(i32 %25)
  %27 = call i32 @CSR_WRITE_4(%struct.et_softc* %21, i32 %22, i32 %26)
  %28 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %29 = load i32, i32* @ET_RX_STATUS_LO, align 4
  %30 = load %struct.et_rxstatus_data*, %struct.et_rxstatus_data** %4, align 8
  %31 = getelementptr inbounds %struct.et_rxstatus_data, %struct.et_rxstatus_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ET_ADDR_LO(i32 %32)
  %34 = call i32 @CSR_WRITE_4(%struct.et_softc* %28, i32 %29, i32 %33)
  %35 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %36 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %35, i32 0, i32 3
  store %struct.et_rxstat_ring* %36, %struct.et_rxstat_ring** %5, align 8
  %37 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %38 = load i32, i32* @ET_RXSTAT_HI, align 4
  %39 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %5, align 8
  %40 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ET_ADDR_HI(i32 %41)
  %43 = call i32 @CSR_WRITE_4(%struct.et_softc* %37, i32 %38, i32 %42)
  %44 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %45 = load i32, i32* @ET_RXSTAT_LO, align 4
  %46 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %5, align 8
  %47 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ET_ADDR_LO(i32 %48)
  %50 = call i32 @CSR_WRITE_4(%struct.et_softc* %44, i32 %45, i32 %49)
  %51 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %52 = load i32, i32* @ET_RXSTAT_CNT, align 4
  %53 = load i32, i32* @ET_RX_NSTAT, align 4
  %54 = sub nsw i32 %53, 1
  %55 = call i32 @CSR_WRITE_4(%struct.et_softc* %51, i32 %52, i32 %54)
  %56 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %57 = load i32, i32* @ET_RXSTAT_POS, align 4
  %58 = call i32 @CSR_WRITE_4(%struct.et_softc* %56, i32 %57, i32 0)
  %59 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %60 = load i32, i32* @ET_RXSTAT_MINCNT, align 4
  %61 = load i32, i32* @ET_RX_NSTAT, align 4
  %62 = mul nsw i32 %61, 15
  %63 = sdiv i32 %62, 100
  %64 = sub nsw i32 %63, 1
  %65 = call i32 @CSR_WRITE_4(%struct.et_softc* %59, i32 %60, i32 %64)
  %66 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %5, align 8
  %67 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.et_rxstat_ring*, %struct.et_rxstat_ring** %5, align 8
  %69 = getelementptr inbounds %struct.et_rxstat_ring, %struct.et_rxstat_ring* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %71 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %70, i32 0, i32 2
  %72 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %71, align 8
  %73 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %72, i64 1
  store %struct.et_rxdesc_ring* %73, %struct.et_rxdesc_ring** %6, align 8
  %74 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %75 = load i32, i32* @ET_RX_RING1_HI, align 4
  %76 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %77 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ET_ADDR_HI(i32 %78)
  %80 = call i32 @CSR_WRITE_4(%struct.et_softc* %74, i32 %75, i32 %79)
  %81 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %82 = load i32, i32* @ET_RX_RING1_LO, align 4
  %83 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %84 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ET_ADDR_LO(i32 %85)
  %87 = call i32 @CSR_WRITE_4(%struct.et_softc* %81, i32 %82, i32 %86)
  %88 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %89 = load i32, i32* @ET_RX_RING1_CNT, align 4
  %90 = load i32, i32* @ET_RX_NDESC, align 4
  %91 = sub nsw i32 %90, 1
  %92 = call i32 @CSR_WRITE_4(%struct.et_softc* %88, i32 %89, i32 %91)
  %93 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %94 = load i32, i32* @ET_RX_RING1_POS, align 4
  %95 = load i32, i32* @ET_RX_RING1_POS_WRAP, align 4
  %96 = call i32 @CSR_WRITE_4(%struct.et_softc* %93, i32 %94, i32 %95)
  %97 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %98 = load i32, i32* @ET_RX_RING1_MINCNT, align 4
  %99 = load i32, i32* @ET_RX_NDESC, align 4
  %100 = mul nsw i32 %99, 15
  %101 = sdiv i32 %100, 100
  %102 = sub nsw i32 %101, 1
  %103 = call i32 @CSR_WRITE_4(%struct.et_softc* %97, i32 %98, i32 %102)
  %104 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %105 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %107 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %109 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %108, i32 0, i32 2
  %110 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %109, align 8
  %111 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %110, i64 0
  store %struct.et_rxdesc_ring* %111, %struct.et_rxdesc_ring** %6, align 8
  %112 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %113 = load i32, i32* @ET_RX_RING0_HI, align 4
  %114 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %115 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ET_ADDR_HI(i32 %116)
  %118 = call i32 @CSR_WRITE_4(%struct.et_softc* %112, i32 %113, i32 %117)
  %119 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %120 = load i32, i32* @ET_RX_RING0_LO, align 4
  %121 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %122 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ET_ADDR_LO(i32 %123)
  %125 = call i32 @CSR_WRITE_4(%struct.et_softc* %119, i32 %120, i32 %124)
  %126 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %127 = load i32, i32* @ET_RX_RING0_CNT, align 4
  %128 = load i32, i32* @ET_RX_NDESC, align 4
  %129 = sub nsw i32 %128, 1
  %130 = call i32 @CSR_WRITE_4(%struct.et_softc* %126, i32 %127, i32 %129)
  %131 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %132 = load i32, i32* @ET_RX_RING0_POS, align 4
  %133 = load i32, i32* @ET_RX_RING0_POS_WRAP, align 4
  %134 = call i32 @CSR_WRITE_4(%struct.et_softc* %131, i32 %132, i32 %133)
  %135 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %136 = load i32, i32* @ET_RX_RING0_MINCNT, align 4
  %137 = load i32, i32* @ET_RX_NDESC, align 4
  %138 = mul nsw i32 %137, 15
  %139 = sdiv i32 %138, 100
  %140 = sub nsw i32 %139, 1
  %141 = call i32 @CSR_WRITE_4(%struct.et_softc* %135, i32 %136, i32 %140)
  %142 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %143 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = load %struct.et_rxdesc_ring*, %struct.et_rxdesc_ring** %6, align 8
  %145 = getelementptr inbounds %struct.et_rxdesc_ring, %struct.et_rxdesc_ring* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %147 = load i32, i32* @ET_RX_INTR_NPKTS, align 4
  %148 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %149 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @CSR_WRITE_4(%struct.et_softc* %146, i32 %147, i32 %150)
  %152 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %153 = load i32, i32* @ET_RX_INTR_DELAY, align 4
  %154 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %155 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @CSR_WRITE_4(%struct.et_softc* %152, i32 %153, i32 %156)
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %18, %12
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @et_stop_rxdma(%struct.et_softc*) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #1

declare dso_local i32 @ET_ADDR_HI(i32) #1

declare dso_local i32 @ET_ADDR_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
