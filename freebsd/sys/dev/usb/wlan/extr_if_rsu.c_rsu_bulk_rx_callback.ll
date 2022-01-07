; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_bulk_rx_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_bulk_rx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.rsu_softc = type { i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211_node = type { i32 }
%struct.mbuf = type { i32, %struct.mbuf* }
%struct.rsu_data = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"mbuf isn't NULL\00", align 1
@IEEE80211_NODE_HT = common dso_local global i32 0, align 4
@M_AMPDU = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @rsu_bulk_rx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsu_bulk_rx_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsu_softc*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.rsu_data*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.rsu_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.rsu_softc* %12, %struct.rsu_softc** %5, align 8
  %13 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %14 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %13, i32 0, i32 2
  store %struct.ieee80211com* %14, %struct.ieee80211com** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %8, align 8
  %15 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %16 = call i32 @RSU_ASSERT_LOCKED(%struct.rsu_softc* %15)
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = call i32 @USB_GET_STATE(%struct.usb_xfer* %17)
  switch i32 %18, label %114 [
    i32 128, label %19
    i32 129, label %39
  ]

19:                                               ; preds = %2
  %20 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %21 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %20, i32 0, i32 1
  %22 = call %struct.rsu_data* @STAILQ_FIRST(i32* %21)
  store %struct.rsu_data* %22, %struct.rsu_data** %10, align 8
  %23 = load %struct.rsu_data*, %struct.rsu_data** %10, align 8
  %24 = icmp eq %struct.rsu_data* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %40

26:                                               ; preds = %19
  %27 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %28 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %27, i32 0, i32 1
  %29 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %30 = call i32 @STAILQ_REMOVE_HEAD(i32* %28, %struct.mbuf* %29)
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %32 = load %struct.rsu_data*, %struct.rsu_data** %10, align 8
  %33 = call %struct.mbuf* @rsu_rxeof(%struct.usb_xfer* %31, %struct.rsu_data* %32)
  store %struct.mbuf* %33, %struct.mbuf** %8, align 8
  %34 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %35 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %34, i32 0, i32 0
  %36 = load %struct.rsu_data*, %struct.rsu_data** %10, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %38 = call i32 @STAILQ_INSERT_TAIL(i32* %35, %struct.rsu_data* %36, %struct.mbuf* %37)
  br label %39

39:                                               ; preds = %2, %26
  br label %40

40:                                               ; preds = %134, %39, %25
  %41 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %42 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %41, i32 0, i32 0
  %43 = call %struct.rsu_data* @STAILQ_FIRST(i32* %42)
  store %struct.rsu_data* %43, %struct.rsu_data** %10, align 8
  %44 = load %struct.rsu_data*, %struct.rsu_data** %10, align 8
  %45 = icmp eq %struct.rsu_data* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %48 = icmp eq %struct.mbuf* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @KASSERT(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %142

51:                                               ; preds = %40
  %52 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %53 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %52, i32 0, i32 0
  %54 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %55 = call i32 @STAILQ_REMOVE_HEAD(i32* %53, %struct.mbuf* %54)
  %56 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %57 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %56, i32 0, i32 1
  %58 = load %struct.rsu_data*, %struct.rsu_data** %10, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %60 = call i32 @STAILQ_INSERT_TAIL(i32* %57, %struct.rsu_data* %58, %struct.mbuf* %59)
  %61 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %62 = load %struct.rsu_data*, %struct.rsu_data** %10, align 8
  %63 = getelementptr inbounds %struct.rsu_data, %struct.rsu_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %66 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %65)
  %67 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %61, i32 0, i32 %64, i32 %66)
  %68 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %69 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %68)
  br label %70

70:                                               ; preds = %109, %51
  %71 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %72 = icmp ne %struct.mbuf* %71, null
  br i1 %72, label %73, label %113

73:                                               ; preds = %70
  %74 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 1
  %76 = load %struct.mbuf*, %struct.mbuf** %75, align 8
  store %struct.mbuf* %76, %struct.mbuf** %9, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %78, align 8
  %79 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %80 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %81 = call %struct.ieee80211_node* @rsu_rx_frame(%struct.rsu_softc* %79, %struct.mbuf* %80)
  store %struct.ieee80211_node* %81, %struct.ieee80211_node** %7, align 8
  %82 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %83 = call i32 @RSU_UNLOCK(%struct.rsu_softc* %82)
  %84 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %85 = icmp ne %struct.ieee80211_node* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %73
  %87 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %88 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IEEE80211_NODE_HT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @M_AMPDU, align 4
  %95 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %96 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %86
  %100 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %102 = call i32 @ieee80211_input_mimo(%struct.ieee80211_node* %100, %struct.mbuf* %101)
  %103 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %104 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %103)
  br label %109

105:                                              ; preds = %73
  %106 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %107 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %108 = call i32 @ieee80211_input_mimo_all(%struct.ieee80211com* %106, %struct.mbuf* %107)
  br label %109

109:                                              ; preds = %105, %99
  %110 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %111 = call i32 @RSU_LOCK(%struct.rsu_softc* %110)
  %112 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  store %struct.mbuf* %112, %struct.mbuf** %8, align 8
  br label %70

113:                                              ; preds = %70
  br label %142

114:                                              ; preds = %2
  %115 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %116 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %115, i32 0, i32 1
  %117 = call %struct.rsu_data* @STAILQ_FIRST(i32* %116)
  store %struct.rsu_data* %117, %struct.rsu_data** %10, align 8
  %118 = load %struct.rsu_data*, %struct.rsu_data** %10, align 8
  %119 = icmp ne %struct.rsu_data* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %122 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %121, i32 0, i32 1
  %123 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %124 = call i32 @STAILQ_REMOVE_HEAD(i32* %122, %struct.mbuf* %123)
  %125 = load %struct.rsu_softc*, %struct.rsu_softc** %5, align 8
  %126 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %125, i32 0, i32 0
  %127 = load %struct.rsu_data*, %struct.rsu_data** %10, align 8
  %128 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %129 = call i32 @STAILQ_INSERT_TAIL(i32* %126, %struct.rsu_data* %127, %struct.mbuf* %128)
  br label %130

130:                                              ; preds = %120, %114
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %136 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %135)
  %137 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %138 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @counter_u64_add(i32 %139, i32 1)
  br label %40

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %46, %141, %113
  ret void
}

declare dso_local %struct.rsu_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @RSU_ASSERT_LOCKED(%struct.rsu_softc*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.rsu_data* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, %struct.mbuf*) #1

declare dso_local %struct.mbuf* @rsu_rxeof(%struct.usb_xfer*, %struct.rsu_data*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.rsu_data*, %struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local %struct.ieee80211_node* @rsu_rx_frame(%struct.rsu_softc*, %struct.mbuf*) #1

declare dso_local i32 @RSU_UNLOCK(%struct.rsu_softc*) #1

declare dso_local i32 @ieee80211_input_mimo(%struct.ieee80211_node*, %struct.mbuf*) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_input_mimo_all(%struct.ieee80211com*, %struct.mbuf*) #1

declare dso_local i32 @RSU_LOCK(%struct.rsu_softc*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
