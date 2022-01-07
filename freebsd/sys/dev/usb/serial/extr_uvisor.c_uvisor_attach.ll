; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvisor.c_uvisor_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uvisor.c_uvisor_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uvisor_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_config = type { i32 }

@UVISOR_N_TRANSFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sc=%p\0A\00", align 1
@uvisor_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"uvisor\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@UVISOR_IFACE_INDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"init failed, error=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"could not allocate all pipes\0A\00", align 1
@uvisor_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ucom_attach failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uvisor_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvisor_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.uvisor_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.usb_attach_arg* @device_get_ivars(i32 %10)
  store %struct.usb_attach_arg* %11, %struct.usb_attach_arg** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.uvisor_softc* @device_get_softc(i32 %12)
  store %struct.uvisor_softc* %13, %struct.uvisor_softc** %5, align 8
  %14 = load i32, i32* @UVISOR_N_TRANSFER, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca %struct.usb_config, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %19 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.uvisor_softc* %18)
  %20 = load i32, i32* @uvisor_config, align 4
  %21 = mul nuw i64 4, %15
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memcpy(%struct.usb_config* %17, i32 %20, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_set_usb_desc(i32 %24)
  %26 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %27 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %26, i32 0, i32 1
  %28 = load i32, i32* @MTX_DEF, align 4
  %29 = call i32 @mtx_init(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %28)
  %30 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %31 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %30, i32 0, i32 0
  %32 = call i32 @ucom_ref(i32* %31)
  %33 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %34 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %37 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %39 = call i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg* %38)
  %40 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %41 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %43 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %47 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @UVISOR_IFACE_INDEX, align 4
  %49 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %50 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %52 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %53 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @uvisor_init(%struct.uvisor_softc* %51, i32 %54, %struct.usb_config* %17)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %1
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @usbd_errstr(i32 %59)
  %61 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %98

62:                                               ; preds = %1
  %63 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %64 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %67 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %66, i32 0, i32 4
  %68 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %69 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @UVISOR_N_TRANSFER, align 4
  %72 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %73 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %74 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %73, i32 0, i32 1
  %75 = call i32 @usbd_transfer_setup(i32 %65, i32* %67, i32 %70, %struct.usb_config* %17, i32 %71, %struct.uvisor_softc* %72, i32* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %62
  %79 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %98

80:                                               ; preds = %62
  %81 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %82 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %81, i32 0, i32 0
  %83 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %84 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %83, i32 0, i32 2
  %85 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %86 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %87 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %86, i32 0, i32 1
  %88 = call i32 @ucom_attach(i32* %82, i32* %84, i32 1, %struct.uvisor_softc* %85, i32* @uvisor_callback, i32* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %98

93:                                               ; preds = %80
  %94 = load %struct.uvisor_softc*, %struct.uvisor_softc** %5, align 8
  %95 = getelementptr inbounds %struct.uvisor_softc, %struct.uvisor_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @ucom_set_pnpinfo_usb(i32* %95, i32 %96)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %102

98:                                               ; preds = %91, %78, %58
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @uvisor_detach(i32 %99)
  %101 = load i32, i32* @ENXIO, align 4
  store i32 %101, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.uvisor_softc* @device_get_softc(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @memcpy(%struct.usb_config*, i32, i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ucom_ref(i32*) #1

declare dso_local i32 @USB_GET_DRIVER_INFO(%struct.usb_attach_arg*) #1

declare dso_local i32 @uvisor_init(%struct.uvisor_softc*, i32, %struct.usb_config*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, %struct.usb_config*, i32, %struct.uvisor_softc*, i32*) #1

declare dso_local i32 @ucom_attach(i32*, i32*, i32, %struct.uvisor_softc*, i32*, i32*) #1

declare dso_local i32 @ucom_set_pnpinfo_usb(i32*, i32) #1

declare dso_local i32 @uvisor_detach(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
