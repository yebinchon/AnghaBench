; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_pf.c_usbpf_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_pf.c_usbpf_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_bus = type { i32* }

@usbpf_cloner = common dso_local global i32 0, align 4
@usbusname = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usbpf_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbpf_uninit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usb_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @usbpf_cloner, align 4
  %10 = call i32 @if_clone_detach(i32 %9)
  %11 = load i32, i32* @usbusname, align 4
  %12 = call i32* @devclass_find(i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %55

16:                                               ; preds = %1
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @devclass_get_devices(i32* %17, i32** %4, i32* %3)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %55

22:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %48, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.usb_bus* @device_get_softc(i32 %32)
  store %struct.usb_bus* %33, %struct.usb_bus** %6, align 8
  %34 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %35 = icmp ne %struct.usb_bus* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %38 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @usbpf_cloner, align 4
  %43 = load %struct.usb_bus*, %struct.usb_bus** %6, align 8
  %44 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @usbpf_clone_destroy(i32 %42, i32* %45)
  br label %47

47:                                               ; preds = %41, %36, %27
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %23

51:                                               ; preds = %23
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @M_TEMP, align 4
  %54 = call i32 @free(i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %21, %15
  ret void
}

declare dso_local i32 @if_clone_detach(i32) #1

declare dso_local i32* @devclass_find(i32) #1

declare dso_local i32 @devclass_get_devices(i32*, i32**, i32*) #1

declare dso_local %struct.usb_bus* @device_get_softc(i32) #1

declare dso_local i32 @usbpf_clone_destroy(i32, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
