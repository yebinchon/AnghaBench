; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_drv_info_ether_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_drv_info_ether_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.bxe_softc*, %struct.TYPE_8__*, i32, i64, i64, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.eth_stats_info }
%struct.eth_stats_info = type { i32, i32, i64, i32, i32, i64, i32 }

@BXE_DRIVER_VERSION = common dso_local global i32 0, align 4
@ETH_STAT_INFO_VERSION_LEN = common dso_local global i32 0, align 4
@DRV_INFO_ETH_STAT_NUM_MACS_REQUIRED = common dso_local global i32 0, align 4
@MAC_PAD = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@FEATURE_ETH_CHKSUM_OFFLOAD_MASK = common dso_local global i32 0, align 4
@IFCAP_TSO4 = common dso_local global i32 0, align 4
@IFCAP_TSO6 = common dso_local global i32 0, align 4
@FEATURE_ETH_LSO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_drv_info_ether_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_drv_info_ether_stat(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.eth_stats_info*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %4 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %5 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %4, i32 0, i32 5
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store %struct.eth_stats_info* %8, %struct.eth_stats_info** %3, align 8
  %9 = load %struct.eth_stats_info*, %struct.eth_stats_info** %3, align 8
  %10 = getelementptr inbounds %struct.eth_stats_info, %struct.eth_stats_info* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BXE_DRIVER_VERSION, align 4
  %13 = load i32, i32* @ETH_STAT_INFO_VERSION_LEN, align 4
  %14 = call i32 @strlcpy(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %15, i32 0, i32 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32 (%struct.bxe_softc*, %struct.TYPE_8__*, i32, i64, i64, i32)*, i32 (%struct.bxe_softc*, %struct.TYPE_8__*, i32, i64, i64, i32)** %20, align 8
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %23, i32 0, i32 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* @DRV_INFO_ETH_STAT_NUM_MACS_REQUIRED, align 4
  %29 = load %struct.eth_stats_info*, %struct.eth_stats_info** %3, align 8
  %30 = getelementptr inbounds %struct.eth_stats_info, %struct.eth_stats_info* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MAC_PAD, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* @MAC_PAD, align 8
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 %21(%struct.bxe_softc* %22, %struct.TYPE_8__* %27, i32 %28, i64 %33, i64 %34, i32 %35)
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.eth_stats_info*, %struct.eth_stats_info** %3, align 8
  %41 = getelementptr inbounds %struct.eth_stats_info, %struct.eth_stats_info* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @FEATURE_ETH_CHKSUM_OFFLOAD_MASK, align 4
  %43 = load %struct.eth_stats_info*, %struct.eth_stats_info** %3, align 8
  %44 = getelementptr inbounds %struct.eth_stats_info, %struct.eth_stats_info* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %48 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @if_getcapenable(i32 %49)
  %51 = load i32, i32* @IFCAP_TSO4, align 4
  %52 = load i32, i32* @IFCAP_TSO6, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %1
  %57 = load i32, i32* @FEATURE_ETH_LSO_MASK, align 4
  %58 = load %struct.eth_stats_info*, %struct.eth_stats_info** %3, align 8
  %59 = getelementptr inbounds %struct.eth_stats_info, %struct.eth_stats_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %1
  %63 = load %struct.eth_stats_info*, %struct.eth_stats_info** %3, align 8
  %64 = getelementptr inbounds %struct.eth_stats_info, %struct.eth_stats_info* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %66 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.eth_stats_info*, %struct.eth_stats_info** %3, align 8
  %69 = getelementptr inbounds %struct.eth_stats_info, %struct.eth_stats_info* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %71 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.eth_stats_info*, %struct.eth_stats_info** %3, align 8
  %74 = getelementptr inbounds %struct.eth_stats_info, %struct.eth_stats_info* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  ret void
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @if_getcapenable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
