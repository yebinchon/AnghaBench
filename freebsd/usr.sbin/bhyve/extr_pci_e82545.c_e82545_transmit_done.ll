; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_transmit_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_transmit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { %union.e1000_tx_udesc* }
%union.e1000_tx_udesc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@E1000_TXD_CMD_RS = common dso_local global i32 0, align 4
@E1000_TXD_STAT_DD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*, i32, i32, i32, i32*)* @e82545_transmit_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_transmit_done(%struct.e82545_softc* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.e82545_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %union.e1000_tx_udesc*, align 8
  store %struct.e82545_softc* %0, %struct.e82545_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  br label %12

12:                                               ; preds = %41, %5
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = load %struct.e82545_softc*, %struct.e82545_softc** %6, align 8
  %18 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %17, i32 0, i32 0
  %19 = load %union.e1000_tx_udesc*, %union.e1000_tx_udesc** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %union.e1000_tx_udesc, %union.e1000_tx_udesc* %19, i64 %21
  store %union.e1000_tx_udesc* %22, %union.e1000_tx_udesc** %11, align 8
  %23 = load %union.e1000_tx_udesc*, %union.e1000_tx_udesc** %11, align 8
  %24 = bitcast %union.e1000_tx_udesc* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @E1000_TXD_CMD_RS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %16
  %32 = load i32, i32* @E1000_TXD_STAT_DD, align 4
  %33 = load %union.e1000_tx_udesc*, %union.e1000_tx_udesc** %11, align 8
  %34 = bitcast %union.e1000_tx_udesc* %33 to %struct.TYPE_6__*
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 4
  %39 = load i32*, i32** %10, align 8
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %31, %16
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %9, align 4
  %45 = srem i32 %43, %44
  store i32 %45, i32* %7, align 4
  br label %12

46:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
