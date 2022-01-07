; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_busdma.c_usbd_copy_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_busdma.c_usbd_copy_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_page_cache = type { i32 }
%struct.usb_page_search = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbd_copy_out(%struct.usb_page_cache* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.usb_page_cache*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.usb_page_search, align 8
  store %struct.usb_page_cache* %0, %struct.usb_page_cache** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  br label %10

10:                                               ; preds = %24, %4
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  %14 = load %struct.usb_page_cache*, %struct.usb_page_cache** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @usbd_get_page(%struct.usb_page_cache* %14, i64 %15, %struct.usb_page_search* %9)
  %17 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %13
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @memcpy(i8* %25, i32 %27, i64 %29)
  %31 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %6, align 8
  %35 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = sub nsw i64 %37, %36
  store i64 %38, i64* %8, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %9, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i8* @USB_ADD_BYTES(i8* %39, i64 %41)
  store i8* %42, i8** %7, align 8
  br label %10

43:                                               ; preds = %10
  ret void
}

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i64, %struct.usb_page_search*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i8* @USB_ADD_BYTES(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
