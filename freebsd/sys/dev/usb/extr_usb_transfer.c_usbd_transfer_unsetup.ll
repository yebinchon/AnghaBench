; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_unsetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_transfer_unsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.usb_xfer_root* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.usb_xfer_root = type { i64, i32 }

@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"usbd_transfer_unsetup can sleep!\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid setup reference count\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_transfer_unsetup(%struct.usb_xfer** %0, i64 %1) #0 {
  %3 = alloca %struct.usb_xfer**, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.usb_xfer*, align 8
  %6 = alloca %struct.usb_xfer_root*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_xfer** %0, %struct.usb_xfer*** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @WARN_GIANTOK, align 4
  %9 = load i32, i32* @WARN_SLEEPOK, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @WITNESS_WARN(i32 %10, i32* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %89, %23, %2
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %4, align 8
  %15 = icmp ne i64 %13, 0
  br i1 %15, label %16, label %90

16:                                               ; preds = %12
  %17 = load %struct.usb_xfer**, %struct.usb_xfer*** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %17, i64 %18
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %19, align 8
  store %struct.usb_xfer* %20, %struct.usb_xfer** %5, align 8
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %22 = icmp eq %struct.usb_xfer* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %12

24:                                               ; preds = %16
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %26 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %25, i32 0, i32 3
  %27 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %26, align 8
  store %struct.usb_xfer_root* %27, %struct.usb_xfer_root** %6, align 8
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %29 = call i32 @USB_XFER_LOCK(%struct.usb_xfer* %28)
  %30 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %31 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @USB_BUS_LOCK(i32 %32)
  %34 = load %struct.usb_xfer**, %struct.usb_xfer*** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.usb_xfer*, %struct.usb_xfer** %34, i64 %35
  store %struct.usb_xfer* null, %struct.usb_xfer** %36, align 8
  %37 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %38 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @USB_BUS_UNLOCK(i32 %39)
  %41 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %42 = call i32 @USB_XFER_UNLOCK(%struct.usb_xfer* %41)
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %44 = call i32 @usbd_transfer_drain(%struct.usb_xfer* %43)
  %45 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %46 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @USB_BUS_LOCK(i32 %47)
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %50 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %56 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @USB_BUS_UNLOCK(i32 %57)
  %59 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %60 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %59, i32 0, i32 0
  %61 = call i32 @usb_callout_drain(i32* %60)
  %62 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %63 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @USB_BUS_LOCK(i32 %64)
  %66 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %67 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @USB_ASSERT(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %73 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %77 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %24
  %81 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @usbd_transfer_unsetup_sub(%struct.usb_xfer_root* %81, i32 %82)
  br label %89

84:                                               ; preds = %24
  %85 = load %struct.usb_xfer_root*, %struct.usb_xfer_root** %6, align 8
  %86 = getelementptr inbounds %struct.usb_xfer_root, %struct.usb_xfer_root* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @USB_BUS_UNLOCK(i32 %87)
  br label %89

89:                                               ; preds = %84, %80
  br label %12

90:                                               ; preds = %12
  ret void
}

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*) #1

declare dso_local i32 @USB_XFER_LOCK(%struct.usb_xfer*) #1

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

declare dso_local i32 @USB_XFER_UNLOCK(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_drain(%struct.usb_xfer*) #1

declare dso_local i32 @usb_callout_drain(i32*) #1

declare dso_local i32 @USB_ASSERT(i32, i8*) #1

declare dso_local i32 @usbd_transfer_unsetup_sub(%struct.usb_xfer_root*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
