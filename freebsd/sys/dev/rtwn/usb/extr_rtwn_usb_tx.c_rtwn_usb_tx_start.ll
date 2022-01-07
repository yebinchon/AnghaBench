; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_tx.c_rtwn_usb_tx_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/usb/extr_rtwn_usb_tx.c_rtwn_usb_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i64, i32, i32 }
%struct.ieee80211_node = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.rtwn_usb_softc = type { i32, i32, %struct.usb_xfer** }
%struct.usb_xfer = type { i32 }
%struct.rtwn_tx_desc_common = type { i64, i32, i32 }
%struct.rtwn_data = type { i64, i64, i32, %struct.mbuf*, %struct.ieee80211_node* }

@RTWN_USB_TXBUFSZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@RTWN_BULK_TX_VO = common dso_local global i64 0, align 8
@wme2qid = common dso_local global i64* null, align 8
@RTWN_FLAGS0_OWN = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtwn_usb_tx_start(%struct.rtwn_softc* %0, %struct.ieee80211_node* %1, %struct.mbuf* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtwn_softc*, align 8
  %9 = alloca %struct.ieee80211_node*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rtwn_usb_softc*, align 8
  %15 = alloca %struct.rtwn_tx_desc_common*, align 8
  %16 = alloca %struct.rtwn_data*, align 8
  %17 = alloca %struct.usb_xfer*, align 8
  %18 = alloca i64, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %8, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %9, align 8
  store %struct.mbuf* %2, %struct.mbuf** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %20 = call %struct.rtwn_usb_softc* @RTWN_USB_SOFTC(%struct.rtwn_softc* %19)
  store %struct.rtwn_usb_softc* %20, %struct.rtwn_usb_softc** %14, align 8
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %22 = call i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc* %21)
  %23 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %28 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load i64, i64* @RTWN_USB_TXBUFSZ, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %7, align 4
  br label %152

35:                                               ; preds = %6
  %36 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %14, align 8
  %37 = call %struct.rtwn_data* @rtwn_usb_getbuf(%struct.rtwn_usb_softc* %36)
  store %struct.rtwn_data* %37, %struct.rtwn_data** %16, align 8
  %38 = load %struct.rtwn_data*, %struct.rtwn_data** %16, align 8
  %39 = icmp eq %struct.rtwn_data* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOBUFS, align 4
  store i32 %41, i32* %7, align 4
  br label %152

42:                                               ; preds = %35
  %43 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %44 = call i64 @M_WME_GETAC(%struct.mbuf* %43)
  store i64 %44, i64* %18, align 8
  %45 = load i32, i32* %12, align 4
  switch i32 %45, label %53 [
    i32 129, label %46
    i32 128, label %46
  ]

46:                                               ; preds = %42, %42
  %47 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %14, align 8
  %48 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %47, i32 0, i32 2
  %49 = load %struct.usb_xfer**, %struct.usb_xfer*** %48, align 8
  %50 = load i64, i64* @RTWN_BULK_TX_VO, align 8
  %51 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %49, i64 %50
  %52 = load %struct.usb_xfer*, %struct.usb_xfer** %51, align 8
  store %struct.usb_xfer* %52, %struct.usb_xfer** %17, align 8
  br label %63

53:                                               ; preds = %42
  %54 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %14, align 8
  %55 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %54, i32 0, i32 2
  %56 = load %struct.usb_xfer**, %struct.usb_xfer*** %55, align 8
  %57 = load i64*, i64** @wme2qid, align 8
  %58 = load i64, i64* %18, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %56, i64 %60
  %62 = load %struct.usb_xfer*, %struct.usb_xfer** %61, align 8
  store %struct.usb_xfer* %62, %struct.usb_xfer** %17, align 8
  br label %63

