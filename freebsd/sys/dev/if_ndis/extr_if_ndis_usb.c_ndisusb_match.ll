; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis_usb.c_ndisusb_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/if_ndis/extr_if_ndis_usb.c_ndisusb_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drvdb_ent = type { i32 }
%struct.usb_attach_arg = type { i64, %struct.drvdb_ent*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@USB_MODE_HOST = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@NDISUSB_CONFIG_NO = common dso_local global i64 0, align 8
@NDISUSB_IFACE_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"USB Bus\00", align 1
@ndisusb_devcompare = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ndisusb_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndisusb_match(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.drvdb_ent*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.usb_attach_arg* @device_get_ivars(i32 %6)
  store %struct.usb_attach_arg* %7, %struct.usb_attach_arg** %5, align 8
  %8 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %9 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USB_MODE_HOST, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %17 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NDISUSB_CONFIG_NO, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %51

24:                                               ; preds = %15
  %25 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %26 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NDISUSB_IFACE_INDEX, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %51

33:                                               ; preds = %24
  %34 = call i32* @windrv_lookup(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %2, align 4
  br label %51

38:                                               ; preds = %33
  %39 = load i64, i64* @ndisusb_devcompare, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %3, align 4
  %42 = call %struct.drvdb_ent* @windrv_match(i32 %40, i32 %41)
  store %struct.drvdb_ent* %42, %struct.drvdb_ent** %4, align 8
  %43 = load %struct.drvdb_ent*, %struct.drvdb_ent** %4, align 8
  %44 = icmp eq %struct.drvdb_ent* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %38
  %48 = load %struct.drvdb_ent*, %struct.drvdb_ent** %4, align 8
  %49 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %50 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %49, i32 0, i32 1
  store %struct.drvdb_ent* %48, %struct.drvdb_ent** %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %45, %36, %31, %22, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32* @windrv_lookup(i32, i8*) #1

declare dso_local %struct.drvdb_ent* @windrv_match(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
