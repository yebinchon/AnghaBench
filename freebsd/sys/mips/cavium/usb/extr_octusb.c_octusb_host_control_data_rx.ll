; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_host_control_data_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_host_control_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octusb_td = type { i64, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octusb_td*)* @octusb_host_control_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octusb_host_control_data_rx(%struct.octusb_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octusb_td*, align 8
  %4 = alloca i64, align 8
  store %struct.octusb_td* %0, %struct.octusb_td** %3, align 8
  %5 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %6 = call i64 @octusb_host_alloc_endpoint(%struct.octusb_td* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %76

9:                                                ; preds = %1
  %10 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %11 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %76

15:                                               ; preds = %9
  %16 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %17 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %22 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %20, %25
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %29 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %15
  %33 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %34 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %32, %15
  %37 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %38 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %41 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %44 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %49 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %47, %52
  %54 = add nsw i64 %53, 8
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @usbd_copy_in(i32 %39, i32 %42, i64 %54, i64 %55)
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %59 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %66 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.octusb_td*, %struct.octusb_td** %3, align 8
  %71 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %69
  store i64 %75, i64* %73, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %36, %14, %8
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @octusb_host_alloc_endpoint(%struct.octusb_td*) #1

declare dso_local i32 @usbd_copy_in(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
