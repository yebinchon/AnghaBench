; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_uled.c_uled_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_uled.c_uled_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uled_softc = type { i32, i32 }
%struct.usb_device_request = type { i32, i32, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uled_softc*, i8*, i8*, i32, i32, i8*, i32)* @uled_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uled_ctrl_msg(%struct.uled_softc* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.uled_softc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.usb_device_request, align 8
  store %struct.uled_softc* %0, %struct.uled_softc** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %15, i32 0, i32 4
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %15, i32 0, i32 3
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %15, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @USETW(i32 %21, i32 %22)
  %24 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %15, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @USETW(i32 %25, i32 %26)
  %28 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %15, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @USETW(i32 %29, i32 %30)
  %32 = load %struct.uled_softc*, %struct.uled_softc** %8, align 8
  %33 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.uled_softc*, %struct.uled_softc** %8, align 8
  %36 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %35, i32 0, i32 0
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 @usbd_do_request_flags(i32 %34, i32* %36, %struct.usb_device_request* %15, i8* %37, i32 0, i32* null, i32 2000)
  ret i32 %38
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request_flags(i32, i32*, %struct.usb_device_request*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
