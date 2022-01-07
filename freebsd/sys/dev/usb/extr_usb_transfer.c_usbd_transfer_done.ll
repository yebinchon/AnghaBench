; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, %struct.TYPE_11__*, i32, %struct.TYPE_7__, %struct.usb_xfer_root* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.usb_xfer_root = type { %struct.TYPE_12__*, %struct.usb_xfer_queue, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.usb_xfer_queue = type { %struct.usb_xfer* }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"err=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"not transferring\0A\00", align 1
@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@UE_XFERTYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_transfer_done(%struct.usb_xfer* %0, i64 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.usb_xfer_root*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %7 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %6, i32 0, i32 4
  %8 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %7, align 8
  store %struct.usb_xfer_root* %8, %struct.usb_xfer_root** %5, align 8
  %9 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %5, align 8
  %10 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @USB_BUS_LOCK_ASSERT(%struct.TYPE_12__* %11, i32 %12)
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @usbd_errstr(i64 %14)
  %16 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %25 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %88

27:                                               ; preds = %2
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %29 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %36 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %39 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %38, i32 0, i32 2
  %40 = call i32 @usb_callout_stop(i32* %39)
  %41 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %42 = call i32 @usbd_transfer_dequeue(%struct.usb_xfer* %41)
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %44 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %37
  %48 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %5, align 8
  %49 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %55 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @UE_XFERTYPE, align 8
  %62 = and i64 %60, %61
  %63 = getelementptr inbounds i32, i32* %53, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %85

66:                                               ; preds = %37
  %67 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %5, align 8
  %68 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %74 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %73, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @UE_XFERTYPE, align 8
  %81 = and i64 %79, %80
  %82 = getelementptr inbounds i32, i32* %72, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %66, %47
  %86 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %87 = call i32 @usbd_callback_ss_done_defer(%struct.usb_xfer* %86)
  br label %88

88:                                               ; preds = %85, %22
  ret void
}

declare dso_local i32 @USB_BUS_LOCK_ASSERT(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i32 @usb_callout_stop(i32*) #1

declare dso_local i32 @usbd_transfer_dequeue(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_callback_ss_done_defer(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
