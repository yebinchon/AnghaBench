; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustorage_fs_softc = type { i32, i32*, i8*, i8*, i8*, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32* }
%struct.usb_attach_arg = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_interface_descriptor = type { i32 }

@USB_POWER_MODE_SAVE = common dso_local global i32 0, align 4
@ustorage_fs_ramdisk = common dso_local global i32* null, align 8
@USTORAGE_FS_RAM_SECT = common dso_local global i32 0, align 4
@M_USB = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"USTORAGE_FS lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to get interface number\0A\00", align 1
@ustorage_fs_bbb_config = common dso_local global i32 0, align 4
@USTORAGE_FS_T_BBB_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"could not setup required transfers, %s\0A\00", align 1
@USTORAGE_FS_T_BBB_COMMAND = common dso_local global i64 0, align 8
@USTORAGE_FS_T_BBB_STATUS = common dso_local global i64 0, align 8
@USTORAGE_FS_T_BBB_DATA_READ = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ustorage_fs_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ustorage_fs_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ustorage_fs_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca %struct.usb_interface_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ustorage_fs_softc* @device_get_softc(i32 %9)
  store %struct.ustorage_fs_softc* %10, %struct.ustorage_fs_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.usb_attach_arg* @device_get_ivars(i32 %11)
  store %struct.usb_attach_arg* %12, %struct.usb_attach_arg** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 4
  %16 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %17 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_get_unit(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %24 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @USB_POWER_MODE_SAVE, align 4
  %27 = call i32 @usbd_set_power_mode(i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %1
  %31 = load i32*, i32** @ustorage_fs_ramdisk, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32, i32* @USTORAGE_FS_RAM_SECT, align 4
  %35 = shl i32 %34, 9
  %36 = load i32, i32* @M_USB, align 4
  %37 = load i32, i32* @M_ZERO, align 4
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = or i32 %37, %38
  %40 = call i32* @malloc(i32 %35, i32 %36, i32 %39)
  store i32* %40, i32** @ustorage_fs_ramdisk, align 8
  %41 = load i32*, i32** @ustorage_fs_ramdisk, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %2, align 4
  br label %151

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32*, i32** @ustorage_fs_ramdisk, align 8
  %48 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %49 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %48, i32 0, i32 6
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i32* %47, i32** %52, align 8
  %53 = load i32, i32* @USTORAGE_FS_RAM_SECT, align 4
  %54 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %55 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %54, i32 0, i32 6
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 8
  %59 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %60 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %59, i32 0, i32 6
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %46, %1
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @device_set_usb_desc(i32 %65)
  %67 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %68 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %67, i32 0, i32 0
  %69 = load i32, i32* @MTX_DEF, align 4
  %70 = load i32, i32* @MTX_RECURSE, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @mtx_init(i32* %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null, i32 %71)
  %73 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %74 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(i32 %75)
  store %struct.usb_interface_descriptor* %76, %struct.usb_interface_descriptor** %6, align 8
  %77 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %78 = icmp eq %struct.usb_interface_descriptor* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %64
  %80 = load i32, i32* %3, align 4
  %81 = call i32 (i32, i8*, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %147

82:                                               ; preds = %64
  %83 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %6, align 8
  %84 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %87 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %89 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %92 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %95 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @ustorage_fs_bbb_config, align 4
  %98 = load i32, i32* @USTORAGE_FS_T_BBB_MAX, align 4
  %99 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %100 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %101 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %100, i32 0, i32 0
  %102 = call i32 @usbd_transfer_setup(i32 %90, i32* %93, i32* %96, i32 %97, i32 %98, %struct.ustorage_fs_softc* %99, i32* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %82
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @usbd_errstr(i32 %107)
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %147

110:                                              ; preds = %82
  %111 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %112 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @USTORAGE_FS_T_BBB_COMMAND, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @usbd_xfer_get_frame_buffer(i32 %116, i32 0)
  %118 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %119 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  %120 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %121 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @USTORAGE_FS_T_BBB_STATUS, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @usbd_xfer_get_frame_buffer(i32 %125, i32 0)
  %127 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %128 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %127, i32 0, i32 3
  store i8* %126, i8** %128, align 8
  %129 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %130 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @USTORAGE_FS_T_BBB_DATA_READ, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @usbd_xfer_get_frame_buffer(i32 %134, i32 0)
  %136 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %137 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %139 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %138, i32 0, i32 0
  %140 = call i32 @mtx_lock(i32* %139)
  %141 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %142 = load i64, i64* @USTORAGE_FS_T_BBB_COMMAND, align 8
  %143 = call i32 @ustorage_fs_transfer_start(%struct.ustorage_fs_softc* %141, i64 %142)
  %144 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %4, align 8
  %145 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %144, i32 0, i32 0
  %146 = call i32 @mtx_unlock(i32* %145)
  store i32 0, i32* %2, align 4
  br label %151

147:                                              ; preds = %105, %79
  %148 = load i32, i32* %3, align 4
  %149 = call i32 @ustorage_fs_detach(i32 %148)
  %150 = load i32, i32* @ENXIO, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %147, %110, %43
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.ustorage_fs_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @usbd_set_power_mode(i32, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32*, i32, i32, %struct.ustorage_fs_softc*, i32*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i8* @usbd_xfer_get_frame_buffer(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ustorage_fs_transfer_start(%struct.ustorage_fs_softc*, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ustorage_fs_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
