; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_tx.c_rtwn_pci_tx_start_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_tx.c_rtwn_pci_tx_start_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtwn_pci_softc = type { %struct.rtwn_tx_ring* }
%struct.rtwn_tx_ring = type { i32, i32, i32, i64, %struct.rtwn_tx_data* }
%struct.rtwn_tx_data = type { i32 }
%struct.rtwn_tx_desc_common = type { i32, i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"bogus vap id %d\0A\00", align 1
@RTWN_PCI_BEACON_QUEUE = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@RTWN_FLAGS0_OWN = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"can't map beacon (error %d)\0A\00", align 1
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*, %struct.mbuf*, i32*, i32)* @rtwn_pci_tx_start_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_pci_tx_start_beacon(%struct.rtwn_softc* %0, %struct.mbuf* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtwn_pci_softc*, align 8
  %10 = alloca %struct.rtwn_tx_ring*, align 8
  %11 = alloca %struct.rtwn_tx_data*, align 8
  %12 = alloca %struct.rtwn_tx_desc_common*, align 8
  %13 = alloca [1 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %18 = call %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc* %17)
  store %struct.rtwn_pci_softc* %18, %struct.rtwn_pci_softc** %9, align 8
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %20 = call i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc* %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 1
  br label %26

26:                                               ; preds = %23, %4
  %27 = phi i1 [ true, %4 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @KASSERT(i32 %28, i8* %31)
  %33 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %9, align 8
  %34 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %33, i32 0, i32 0
  %35 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %34, align 8
  %36 = load i64, i64* @RTWN_PCI_BEACON_QUEUE, align 8
  %37 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %35, i64 %36
  store %struct.rtwn_tx_ring* %37, %struct.rtwn_tx_ring** %10, align 8
  %38 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %10, align 8
  %39 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %38, i32 0, i32 4
  %40 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %40, i64 %42
  store %struct.rtwn_tx_data* %43, %struct.rtwn_tx_data** %11, align 8
  %44 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %10, align 8
  %45 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %50 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %47, i64 %53
  %55 = bitcast i32* %54 to %struct.rtwn_tx_desc_common*
  store %struct.rtwn_tx_desc_common* %55, %struct.rtwn_tx_desc_common** %12, align 8
  %56 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %10, align 8
  %57 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %10, align 8
  %60 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %63 = call i32 @bus_dmamap_sync(i32 %58, i32 %61, i32 %62)
  %64 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %12, align 8
  %65 = getelementptr inbounds %struct.rtwn_tx_desc_common, %struct.rtwn_tx_desc_common* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @RTWN_FLAGS0_OWN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %26
  %76 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %12, align 8
  %77 = getelementptr inbounds %struct.rtwn_tx_desc_common, %struct.rtwn_tx_desc_common* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @htole16(i32 %82)
  %84 = icmp ne i64 %78, %83
  br i1 %84, label %85, label %157

85:                                               ; preds = %75, %26
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %85
  %89 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %9, align 8
  %90 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %12, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @rtwn_pci_copy_tx_desc(%struct.rtwn_pci_softc* %89, %struct.rtwn_tx_desc_common* %90, i32* %91)
  %93 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %94 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %12, align 8
  %97 = getelementptr inbounds %struct.rtwn_tx_desc_common, %struct.rtwn_tx_desc_common* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %106

98:                                               ; preds = %85
  %99 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %10, align 8
  %100 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %11, align 8
  %103 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @bus_dmamap_unload(i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %98, %88
  %107 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %10, align 8
  %108 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %11, align 8
  %111 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %114 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %115 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %116 = call i32 @bus_dmamap_load_mbuf_sg(i32 %109, i32 %112, %struct.mbuf* %113, i32* %114, i32* %14, i32 %115)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %106
  %120 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %121 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @device_printf(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @RTWN_FLAGS0_OWN, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %12, align 8
  %128 = getelementptr inbounds %struct.rtwn_tx_desc_common, %struct.rtwn_tx_desc_common* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %148

131:                                              ; preds = %106
  %132 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %133 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @htole16(i32 %135)
  %137 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %12, align 8
  %138 = getelementptr inbounds %struct.rtwn_tx_desc_common, %struct.rtwn_tx_desc_common* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %9, align 8
  %140 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %12, align 8
  %141 = getelementptr inbounds [1 x i32], [1 x i32]* %13, i64 0, i64 0
  %142 = call i32 @rtwn_pci_tx_postsetup(%struct.rtwn_pci_softc* %139, %struct.rtwn_tx_desc_common* %140, i32* %141)
  %143 = load i32, i32* @RTWN_FLAGS0_OWN, align 4
  %144 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %12, align 8
  %145 = getelementptr inbounds %struct.rtwn_tx_desc_common, %struct.rtwn_tx_desc_common* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %131, %119
  %149 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %10, align 8
  %150 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %10, align 8
  %153 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %156 = call i32 @bus_dmamap_sync(i32 %151, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %148, %75
  %158 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %159 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %12, align 8
  %160 = call i32 @rtwn_dump_tx_desc(%struct.rtwn_softc* %158, %struct.rtwn_tx_desc_common* %159)
  %161 = load %struct.rtwn_tx_ring*, %struct.rtwn_tx_ring** %10, align 8
  %162 = getelementptr inbounds %struct.rtwn_tx_ring, %struct.rtwn_tx_ring* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.rtwn_tx_data*, %struct.rtwn_tx_data** %11, align 8
  %165 = getelementptr inbounds %struct.rtwn_tx_data, %struct.rtwn_tx_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %168 = call i32 @bus_dmamap_sync(i32 %163, i32 %166, i32 %167)
  ret i32 0
}

declare dso_local %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc*) #1

declare dso_local i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @htole16(i32) #1

declare dso_local i32 @rtwn_pci_copy_tx_desc(%struct.rtwn_pci_softc*, %struct.rtwn_tx_desc_common*, i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamap_load_mbuf_sg(i32, i32, %struct.mbuf*, i32*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @rtwn_pci_tx_postsetup(%struct.rtwn_pci_softc*, %struct.rtwn_tx_desc_common*, i32*) #1

declare dso_local i32 @rtwn_dump_tx_desc(%struct.rtwn_softc*, %struct.rtwn_tx_desc_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
