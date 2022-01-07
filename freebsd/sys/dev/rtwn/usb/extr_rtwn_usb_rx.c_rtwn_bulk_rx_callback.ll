; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_rx.c_rtwn_bulk_rx_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_rx.c_rtwn_bulk_rx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.rtwn_usb_softc = type { i32, i32, %struct.rtwn_softc }
%struct.rtwn_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.ieee80211_node = type { i32 }
%struct.mbuf = type { %struct.mbuf* }
%struct.rtwn_data = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"mbuf isn't NULL\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtwn_bulk_rx_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtwn_usb_softc*, align 8
  %6 = alloca %struct.rtwn_softc*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca %struct.ieee80211_node*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.rtwn_data*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call %struct.rtwn_usb_softc* @usbd_xfer_softc(%struct.usb_xfer* %12)
  store %struct.rtwn_usb_softc* %13, %struct.rtwn_usb_softc** %5, align 8
  %14 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %15 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %14, i32 0, i32 2
  store %struct.rtwn_softc* %15, %struct.rtwn_softc** %6, align 8
  %16 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %17 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %16, i32 0, i32 0
  store %struct.ieee80211com* %17, %struct.ieee80211com** %7, align 8
  store %struct.mbuf* null, %struct.mbuf** %9, align 8
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %19 = call i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc* %18)
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call i32 @USB_GET_STATE(%struct.usb_xfer* %20)
  switch i32 %21, label %105 [
    i32 128, label %22
    i32 129, label %43
  ]

22:                                               ; preds = %2
  %23 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %24 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %23, i32 0, i32 1
  %25 = call %struct.rtwn_data* @STAILQ_FIRST(i32* %24)
  store %struct.rtwn_data* %25, %struct.rtwn_data** %11, align 8
  %26 = load %struct.rtwn_data*, %struct.rtwn_data** %11, align 8
  %27 = icmp eq %struct.rtwn_data* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %44

29:                                               ; preds = %22
  %30 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %31 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %30, i32 0, i32 1
  %32 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %33 = call i32 @STAILQ_REMOVE_HEAD(i32* %31, %struct.mbuf* %32)
  %34 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %36 = load %struct.rtwn_data*, %struct.rtwn_data** %11, align 8
  %37 = call %struct.mbuf* @rtwn_report_intr(%struct.rtwn_usb_softc* %34, %struct.usb_xfer* %35, %struct.rtwn_data* %36)
  store %struct.mbuf* %37, %struct.mbuf** %9, align 8
  %38 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %39 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %38, i32 0, i32 0
  %40 = load %struct.rtwn_data*, %struct.rtwn_data** %11, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %42 = call i32 @STAILQ_INSERT_TAIL(i32* %39, %struct.rtwn_data* %40, %struct.mbuf* %41)
  br label %43

43:                                               ; preds = %2, %29
  br label %44

44:                                               ; preds = %125, %43, %28
  %45 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %46 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %45, i32 0, i32 0
  %47 = call %struct.rtwn_data* @STAILQ_FIRST(i32* %46)
  store %struct.rtwn_data* %47, %struct.rtwn_data** %11, align 8
  %48 = load %struct.rtwn_data*, %struct.rtwn_data** %11, align 8
  %49 = icmp eq %struct.rtwn_data* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %52 = icmp eq %struct.mbuf* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @KASSERT(i32 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %134

55:                                               ; preds = %44
  %56 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %57 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %56, i32 0, i32 0
  %58 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %59 = call i32 @STAILQ_REMOVE_HEAD(i32* %57, %struct.mbuf* %58)
  %60 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %61 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %60, i32 0, i32 1
  %62 = load %struct.rtwn_data*, %struct.rtwn_data** %11, align 8
  %63 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %64 = call i32 @STAILQ_INSERT_TAIL(i32* %61, %struct.rtwn_data* %62, %struct.mbuf* %63)
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %66 = load %struct.rtwn_data*, %struct.rtwn_data** %11, align 8
  %67 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %70 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %69)
  %71 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %65, i32 0, i32 %68, i32 %70)
  %72 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %73 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %72)
  br label %74

74:                                               ; preds = %100, %55
  %75 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %76 = icmp ne %struct.mbuf* %75, null
  br i1 %76, label %77, label %104

77:                                               ; preds = %74
  %78 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %79 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %78, i32 0, i32 0
  %80 = load %struct.mbuf*, %struct.mbuf** %79, align 8
  store %struct.mbuf* %80, %struct.mbuf** %10, align 8
  %81 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %82 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %81, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %82, align 8
  %83 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %84 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %85 = call %struct.ieee80211_node* @rtwn_rx_frame(%struct.rtwn_softc* %83, %struct.mbuf* %84)
  store %struct.ieee80211_node* %85, %struct.ieee80211_node** %8, align 8
  %86 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %87 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %86)
  %88 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %89 = icmp ne %struct.ieee80211_node* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %77
  %91 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %92 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %93 = call i32 @ieee80211_input_mimo(%struct.ieee80211_node* %91, %struct.mbuf* %92)
  %94 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %95 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %94)
  br label %100

96:                                               ; preds = %77
  %97 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %98 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %99 = call i32 @ieee80211_input_mimo_all(%struct.ieee80211com* %97, %struct.mbuf* %98)
  br label %100

100:                                              ; preds = %96, %90
  %101 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %102 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %101)
  %103 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %103, %struct.mbuf** %9, align 8
  br label %74

104:                                              ; preds = %74
  br label %133

105:                                              ; preds = %2
  %106 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %107 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %106, i32 0, i32 1
  %108 = call %struct.rtwn_data* @STAILQ_FIRST(i32* %107)
  store %struct.rtwn_data* %108, %struct.rtwn_data** %11, align 8
  %109 = load %struct.rtwn_data*, %struct.rtwn_data** %11, align 8
  %110 = icmp ne %struct.rtwn_data* %109, null
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %113 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %112, i32 0, i32 1
  %114 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %115 = call i32 @STAILQ_REMOVE_HEAD(i32* %113, %struct.mbuf* %114)
  %116 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %5, align 8
  %117 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %116, i32 0, i32 0
  %118 = load %struct.rtwn_data*, %struct.rtwn_data** %11, align 8
  %119 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %120 = call i32 @STAILQ_INSERT_TAIL(i32* %117, %struct.rtwn_data* %118, %struct.mbuf* %119)
  br label %121

121:                                              ; preds = %111, %105
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %127 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %126)
  %128 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @counter_u64_add(i32 %130, i32 1)
  br label %44

132:                                              ; preds = %121
  br label %133

133:                                              ; preds = %132, %104
  br label %134

134:                                              ; preds = %133, %50
  %135 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %136 = call i32 @rtwn_start(%struct.rtwn_softc* %135)
  ret void
}

declare dso_local %struct.rtwn_usb_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.rtwn_data* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, %struct.mbuf*) #1

declare dso_local %struct.mbuf* @rtwn_report_intr(%struct.rtwn_usb_softc*, %struct.usb_xfer*, %struct.rtwn_data*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.rtwn_data*, %struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local %struct.ieee80211_node* @rtwn_rx_frame(%struct.rtwn_softc*, %struct.mbuf*) #1

declare dso_local i32 @RTWN_UNLOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @ieee80211_input_mimo(%struct.ieee80211_node*, %struct.mbuf*) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_input_mimo_all(%struct.ieee80211com*, %struct.mbuf*) #1

declare dso_local i32 @RTWN_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @rtwn_start(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
