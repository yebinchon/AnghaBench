; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_get_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_get_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_interface_descriptor = type { i64, i32, i32 }

@UICLASS_MASS = common dso_local global i64 0, align 8
@UMASS_PROTO_SCSI = common dso_local global i64 0, align 8
@UMASS_PROTO_UFI = common dso_local global i64 0, align 8
@UMASS_PROTO_RBC = common dso_local global i64 0, align 8
@UMASS_PROTO_ATAPI = common dso_local global i64 0, align 8
@UMASS_PROTO_CBI = common dso_local global i64 0, align 8
@UMASS_PROTO_CBI_I = common dso_local global i64 0, align 8
@UMASS_PROTO_BBB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.usb_interface*)* @umass_get_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @umass_get_proto(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_interface_descriptor*, align 8
  %4 = alloca i64, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface* %5)
  store %struct.usb_interface_descriptor* %6, %struct.usb_interface_descriptor** %3, align 8
  %7 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %3, align 8
  %8 = icmp eq %struct.usb_interface_descriptor* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %3, align 8
  %11 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UICLASS_MASS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  br label %55

16:                                               ; preds = %9
  %17 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %3, align 8
  %18 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %36 [
    i32 131, label %20
    i32 128, label %24
    i32 132, label %28
    i32 130, label %32
    i32 129, label %32
  ]

20:                                               ; preds = %16
  %21 = load i64, i64* @UMASS_PROTO_SCSI, align 8
  %22 = load i64, i64* %4, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %4, align 8
  br label %37

24:                                               ; preds = %16
  %25 = load i64, i64* @UMASS_PROTO_UFI, align 8
  %26 = load i64, i64* %4, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %4, align 8
  br label %37

28:                                               ; preds = %16
  %29 = load i64, i64* @UMASS_PROTO_RBC, align 8
  %30 = load i64, i64* %4, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %4, align 8
  br label %37

32:                                               ; preds = %16, %16
  %33 = load i64, i64* @UMASS_PROTO_ATAPI, align 8
  %34 = load i64, i64* %4, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %4, align 8
  br label %37

36:                                               ; preds = %16
  br label %55

37:                                               ; preds = %32, %28, %24, %20
  %38 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %3, align 8
  %39 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %53 [
    i32 134, label %41
    i32 133, label %45
    i32 135, label %49
    i32 136, label %49
  ]

41:                                               ; preds = %37
  %42 = load i64, i64* @UMASS_PROTO_CBI, align 8
  %43 = load i64, i64* %4, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %4, align 8
  br label %54

45:                                               ; preds = %37
  %46 = load i64, i64* @UMASS_PROTO_CBI_I, align 8
  %47 = load i64, i64* %4, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %4, align 8
  br label %54

49:                                               ; preds = %37, %37
  %50 = load i64, i64* @UMASS_PROTO_BBB, align 8
  %51 = load i64, i64* %4, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %4, align 8
  br label %54

53:                                               ; preds = %37
  br label %55

54:                                               ; preds = %49, %45, %41
  br label %55

55:                                               ; preds = %54, %53, %36, %15
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
