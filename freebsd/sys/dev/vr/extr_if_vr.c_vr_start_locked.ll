; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.vr_softc* }
%struct.vr_softc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@VR_F_LINK = common dso_local global i32 0, align 4
@VR_TX_RING_CNT = common dso_local global i32 0, align 4
@VR_CR0 = common dso_local global i32 0, align 4
@VR_CR0_TX_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @vr_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vr_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.vr_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 2
  %8 = load %struct.vr_softc*, %struct.vr_softc** %7, align 8
  store %struct.vr_softc* %8, %struct.vr_softc** %3, align 8
  %9 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %10 = call i32 @VR_LOCK_ASSERT(%struct.vr_softc* %9)
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
  %21 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %22 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VR_F_LINK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %1
  br label %86

28:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %70, %28
  %30 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 1
  %32 = call i32 @IFQ_DRV_IS_EMPTY(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %36 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @VR_TX_RING_CNT, align 4
  %40 = sub nsw i32 %39, 2
  %41 = icmp slt i32 %38, %40
  br label %42

42:                                               ; preds = %34, %29
  %43 = phi i1 [ false, %29 ], [ %41, %34 ]
  br i1 %43, label %44, label %76

44:                                               ; preds = %42
  %45 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 1
  %47 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %48 = call i32 @IFQ_DRV_DEQUEUE(i32* %46, %struct.mbuf* %47)
  %49 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %50 = icmp eq %struct.mbuf* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %76

52:                                               ; preds = %44
  %53 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %54 = call i64 @vr_encap(%struct.vr_softc* %53, %struct.mbuf** %4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %58 = icmp eq %struct.mbuf* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %76

60:                                               ; preds = %56
  %61 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %62 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %61, i32 0, i32 1
  %63 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %64 = call i32 @IFQ_DRV_PREPEND(i32* %62, %struct.mbuf* %63)
  %65 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %66 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %76

70:                                               ; preds = %52
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  %73 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %74 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %75 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %73, %struct.mbuf* %74)
  br label %29

76:                                               ; preds = %60, %59, %51, %42
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %81 = load i32, i32* @VR_CR0, align 4
  %82 = load i32, i32* @VR_CR0_TX_GO, align 4
  %83 = call i32 @VR_SETBIT(%struct.vr_softc* %80, i32 %81, i32 %82)
  %84 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %85 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %84, i32 0, i32 1
  store i32 5, i32* %85, align 4
  br label %86

86:                                               ; preds = %27, %79, %76
  ret void
}

declare dso_local i32 @VR_LOCK_ASSERT(%struct.vr_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @vr_encap(%struct.vr_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @VR_SETBIT(%struct.vr_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
