; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_fdt_support.c_find_udev_in_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_fdt_support.c_find_udev_in_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"usb%x,%x\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.usb_device*)* @find_udev_in_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_udev_in_children(i64 %0, %struct.usb_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [16 x i8], align 16
  store i64 %0, i64* %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %11 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @UGETW(i32 %14)
  %16 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @UGETW(i32 %19)
  %21 = call i32 @snprintf(i8* %10, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20)
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @OF_child(i64 %22)
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %50, %2
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %30 = call i32 @ofw_bus_node_is_compatible(i64 %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %50

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @OF_getencprop(i64 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %8, i32 8)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 8
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %50

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %3, align 8
  br label %54

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %39, %32
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @OF_peer(i64 %51)
  store i64 %52, i64* %6, align 8
  br label %24

53:                                               ; preds = %24
  store i64 -1, i64* %3, align 8
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @ofw_bus_node_is_compatible(i64, i8*) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i64*, i32) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
