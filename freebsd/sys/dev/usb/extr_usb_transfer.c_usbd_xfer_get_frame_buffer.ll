; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_xfer_get_frame_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_xfer_get_frame_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, i32* }
%struct.usb_page_search = type { i8* }

@.str = private unnamed_addr constant [21 x i8] c"frame index overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @usbd_xfer_get_frame_buffer(%struct.usb_xfer* %0, i64 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.usb_page_search, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @usbd_get_page(i32* %17, i32 0, %struct.usb_page_search* %5)
  %19 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %5, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  ret i8* %20
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @usbd_get_page(i32*, i32, %struct.usb_page_search*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
