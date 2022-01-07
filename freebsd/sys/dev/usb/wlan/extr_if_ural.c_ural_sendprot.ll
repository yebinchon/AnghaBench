; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_sendprot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_sendprot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_softc = type { i32*, i32, i32, i32, i32 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_node = type { %struct.TYPE_3__*, %struct.ieee80211com* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211com = type { i32 }
%struct.ural_tx_data = type { i32, i32, i32, %struct.mbuf* }

@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"could not allocate mbuf for protection mode %d\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@IEEE80211_PROT_RTSCTS = common dso_local global i32 0, align 4
@RAL_TX_ACK = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@URAL_BULK_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ural_softc*, %struct.mbuf*, %struct.ieee80211_node*, i32, i32)* @ural_sendprot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ural_sendprot(%struct.ural_softc* %0, %struct.mbuf* %1, %struct.ieee80211_node* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ural_softc*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.ieee80211_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211com*, align 8
  %13 = alloca %struct.ural_tx_data*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ural_softc* %0, %struct.ural_softc** %7, align 8
  store %struct.mbuf* %1, %struct.mbuf** %8, align 8
  store %struct.ieee80211_node* %2, %struct.ieee80211_node** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %18 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %17, i32 0, i32 1
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %18, align 8
  store %struct.ieee80211com* %19, %struct.ieee80211com** %12, align 8
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.mbuf* @ieee80211_alloc_prot(%struct.ieee80211_node* %20, %struct.mbuf* %21, i32 %22, i32 %23)
  store %struct.mbuf* %24, %struct.mbuf** %14, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %26 = icmp eq %struct.mbuf* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %5
  %28 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %34 = call i32 @if_inc_counter(i32 %32, i32 %33, i32 1)
  %35 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %36 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENOBUFS, align 4
  store i32 %40, i32* %6, align 4
  br label %99

41:                                               ; preds = %5
  %42 = load %struct.ieee80211com*, %struct.ieee80211com** %12, align 8
  %43 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @ieee80211_ctl_rate(i32 %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = call i32 @RAL_TX_RETRY(i32 7)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @IEEE80211_PROT_RTSCTS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @RAL_TX_ACK, align 4
  %53 = load i32, i32* %16, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %16, align 4
  br label %55

55:                                               ; preds = %51, %41
  %56 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %57 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %56, i32 0, i32 3
  %58 = call %struct.ural_tx_data* @STAILQ_FIRST(i32* %57)
  store %struct.ural_tx_data* %58, %struct.ural_tx_data** %13, align 8
  %59 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %60 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %59, i32 0, i32 3
  %61 = load i32, i32* @next, align 4
  %62 = call i32 @STAILQ_REMOVE_HEAD(i32* %60, i32 %61)
  %63 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %64 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %68 = load %struct.ural_tx_data*, %struct.ural_tx_data** %13, align 8
  %69 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %68, i32 0, i32 3
  store %struct.mbuf* %67, %struct.mbuf** %69, align 8
  %70 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %71 = call i32 @ieee80211_ref_node(%struct.ieee80211_node* %70)
  %72 = load %struct.ural_tx_data*, %struct.ural_tx_data** %13, align 8
  %73 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.ural_tx_data*, %struct.ural_tx_data** %13, align 8
  %76 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %78 = load %struct.ural_tx_data*, %struct.ural_tx_data** %13, align 8
  %79 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %78, i32 0, i32 1
  %80 = load i32, i32* %16, align 4
  %81 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %82 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @ural_setup_tx_desc(%struct.ural_softc* %77, i32* %79, i32 %80, i32 %84, i32 %85)
  %87 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %88 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %87, i32 0, i32 1
  %89 = load %struct.ural_tx_data*, %struct.ural_tx_data** %13, align 8
  %90 = load i32, i32* @next, align 4
  %91 = call i32 @STAILQ_INSERT_TAIL(i32* %88, %struct.ural_tx_data* %89, i32 %90)
  %92 = load %struct.ural_softc*, %struct.ural_softc** %7, align 8
  %93 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @URAL_BULK_WR, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @usbd_transfer_start(i32 %97)
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %55, %27
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local %struct.mbuf* @ieee80211_alloc_prot(%struct.ieee80211_node*, %struct.mbuf*, i32, i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @ieee80211_ctl_rate(i32, i32) #1

declare dso_local i32 @RAL_TX_RETRY(i32) #1

declare dso_local %struct.ural_tx_data* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ieee80211_ref_node(%struct.ieee80211_node*) #1

declare dso_local i32 @ural_setup_tx_desc(%struct.ural_softc*, i32*, i32, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ural_tx_data*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
