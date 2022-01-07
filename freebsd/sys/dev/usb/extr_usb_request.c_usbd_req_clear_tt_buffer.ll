; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_clear_tt_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_clear_tt_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.mtx = type { i32 }
%struct.usb_device_request = type { i32*, i32, i32, i32, i32 }

@UDCLASS_HUB = common dso_local global i64 0, align 8
@UDPROTO_HSHUBSTT = common dso_local global i64 0, align 8
@UT_WRITE_CLASS_OTHER = common dso_local global i32 0, align 4
@UR_CLEAR_TT_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbd_req_clear_tt_buffer(%struct.usb_device* %0, %struct.mtx* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.mtx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_device_request, align 8
  %14 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %7, align 8
  store %struct.mtx* %1, %struct.mtx** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UDCLASS_HUB, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %6
  %22 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UDPROTO_HSHUBSTT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %21, %6
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, 15
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 127
  %34 = shl i32 %33, 4
  %35 = or i32 %31, %34
  %36 = load i32, i32* %12, align 4
  %37 = and i32 %36, 128
  %38 = shl i32 %37, 8
  %39 = or i32 %35, %38
  %40 = load i32, i32* %11, align 4
  %41 = and i32 %40, 3
  %42 = shl i32 %41, 12
  %43 = or i32 %39, %42
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* @UT_WRITE_CLASS_OTHER, align 4
  %45 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @UR_CLEAR_TT_BUFFER, align 4
  %47 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 3
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @USETW(i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %52, i32* %55, align 4
  %56 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %13, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @USETW(i32 %60, i32 0)
  %62 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %63 = load %struct.mtx*, %struct.mtx** %8, align 8
  %64 = call i32 @usbd_do_request(%struct.usb_device* %62, %struct.mtx* %63, %struct.usb_device_request* %13, i32 0)
  ret i32 %64
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(%struct.usb_device*, %struct.mtx*, %struct.usb_device_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
