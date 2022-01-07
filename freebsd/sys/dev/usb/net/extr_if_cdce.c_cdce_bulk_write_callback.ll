; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdce.c_cdce_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cdce.c_cdce_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.cdce_softc = type { i32, %struct.TYPE_4__, %struct.mbuf** }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"transfer complete: %u bytes in %u frames\0A\00", align 1
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@CDCE_FRAMES_MAX = common dso_local global i64 0, align 8
@CDCE_FLAG_ZAURUS = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"transfer error, %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@USB_MODE_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @cdce_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdce_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdce_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call %struct.cdce_softc* @usbd_xfer_softc(%struct.usb_xfer* %13)
  store %struct.cdce_softc* %14, %struct.cdce_softc** %5, align 8
  %15 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %16 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %15, i32 0, i32 1
  %17 = call %struct.ifnet* @uether_getifp(%struct.TYPE_4__* %16)
  store %struct.ifnet* %17, %struct.ifnet** %6, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @usbd_xfer_status(%struct.usb_xfer* %18, i32* %11, i32* null, i32* %12, i32* null)
  %20 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %22 = call i32 @USB_GET_STATE(%struct.usb_xfer* %21)
  switch i32 %22, label %143 [
    i32 128, label %23
    i32 129, label %35
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %28 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %29 = call i32 @if_inc_counter(%struct.ifnet* %27, i32 %28, i32 1)
  %30 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %31 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %30, i32 0, i32 2
  %32 = load %struct.mbuf**, %struct.mbuf*** %31, align 8
  %33 = load i64, i64* @CDCE_FRAMES_MAX, align 8
  %34 = call i32 @cdce_free_queue(%struct.mbuf** %32, i64 %33)
  br label %35

35:                                               ; preds = %2, %23
  br label %36

36:                                               ; preds = %169, %35
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %130, %36
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @CDCE_FRAMES_MAX, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %133

41:                                               ; preds = %37
  %42 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %45 = call i32 @IFQ_DRV_DEQUEUE(i32* %43, %struct.mbuf* %44)
  %46 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %47 = icmp eq %struct.mbuf* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %133

49:                                               ; preds = %41
  %50 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %51 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CDCE_FLAG_ZAURUS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %49
  %57 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %59 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cdce_m_crc32(%struct.mbuf* %57, i32 0, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @htole32(i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %66 = bitcast i32* %9 to i8*
  %67 = call i32 @m_append(%struct.mbuf* %65, i32 4, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %56
  %70 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %71 = call i32 @m_freem(%struct.mbuf* %70)
  %72 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %73 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %74 = call i32 @if_inc_counter(%struct.ifnet* %72, i32 %73, i32 1)
  br label %130

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75, %49
  %77 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %81 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %79, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %76
  %86 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %87 = load i32, i32* @M_NOWAIT, align 4
  %88 = call %struct.mbuf* @m_defrag(%struct.mbuf* %86, i32 %87)
  store %struct.mbuf* %88, %struct.mbuf** %8, align 8
  %89 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %90 = icmp eq %struct.mbuf* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %93 = call i32 @m_freem(%struct.mbuf* %92)
  %94 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %95 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %96 = call i32 @if_inc_counter(%struct.ifnet* %94, i32 %95, i32 1)
  br label %130

97:                                               ; preds = %85
  %98 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %98, %struct.mbuf** %7, align 8
  br label %99

99:                                               ; preds = %97, %76
  %100 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %101 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MCLBYTES, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load i32, i32* @MCLBYTES, align 4
  %108 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %109 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %99
  %112 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %113 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %114 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %113, i32 0, i32 2
  %115 = load %struct.mbuf**, %struct.mbuf*** %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %115, i64 %116
  store %struct.mbuf* %112, %struct.mbuf** %117, align 8
  %118 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %121 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %124 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %118, i64 %119, i32 %122, i32 %125)
  %127 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %128 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %129 = call i32 @BPF_MTAP(%struct.ifnet* %127, %struct.mbuf* %128)
  br label %130

130:                                              ; preds = %111, %91, %69
  %131 = load i64, i64* %10, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %10, align 8
  br label %37

133:                                              ; preds = %48, %37
  %134 = load i64, i64* %10, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %138 = load i64, i64* %10, align 8
  %139 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %137, i64 %138)
  %140 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %141 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %140)
  br label %142

142:                                              ; preds = %136, %133
  br label %171

143:                                              ; preds = %2
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @usbd_errstr(i32 %144)
  %146 = call i32 (i32, i8*, ...) @DPRINTFN(i32 11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %145)
  %147 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %148 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %147, i32 0, i32 2
  %149 = load %struct.mbuf**, %struct.mbuf*** %148, align 8
  %150 = load i64, i64* @CDCE_FRAMES_MAX, align 8
  %151 = call i32 @cdce_free_queue(%struct.mbuf** %149, i64 %150)
  %152 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %153 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %154 = call i32 @if_inc_counter(%struct.ifnet* %152, i32 %153, i32 1)
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %143
  %159 = load %struct.cdce_softc*, %struct.cdce_softc** %5, align 8
  %160 = getelementptr inbounds %struct.cdce_softc, %struct.cdce_softc* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @usbd_get_mode(i32 %162)
  %164 = load i32, i32* @USB_MODE_HOST, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %158
  %167 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %168 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %167)
  br label %169

169:                                              ; preds = %166, %158
  br label %36

170:                                              ; preds = %143
  br label %171

171:                                              ; preds = %170, %142
  ret void
}

declare dso_local %struct.cdce_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.TYPE_4__*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @cdce_free_queue(%struct.mbuf**, i64) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @cdce_m_crc32(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @m_append(%struct.mbuf*, i32, i8*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_defrag(%struct.mbuf*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i64, i32, i32) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i64) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_get_mode(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
