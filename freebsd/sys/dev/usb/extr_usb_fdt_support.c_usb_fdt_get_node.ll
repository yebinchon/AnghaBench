; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_fdt_support.c_usb_fdt_get_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_fdt_support.c_usb_fdt_get_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.usb_device*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_UDEV_NEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Too many hubs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_fdt_get_node(i32 %0, %struct.usb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  %13 = load i32, i32* @MAX_UDEV_NEST, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca %struct.usb_device*, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ofw_bus_get_node(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %66

25:                                               ; preds = %2
  %26 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  store %struct.usb_device* %26, %struct.usb_device** %6, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %43, %25
  %28 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = load %struct.usb_device*, %struct.usb_device** %29, align 8
  %31 = icmp ne %struct.usb_device* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @nitems(%struct.usb_device** %16)
  %35 = icmp slt i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %16, i64 %41
  store %struct.usb_device* %38, %struct.usb_device** %42, align 8
  br label %43

43:                                               ; preds = %32
  %44 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 0
  %46 = load %struct.usb_device*, %struct.usb_device** %45, align 8
  store %struct.usb_device* %46, %struct.usb_device** %6, align 8
  br label %27

47:                                               ; preds = %27
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %63, %47
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.usb_device*, %struct.usb_device** %16, i64 %53
  %55 = load %struct.usb_device*, %struct.usb_device** %54, align 8
  %56 = call i32 @find_udev_in_children(i32 %50, %struct.usb_device* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %49
  br label %64

63:                                               ; preds = %59
  br label %49

64:                                               ; preds = %62
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %66

66:                                               ; preds = %64, %24
  %67 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ofw_bus_get_node(i32) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @nitems(%struct.usb_device**) #2

declare dso_local i32 @find_udev_in_children(i32, %struct.usb_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
