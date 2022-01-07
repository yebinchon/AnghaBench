; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.al_eth_pkt = type { i64, i32, i64 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@AL_ETH_PROTO_ID_IPv4 = common dso_local global i64 0, align 8
@AL_ETH_RX_FLAGS_L3_CSUM_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"rx ipv4 header checksum error\0A\00", align 1
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@AL_ETH_PROTO_ID_IPv6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"rx ipv6 header checksum error\0A\00", align 1
@AL_ETH_PROTO_ID_TCP = common dso_local global i64 0, align 8
@AL_ETH_PROTO_ID_UDP = common dso_local global i64 0, align 8
@AL_ETH_RX_FLAGS_L4_CSUM_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"rx L4 checksum error\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"rx checksum correct\0A\00", align 1
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_adapter*, %struct.al_eth_pkt*, %struct.mbuf*)* @al_eth_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_rx_checksum(%struct.al_eth_adapter* %0, %struct.al_eth_pkt* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.al_eth_adapter*, align 8
  %5 = alloca %struct.al_eth_pkt*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %4, align 8
  store %struct.al_eth_pkt* %1, %struct.al_eth_pkt** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %7 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFCAP_RXCSUM, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %17 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AL_ETH_PROTO_ID_IPv4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %23 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @AL_ETH_RX_FLAGS_L3_CSUM_ERR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %21, %15, %3
  %29 = phi i1 [ false, %15 ], [ false, %3 ], [ %27, %21 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %119

38:                                               ; preds = %28
  %39 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %38
  %48 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %49 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AL_ETH_PROTO_ID_IPv6, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %55 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AL_ETH_RX_FLAGS_L3_CSUM_ERR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %53, %47, %38
  %61 = phi i1 [ false, %47 ], [ false, %38 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %119

70:                                               ; preds = %60
  %71 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %72 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AL_ETH_PROTO_ID_TCP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %78 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AL_ETH_PROTO_ID_UDP, align 8
  %81 = icmp eq i64 %79, %80
  br label %82

82:                                               ; preds = %76, %70
  %83 = phi i1 [ true, %70 ], [ %81, %76 ]
  %84 = zext i1 %83 to i32
  %85 = call i64 @likely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %119

87:                                               ; preds = %82
  %88 = load %struct.al_eth_pkt*, %struct.al_eth_pkt** %5, align 8
  %89 = getelementptr inbounds %struct.al_eth_pkt, %struct.al_eth_pkt* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @AL_ETH_RX_FLAGS_L4_CSUM_ERR, align 4
  %92 = and i32 %90, %91
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %97 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @device_printf_dbg(i32 %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %101 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 4
  br label %118

103:                                              ; preds = %87
  %104 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %4, align 8
  %105 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @device_printf_dbg(i32 %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %109 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %110 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @CSUM_IP_VALID, align 4
  %113 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %114 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %103, %95
  br label %119

119:                                              ; preds = %33, %65, %118, %82
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @device_printf_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
