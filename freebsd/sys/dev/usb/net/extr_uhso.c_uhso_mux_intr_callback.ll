; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_mux_intr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_mux_intr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.usb_page_cache = type { i32 }
%struct.usb_page_search = type { i64 }
%struct.uhso_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [11 x i8] c"status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mux port %d (%d)\0A\00", align 1
@UHSO_MPORT_TYPE_NOMAX = common dso_local global i32 0, align 4
@UHSO_CTRL_READ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uhso_mux_intr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhso_mux_intr_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_page_cache*, align 8
  %6 = alloca %struct.usb_page_search, align 8
  %7 = alloca %struct.uhso_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = call %struct.uhso_softc* @usbd_xfer_softc(%struct.usb_xfer* %10)
  store %struct.uhso_softc* %11, %struct.uhso_softc** %7, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = call i32 @USB_GET_STATE(%struct.usb_xfer* %12)
  %14 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  switch i32 %16, label %81 [
    i32 128, label %17
    i32 129, label %73
  ]

17:                                               ; preds = %2
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer* %18, i32 0)
  store %struct.usb_page_cache* %19, %struct.usb_page_cache** %5, align 8
  %20 = load %struct.usb_page_cache*, %struct.usb_page_cache** %5, align 8
  %21 = call i32 @usbd_get_page(%struct.usb_page_cache* %20, i32 0, %struct.usb_page_search* %6)
  %22 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %31, %17
  %28 = load i32, i32* %8, align 4
  %29 = lshr i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %27

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @UHSO_MPORT_TYPE_NOMAX, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %92

42:                                               ; preds = %34
  %43 = load %struct.uhso_softc*, %struct.uhso_softc** %7, align 8
  %44 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @UHSO_CTRL_READ, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.uhso_softc*, %struct.uhso_softc** %7, align 8
  %55 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = call i32 @usbd_xfer_set_priv(i32 %53, %struct.TYPE_2__* %59)
  %61 = load %struct.uhso_softc*, %struct.uhso_softc** %7, align 8
  %62 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @UHSO_CTRL_READ, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @usbd_transfer_start(i32 %71)
  br label %92

73:                                               ; preds = %2
  br label %74

74:                                               ; preds = %89, %73
  %75 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %77 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %76)
  %78 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %75, i32 0, i32 %77)
  %79 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %80 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %79)
  br label %92

81:                                               ; preds = %2
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @usbd_errstr(i32 %82)
  %84 = call i32 (i32, i8*, i32, ...) @UHSO_DPRINTF(i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %92

89:                                               ; preds = %81
  %90 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %91 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %90)
  br label %74

92:                                               ; preds = %88, %74, %42, %41
  ret void
}

declare dso_local %struct.uhso_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @UHSO_DPRINTF(i32, i8*, i32, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local %struct.usb_page_cache* @usbd_xfer_get_frame(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @usbd_xfer_set_priv(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
