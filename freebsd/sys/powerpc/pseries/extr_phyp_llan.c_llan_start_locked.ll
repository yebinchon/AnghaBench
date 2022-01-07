; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_llan.c_llan_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_llan.c_llan_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.llan_softc* }
%struct.llan_softc = type { i32, i32, i32 }
%struct.mbuf = type { %struct.mbuf* }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@llan_send_packet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @llan_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llan_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.llan_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 2
  %10 = load %struct.llan_softc*, %struct.llan_softc** %9, align 8
  store %struct.llan_softc* %10, %struct.llan_softc** %3, align 8
  %11 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %12 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %11, i32 0, i32 2
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* %12, i32 %13)
  store i64 0, i64* %4, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %88

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %68, %64, %25
  %27 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = call i32 @IFQ_DRV_IS_EMPTY(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %88

32:                                               ; preds = %26
  %33 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 1
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = call i32 @IFQ_DRV_DEQUEUE(i32* %34, %struct.mbuf* %35)
  %37 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %38 = icmp eq %struct.mbuf* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %88

40:                                               ; preds = %32
  %41 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %43 = call i32 @BPF_MTAP(%struct.ifnet* %41, %struct.mbuf* %42)
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %44, %struct.mbuf** %7, align 8
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %51, %40
  %46 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %47 = icmp ne %struct.mbuf* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48
  %52 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 0
  %54 = load %struct.mbuf*, %struct.mbuf** %53, align 8
  store %struct.mbuf* %54, %struct.mbuf** %7, align 8
  br label %45

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  %57 = icmp sgt i32 %56, 6
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %60 = load i32, i32* @M_NOWAIT, align 4
  %61 = call %struct.mbuf* @m_collapse(%struct.mbuf* %59, i32 %60, i32 6)
  store %struct.mbuf* %61, %struct.mbuf** %7, align 8
  %62 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %63 = icmp eq %struct.mbuf* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %66 = call i32 @m_freem(%struct.mbuf* %65)
  br label %26

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %55
  %69 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %70 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %73 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %76 = load i32, i32* @llan_send_packet, align 4
  %77 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %78 = call i32 @bus_dmamap_load_mbuf(i32 %71, i32 %74, %struct.mbuf* %75, i32 %76, %struct.llan_softc* %77, i32 0)
  %79 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %80 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.llan_softc*, %struct.llan_softc** %3, align 8
  %83 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @bus_dmamap_unload(i32 %81, i32 %84)
  %86 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %87 = call i32 @m_freem(%struct.mbuf* %86)
  br label %26

88:                                               ; preds = %24, %39, %26
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_collapse(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_load_mbuf(i32, i32, %struct.mbuf*, i32, %struct.llan_softc*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
