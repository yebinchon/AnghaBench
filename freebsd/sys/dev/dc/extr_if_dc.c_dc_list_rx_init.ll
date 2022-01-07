; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_list_rx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_list_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, i32, %struct.dc_list_data, %struct.dc_chain_data }
%struct.dc_list_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dc_chain_data = type { i64 }

@DC_RX_LIST_CNT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_softc*)* @dc_list_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_list_rx_init(%struct.dc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca %struct.dc_chain_data*, align 8
  %5 = alloca %struct.dc_list_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %3, align 8
  %8 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %8, i32 0, i32 3
  store %struct.dc_chain_data* %9, %struct.dc_chain_data** %4, align 8
  %10 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %11 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %10, i32 0, i32 2
  store %struct.dc_list_data* %11, %struct.dc_list_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %44, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DC_RX_LIST_CNT, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @dc_newbuf(%struct.dc_softc* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOBUFS, align 4
  store i32 %22, i32* %2, align 4
  br label %60

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DC_RX_LIST_CNT, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %28
  %33 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @DC_RXDESC(%struct.dc_softc* %33, i32 %34)
  %36 = call i32 @htole32(i32 %35)
  %37 = load %struct.dc_list_data*, %struct.dc_list_data** %5, align 8
  %38 = getelementptr inbounds %struct.dc_list_data, %struct.dc_list_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %36, i32* %43, align 4
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %12

47:                                               ; preds = %12
  %48 = load %struct.dc_chain_data*, %struct.dc_chain_data** %4, align 8
  %49 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %51 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %54 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %57 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @bus_dmamap_sync(i32 %52, i32 %55, i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %47, %21
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @dc_newbuf(%struct.dc_softc*, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @DC_RXDESC(%struct.dc_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
