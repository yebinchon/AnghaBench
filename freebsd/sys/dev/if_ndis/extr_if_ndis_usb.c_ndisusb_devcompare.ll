; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis_usb.c_ndisusb_devcompare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis_usb.c_ndisusb_devcompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_usb_type = type { i64, i64, i32* }
%struct.usb_attach_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@PNPBus = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.ndis_usb_type*, i32)* @ndisusb_devcompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndisusb_devcompare(i64 %0, %struct.ndis_usb_type* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ndis_usb_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_attach_arg*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.ndis_usb_type* %1, %struct.ndis_usb_type** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @PNPBus, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %4, align 4
  br label %52

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.usb_attach_arg* @device_get_ivars(i32 %15)
  store %struct.usb_attach_arg* %16, %struct.usb_attach_arg** %8, align 8
  br label %17

17:                                               ; preds = %47, %14
  %18 = load %struct.ndis_usb_type*, %struct.ndis_usb_type** %6, align 8
  %19 = getelementptr inbounds %struct.ndis_usb_type, %struct.ndis_usb_type* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %50

22:                                               ; preds = %17
  %23 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %8, align 8
  %24 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ndis_usb_type*, %struct.ndis_usb_type** %6, align 8
  %28 = getelementptr inbounds %struct.ndis_usb_type, %struct.ndis_usb_type* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %22
  %32 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %8, align 8
  %33 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ndis_usb_type*, %struct.ndis_usb_type** %6, align 8
  %37 = getelementptr inbounds %struct.ndis_usb_type, %struct.ndis_usb_type* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.ndis_usb_type*, %struct.ndis_usb_type** %6, align 8
  %43 = getelementptr inbounds %struct.ndis_usb_type, %struct.ndis_usb_type* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @device_set_desc(i32 %41, i32* %44)
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %31, %22
  %48 = load %struct.ndis_usb_type*, %struct.ndis_usb_type** %6, align 8
  %49 = getelementptr inbounds %struct.ndis_usb_type, %struct.ndis_usb_type* %48, i32 1
  store %struct.ndis_usb_type* %49, %struct.ndis_usb_type** %6, align 8
  br label %17

50:                                               ; preds = %17
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %40, %12
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @device_set_desc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
