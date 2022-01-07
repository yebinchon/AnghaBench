; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_offload_process_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_offload_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32 }
%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tsec_rx_fcb = type { i32, i32, i32 }

@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@TSEC_RX_FCB_IP_CSUM_ERROR = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@TSEC_RX_FCB_TCP_UDP_CSUM_ERROR = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@TSEC_RX_FCB_VLAN = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsec_softc*, %struct.mbuf*)* @tsec_offload_process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_offload_process_frame(%struct.tsec_softc* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.tsec_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.tsec_rx_fcb, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %10 = call i32 @TSEC_RECEIVE_LOCK_ASSERT(%struct.tsec_softc* %9)
  %11 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %12 = ptrtoint %struct.tsec_rx_fcb* %5 to i32
  %13 = call i32 @m_copydata(%struct.mbuf* %11, i32 0, i32 12, i32 %12)
  %14 = getelementptr inbounds %struct.tsec_rx_fcb, %struct.tsec_rx_fcb* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = getelementptr inbounds %struct.tsec_rx_fcb, %struct.tsec_rx_fcb* %5, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @TSEC_RX_FCB_IP_CSUM_CHECKED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @TSEC_RX_FCB_IP_CSUM_ERROR, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @CSUM_IP_VALID, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %21
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @IPPROTO_TCP, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @IPPROTO_UDP, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @TSEC_RX_FCB_TCP_UDP_CSUM_CHECKED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @TSEC_RX_FCB_TCP_UDP_CSUM_ERROR, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i32, i32* @CSUM_DATA_VALID, align 4
  %53 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 65535, i32* %59, align 4
  br label %60

60:                                               ; preds = %51, %46, %42, %38
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @TSEC_RX_FCB_VLAN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.tsec_rx_fcb, %struct.tsec_rx_fcb* %5, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %73 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* @M_VLANTAG, align 4
  %76 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %77 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %69, %60
  %81 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %82 = call i32 @m_adj(%struct.mbuf* %81, i32 12)
  ret void
}

declare dso_local i32 @TSEC_RECEIVE_LOCK_ASSERT(%struct.tsec_softc*) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i64 @TSEC_RX_FCB_IP_CSUM_CHECKED(i32) #1

declare dso_local i64 @TSEC_RX_FCB_TCP_UDP_CSUM_CHECKED(i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
