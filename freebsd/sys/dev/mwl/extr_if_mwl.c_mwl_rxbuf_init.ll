; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_rxbuf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_rxbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mwl_rxbuf = type { i32*, %struct.mwl_rxdesc* }
%struct.mwl_rxdesc = type { i32, i32, i64, i32, i64, i32, i64, i64 }

@EAGLE_RXD_CTRL_OS_OWN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGLE_RXD_STATUS_IDLE = common dso_local global i32 0, align 4
@MWL_AGGR_SIZE = common dso_local global i32 0, align 4
@EAGLE_RXD_CTRL_DRIVER_OWN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl_softc*, %struct.mwl_rxbuf*)* @mwl_rxbuf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_rxbuf_init(%struct.mwl_softc* %0, %struct.mwl_rxbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwl_softc*, align 8
  %5 = alloca %struct.mwl_rxbuf*, align 8
  %6 = alloca %struct.mwl_rxdesc*, align 8
  store %struct.mwl_softc* %0, %struct.mwl_softc** %4, align 8
  store %struct.mwl_rxbuf* %1, %struct.mwl_rxbuf** %5, align 8
  %7 = load %struct.mwl_rxbuf*, %struct.mwl_rxbuf** %5, align 8
  %8 = getelementptr inbounds %struct.mwl_rxbuf, %struct.mwl_rxbuf* %7, i32 0, i32 1
  %9 = load %struct.mwl_rxdesc*, %struct.mwl_rxdesc** %8, align 8
  store %struct.mwl_rxdesc* %9, %struct.mwl_rxdesc** %6, align 8
  %10 = load %struct.mwl_rxbuf*, %struct.mwl_rxbuf** %5, align 8
  %11 = getelementptr inbounds %struct.mwl_rxbuf, %struct.mwl_rxbuf* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %2
  %15 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %16 = call i32* @mwl_getrxdma(%struct.mwl_softc* %15)
  %17 = load %struct.mwl_rxbuf*, %struct.mwl_rxbuf** %5, align 8
  %18 = getelementptr inbounds %struct.mwl_rxbuf, %struct.mwl_rxbuf* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.mwl_rxbuf*, %struct.mwl_rxbuf** %5, align 8
  %20 = getelementptr inbounds %struct.mwl_rxbuf, %struct.mwl_rxbuf* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %14
  %24 = load i32, i32* @EAGLE_RXD_CTRL_OS_OWN, align 4
  %25 = load %struct.mwl_rxdesc*, %struct.mwl_rxdesc** %6, align 8
  %26 = getelementptr inbounds %struct.mwl_rxdesc, %struct.mwl_rxdesc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %28 = load %struct.mwl_rxdesc*, %struct.mwl_rxdesc** %6, align 8
  %29 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %30 = call i32 @MWL_RXDESC_SYNC(%struct.mwl_softc* %27, %struct.mwl_rxdesc* %28, i32 %29)
  %31 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %3, align 4
  br label %71

37:                                               ; preds = %14
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.mwl_rxdesc*, %struct.mwl_rxdesc** %6, align 8
  %40 = getelementptr inbounds %struct.mwl_rxdesc, %struct.mwl_rxdesc* %39, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = load %struct.mwl_rxdesc*, %struct.mwl_rxdesc** %6, align 8
  %42 = getelementptr inbounds %struct.mwl_rxdesc, %struct.mwl_rxdesc* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @EAGLE_RXD_STATUS_IDLE, align 4
  %44 = load %struct.mwl_rxdesc*, %struct.mwl_rxdesc** %6, align 8
  %45 = getelementptr inbounds %struct.mwl_rxdesc, %struct.mwl_rxdesc* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mwl_rxdesc*, %struct.mwl_rxdesc** %6, align 8
  %47 = getelementptr inbounds %struct.mwl_rxdesc, %struct.mwl_rxdesc* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @MWL_AGGR_SIZE, align 4
  %49 = call i32 @htole16(i32 %48)
  %50 = load %struct.mwl_rxdesc*, %struct.mwl_rxdesc** %6, align 8
  %51 = getelementptr inbounds %struct.mwl_rxdesc, %struct.mwl_rxdesc* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mwl_rxdesc*, %struct.mwl_rxdesc** %6, align 8
  %53 = getelementptr inbounds %struct.mwl_rxdesc, %struct.mwl_rxdesc* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %55 = load %struct.mwl_rxbuf*, %struct.mwl_rxbuf** %5, align 8
  %56 = getelementptr inbounds %struct.mwl_rxbuf, %struct.mwl_rxbuf* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @MWL_JUMBO_DMA_ADDR(%struct.mwl_softc* %54, i32* %57)
  %59 = call i32 @htole32(i32 %58)
  %60 = load %struct.mwl_rxdesc*, %struct.mwl_rxdesc** %6, align 8
  %61 = getelementptr inbounds %struct.mwl_rxdesc, %struct.mwl_rxdesc* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @EAGLE_RXD_CTRL_DRIVER_OWN, align 4
  %63 = load %struct.mwl_rxdesc*, %struct.mwl_rxdesc** %6, align 8
  %64 = getelementptr inbounds %struct.mwl_rxdesc, %struct.mwl_rxdesc* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.mwl_softc*, %struct.mwl_softc** %4, align 8
  %66 = load %struct.mwl_rxdesc*, %struct.mwl_rxdesc** %6, align 8
  %67 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %68 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @MWL_RXDESC_SYNC(%struct.mwl_softc* %65, %struct.mwl_rxdesc* %66, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %38, %23
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32* @mwl_getrxdma(%struct.mwl_softc*) #1

declare dso_local i32 @MWL_RXDESC_SYNC(%struct.mwl_softc*, %struct.mwl_rxdesc*, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @MWL_JUMBO_DMA_ADDR(%struct.mwl_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
