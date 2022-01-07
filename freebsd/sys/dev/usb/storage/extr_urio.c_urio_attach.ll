; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_urio.c_urio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_urio.c_urio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.urio_softc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"urio lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@urio_config = common dso_local global i32 0, align 4
@URIO_T_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@urio_fifo_methods = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @urio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.urio_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.usb_attach_arg* @device_get_ivars(i32 %7)
  store %struct.usb_attach_arg* %8, %struct.usb_attach_arg** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.urio_softc* @device_get_softc(i32 %9)
  store %struct.urio_softc* %10, %struct.urio_softc** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_set_usb_desc(i32 %11)
  %13 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %14 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %17 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %19 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %18, i32 0, i32 1
  %20 = load i32, i32* @MTX_DEF, align 4
  %21 = load i32, i32* @MTX_RECURSE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @mtx_init(i32* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %22)
  %24 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %25 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i8* @device_get_nameunit(i32 %27)
  %29 = call i32 @snprintf(i32 %26, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %31 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %34 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %37 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @urio_config, align 4
  %40 = load i32, i32* @URIO_T_MAX, align 4
  %41 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %42 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %43 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %42, i32 0, i32 1
  %44 = call i32 @usbd_transfer_setup(i32 %32, i32* %35, i32 %38, i32 %39, i32 %40, %struct.urio_softc* %41, i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %1
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @usbd_errstr(i32 %48)
  %50 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %73

51:                                               ; preds = %1
  %52 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %53 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %56 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %57 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %56, i32 0, i32 1
  %58 = load %struct.urio_softc*, %struct.urio_softc** %5, align 8
  %59 = getelementptr inbounds %struct.urio_softc, %struct.urio_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_get_unit(i32 %60)
  %62 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %63 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @UID_ROOT, align 4
  %67 = load i32, i32* @GID_OPERATOR, align 4
  %68 = call i32 @usb_fifo_attach(i32 %54, %struct.urio_softc* %55, i32* %57, i32* @urio_fifo_methods, i32* %59, i32 %61, i32 -1, i32 %65, i32 %66, i32 %67, i32 420)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %51
  br label %73

72:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %77

73:                                               ; preds = %71, %47
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @urio_detach(i32 %74)
  %76 = load i32, i32* @ENOMEM, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %72
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.urio_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.urio_softc*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usb_fifo_attach(i32, %struct.urio_softc*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @urio_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
