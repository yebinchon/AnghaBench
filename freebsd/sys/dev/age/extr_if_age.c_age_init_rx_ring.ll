; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_init_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_init_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { %struct.TYPE_2__, %struct.age_ring_data, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.age_rxdesc* }
%struct.age_rxdesc = type { i32*, i32* }
%struct.age_ring_data = type { i32* }

@AGE_RX_RING_CNT = common dso_local global i32 0, align 4
@AGE_RX_RING_SZ = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.age_softc*)* @age_init_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @age_init_rx_ring(%struct.age_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.age_softc*, align 8
  %4 = alloca %struct.age_ring_data*, align 8
  %5 = alloca %struct.age_rxdesc*, align 8
  %6 = alloca i32, align 4
  store %struct.age_softc* %0, %struct.age_softc** %3, align 8
  %7 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %8 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %7)
  %9 = load i32, i32* @AGE_RX_RING_CNT, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %12 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %15 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %17 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %16, i32 0, i32 1
  store %struct.age_ring_data* %17, %struct.age_ring_data** %4, align 8
  %18 = load %struct.age_ring_data*, %struct.age_ring_data** %4, align 8
  %19 = getelementptr inbounds %struct.age_ring_data, %struct.age_ring_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @AGE_RX_RING_SZ, align 4
  %22 = call i32 @bzero(i32* %20, i32 %21)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %52, %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @AGE_RX_RING_CNT, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  %28 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %29 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load %struct.age_rxdesc*, %struct.age_rxdesc** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.age_rxdesc, %struct.age_rxdesc* %31, i64 %33
  store %struct.age_rxdesc* %34, %struct.age_rxdesc** %5, align 8
  %35 = load %struct.age_rxdesc*, %struct.age_rxdesc** %5, align 8
  %36 = getelementptr inbounds %struct.age_rxdesc, %struct.age_rxdesc* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.age_ring_data*, %struct.age_ring_data** %4, align 8
  %38 = getelementptr inbounds %struct.age_ring_data, %struct.age_ring_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load %struct.age_rxdesc*, %struct.age_rxdesc** %5, align 8
  %44 = getelementptr inbounds %struct.age_rxdesc, %struct.age_rxdesc* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  %45 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %46 = load %struct.age_rxdesc*, %struct.age_rxdesc** %5, align 8
  %47 = call i64 @age_newbuf(%struct.age_softc* %45, %struct.age_rxdesc* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %27
  %50 = load i32, i32* @ENOBUFS, align 4
  store i32 %50, i32* %2, align 4
  br label %66

51:                                               ; preds = %27
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %23

55:                                               ; preds = %23
  %56 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %57 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %61 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %65 = call i32 @bus_dmamap_sync(i32 %59, i32 %63, i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %55, %49
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @age_newbuf(%struct.age_softc*, %struct.age_rxdesc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
