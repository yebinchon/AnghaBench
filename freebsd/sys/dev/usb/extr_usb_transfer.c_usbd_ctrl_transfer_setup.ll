; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_ctrl_transfer_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_ctrl_transfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, %struct.TYPE_8__*, %struct.usb_xfer**, i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32* }
%struct.TYPE_8__ = type { i64 }
%struct.usb_xfer = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i64 }

@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@USB_CTRL_XFER_MAX = common dso_local global i32 0, align 4
@usb_control_ep_quirk_cfg = common dso_local global i32 0, align 4
@usb_control_ep_cfg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not setup default USB transfer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_ctrl_transfer_setup(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %7 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %107

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %106, %11
  %13 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 3
  %15 = load %struct.usb_xfer**, %struct.usb_xfer*** %14, align 8
  %16 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %15, i64 0
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %16, align 8
  store %struct.usb_xfer* %17, %struct.usb_xfer** %3, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = icmp ne %struct.usb_xfer* %18, null
  br i1 %19, label %20, label %61

20:                                               ; preds = %12
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %22 = call i32 @USB_XFER_LOCK(%struct.usb_xfer* %21)
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %36, %40
  br label %42

42:                                               ; preds = %30, %20
  %43 = phi i1 [ false, %20 ], [ %41, %30 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @USB_MODE_DEVICE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %56 = call i32 @usbd_transfer_start(%struct.usb_xfer* %55)
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %60 = call i32 @USB_XFER_UNLOCK(%struct.usb_xfer* %59)
  br label %62

61:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %107

66:                                               ; preds = %62
  %67 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %68 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %72 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  store i64 %70, i64* %75, align 8
  %76 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %77 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %76, i32 0, i32 3
  %78 = load %struct.usb_xfer**, %struct.usb_xfer*** %77, align 8
  %79 = load i32, i32* @USB_CTRL_XFER_MAX, align 4
  %80 = call i32 @usbd_transfer_unsetup(%struct.usb_xfer** %78, i32 %79)
  %81 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %82 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  store i32 0, i32* %5, align 4
  %83 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %84 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %85 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %84, i32 0, i32 3
  %86 = load %struct.usb_xfer**, %struct.usb_xfer*** %85, align 8
  %87 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %88 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %87, i32 0, i32 2
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %66
  %94 = load i32, i32* @usb_control_ep_quirk_cfg, align 4
  br label %97

95:                                               ; preds = %66
  %96 = load i32, i32* @usb_control_ep_cfg, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load i32, i32* @USB_CTRL_XFER_MAX, align 4
  %100 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %101 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %100, i32 0, i32 1
  %102 = call i64 @usbd_transfer_setup(%struct.usb_device* %83, i32* %5, %struct.usb_xfer** %86, i32 %98, i32 %99, i32* null, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %107

106:                                              ; preds = %97
  br label %12

107:                                              ; preds = %10, %65, %104
  ret void
}

declare dso_local i32 @USB_XFER_LOCK(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_start(%struct.usb_xfer*) #1

declare dso_local i32 @USB_XFER_UNLOCK(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_unsetup(%struct.usb_xfer**, i32) #1

declare dso_local i64 @usbd_transfer_setup(%struct.usb_device*, i32*, %struct.usb_xfer**, i32, i32, i32*, i32*) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
