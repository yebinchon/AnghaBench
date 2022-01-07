; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.stge_softc* }
%struct.stge_softc = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@STGE_TX_HIWAT = common dso_local global i64 0, align 8
@STGE_DMACtrl = common dso_local global i32 0, align 4
@DMAC_TxDMAPollNow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @stge_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.stge_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 2
  %8 = load %struct.stge_softc*, %struct.stge_softc** %7, align 8
  store %struct.stge_softc* %8, %struct.stge_softc** %3, align 8
  %9 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %10 = call i32 @STGE_LOCK_ASSERT(%struct.stge_softc* %9)
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
  %21 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %22 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %1
  br label %88

26:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %72, %26
  %28 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 1
  %30 = call i32 @IFQ_DRV_IS_EMPTY(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %78

33:                                               ; preds = %27
  %34 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %35 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @STGE_TX_HIWAT, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %78

46:                                               ; preds = %33
  %47 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 1
  %49 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %50 = call i32 @IFQ_DRV_DEQUEUE(i32* %48, %struct.mbuf* %49)
  %51 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %52 = icmp eq %struct.mbuf* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %78

54:                                               ; preds = %46
  %55 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %56 = call i64 @stge_encap(%struct.stge_softc* %55, %struct.mbuf** %4)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %60 = icmp eq %struct.mbuf* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %78

62:                                               ; preds = %58
  %63 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 1
  %65 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %66 = call i32 @IFQ_DRV_PREPEND(i32* %64, %struct.mbuf* %65)
  %67 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %68 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %78

72:                                               ; preds = %54
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  %75 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %77 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %75, %struct.mbuf* %76)
  br label %27

78:                                               ; preds = %62, %61, %53, %40, %27
  %79 = load i32, i32* %5, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %83 = load i32, i32* @STGE_DMACtrl, align 4
  %84 = load i32, i32* @DMAC_TxDMAPollNow, align 4
  %85 = call i32 @CSR_WRITE_4(%struct.stge_softc* %82, i32 %83, i32 %84)
  %86 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %87 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %86, i32 0, i32 1
  store i32 5, i32* %87, align 8
  br label %88

88:                                               ; preds = %25, %81, %78
  ret void
}

declare dso_local i32 @STGE_LOCK_ASSERT(%struct.stge_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @stge_encap(%struct.stge_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.stge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
