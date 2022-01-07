; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_nm_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_nm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_adapter = type { i32 }
%struct.nm_config_info = type { i32, i8*, i8*, i8*, i8* }
%struct.ptnet_softc = type { i32, i32 }

@PTNET_IO_NUM_TX_RINGS = common dso_local global i32 0, align 4
@PTNET_IO_NUM_RX_RINGS = common dso_local global i32 0, align 4
@PTNET_IO_NUM_TX_SLOTS = common dso_local global i32 0, align 4
@PTNET_IO_NUM_RX_SLOTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"txr %u, rxr %u, txd %u, rxd %u, rxbufsz %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_adapter*, %struct.nm_config_info*)* @ptnet_nm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptnet_nm_config(%struct.netmap_adapter* %0, %struct.nm_config_info* %1) #0 {
  %3 = alloca %struct.netmap_adapter*, align 8
  %4 = alloca %struct.nm_config_info*, align 8
  %5 = alloca %struct.ptnet_softc*, align 8
  store %struct.netmap_adapter* %0, %struct.netmap_adapter** %3, align 8
  store %struct.nm_config_info* %1, %struct.nm_config_info** %4, align 8
  %6 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ptnet_softc* @if_getsoftc(i32 %8)
  store %struct.ptnet_softc* %9, %struct.ptnet_softc** %5, align 8
  %10 = load %struct.ptnet_softc*, %struct.ptnet_softc** %5, align 8
  %11 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PTNET_IO_NUM_TX_RINGS, align 4
  %14 = call i8* @bus_read_4(i32 %12, i32 %13)
  %15 = load %struct.nm_config_info*, %struct.nm_config_info** %4, align 8
  %16 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load %struct.ptnet_softc*, %struct.ptnet_softc** %5, align 8
  %18 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PTNET_IO_NUM_RX_RINGS, align 4
  %21 = call i8* @bus_read_4(i32 %19, i32 %20)
  %22 = load %struct.nm_config_info*, %struct.nm_config_info** %4, align 8
  %23 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ptnet_softc*, %struct.ptnet_softc** %5, align 8
  %25 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PTNET_IO_NUM_TX_SLOTS, align 4
  %28 = call i8* @bus_read_4(i32 %26, i32 %27)
  %29 = load %struct.nm_config_info*, %struct.nm_config_info** %4, align 8
  %30 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ptnet_softc*, %struct.ptnet_softc** %5, align 8
  %32 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PTNET_IO_NUM_RX_SLOTS, align 4
  %35 = call i8* @bus_read_4(i32 %33, i32 %34)
  %36 = load %struct.nm_config_info*, %struct.nm_config_info** %4, align 8
  %37 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.netmap_adapter*, %struct.netmap_adapter** %3, align 8
  %39 = call i32 @NETMAP_BUF_SIZE(%struct.netmap_adapter* %38)
  %40 = load %struct.nm_config_info*, %struct.nm_config_info** %4, align 8
  %41 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ptnet_softc*, %struct.ptnet_softc** %5, align 8
  %43 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nm_config_info*, %struct.nm_config_info** %4, align 8
  %46 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.nm_config_info*, %struct.nm_config_info** %4, align 8
  %49 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.nm_config_info*, %struct.nm_config_info** %4, align 8
  %52 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.nm_config_info*, %struct.nm_config_info** %4, align 8
  %55 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.nm_config_info*, %struct.nm_config_info** %4, align 8
  %58 = getelementptr inbounds %struct.nm_config_info, %struct.nm_config_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %50, i8* %53, i8* %56, i32 %59)
  ret i32 0
}

declare dso_local %struct.ptnet_softc* @if_getsoftc(i32) #1

declare dso_local i8* @bus_read_4(i32, i32) #1

declare dso_local i32 @NETMAP_BUF_SIZE(%struct.netmap_adapter*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
