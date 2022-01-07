; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_init_rx_ring_std.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_init_rx_ring_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@BGE_STD_RX_RING_SZ = common dso_local global i32 0, align 4
@BGE_STD_RX_RING_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BGE_MBX_RX_STD_PROD_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*)* @bge_init_rx_ring_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_init_rx_ring_std(%struct.bge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %3, align 8
  %6 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @BGE_STD_RX_RING_SZ, align 4
  %11 = call i32 @bzero(i32 %9, i32 %10)
  %12 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @BGE_STD_RX_RING_CNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @bge_newbuf_std(%struct.bge_softc* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %52

25:                                               ; preds = %18
  %26 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %27 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @BGE_STD_RX_RING_CNT, align 4
  %30 = call i32 @BGE_INC(i64 %28, i32 %29)
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %36 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %40 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %44 = call i32 @bus_dmamap_sync(i32 %38, i32 %42, i32 %43)
  %45 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %46 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %48 = load i32, i32* @BGE_MBX_RX_STD_PROD_LO, align 4
  %49 = load i32, i32* @BGE_STD_RX_RING_CNT, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @bge_writembx(%struct.bge_softc* %47, i32 %48, i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %34, %23
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bge_newbuf_std(%struct.bge_softc*, i32) #1

declare dso_local i32 @BGE_INC(i64, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bge_writembx(%struct.bge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
