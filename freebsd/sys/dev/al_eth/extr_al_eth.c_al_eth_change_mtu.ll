; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_change_mtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32, i32 }

@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@ETHER_VLAN_ENCAP_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"set MTU to %d\0A\00", align 1
@AL_ETH_MIN_FRAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_eth_adapter*, i32)* @al_eth_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_change_mtu(%struct.al_eth_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.al_eth_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ETHER_HDR_LEN, align 4
  %8 = add nsw i32 %6, %7
  %9 = load i32, i32* @ETHER_CRC_LEN, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @ETHER_VLAN_ENCAP_LEN, align 4
  %12 = add nsw i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @al_eth_req_rx_buff_size(%struct.al_eth_adapter* %13, i32 %14)
  %16 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @device_printf_dbg(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* @AL_ETH_MIN_FRAME_LEN, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @al_eth_rx_pkt_limit_config(i32* %22, i32 %23, i32 %24)
  %26 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, 100
  %30 = call i32 @al_eth_tso_mss_config(i32* %27, i32 0, i32 %29)
  ret i32 0
}

declare dso_local i32 @al_eth_req_rx_buff_size(%struct.al_eth_adapter*, i32) #1

declare dso_local i32 @device_printf_dbg(i32, i8*, i32) #1

declare dso_local i32 @al_eth_rx_pkt_limit_config(i32*, i32, i32) #1

declare dso_local i32 @al_eth_tso_mss_config(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
