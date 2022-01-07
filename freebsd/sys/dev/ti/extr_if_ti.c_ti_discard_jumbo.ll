; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_discard_jumbo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_discard_jumbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ti_rx_desc* }
%struct.ti_rx_desc = type { i32, i32, i64, i64, i32, i64 }

@MJUM9BYTES = common dso_local global i64 0, align 8
@ETHER_ALIGN = common dso_local global i64 0, align 8
@TI_BDTYPE_RECV_JUMBO_BD = common dso_local global i32 0, align 4
@TI_BDFLAG_JUMBO_RING = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@TI_BDFLAG_TCP_UDP_CKSUM = common dso_local global i32 0, align 4
@TI_BDFLAG_IP_CKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*, i32)* @ti_discard_jumbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_discard_jumbo(%struct.ti_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ti_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_rx_desc*, align 8
  store %struct.ti_softc* %0, %struct.ti_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %9, i64 %11
  store %struct.ti_rx_desc* %12, %struct.ti_rx_desc** %5, align 8
  %13 = load i64, i64* @MJUM9BYTES, align 8
  %14 = load i64, i64* @ETHER_ALIGN, align 8
  %15 = sub nsw i64 %13, %14
  %16 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %5, align 8
  %17 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %16, i32 0, i32 5
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* @TI_BDTYPE_RECV_JUMBO_BD, align 4
  %19 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %5, align 8
  %20 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @TI_BDFLAG_JUMBO_RING, align 4
  %22 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %5, align 8
  %23 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %5, align 8
  %25 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %5, align 8
  %27 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.ti_softc*, %struct.ti_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFCAP_RXCSUM, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %2
  %37 = load i32, i32* @TI_BDFLAG_TCP_UDP_CKSUM, align 4
  %38 = load i32, i32* @TI_BDFLAG_IP_CKSUM, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %5, align 8
  %41 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %36, %2
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.ti_rx_desc*, %struct.ti_rx_desc** %5, align 8
  %47 = getelementptr inbounds %struct.ti_rx_desc, %struct.ti_rx_desc* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
