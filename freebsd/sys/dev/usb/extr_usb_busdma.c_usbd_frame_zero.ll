; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_busdma.c_usbd_frame_zero.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_busdma.c_usbd_frame_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_page_cache = type { i32 }
%struct.usb_page_search = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_frame_zero(%struct.usb_page_cache* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.usb_page_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_page_search, align 8
  store %struct.usb_page_cache* %0, %struct.usb_page_cache** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %22, %3
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  %12 = load %struct.usb_page_cache*, %struct.usb_page_cache** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @usbd_get_page(%struct.usb_page_cache* %12, i64 %13, %struct.usb_page_search* %7)
  %15 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %11
  %23 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @memset(i32 %24, i32 0, i64 %26)
  %28 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %5, align 8
  %32 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %7, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub nsw i64 %34, %33
  store i64 %35, i64* %6, align 8
  br label %8

36:                                               ; preds = %8
  ret void
}

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i64, %struct.usb_page_search*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
