; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_t_bbb_command_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_t_bbb_command_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.umass_softc = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %union.ccb* }
%union.ccb = type { i32 }
%struct.usb_page_cache = type { i32 }

@DIR_IN = common dso_local global i32 0, align 4
@UMASS_T_BBB_DATA_READ = common dso_local global i32 0, align 4
@DIR_OUT = common dso_local global i32 0, align 4
@UMASS_T_BBB_DATA_WRITE = common dso_local global i32 0, align 4
@UMASS_T_BBB_STATUS = common dso_local global i32 0, align 4
@CBWSIGNATURE = common dso_local global i32 0, align 4
@CBWFLAGS_IN = common dso_local global i32 0, align 4
@CBWFLAGS_OUT = common dso_local global i32 0, align 4
@UDMASS_BBB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Truncating long command!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @umass_t_bbb_command_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umass_t_bbb_command_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umass_softc*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.usb_page_cache*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.umass_softc* %10, %struct.umass_softc** %5, align 8
  %11 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %12 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  %14 = load %union.ccb*, %union.ccb** %13, align 8
  store %union.ccb* %14, %union.ccb** %6, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  switch i32 %16, label %166 [
    i32 128, label %17
    i32 129, label %43
  ]

17:                                               ; preds = %2
  %18 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %19 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %20 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DIR_IN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @UMASS_T_BBB_DATA_READ, align 4
  br label %40

27:                                               ; preds = %17
  %28 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %29 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DIR_OUT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @UMASS_T_BBB_DATA_WRITE, align 4
  br label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @UMASS_T_BBB_STATUS, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  br label %40

40:                                               ; preds = %38, %25
  %41 = phi i32 [ %26, %25 ], [ %39, %38 ]
  %42 = call i32 @umass_transfer_start(%struct.umass_softc* %18, i32 %41)
  br label %170

43:                                               ; preds = %2
  %44 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %45 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = load %union.ccb*, %union.ccb** %6, align 8
  %47 = icmp ne %union.ccb* %46, null
  br i1 %47, label %48, label %165

48:                                               ; preds = %43
  %49 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %50 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @UGETDW(i32 %52)
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %56 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CBWSIGNATURE, align 4
  %60 = call i32 @USETDW(i32 %58, i32 %59)
  %61 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %62 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @USETDW(i32 %64, i32 %65)
  %67 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %68 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %72 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @USETDW(i32 %70, i32 %74)
  %76 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %77 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DIR_IN, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %48
  %83 = load i32, i32* @CBWFLAGS_IN, align 4
  br label %86

84:                                               ; preds = %48
  %85 = load i32, i32* @CBWFLAGS_OUT, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %89 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  %91 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %92 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %96 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %99 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = icmp ugt i64 %102, 4
  br i1 %103, label %104, label %111

104:                                              ; preds = %86
  %105 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %106 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 4, i32* %107, align 8
  %108 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %109 = load i32, i32* @UDMASS_BBB, align 4
  %110 = call i32 @DPRINTF(%struct.umass_softc* %108, i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %104, %86
  %112 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %113 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %117 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %120 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %124 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %128 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @memcpy(i32 %122, i32 %126, i32 %130)
  %132 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %133 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %137 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %135, %139
  %141 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %142 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = sub i64 4, %145
  %147 = trunc i64 %146 to i32
  %148 = call i32 @memset(i32 %140, i32 0, i32 %147)
  %149 = load i32, i32* @UDMASS_BBB, align 4
  %150 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %151 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %152 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %151, i32 0, i32 0
  %153 = call i32 @umass_bbb_dump_cbw(%struct.umass_softc* %150, %struct.TYPE_5__* %152)
  %154 = call i32 @DIF(i32 %149, i32 %153)
  %155 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %156 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %155, i32 0)
  store %struct.usb_page_cache* %156, %struct.usb_page_cache** %7, align 8
  %157 = load %struct.usb_page_cache*, %struct.usb_page_cache** %7, align 8
  %158 = load %struct.umass_softc*, %struct.umass_softc** %5, align 8
  %159 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %158, i32 0, i32 0
  %160 = call i32 @usbd_copy_in(%struct.usb_page_cache* %157, i32 0, %struct.TYPE_5__* %159, i32 28)
  %161 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %162 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %161, i32 0, i32 28)
  %163 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %164 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %163)
  br label %165

165:                                              ; preds = %111, %43
  br label %170

166:                                              ; preds = %2
  %167 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @umass_tr_error(%struct.usb_xfer* %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %165, %40
  ret void
}

declare dso_local %struct.umass_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @umass_transfer_start(%struct.umass_softc*, i32) #1

declare dso_local i32 @UGETDW(i32) #1

declare dso_local i32 @USETDW(i32, i32) #1

declare dso_local i32 @DPRINTF(%struct.umass_softc*, i32, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @DIF(i32, i32) #1

declare dso_local i32 @umass_bbb_dump_cbw(%struct.umass_softc*, %struct.TYPE_5__*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_copy_in(%struct.usb_page_cache*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @umass_tr_error(%struct.usb_xfer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
