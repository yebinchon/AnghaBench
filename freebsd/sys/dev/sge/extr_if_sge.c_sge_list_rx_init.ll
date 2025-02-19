; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_list_rx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_list_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { %struct.TYPE_2__, %struct.sge_chain_data }
%struct.TYPE_2__ = type { i32 }
%struct.sge_chain_data = type { i32, i32, i64 }

@SGE_RX_RING_SZ = common dso_local global i32 0, align 4
@SGE_RX_RING_CNT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_softc*)* @sge_list_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sge_list_rx_init(%struct.sge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sge_softc*, align 8
  %4 = alloca %struct.sge_chain_data*, align 8
  %5 = alloca i32, align 4
  store %struct.sge_softc* %0, %struct.sge_softc** %3, align 8
  %6 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %7 = call i32 @SGE_LOCK_ASSERT(%struct.sge_softc* %6)
  %8 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %9 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %8, i32 0, i32 1
  store %struct.sge_chain_data* %9, %struct.sge_chain_data** %4, align 8
  %10 = load %struct.sge_chain_data*, %struct.sge_chain_data** %4, align 8
  %11 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %13 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SGE_RX_RING_SZ, align 4
  %17 = call i32 @bzero(i32 %15, i32 %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %30, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SGE_RX_RING_CNT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @sge_newbuf(%struct.sge_softc* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOBUFS, align 4
  store i32 %28, i32* %2, align 4
  br label %44

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %18

33:                                               ; preds = %18
  %34 = load %struct.sge_chain_data*, %struct.sge_chain_data** %4, align 8
  %35 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sge_chain_data*, %struct.sge_chain_data** %4, align 8
  %38 = getelementptr inbounds %struct.sge_chain_data, %struct.sge_chain_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %41 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @bus_dmamap_sync(i32 %36, i32 %39, i32 %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %33, %27
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @SGE_LOCK_ASSERT(%struct.sge_softc*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i64 @sge_newbuf(%struct.sge_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
