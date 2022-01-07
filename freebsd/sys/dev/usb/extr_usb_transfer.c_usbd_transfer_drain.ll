; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"usbd_transfer_drain can sleep!\00", align 1
@Giant = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_transfer_drain(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %3 = load i32, i32* @WARN_GIANTOK, align 4
  %4 = load i32, i32* @WARN_SLEEPOK, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @WITNESS_WARN(i32 %5, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %8 = icmp eq %struct.usb_xfer* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %55

10:                                               ; preds = %1
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %12 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, @Giant
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %19 = load i32, i32* @MA_NOTOWNED, align 4
  %20 = call i32 @USB_XFER_LOCK_ASSERT(%struct.usb_xfer* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %10
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %23 = call i32 @USB_XFER_LOCK(%struct.usb_xfer* %22)
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %25 = call i32 @usbd_transfer_stop(%struct.usb_xfer* %24)
  br label %26

26:                                               ; preds = %38, %21
  %27 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %28 = call i64 @usbd_transfer_pending(%struct.usb_xfer* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %32 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %30, %26
  %37 = phi i1 [ true, %26 ], [ %35, %30 ]
  br i1 %37, label %38, label %52

38:                                               ; preds = %36
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %40 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %43 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %47 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @cv_wait(i32* %45, i32* %50)
  br label %26

52:                                               ; preds = %36
  %53 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %54 = call i32 @USB_XFER_UNLOCK(%struct.usb_xfer* %53)
  br label %55

55:                                               ; preds = %52, %9
  ret void
}

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i32 @USB_XFER_LOCK_ASSERT(%struct.usb_xfer*, i32) #1

declare dso_local i32 @USB_XFER_LOCK(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_stop(%struct.usb_xfer*) #1

declare dso_local i64 @usbd_transfer_pending(%struct.usb_xfer*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @USB_XFER_UNLOCK(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
