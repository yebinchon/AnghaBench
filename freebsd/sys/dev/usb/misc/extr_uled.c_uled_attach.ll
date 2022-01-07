; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_uled.c_uled_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_uled.c_uled_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.uled_softc = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"uled lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@uled_fifo_methods = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uled_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uled_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.uled_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.usb_attach_arg* @device_get_ivars(i32 %8)
  store %struct.usb_attach_arg* %9, %struct.usb_attach_arg** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.uled_softc* @device_get_softc(i32 %10)
  store %struct.uled_softc* %11, %struct.uled_softc** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @device_get_unit(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %15 = call i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %14)
  %16 = load %struct.uled_softc*, %struct.uled_softc** %5, align 8
  %17 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_set_usb_desc(i32 %18)
  %20 = load %struct.uled_softc*, %struct.uled_softc** %5, align 8
  %21 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %20, i32 0, i32 2
  %22 = load i32, i32* @MTX_DEF, align 4
  %23 = load i32, i32* @MTX_RECURSE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @mtx_init(i32* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %24)
  %26 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %27 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.uled_softc*, %struct.uled_softc** %5, align 8
  %30 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %32 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.uled_softc*, %struct.uled_softc** %5, align 8
  %35 = load %struct.uled_softc*, %struct.uled_softc** %5, align 8
  %36 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %35, i32 0, i32 2
  %37 = load %struct.uled_softc*, %struct.uled_softc** %5, align 8
  %38 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %41 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UID_ROOT, align 4
  %45 = load i32, i32* @GID_OPERATOR, align 4
  %46 = call i64 @usb_fifo_attach(i32 %33, %struct.uled_softc* %34, i32* %36, i32* @uled_fifo_methods, i32* %38, i32 %39, i32 -1, i32 %43, i32 %44, i32 %45, i32 420)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %1
  br label %60

50:                                               ; preds = %1
  %51 = load %struct.uled_softc*, %struct.uled_softc** %5, align 8
  %52 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.uled_softc*, %struct.uled_softc** %5, align 8
  %55 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.uled_softc*, %struct.uled_softc** %5, align 8
  %58 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  store i32 0, i32* %2, align 4
  br label %64

60:                                               ; preds = %49
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @uled_detach(i32 %61)
  %63 = load i32, i32* @ENOMEM, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %50
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.uled_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @usb_fifo_attach(i32, %struct.uled_softc*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @uled_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