63:                                               ; preds = %53, %46
  %64 = load i32*, i32** %11, align 8
  %65 = bitcast i32* %64 to %struct.rtwn_tx_desc_common*
  store %struct.rtwn_tx_desc_common* %65, %struct.rtwn_tx_desc_common** %15, align 8
  %66 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %67 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @htole16(i64 %69)
  %71 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %15, align 8
  %72 = getelementptr inbounds %struct.rtwn_tx_desc_common, %struct.rtwn_tx_desc_common* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %74 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %15, align 8
  %77 = getelementptr inbounds %struct.rtwn_tx_desc_common, %struct.rtwn_tx_desc_common* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* @RTWN_FLAGS0_OWN, align 4
  %79 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %15, align 8
  %80 = getelementptr inbounds %struct.rtwn_tx_desc_common, %struct.rtwn_tx_desc_common* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.rtwn_tx_desc_common*, %struct.rtwn_tx_desc_common** %15, align 8
  %84 = call i32 @rtwn_usb_tx_checksum(%struct.rtwn_tx_desc_common* %83)
  %85 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @rtwn_dump_tx_desc(%struct.rtwn_softc* %85, i32* %86)
  %88 = load %struct.rtwn_data*, %struct.rtwn_data** %16, align 8
  %89 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %93 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @memcpy(i64 %90, i32* %91, i64 %94)
  %96 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %98 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.rtwn_data*, %struct.rtwn_data** %16, align 8
  %102 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %105 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = trunc i64 %107 to i32
  %109 = call i32 @m_copydata(%struct.mbuf* %96, i32 0, i64 %100, i32 %108)
  %110 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %111 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %115 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load %struct.rtwn_data*, %struct.rtwn_data** %16, align 8
  %119 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.rtwn_data*, %struct.rtwn_data** %16, align 8
  %122 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %124 = load %struct.rtwn_data*, %struct.rtwn_data** %16, align 8
  %125 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %124, i32 0, i32 4
  store %struct.ieee80211_node* %123, %struct.ieee80211_node** %125, align 8
  %126 = load %struct.rtwn_data*, %struct.rtwn_data** %16, align 8
  %127 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %126, i32 0, i32 4
  %128 = load %struct.ieee80211_node*, %struct.ieee80211_node** %127, align 8
  %129 = icmp ne %struct.ieee80211_node* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %63
  %131 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %132 = load %struct.rtwn_data*, %struct.rtwn_data** %16, align 8
  %133 = getelementptr inbounds %struct.rtwn_data, %struct.rtwn_data* %132, i32 0, i32 3
  store %struct.mbuf* %131, %struct.mbuf** %133, align 8
  %134 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %135 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %134, i32 0, i32 1
  store i32 5, i32* %135, align 8
  br label %136

136:                                              ; preds = %130, %63
  %137 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %14, align 8
  %138 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %137, i32 0, i32 1
  %139 = load %struct.rtwn_data*, %struct.rtwn_data** %16, align 8
  %140 = load i32, i32* @next, align 4
  %141 = call i32 @STAILQ_INSERT_TAIL(i32* %138, %struct.rtwn_data* %139, i32 %140)
  %142 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %14, align 8
  %143 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %142, i32 0, i32 0
  %144 = call i64 @STAILQ_EMPTY(i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %136
  %147 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  %148 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %147, i32 0, i32 2
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %136
  %150 = load %struct.usb_xfer*, %struct.usb_xfer** %17, align 8
  %151 = call i32 @usbd_transfer_start(%struct.usb_xfer* %150)
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %149, %40, %33
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local %struct.rtwn_usb_softc* @RTWN_USB_SOFTC(%struct.rtwn_softc*) #1

declare dso_local i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc*) #1

declare dso_local %struct.rtwn_data* @rtwn_usb_getbuf(%struct.rtwn_usb_softc*) #1

declare dso_local i64 @M_WME_GETAC(%struct.mbuf*) #1

declare dso_local i32 @htole16(i64) #1

declare dso_local i32 @rtwn_usb_tx_checksum(%struct.rtwn_tx_desc_common*) #1

declare dso_local i32 @rtwn_dump_tx_desc(%struct.rtwn_softc*, i32*) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i64, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.rtwn_data*, i32) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @usbd_transfer_start(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
