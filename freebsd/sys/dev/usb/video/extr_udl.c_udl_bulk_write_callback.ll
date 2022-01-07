; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.udl_softc = type { i32, i32, i32 }
%struct.udl_cmd_head = type { i32 }
%struct.udl_cmd_buf = type { i32, i32 }

@entry = common dso_local global i32 0, align 4
@UDL_CMD_MAX_FRAMES = common dso_local global i32 0, align 4
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @udl_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udl_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udl_softc*, align 8
  %6 = alloca %struct.udl_cmd_head*, align 8
  %7 = alloca %struct.udl_cmd_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = call %struct.udl_softc* @usbd_xfer_softc(%struct.usb_xfer* %9)
  store %struct.udl_softc* %10, %struct.udl_softc** %5, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.udl_cmd_head* @usbd_xfer_get_priv(%struct.usb_xfer* %11)
  store %struct.udl_cmd_head* %12, %struct.udl_cmd_head** %6, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @USB_GET_STATE(%struct.usb_xfer* %13)
  switch i32 %14, label %73 [
    i32 128, label %15
    i32 129, label %21
  ]

15:                                               ; preds = %2
  %16 = load %struct.udl_softc*, %struct.udl_softc** %5, align 8
  %17 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %16, i32 0, i32 1
  %18 = load %struct.udl_cmd_head*, %struct.udl_cmd_head** %6, align 8
  %19 = load i32, i32* @entry, align 4
  %20 = call i32 @TAILQ_CONCAT(i32* %17, %struct.udl_cmd_head* %18, i32 %19)
  br label %21

21:                                               ; preds = %2, %15
  br label %22

22:                                               ; preds = %82, %21
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @UDL_CMD_MAX_FRAMES, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = load %struct.udl_softc*, %struct.udl_softc** %5, align 8
  %29 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %28, i32 0, i32 2
  %30 = call %struct.udl_cmd_buf* @TAILQ_FIRST(i32* %29)
  store %struct.udl_cmd_buf* %30, %struct.udl_cmd_buf** %7, align 8
  %31 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %7, align 8
  %32 = icmp eq %struct.udl_cmd_buf* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.udl_softc*, %struct.udl_softc** %5, align 8
  %35 = call %struct.udl_cmd_buf* @udl_fb_synchronize_locked(%struct.udl_softc* %34)
  store %struct.udl_cmd_buf* %35, %struct.udl_cmd_buf** %7, align 8
  %36 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %7, align 8
  %37 = icmp eq %struct.udl_cmd_buf* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %63

39:                                               ; preds = %33
  br label %46

40:                                               ; preds = %27
  %41 = load %struct.udl_softc*, %struct.udl_softc** %5, align 8
  %42 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %41, i32 0, i32 2
  %43 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %7, align 8
  %44 = load i32, i32* @entry, align 4
  %45 = call i32 @TAILQ_REMOVE(i32* %42, %struct.udl_cmd_buf* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %39
  %47 = load %struct.udl_cmd_head*, %struct.udl_cmd_head** %6, align 8
  %48 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %7, align 8
  %49 = load i32, i32* @entry, align 4
  %50 = call i32 @TAILQ_INSERT_TAIL(%struct.udl_cmd_head* %47, %struct.udl_cmd_buf* %48, i32 %49)
  %51 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %7, align 8
  %54 = getelementptr inbounds %struct.udl_cmd_buf, %struct.udl_cmd_buf* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %7, align 8
  %57 = getelementptr inbounds %struct.udl_cmd_buf, %struct.udl_cmd_buf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %51, i32 %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %46
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %23

63:                                               ; preds = %38, %23
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %67, i32 %68)
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %71 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %70)
  br label %72

72:                                               ; preds = %66, %63
  br label %86

73:                                               ; preds = %2
  %74 = load %struct.udl_softc*, %struct.udl_softc** %5, align 8
  %75 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %74, i32 0, i32 1
  %76 = load %struct.udl_cmd_head*, %struct.udl_cmd_head** %6, align 8
  %77 = load i32, i32* @entry, align 4
  %78 = call i32 @TAILQ_CONCAT(i32* %75, %struct.udl_cmd_head* %76, i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %84 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %83)
  br label %22

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %72
  %87 = load %struct.udl_softc*, %struct.udl_softc** %5, align 8
  %88 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %87, i32 0, i32 0
  %89 = call i32 @cv_signal(i32* %88)
  ret void
}

declare dso_local %struct.udl_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local %struct.udl_cmd_head* @usbd_xfer_get_priv(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @TAILQ_CONCAT(i32*, %struct.udl_cmd_head*, i32) #1

declare dso_local %struct.udl_cmd_buf* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.udl_cmd_buf* @udl_fb_synchronize_locked(%struct.udl_softc*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.udl_cmd_buf*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.udl_cmd_head*, %struct.udl_cmd_buf*, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
