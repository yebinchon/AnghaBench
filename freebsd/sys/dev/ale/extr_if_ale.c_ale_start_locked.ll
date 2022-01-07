; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.ale_softc* }
%struct.ale_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mbuf = type { i32 }

@ALE_TX_DESC_HIWAT = common dso_local global i64 0, align 8
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ALE_FLAG_LINK = common dso_local global i32 0, align 4
@ALE_MBOX_TPD_PROD_IDX = common dso_local global i32 0, align 4
@ALE_TX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @ale_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.ale_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 2
  %8 = load %struct.ale_softc*, %struct.ale_softc** %7, align 8
  store %struct.ale_softc* %8, %struct.ale_softc** %3, align 8
  %9 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %10 = call i32 @ALE_LOCK_ASSERT(%struct.ale_softc* %9)
  %11 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ALE_TX_DESC_HIWAT, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %19 = call i32 @ale_txeof(%struct.ale_softc* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %25 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %20
  %31 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ALE_FLAG_LINK, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %20
  br label %91

38:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %71, %38
  %40 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 1
  %42 = call i32 @IFQ_DRV_IS_EMPTY(i32* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %45, label %77

45:                                               ; preds = %39
  %46 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 1
  %48 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %49 = call i32 @IFQ_DRV_DEQUEUE(i32* %47, %struct.mbuf* %48)
  %50 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %51 = icmp eq %struct.mbuf* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %77

53:                                               ; preds = %45
  %54 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %55 = call i64 @ale_encap(%struct.ale_softc* %54, %struct.mbuf** %4)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %59 = icmp eq %struct.mbuf* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %77

61:                                               ; preds = %57
  %62 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 1
  %64 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %65 = call i32 @IFQ_DRV_PREPEND(i32* %63, %struct.mbuf* %64)
  %66 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %67 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %77

71:                                               ; preds = %53
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %75 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %76 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %74, %struct.mbuf* %75)
  br label %39

77:                                               ; preds = %61, %60, %52, %39
  %78 = load i32, i32* %5, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %82 = load i32, i32* @ALE_MBOX_TPD_PROD_IDX, align 4
  %83 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %84 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @CSR_WRITE_4(%struct.ale_softc* %81, i32 %82, i32 %86)
  %88 = load i32, i32* @ALE_TX_TIMEOUT, align 4
  %89 = load %struct.ale_softc*, %struct.ale_softc** %3, align 8
  %90 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %37, %80, %77
  ret void
}

declare dso_local i32 @ALE_LOCK_ASSERT(%struct.ale_softc*) #1

declare dso_local i32 @ale_txeof(%struct.ale_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @ale_encap(%struct.ale_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ale_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
