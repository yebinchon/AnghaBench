; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_fdt_support.c_usb_fdt_get_mac_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_fdt_support.c_usb_fdt_get_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32, i32, i32 }

@usb_fdt_get_mac_addr.properties = internal global [2 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [12 x i8] c"mac-address\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_fdt_get_mac_addr(i32 %0, %struct.usb_ether* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ether*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [4 x i32], align 16
  store i32 %0, i32* %4, align 4
  store %struct.usb_ether* %1, %struct.usb_ether** %5, align 8
  %10 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %11 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %14 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @usb_fdt_get_node(i32 %12, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %45, %20
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @nitems(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @usb_fdt_get_mac_addr.properties, i64 0, i64 0))
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* @usb_fdt_get_mac_addr.properties, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %31 = call i64 @OF_getprop(i32 %26, i8* %29, i32* %30, i32 16)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %36 = call i64 @is_valid_mac_addr(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.usb_ether*, %struct.usb_ether** %5, align 8
  %40 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %43 = call i32 @memcpy(i32 %41, i32* %42, i32 4)
  store i32 0, i32* %3, align 4
  br label %50

44:                                               ; preds = %34, %25
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %21

48:                                               ; preds = %21
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %38, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @usb_fdt_get_node(i32, i32) #1

declare dso_local i64 @nitems(i8**) #1

declare dso_local i64 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i64 @is_valid_mac_addr(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
