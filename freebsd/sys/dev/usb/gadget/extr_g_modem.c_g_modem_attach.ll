; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_modem.c_g_modem_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_modem.c_g_modem_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_modem_softc = type { i32, i32, i32, i32, i32 }
%struct.usb_attach_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"g_modem\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@G_MODEM_MODE_SILENT = common dso_local global i32 0, align 4
@g_modem_config = common dso_local global i32 0, align 4
@G_MODEM_N_TRANSFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @g_modem_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_modem_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_modem_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i64], align 16
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.g_modem_softc* @device_get_softc(i32 %8)
  store %struct.g_modem_softc* %9, %struct.g_modem_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.usb_attach_arg* @device_get_ivars(i32 %10)
  store %struct.usb_attach_arg* %11, %struct.usb_attach_arg** %5, align 8
  %12 = call i32 @DPRINTFN(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_set_usb_desc(i32 %13)
  %15 = load %struct.g_modem_softc*, %struct.g_modem_softc** %4, align 8
  %16 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %15, i32 0, i32 0
  %17 = load i32, i32* @MTX_DEF, align 4
  %18 = call i32 @mtx_init(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %17)
  %19 = load %struct.g_modem_softc*, %struct.g_modem_softc** %4, align 8
  %20 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %19, i32 0, i32 4
  %21 = load %struct.g_modem_softc*, %struct.g_modem_softc** %4, align 8
  %22 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %21, i32 0, i32 0
  %23 = call i32 @usb_callout_init_mtx(i32* %20, i32* %22, i32 0)
  %24 = load %struct.g_modem_softc*, %struct.g_modem_softc** %4, align 8
  %25 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %24, i32 0, i32 3
  %26 = load %struct.g_modem_softc*, %struct.g_modem_softc** %4, align 8
  %27 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %26, i32 0, i32 0
  %28 = call i32 @usb_callout_init_mtx(i32* %25, i32* %27, i32 0)
  %29 = load i32, i32* @G_MODEM_MODE_SILENT, align 4
  %30 = load %struct.g_modem_softc*, %struct.g_modem_softc** %4, align 8
  %31 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %33 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 %35, i64* %36, align 16
  %37 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %38 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 %41, i64* %42, align 8
  %43 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %44 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %47 = load %struct.g_modem_softc*, %struct.g_modem_softc** %4, align 8
  %48 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @g_modem_config, align 4
  %51 = load i32, i32* @G_MODEM_N_TRANSFER, align 4
  %52 = load %struct.g_modem_softc*, %struct.g_modem_softc** %4, align 8
  %53 = load %struct.g_modem_softc*, %struct.g_modem_softc** %4, align 8
  %54 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %53, i32 0, i32 0
  %55 = call i32 @usbd_transfer_setup(i32 %45, i64* %46, i32 %49, i32 %50, i32 %51, %struct.g_modem_softc* %52, i32* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %1
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @usbd_errstr(i32 %59)
  %61 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %81

62:                                               ; preds = %1
  %63 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %64 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %69 = load i64, i64* %68, align 16
  %70 = call i32 @usbd_set_parent_iface(i32 %65, i64 %67, i64 %69)
  %71 = load %struct.g_modem_softc*, %struct.g_modem_softc** %4, align 8
  %72 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %71, i32 0, i32 0
  %73 = call i32 @mtx_lock(i32* %72)
  %74 = load %struct.g_modem_softc*, %struct.g_modem_softc** %4, align 8
  %75 = call i32 @g_modem_timeout_reset(%struct.g_modem_softc* %74)
  %76 = load %struct.g_modem_softc*, %struct.g_modem_softc** %4, align 8
  %77 = call i32 @g_modem_watchdog_reset(%struct.g_modem_softc* %76)
  %78 = load %struct.g_modem_softc*, %struct.g_modem_softc** %4, align 8
  %79 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %78, i32 0, i32 0
  %80 = call i32 @mtx_unlock(i32* %79)
  store i32 0, i32* %2, align 4
  br label %85

81:                                               ; preds = %58
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @g_modem_detach(i32 %82)
  %84 = load i32, i32* @ENXIO, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %62
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.g_modem_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i64*, i32, i32, i32, %struct.g_modem_softc*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_set_parent_iface(i32, i64, i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @g_modem_timeout_reset(%struct.g_modem_softc*) #1

declare dso_local i32 @g_modem_watchdog_reset(%struct.g_modem_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_modem_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
