; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.mge_softc* }
%struct.mge_softc = type { i64, i32 }
%struct.mbuf = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@CSUM_IP = common dso_local global i32 0, align 4
@CSUM_TCP = common dso_local global i32 0, align 4
@CSUM_UDP = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MGE_TX_DESC_NUM = common dso_local global i64 0, align 8
@MGE_TX_QUEUE_CMD = common dso_local global i32 0, align 4
@MGE_ENABLE_TXQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @mge_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.mge_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 2
  %10 = load %struct.mge_softc*, %struct.mge_softc** %9, align 8
  store %struct.mge_softc* %10, %struct.mge_softc** %3, align 8
  %11 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %12 = call i32 @MGE_TRANSMIT_LOCK_ASSERT(%struct.mge_softc* %11)
  %13 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %125

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %104, %63, %23
  %25 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 1
  %27 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %28 = call i32 @IF_DEQUEUE(i32* %26, %struct.mbuf* %27)
  %29 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %30 = icmp eq %struct.mbuf* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %110

32:                                               ; preds = %24
  %33 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CSUM_IP, align 4
  %38 = load i32, i32* @CSUM_TCP, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CSUM_UDP, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %36, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %32
  %45 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @M_VLANTAG, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %44, %32
  %52 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %53 = call i64 @M_WRITABLE(%struct.mbuf* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %57 = load i32, i32* @M_NOWAIT, align 4
  %58 = call %struct.mbuf* @m_dup(%struct.mbuf* %56, i32 %57)
  store %struct.mbuf* %58, %struct.mbuf** %5, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %60 = call i32 @m_freem(%struct.mbuf* %59)
  %61 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %62 = icmp eq %struct.mbuf* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %24

64:                                               ; preds = %55
  %65 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %65, %struct.mbuf** %4, align 8
  br label %66

66:                                               ; preds = %64, %51
  br label %67

67:                                               ; preds = %66, %44
  %68 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %69 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %74 = load i32, i32* @M_NOWAIT, align 4
  %75 = call %struct.mbuf* @m_defrag(%struct.mbuf* %73, i32 %74)
  store %struct.mbuf* %75, %struct.mbuf** %5, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %77 = icmp ne %struct.mbuf* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %79, %struct.mbuf** %4, align 8
  br label %80

80:                                               ; preds = %78, %72
  br label %81

81:                                               ; preds = %80, %67
  %82 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %83 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  %86 = load i64, i64* @MGE_TX_DESC_NUM, align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %81
  %89 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %90 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %89, i32 0, i32 1
  %91 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %92 = call i32 @IF_PREPEND(i32* %90, %struct.mbuf* %91)
  %93 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %94 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %95 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %110

98:                                               ; preds = %81
  %99 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %100 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %101 = call i64 @mge_encap(%struct.mge_softc* %99, %struct.mbuf* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %110

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  %107 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %108 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %109 = call i32 @BPF_MTAP(%struct.ifnet* %107, %struct.mbuf* %108)
  br label %24

110:                                              ; preds = %103, %88, %31
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %115 = load i32, i32* @MGE_TX_QUEUE_CMD, align 4
  %116 = call i32 @MGE_READ(%struct.mge_softc* %114, i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %118 = load i32, i32* @MGE_TX_QUEUE_CMD, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @MGE_ENABLE_TXQ, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @MGE_WRITE(%struct.mge_softc* %117, i32 %118, i32 %121)
  %123 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %124 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %123, i32 0, i32 1
  store i32 5, i32* %124, align 8
  br label %125

125:                                              ; preds = %22, %113, %110
  ret void
}

declare dso_local i32 @MGE_TRANSMIT_LOCK_ASSERT(%struct.mge_softc*) #1

declare dso_local i32 @IF_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @M_WRITABLE(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_dup(%struct.mbuf*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_defrag(%struct.mbuf*, i32) #1

declare dso_local i32 @IF_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i64 @mge_encap(%struct.mge_softc*, %struct.mbuf*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @MGE_READ(%struct.mge_softc*, i32) #1

declare dso_local i32 @MGE_WRITE(%struct.mge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
