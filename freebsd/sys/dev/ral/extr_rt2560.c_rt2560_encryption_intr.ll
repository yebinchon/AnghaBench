; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_encryption_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_encryption_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, %struct.rt2560_tx_desc* }
%struct.rt2560_tx_desc = type { i32, i32 }

@RT2560_SECCSR1 = common dso_local global i32 0, align 4
@RT2560_TX_DESC_SIZE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"hw encrypt %d, cur_encrypt %d\0A\00", align 1
@RT2560_TX_BUSY = common dso_local global i32 0, align 4
@RT2560_TX_CIPHER_BUSY = common dso_local global i32 0, align 4
@RT2560_TX_CIPHER_MASK = common dso_local global i32 0, align 4
@RT2560_TX_CIPHER_TKIP = common dso_local global i32 0, align 4
@RT2560_TX_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"encryption done idx=%u\0A\00", align 1
@RT2560_TX_RING_COUNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@RT2560_TXCSR0 = common dso_local global i32 0, align 4
@RT2560_KICK_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2560_softc*)* @rt2560_encryption_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_encryption_intr(%struct.rt2560_softc* %0) #0 {
  %2 = alloca %struct.rt2560_softc*, align 8
  %3 = alloca %struct.rt2560_tx_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %2, align 8
  %5 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %6 = load i32, i32* @RT2560_SECCSR1, align 4
  %7 = call i32 @RAL_READ(%struct.rt2560_softc* %5, i32 %6)
  %8 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %9 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %7, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @RT2560_TX_DESC_SIZE, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sdiv i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %17 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %21 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %25 = call i32 @bus_dmamap_sync(i32 %19, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %93, %1
  %27 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %28 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %123

33:                                               ; preds = %26
  %34 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %35 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %39 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %46 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %48)
  br label %123

50:                                               ; preds = %33
  %51 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %52 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %53, align 8
  %55 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %56 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.rt2560_tx_desc, %struct.rt2560_tx_desc* %54, i64 %59
  store %struct.rt2560_tx_desc* %60, %struct.rt2560_tx_desc** %3, align 8
  %61 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %3, align 8
  %62 = getelementptr inbounds %struct.rt2560_tx_desc, %struct.rt2560_tx_desc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32toh(i32 %63)
  %65 = load i32, i32* @RT2560_TX_BUSY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %50
  %69 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %3, align 8
  %70 = getelementptr inbounds %struct.rt2560_tx_desc, %struct.rt2560_tx_desc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32toh(i32 %71)
  %73 = load i32, i32* @RT2560_TX_CIPHER_BUSY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68, %50
  br label %123

77:                                               ; preds = %68
  %78 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %3, align 8
  %79 = getelementptr inbounds %struct.rt2560_tx_desc, %struct.rt2560_tx_desc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32toh(i32 %80)
  %82 = load i32, i32* @RT2560_TX_CIPHER_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @RT2560_TX_CIPHER_TKIP, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %77
  %87 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %3, align 8
  %88 = getelementptr inbounds %struct.rt2560_tx_desc, %struct.rt2560_tx_desc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @bswap32(i32 %89)
  %91 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %3, align 8
  %92 = getelementptr inbounds %struct.rt2560_tx_desc, %struct.rt2560_tx_desc* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %77
  %94 = load i32, i32* @RT2560_TX_VALID, align 4
  %95 = call i32 @htole32(i32 %94)
  %96 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %3, align 8
  %97 = getelementptr inbounds %struct.rt2560_tx_desc, %struct.rt2560_tx_desc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @RT2560_TX_BUSY, align 4
  %101 = call i32 @htole32(i32 %100)
  %102 = load %struct.rt2560_tx_desc*, %struct.rt2560_tx_desc** %3, align 8
  %103 = getelementptr inbounds %struct.rt2560_tx_desc, %struct.rt2560_tx_desc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %107 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %108 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = call i32 @DPRINTFN(%struct.rt2560_softc* %106, i32 15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %111)
  %113 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %114 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  %118 = load i32, i32* @RT2560_TX_RING_COUNT, align 4
  %119 = srem i32 %117, %118
  %120 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %121 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  br label %26

123:                                              ; preds = %76, %43, %26
  %124 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %125 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %129 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %133 = call i32 @bus_dmamap_sync(i32 %127, i32 %131, i32 %132)
  %134 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %135 = load i32, i32* @RT2560_TXCSR0, align 4
  %136 = load i32, i32* @RT2560_KICK_TX, align 4
  %137 = call i32 @RAL_WRITE(%struct.rt2560_softc* %134, i32 %135, i32 %136)
  ret void
}

declare dso_local i32 @RAL_READ(%struct.rt2560_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @bswap32(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @DPRINTFN(%struct.rt2560_softc*, i32, i8*, i64) #1

declare dso_local i32 @RAL_WRITE(%struct.rt2560_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
