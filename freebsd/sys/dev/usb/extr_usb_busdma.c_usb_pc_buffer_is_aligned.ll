; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_busdma.c_usb_pc_buffer_is_aligned.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_busdma.c_usb_pc_buffer_is_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_page_cache = type { i32 }
%struct.usb_page_search = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_pc_buffer_is_aligned(%struct.usb_page_cache* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_page_cache*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_page_search, align 8
  store %struct.usb_page_cache* %0, %struct.usb_page_cache** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  br label %11

11:                                               ; preds = %40, %4
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = load %struct.usb_page_cache*, %struct.usb_page_cache** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @usbd_get_page(%struct.usb_page_cache* %15, i64 %16, %struct.usb_page_search* %10)
  %18 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %10, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %10, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  br label %25

25:                                               ; preds = %22, %14
  %26 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %10, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @USB_P2U(i32 %27)
  %29 = load i64, i64* %9, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %50

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %10, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %50

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %10, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %10, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %8, align 8
  br label %11

49:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %39, %32
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @usbd_get_page(%struct.usb_page_cache*, i64, %struct.usb_page_search*) #1

declare dso_local i64 @USB_P2U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
