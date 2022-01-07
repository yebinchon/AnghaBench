; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_ufm.c_ufm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_ufm.c_ufm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_attach_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ufm_softc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ufm lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@ufm_fifo_methods = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ufm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_attach_arg*, align 8
  %5 = alloca %struct.ufm_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.usb_attach_arg* @device_get_ivars(i32 %7)
  store %struct.usb_attach_arg* %8, %struct.usb_attach_arg** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ufm_softc* @device_get_softc(i32 %9)
  store %struct.ufm_softc* %10, %struct.ufm_softc** %5, align 8
  %11 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %12 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ufm_softc*, %struct.ufm_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ufm_softc, %struct.ufm_softc* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_get_unit(i32 %16)
  %18 = load %struct.ufm_softc*, %struct.ufm_softc** %5, align 8
  %19 = getelementptr inbounds %struct.ufm_softc, %struct.ufm_softc* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ufm_softc*, %struct.ufm_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ufm_softc, %struct.ufm_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i8* @device_get_nameunit(i32 %23)
  %25 = call i32 @snprintf(i32 %22, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.ufm_softc*, %struct.ufm_softc** %5, align 8
  %27 = getelementptr inbounds %struct.ufm_softc, %struct.ufm_softc* %26, i32 0, i32 1
  %28 = load i32, i32* @MTX_DEF, align 4
  %29 = load i32, i32* @MTX_RECURSE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @mtx_init(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_set_usb_desc(i32 %32)
  %34 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %35 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ufm_softc*, %struct.ufm_softc** %5, align 8
  %38 = load %struct.ufm_softc*, %struct.ufm_softc** %5, align 8
  %39 = getelementptr inbounds %struct.ufm_softc, %struct.ufm_softc* %38, i32 0, i32 1
  %40 = load %struct.ufm_softc*, %struct.ufm_softc** %5, align 8
  %41 = getelementptr inbounds %struct.ufm_softc, %struct.ufm_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_get_unit(i32 %42)
  %44 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %4, align 8
  %45 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @UID_ROOT, align 4
  %49 = load i32, i32* @GID_OPERATOR, align 4
  %50 = call i32 @usb_fifo_attach(i32 %36, %struct.ufm_softc* %37, i32* %39, i32* @ufm_fifo_methods, i32* %41, i32 %43, i32 -1, i32 %47, i32 %48, i32 %49, i32 420)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %1
  br label %55

54:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

55:                                               ; preds = %53
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @ufm_detach(i32 %56)
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %54
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local %struct.ufm_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @usb_fifo_attach(i32, %struct.ufm_softc*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ufm_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
