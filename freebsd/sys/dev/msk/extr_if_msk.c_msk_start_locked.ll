; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.msk_if_softc* }
%struct.msk_if_softc = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@MSK_FLAG_LINK = common dso_local global i32 0, align 4
@MSK_TX_RING_CNT = common dso_local global i64 0, align 8
@MSK_RESERVED_TX_DESC_CNT = common dso_local global i64 0, align 8
@PREF_UNIT_PUT_IDX_REG = common dso_local global i32 0, align 4
@MSK_TX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @msk_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.msk_if_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 2
  %8 = load %struct.msk_if_softc*, %struct.msk_if_softc** %7, align 8
  store %struct.msk_if_softc* %8, %struct.msk_if_softc** %3, align 8
  %9 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %10 = call i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc* %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %22 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MSK_FLAG_LINK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %1
  br label %97

28:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %71, %28
  %30 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 1
  %32 = call i32 @IFQ_DRV_IS_EMPTY(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %36 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MSK_TX_RING_CNT, align 8
  %40 = load i64, i64* @MSK_RESERVED_TX_DESC_CNT, align 8
  %41 = sub nsw i64 %39, %40
  %42 = icmp slt i64 %38, %41
  br label %43

43:                                               ; preds = %34, %29
  %44 = phi i1 [ false, %29 ], [ %42, %34 ]
  br i1 %44, label %45, label %77

45:                                               ; preds = %43
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
  %54 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %55 = call i64 @msk_encap(%struct.msk_if_softc* %54, %struct.mbuf** %4)
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
  br label %29

77:                                               ; preds = %61, %60, %52, %43
  %78 = load i32, i32* %5, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %82 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %85 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PREF_UNIT_PUT_IDX_REG, align 4
  %88 = call i32 @Y2_PREF_Q_ADDR(i32 %86, i32 %87)
  %89 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %90 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @CSR_WRITE_2(i32 %83, i32 %88, i32 %92)
  %94 = load i32, i32* @MSK_TX_TIMEOUT, align 4
  %95 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %96 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %27, %80, %77
  ret void
}

declare dso_local i32 @MSK_IF_LOCK_ASSERT(%struct.msk_if_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @msk_encap(%struct.msk_if_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @CSR_WRITE_2(i32, i32, i32) #1

declare dso_local i32 @Y2_PREF_Q_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
