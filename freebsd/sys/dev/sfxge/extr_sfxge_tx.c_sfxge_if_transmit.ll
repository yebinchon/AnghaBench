; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_if_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_if_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i64 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sfxge_softc = type { i32, i32, i32, i32*, %struct.sfxge_txq** }
%struct.sfxge_txq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"interface not up\00", align 1
@CSUM_DELAY_DATA = common dso_local global i32 0, align 4
@CSUM_TCP_IPV6 = common dso_local global i32 0, align 4
@CSUM_UDP_IPV6 = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@SFXGE_TXQ_IP_TCP_UDP_CKSUM = common dso_local global i32 0, align 4
@CSUM_DELAY_IP = common dso_local global i32 0, align 4
@SFXGE_TXQ_IP_CKSUM = common dso_local global i64 0, align 8
@SFXGE_TXQ_NON_CKSUM = common dso_local global i64 0, align 8
@SFXGE_TXQ_NTYPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_if_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.sfxge_softc*, align 8
  %6 = alloca %struct.sfxge_txq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.sfxge_softc*
  store %struct.sfxge_softc* %14, %struct.sfxge_softc** %5, align 8
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IFF_UP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %23 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFF_UP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %21, %2
  %29 = phi i1 [ true, %2 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %33 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CSUM_DELAY_DATA, align 4
  %40 = load i32, i32* @CSUM_TCP_IPV6, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CSUM_UDP_IPV6, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @CSUM_TSO, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %38, %45
  %47 = or i32 %34, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  %50 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %51 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %50)
  %52 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %61 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @nitems(i32* %62)
  %64 = srem i32 %59, %63
  store i32 %64, i32* %10, align 4
  %65 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %66 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %54, %49
  %73 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %74 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @B_FALSE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  %79 = load i32, i32* @SFXGE_TXQ_IP_TCP_UDP_CKSUM, align 4
  br label %81

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %86 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %85, i32 0, i32 4
  %87 = load %struct.sfxge_txq**, %struct.sfxge_txq*** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.sfxge_txq*, %struct.sfxge_txq** %87, i64 %89
  %91 = load %struct.sfxge_txq*, %struct.sfxge_txq** %90, align 8
  store %struct.sfxge_txq* %91, %struct.sfxge_txq** %6, align 8
  br label %115

92:                                               ; preds = %28
  %93 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %94 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @CSUM_DELAY_IP, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %92
  %101 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %102 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %101, i32 0, i32 4
  %103 = load %struct.sfxge_txq**, %struct.sfxge_txq*** %102, align 8
  %104 = load i64, i64* @SFXGE_TXQ_IP_CKSUM, align 8
  %105 = getelementptr inbounds %struct.sfxge_txq*, %struct.sfxge_txq** %103, i64 %104
  %106 = load %struct.sfxge_txq*, %struct.sfxge_txq** %105, align 8
  store %struct.sfxge_txq* %106, %struct.sfxge_txq** %6, align 8
  br label %114

107:                                              ; preds = %92
  %108 = load %struct.sfxge_softc*, %struct.sfxge_softc** %5, align 8
  %109 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %108, i32 0, i32 4
  %110 = load %struct.sfxge_txq**, %struct.sfxge_txq*** %109, align 8
  %111 = load i64, i64* @SFXGE_TXQ_NON_CKSUM, align 8
  %112 = getelementptr inbounds %struct.sfxge_txq*, %struct.sfxge_txq** %110, i64 %111
  %113 = load %struct.sfxge_txq*, %struct.sfxge_txq** %112, align 8
  store %struct.sfxge_txq* %113, %struct.sfxge_txq** %6, align 8
  br label %114

114:                                              ; preds = %107, %100
  br label %115

115:                                              ; preds = %114, %81
  %116 = load %struct.sfxge_txq*, %struct.sfxge_txq** %6, align 8
  %117 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %118 = call i32 @sfxge_tx_packet_add(%struct.sfxge_txq* %116, %struct.mbuf* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %123 = call i32 @m_freem(%struct.mbuf* %122)
  br label %124

124:                                              ; preds = %121, %115
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @sfxge_tx_packet_add(%struct.sfxge_txq*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
