; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_dump.c_dump_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_dump.c_dump_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }
%struct.libusb20_interface = type { i64, i64, i32, %struct.LIBUSB20_INTERFACE_DESC_DECODED }
%struct.LIBUSB20_INTERFACE_DESC_DECODED = type { i32 }

@DUMP2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\0A     Endpoint %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libusb20_device*, %struct.libusb20_interface*)* @dump_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_iface(%struct.libusb20_device* %0, %struct.libusb20_interface* %1) #0 {
  %3 = alloca %struct.libusb20_device*, align 8
  %4 = alloca %struct.libusb20_interface*, align 8
  %5 = alloca %struct.LIBUSB20_INTERFACE_DESC_DECODED*, align 8
  %6 = alloca i64, align 8
  store %struct.libusb20_device* %0, %struct.libusb20_device** %3, align 8
  store %struct.libusb20_interface* %1, %struct.libusb20_interface** %4, align 8
  %7 = load %struct.libusb20_interface*, %struct.libusb20_interface** %4, align 8
  %8 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %7, i32 0, i32 3
  store %struct.LIBUSB20_INTERFACE_DESC_DECODED* %8, %struct.LIBUSB20_INTERFACE_DESC_DECODED** %5, align 8
  %9 = load i32, i32* @DUMP2, align 4
  %10 = load %struct.LIBUSB20_INTERFACE_DESC_DECODED*, %struct.LIBUSB20_INTERFACE_DESC_DECODED** %5, align 8
  %11 = call i32 @LIBUSB20_INTERFACE_DESC(i32 %9, %struct.LIBUSB20_INTERFACE_DESC_DECODED* %10)
  %12 = load %struct.libusb20_interface*, %struct.libusb20_interface** %4, align 8
  %13 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %12, i32 0, i32 2
  %14 = call i32 @dump_extra(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.libusb20_interface*, %struct.libusb20_interface** %4, align 8
  %18 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load %struct.libusb20_device*, %struct.libusb20_device** %3, align 8
  %25 = load %struct.libusb20_interface*, %struct.libusb20_interface** %4, align 8
  %26 = getelementptr inbounds %struct.libusb20_interface, %struct.libusb20_interface* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @dump_endpoint(%struct.libusb20_device* %24, i64 %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i64, i64* %6, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %15

34:                                               ; preds = %15
  ret void
}

declare dso_local i32 @LIBUSB20_INTERFACE_DESC(i32, %struct.LIBUSB20_INTERFACE_DESC_DECODED*) #1

declare dso_local i32 @dump_extra(i32*, i8*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @dump_endpoint(%struct.libusb20_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
