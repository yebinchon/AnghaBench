; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_rxcsum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_rxcsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32 }
%struct.bge_rx_bd = type { i32, i32, i32, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@BGE_RXBDFLAG_IPV6 = common dso_local global i32 0, align 4
@BGE_RXBDFLAG_IP_CSUM = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@BGE_RXERRFLAG_IP_CSUM_NOK = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@BGE_RXBDFLAG_TCP_UDP_CSUM = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@ETHER_MIN_NOPAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*, %struct.bge_rx_bd*, %struct.mbuf*)* @bge_rxcsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_rxcsum(%struct.bge_softc* %0, %struct.bge_rx_bd* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.bge_softc*, align 8
  %5 = alloca %struct.bge_rx_bd*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.bge_softc* %0, %struct.bge_softc** %4, align 8
  store %struct.bge_rx_bd* %1, %struct.bge_rx_bd** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %7 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %8 = call i64 @BGE_IS_5717_PLUS(%struct.bge_softc* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %69

10:                                               ; preds = %3
  %11 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %5, align 8
  %12 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BGE_RXBDFLAG_IPV6, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %68

17:                                               ; preds = %10
  %18 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %5, align 8
  %19 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BGE_RXBDFLAG_IP_CSUM, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 8
  %31 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %5, align 8
  %32 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BGE_RXERRFLAG_IP_CSUM_NOK, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %24
  %38 = load i32, i32* @CSUM_IP_VALID, align 4
  %39 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %37, %24
  br label %45

45:                                               ; preds = %44, %17
  %46 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %5, align 8
  %47 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BGE_RXBDFLAG_TCP_UDP_CSUM, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %45
  %53 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %5, align 8
  %54 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @CSUM_DATA_VALID, align 4
  %60 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %52, %45
  br label %68

68:                                               ; preds = %67, %10
  br label %126

69:                                               ; preds = %3
  %70 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %5, align 8
  %71 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BGE_RXBDFLAG_IP_CSUM, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %69
  %77 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %78 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 8
  %83 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %5, align 8
  %84 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = xor i32 %85, 65535
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %76
  %89 = load i32, i32* @CSUM_IP_VALID, align 4
  %90 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %88, %76
  br label %96

96:                                               ; preds = %95, %69
  %97 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %5, align 8
  %98 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @BGE_RXBDFLAG_TCP_UDP_CSUM, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %96
  %104 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %105 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ETHER_MIN_NOPAD, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %103
  %111 = load %struct.bge_rx_bd*, %struct.bge_rx_bd** %5, align 8
  %112 = getelementptr inbounds %struct.bge_rx_bd, %struct.bge_rx_bd* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %115 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  store i32 %113, i32* %116, align 8
  %117 = load i32, i32* @CSUM_DATA_VALID, align 4
  %118 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %121 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %119
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %110, %103, %96
  br label %126

126:                                              ; preds = %125, %68
  ret void
}

declare dso_local i64 @BGE_IS_5717_PLUS(%struct.bge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
