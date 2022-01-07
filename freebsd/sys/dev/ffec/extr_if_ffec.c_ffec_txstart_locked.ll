; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_txstart_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_txstart_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i32, i32, i32, i32, i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32, i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@TX_DESC_COUNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@FEC_TDAR_REG = common dso_local global i32 0, align 4
@FEC_TDAR_TDAR = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@WATCHDOG_TIMEOUT_SECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffec_softc*)* @ffec_txstart_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffec_txstart_locked(%struct.ffec_softc* %0) #0 {
  %2 = alloca %struct.ffec_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.ffec_softc* %0, %struct.ffec_softc** %2, align 8
  %6 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %7 = call i32 @FFEC_ASSERT_LOCKED(%struct.ffec_softc* %6)
  %8 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %98

13:                                               ; preds = %1
  %14 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %14, i32 0, i32 5
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %3, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %98

24:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %58, %24
  %26 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TX_DESC_COUNT, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %34 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %71

38:                                               ; preds = %25
  %39 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 1
  %41 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %42 = call i32 @IFQ_DRV_DEQUEUE(i32* %40, %struct.mbuf* %41)
  %43 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %44 = icmp eq %struct.mbuf* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %71

46:                                               ; preds = %38
  %47 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %48 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @ffec_setup_txbuf(%struct.ffec_softc* %47, i32 %50, %struct.mbuf** %4)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 1
  %56 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %57 = call i32 @IFQ_DRV_PREPEND(i32* %55, %struct.mbuf* %56)
  br label %71

58:                                               ; preds = %46
  %59 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %61 = call i32 @BPF_MTAP(%struct.ifnet* %59, %struct.mbuf* %60)
  %62 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %63 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @next_txidx(%struct.ffec_softc* %62, i32 %65)
  %67 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %68 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %25

71:                                               ; preds = %53, %45, %32
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %76 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %79 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %82 = call i32 @bus_dmamap_sync(i32 %77, i32 %80, i32 %81)
  %83 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %84 = load i32, i32* @FEC_TDAR_REG, align 4
  %85 = load i32, i32* @FEC_TDAR_TDAR, align 4
  %86 = call i32 @WR4(%struct.ffec_softc* %83, i32 %84, i32 %85)
  %87 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %88 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %91 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %94 = call i32 @bus_dmamap_sync(i32 %89, i32 %92, i32 %93)
  %95 = load i32, i32* @WATCHDOG_TIMEOUT_SECS, align 4
  %96 = load %struct.ffec_softc*, %struct.ffec_softc** %2, align 8
  %97 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %12, %23, %74, %71
  ret void
}

declare dso_local i32 @FFEC_ASSERT_LOCKED(%struct.ffec_softc*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @ffec_setup_txbuf(%struct.ffec_softc*, i32, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @next_txidx(%struct.ffec_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @WR4(%struct.ffec_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
