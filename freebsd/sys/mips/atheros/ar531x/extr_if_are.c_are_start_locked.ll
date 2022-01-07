; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.are_softc* }
%struct.are_softc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ARE_TX_RING_CNT = common dso_local global i32 0, align 4
@CSR_STATUS = common dso_local global i32 0, align 4
@CSR_TXPOLL = common dso_local global i32 0, align 4
@TXPOLL_TPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @are_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @are_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.are_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 2
  %9 = load %struct.are_softc*, %struct.are_softc** %8, align 8
  store %struct.are_softc* %9, %struct.are_softc** %3, align 8
  %10 = load %struct.are_softc*, %struct.are_softc** %3, align 8
  %11 = call i32 @ARE_LOCK_ASSERT(%struct.are_softc* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.are_softc*, %struct.are_softc** %3, align 8
  %23 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %1
  br label %95

27:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %69, %27
  %29 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 1
  %31 = call i32 @IFQ_DRV_IS_EMPTY(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load %struct.are_softc*, %struct.are_softc** %3, align 8
  %35 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ARE_TX_RING_CNT, align 4
  %39 = sub nsw i32 %38, 2
  %40 = icmp slt i32 %37, %39
  br label %41

41:                                               ; preds = %33, %28
  %42 = phi i1 [ false, %28 ], [ %40, %33 ]
  br i1 %42, label %43, label %75

43:                                               ; preds = %41
  %44 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 1
  %46 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %47 = call i32 @IFQ_DRV_DEQUEUE(i32* %45, %struct.mbuf* %46)
  %48 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %49 = icmp eq %struct.mbuf* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %75

51:                                               ; preds = %43
  %52 = load %struct.are_softc*, %struct.are_softc** %3, align 8
  %53 = call i64 @are_encap(%struct.are_softc* %52, %struct.mbuf** %4)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %57 = icmp eq %struct.mbuf* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %75

59:                                               ; preds = %55
  %60 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 1
  %62 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %63 = call i32 @IFQ_DRV_PREPEND(i32* %61, %struct.mbuf* %62)
  %64 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %65 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %75

69:                                               ; preds = %51
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %73 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %74 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %72, %struct.mbuf* %73)
  br label %28

75:                                               ; preds = %59, %58, %50, %41
  %76 = load i32, i32* %5, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = load %struct.are_softc*, %struct.are_softc** %3, align 8
  %80 = load i32, i32* @CSR_STATUS, align 4
  %81 = call i32 @CSR_READ_4(%struct.are_softc* %79, i32 %80)
  %82 = ashr i32 %81, 20
  %83 = and i32 %82, 7
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 6
  br i1 %88, label %89, label %94

89:                                               ; preds = %86, %78
  %90 = load %struct.are_softc*, %struct.are_softc** %3, align 8
  %91 = load i32, i32* @CSR_TXPOLL, align 4
  %92 = load i32, i32* @TXPOLL_TPD, align 4
  %93 = call i32 @CSR_WRITE_4(%struct.are_softc* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %86
  br label %95

95:                                               ; preds = %26, %94, %75
  ret void
}

declare dso_local i32 @ARE_LOCK_ASSERT(%struct.are_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @are_encap(%struct.are_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @CSR_READ_4(%struct.are_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.are_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
