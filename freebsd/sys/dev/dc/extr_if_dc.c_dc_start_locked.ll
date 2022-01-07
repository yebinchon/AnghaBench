; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.dc_softc* }
%struct.dc_softc = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@DC_TX_LIST_CNT = common dso_local global i64 0, align 8
@DC_TX_LIST_RSVD = common dso_local global i64 0, align 8
@DC_TX_POLL = common dso_local global i32 0, align 4
@DC_TXSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @dc_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 2
  %8 = load %struct.dc_softc*, %struct.dc_softc** %7, align 8
  store %struct.dc_softc* %8, %struct.dc_softc** %3, align 8
  %9 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %10 = call i32 @DC_LOCK_ASSERT(%struct.dc_softc* %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %22 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %1
  br label %104

26:                                               ; preds = %20
  %27 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %28 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %32 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %81, %26
  %35 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 1
  %37 = call i32 @IFQ_DRV_IS_EMPTY(i32* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %87

40:                                               ; preds = %34
  %41 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %42 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DC_TX_LIST_CNT, align 8
  %46 = load i64, i64* @DC_TX_LIST_RSVD, align 8
  %47 = sub nsw i64 %45, %46
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %51 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %87

55:                                               ; preds = %40
  %56 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 1
  %58 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %59 = call i32 @IFQ_DRV_DEQUEUE(i32* %57, %struct.mbuf* %58)
  %60 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %61 = icmp eq %struct.mbuf* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %87

63:                                               ; preds = %55
  %64 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %65 = call i64 @dc_encap(%struct.dc_softc* %64, %struct.mbuf** %4)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %69 = icmp eq %struct.mbuf* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %87

71:                                               ; preds = %67
  %72 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 1
  %74 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %75 = call i32 @IFQ_DRV_PREPEND(i32* %73, %struct.mbuf* %74)
  %76 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %77 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %87

81:                                               ; preds = %63
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  %84 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %85 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %86 = call i32 @BPF_MTAP(%struct.ifnet* %84, %struct.mbuf* %85)
  br label %34

87:                                               ; preds = %71, %70, %62, %49, %34
  %88 = load i32, i32* %5, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %92 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @DC_TX_POLL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %90
  %98 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %99 = load i32, i32* @DC_TXSTART, align 4
  %100 = call i32 @CSR_WRITE_4(%struct.dc_softc* %98, i32 %99, i32 -1)
  br label %101

101:                                              ; preds = %97, %90
  %102 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %103 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %102, i32 0, i32 2
  store i32 5, i32* %103, align 4
  br label %104

104:                                              ; preds = %25, %101, %87
  ret void
}

declare dso_local i32 @DC_LOCK_ASSERT(%struct.dc_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @dc_encap(%struct.dc_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
