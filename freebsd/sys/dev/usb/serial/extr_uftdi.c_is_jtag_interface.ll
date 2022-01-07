; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_is_jtag_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_is_jtag_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jtag_by_name = type { i32, i32 }
%struct.usb_attach_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.usb_device_id = type { i32 }

@UFTDI_JTAG_IFACES_MAX = common dso_local global i64 0, align 8
@UFTDI_JTAG_MASK = common dso_local global i32 0, align 4
@UFTDI_JTAG_CHECK_STRING = common dso_local global i32 0, align 4
@jtag_products_by_name = common dso_local global %struct.jtag_by_name* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_attach_arg*, %struct.usb_device_id*)* @is_jtag_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_jtag_interface(%struct.usb_attach_arg* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.jtag_by_name*, align 8
  store %struct.usb_attach_arg* %0, %struct.usb_attach_arg** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %11 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UFTDI_JTAG_IFACES_MAX, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

17:                                               ; preds = %2
  %18 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %19 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @UFTDI_JTAG_IFACE(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @UFTDI_JTAG_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @UFTDI_JTAG_CHECK_STRING, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %17
  %31 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %32 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @usb_get_product(i32 %33)
  store i8* %34, i8** %8, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %60, %30
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.jtag_by_name*, %struct.jtag_by_name** @jtag_products_by_name, align 8
  %38 = call i32 @nitems(%struct.jtag_by_name* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load %struct.jtag_by_name*, %struct.jtag_by_name** @jtag_products_by_name, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.jtag_by_name, %struct.jtag_by_name* %41, i64 %43
  store %struct.jtag_by_name* %44, %struct.jtag_by_name** %9, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.jtag_by_name*, %struct.jtag_by_name** %9, align 8
  %47 = getelementptr inbounds %struct.jtag_by_name, %struct.jtag_by_name* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32* @strstr(i8* %45, i32 %48)
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load %struct.jtag_by_name*, %struct.jtag_by_name** %9, align 8
  %53 = getelementptr inbounds %struct.jtag_by_name, %struct.jtag_by_name* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %74

59:                                               ; preds = %51, %40
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %35

63:                                               ; preds = %35
  br label %73

64:                                               ; preds = %17
  %65 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %66 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %74

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %63
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %71, %58, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @UFTDI_JTAG_IFACE(i64) #1

declare dso_local i8* @usb_get_product(i32) #1

declare dso_local i32 @nitems(%struct.jtag_by_name*) #1

declare dso_local i32* @strstr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
