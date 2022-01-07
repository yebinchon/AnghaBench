; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_init_rx_ring_jumbo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_init_rx_ring_jumbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { %struct.TYPE_6__, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.bge_rcb }
%struct.bge_rcb = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@BGE_JUMBO_RX_RING_SZ = common dso_local global i32 0, align 4
@BGE_JUMBO_RX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BGE_RCB_FLAG_USE_EXT_RX_BD = common dso_local global i32 0, align 4
@BGE_RX_JUMBO_RCB_MAXLEN_FLAGS = common dso_local global i32 0, align 4
@BGE_MBX_RX_JUMBO_PROD_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*)* @bge_init_rx_ring_jumbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_init_rx_ring_jumbo(%struct.bge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca %struct.bge_rcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %3, align 8
  %7 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BGE_JUMBO_RX_RING_SZ, align 4
  %12 = call i32 @bzero(i32 %10, i32 %11)
  %13 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %32, %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @BGE_JUMBO_RX_RING_CNT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @bge_newbuf_jumbo(%struct.bge_softc* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %67

26:                                               ; preds = %19
  %27 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %28 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @BGE_JUMBO_RX_RING_CNT, align 4
  %31 = call i32 @BGE_INC(i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %37 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %41 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %45 = call i32 @bus_dmamap_sync(i32 %39, i32 %43, i32 %44)
  %46 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %47 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %49 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store %struct.bge_rcb* %51, %struct.bge_rcb** %4, align 8
  %52 = load i32, i32* @BGE_RCB_FLAG_USE_EXT_RX_BD, align 4
  %53 = call i32 @BGE_RCB_MAXLEN_FLAGS(i32 0, i32 %52)
  %54 = load %struct.bge_rcb*, %struct.bge_rcb** %4, align 8
  %55 = getelementptr inbounds %struct.bge_rcb, %struct.bge_rcb* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %57 = load i32, i32* @BGE_RX_JUMBO_RCB_MAXLEN_FLAGS, align 4
  %58 = load %struct.bge_rcb*, %struct.bge_rcb** %4, align 8
  %59 = getelementptr inbounds %struct.bge_rcb, %struct.bge_rcb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @CSR_WRITE_4(%struct.bge_softc* %56, i32 %57, i32 %60)
  %62 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %63 = load i32, i32* @BGE_MBX_RX_JUMBO_PROD_LO, align 4
  %64 = load i32, i32* @BGE_JUMBO_RX_RING_CNT, align 4
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @bge_writembx(%struct.bge_softc* %62, i32 %63, i32 %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %35, %24
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bge_newbuf_jumbo(%struct.bge_softc*, i32) #1

declare dso_local i32 @BGE_INC(i64, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @BGE_RCB_MAXLEN_FLAGS(i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @bge_writembx(%struct.bge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
