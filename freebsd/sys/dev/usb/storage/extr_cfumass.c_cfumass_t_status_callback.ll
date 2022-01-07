; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_t_status_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_t_status_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.cfumass_softc = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"sc_ctl_io is %p, should be NULL\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"USB_ST_TRANSFERRED\00", align 1
@CFUMASS_T_COMMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"USB_ST_SETUP\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"non-zero residue, stalling\00", align 1
@CSWSIGNATURE = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"USB_ERR_CANCELLED\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"USB_ST_ERROR: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @cfumass_t_status_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfumass_t_status_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfumass_softc*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %7 = call %struct.cfumass_softc* @usbd_xfer_softc(%struct.usb_xfer* %6)
  store %struct.cfumass_softc* %7, %struct.cfumass_softc** %5, align 8
  %8 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %9 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %14 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = call i32 @KASSERT(i32 %12, i8* %16)
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @USB_GET_STATE(%struct.usb_xfer* %18)
  switch i32 %19, label %83 [
    i32 128, label %20
    i32 129, label %26
  ]

20:                                               ; preds = %2
  %21 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %22 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %24 = load i32, i32* @CFUMASS_T_COMMAND, align 4
  %25 = call i32 @cfumass_transfer_start(%struct.cfumass_softc* %23, i32 %24)
  br label %95

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %90, %26
  %28 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %29 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %31 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %36 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %41 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %43 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %42)
  %44 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %45 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %39, %34, %27
  %47 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %48 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CSWSIGNATURE, align 4
  %53 = call i32 @USETDW(i32 %51, i32 %52)
  %54 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %55 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %60 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @USETDW(i32 %58, i32 %61)
  %63 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %64 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %69 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @USETDW(i32 %67, i32 %70)
  %72 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %73 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %76 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  %79 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %80 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %79, i32 0, i32 16)
  %81 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %82 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %81)
  br label %95

83:                                               ; preds = %2
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %89 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %95

90:                                               ; preds = %83
  %91 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @usbd_errstr(i32 %92)
  %94 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  br label %27

95:                                               ; preds = %87, %46, %20
  ret void
}

declare dso_local %struct.cfumass_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @CFUMASS_DEBUG(%struct.cfumass_softc*, i8*, ...) #1

declare dso_local i32 @cfumass_transfer_start(%struct.cfumass_softc*, i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

declare dso_local i32 @USETDW(i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i32, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
