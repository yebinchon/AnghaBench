; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_sendprot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_sendprot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32*, i32, i32, i32, i32 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_node = type { %struct.TYPE_3__*, %struct.ieee80211com* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211com = type { i32 }
%struct.rum_tx_data = type { i32, i32, i32, %struct.mbuf* }

@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"could not allocate mbuf for protection mode %d\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@IEEE80211_PROT_RTSCTS = common dso_local global i32 0, align 4
@RT2573_TX_NEED_ACK = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@RUM_BULK_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rum_softc*, %struct.mbuf*, %struct.ieee80211_node*, i32, i32)* @rum_sendprot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rum_sendprot(%struct.rum_softc* %0, %struct.mbuf* %1, %struct.ieee80211_node* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rum_softc*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.ieee80211_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211com*, align 8
  %13 = alloca %struct.rum_tx_data*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rum_softc* %0, %struct.rum_softc** %7, align 8
  store %struct.mbuf* %1, %struct.mbuf** %8, align 8
  store %struct.ieee80211_node* %2, %struct.ieee80211_node** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %18 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %17, i32 0, i32 1
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %18, align 8
  store %struct.ieee80211com* %19, %struct.ieee80211com** %12, align 8
  %20 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %21 = call i32 @RUM_LOCK_ASSERT(%struct.rum_softc* %20)
  %22 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %23 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call %struct.mbuf* @ieee80211_alloc_prot(%struct.ieee80211_node* %22, %struct.mbuf* %23, i32 %24, i32 %25)
  store %struct.mbuf* %26, %struct.mbuf** %14, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %28 = icmp eq %struct.mbuf* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %5
  %30 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %31 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %36 = call i32 @if_inc_counter(i32 %34, i32 %35, i32 1)
  %37 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %38 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ENOBUFS, align 4
  store i32 %42, i32* %6, align 4
  br label %100

43:                                               ; preds = %5
  %44 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  %45 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @ieee80211_ctl_rate(i32 %46, i32 %47)
  store i32 %48, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @IEEE80211_PROT_RTSCTS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i32, i32* @RT2573_TX_NEED_ACK, align 4
  %54 = load i32, i32* %16, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %52, %43
  %57 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %58 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %57, i32 0, i32 3
  %59 = call %struct.rum_tx_data* @STAILQ_FIRST(i32* %58)
  store %struct.rum_tx_data* %59, %struct.rum_tx_data** %13, align 8
  %60 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %61 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %60, i32 0, i32 3
  %62 = load i32, i32* @next, align 4
  %63 = call i32 @STAILQ_REMOVE_HEAD(i32* %61, i32 %62)
  %64 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %65 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %69 = load %struct.rum_tx_data*, %struct.rum_tx_data** %13, align 8
  %70 = getelementptr inbounds %struct.rum_tx_data, %struct.rum_tx_data* %69, i32 0, i32 3
  store %struct.mbuf* %68, %struct.mbuf** %70, align 8
  %71 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %72 = call i32 @ieee80211_ref_node(%struct.ieee80211_node* %71)
  %73 = load %struct.rum_tx_data*, %struct.rum_tx_data** %13, align 8
  %74 = getelementptr inbounds %struct.rum_tx_data, %struct.rum_tx_data* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.rum_tx_data*, %struct.rum_tx_data** %13, align 8
  %77 = getelementptr inbounds %struct.rum_tx_data, %struct.rum_tx_data* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %79 = load %struct.rum_tx_data*, %struct.rum_tx_data** %13, align 8
  %80 = getelementptr inbounds %struct.rum_tx_data, %struct.rum_tx_data* %79, i32 0, i32 1
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @rum_setup_tx_desc(%struct.rum_softc* %78, i32* %80, i32* null, i32 %81, i32 0, i32 0, i32 0, i32 %85, i32 %86)
  %88 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %89 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %88, i32 0, i32 1
  %90 = load %struct.rum_tx_data*, %struct.rum_tx_data** %13, align 8
  %91 = load i32, i32* @next, align 4
  %92 = call i32 @STAILQ_INSERT_TAIL(i32* %89, %struct.rum_tx_data* %90, i32 %91)
  %93 = load %struct.rum_softc*, %struct.rum_softc** %7, align 8
  %94 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @RUM_BULK_WR, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @usbd_transfer_start(i32 %98)
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %56, %29
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @RUM_LOCK_ASSERT(%struct.rum_softc*) #1

declare dso_local %struct.mbuf* @ieee80211_alloc_prot(%struct.ieee80211_node*, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @ieee80211_ctl_rate(i32, i32) #1

declare dso_local %struct.rum_tx_data* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ieee80211_ref_node(%struct.ieee80211_node*) #1

declare dso_local i32 @rum_setup_tx_desc(%struct.rum_softc*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.rum_tx_data*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
