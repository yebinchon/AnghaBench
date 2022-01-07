; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_reset_rxdma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gem/extr_if_gem.c_gem_reset_rxdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem_softc = type { i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@GEM_NRXDESC = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@GEM_RX_RING_PTR_HI = common dso_local global i32 0, align 4
@GEM_RX_RING_PTR_LO = common dso_local global i32 0, align 4
@GEM_RX_KICK = common dso_local global i32 0, align 4
@GEM_RX_CONFIG = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@GEM_RX_CONFIG_CXM_START_SHFT = common dso_local global i32 0, align 4
@GEM_THRSH_1024 = common dso_local global i32 0, align 4
@GEM_RX_CONFIG_FIFO_THRS_SHIFT = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@GEM_RX_CONFIG_FBOFF_SHFT = common dso_local global i32 0, align 4
@GEM_RX_BLANKING = common dso_local global i32 0, align 4
@GEM_PCI66 = common dso_local global i32 0, align 4
@GEM_RX_BLANKING_TIME_SHIFT = common dso_local global i32 0, align 4
@GEM_RX_PAUSE_THRESH = common dso_local global i32 0, align 4
@GEM_RX_CONFIG_RXDMA_EN = common dso_local global i32 0, align 4
@GEM_MAC_RX_MASK = common dso_local global i32 0, align 4
@GEM_MAC_RX_DONE = common dso_local global i32 0, align 4
@GEM_MAC_RX_FRAME_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem_softc*)* @gem_reset_rxdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_reset_rxdma(%struct.gem_softc* %0) #0 {
  %2 = alloca %struct.gem_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.gem_softc* %0, %struct.gem_softc** %2, align 8
  %4 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %5 = call i64 @gem_reset_rx(%struct.gem_softc* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %11 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %10, i32 0, i32 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %9
  store i32 %15, i32* %13, align 4
  %16 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  call void @gem_init_locked(%struct.gem_softc* %16)
  br label %130

17:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %37, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @GEM_NRXDESC, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %24 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @GEM_UPDATE_RXDESC(%struct.gem_softc* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %22
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %18

40:                                               ; preds = %18
  %41 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %42 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %44 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %45 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @GEM_CDSYNC(%struct.gem_softc* %43, i32 %46)
  %48 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %49 = load i32, i32* @GEM_RX_RING_PTR_HI, align 4
  %50 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %48, i32 %49, i32 0)
  %51 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %52 = load i32, i32* @GEM_RX_RING_PTR_LO, align 4
  %53 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %54 = call i32 @GEM_CDRXADDR(%struct.gem_softc* %53, i32 0)
  %55 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %51, i32 %52, i32 %54)
  %56 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %57 = load i32, i32* @GEM_RX_KICK, align 4
  %58 = load i32, i32* @GEM_NRXDESC, align 4
  %59 = sub nsw i32 %58, 4
  %60 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %56, i32 %57, i32 %59)
  %61 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %62 = load i32, i32* @GEM_RX_CONFIG, align 4
  %63 = load i32, i32* @GEM_NRXDESC, align 4
  %64 = call i32 @gem_ringsize(i32 %63)
  %65 = sext i32 %64 to i64
  %66 = load i32, i32* @ETHER_HDR_LEN, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, 4
  %69 = load i32, i32* @GEM_RX_CONFIG_CXM_START_SHFT, align 4
  %70 = zext i32 %69 to i64
  %71 = shl i64 %68, %70
  %72 = or i64 %65, %71
  %73 = load i32, i32* @GEM_THRSH_1024, align 4
  %74 = load i32, i32* @GEM_RX_CONFIG_FIFO_THRS_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = or i64 %72, %76
  %78 = load i32, i32* @ETHER_ALIGN, align 4
  %79 = load i32, i32* @GEM_RX_CONFIG_FBOFF_SHFT, align 4
  %80 = shl i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = or i64 %77, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %61, i32 %62, i32 %83)
  %85 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %86 = load i32, i32* @GEM_RX_BLANKING, align 4
  %87 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %88 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @GEM_PCI66, align 4
  %91 = and i32 %89, %90
  %92 = mul nsw i32 6, %91
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 2, i32 1
  %96 = load i32, i32* @GEM_RX_BLANKING_TIME_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = or i32 %97, 6
  %99 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %85, i32 %86, i32 %98)
  %100 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %101 = load i32, i32* @GEM_RX_PAUSE_THRESH, align 4
  %102 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %103 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 3, %104
  %106 = sdiv i32 %105, 256
  %107 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %108 = getelementptr inbounds %struct.gem_softc, %struct.gem_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 256
  %111 = shl i32 %110, 12
  %112 = or i32 %106, %111
  %113 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %100, i32 %101, i32 %112)
  %114 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %115 = load i32, i32* @GEM_RX_CONFIG, align 4
  %116 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %117 = load i32, i32* @GEM_RX_CONFIG, align 4
  %118 = call i32 @GEM_BANK1_READ_4(%struct.gem_softc* %116, i32 %117)
  %119 = load i32, i32* @GEM_RX_CONFIG_RXDMA_EN, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %114, i32 %115, i32 %120)
  %122 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %123 = load i32, i32* @GEM_MAC_RX_MASK, align 4
  %124 = load i32, i32* @GEM_MAC_RX_DONE, align 4
  %125 = load i32, i32* @GEM_MAC_RX_FRAME_CNT, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @GEM_BANK1_WRITE_4(%struct.gem_softc* %122, i32 %123, i32 %126)
  %128 = load %struct.gem_softc*, %struct.gem_softc** %2, align 8
  %129 = call i32 @gem_setladrf(%struct.gem_softc* %128)
  br label %130

130:                                              ; preds = %40, %7
  ret void
}

declare dso_local i64 @gem_reset_rx(%struct.gem_softc*) #1

declare dso_local void @gem_init_locked(%struct.gem_softc*) #1

declare dso_local i32 @GEM_UPDATE_RXDESC(%struct.gem_softc*, i32) #1

declare dso_local i32 @GEM_CDSYNC(%struct.gem_softc*, i32) #1

declare dso_local i32 @GEM_BANK1_WRITE_4(%struct.gem_softc*, i32, i32) #1

declare dso_local i32 @GEM_CDRXADDR(%struct.gem_softc*, i32) #1

declare dso_local i32 @gem_ringsize(i32) #1

declare dso_local i32 @GEM_BANK1_READ_4(%struct.gem_softc*, i32) #1

declare dso_local i32 @gem_setladrf(%struct.gem_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
