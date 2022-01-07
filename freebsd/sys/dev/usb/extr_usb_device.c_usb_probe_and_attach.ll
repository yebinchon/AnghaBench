; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_probe_and_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_probe_and_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32 }
%struct.usb_attach_arg = type { i64, i32*, %struct.TYPE_4__, i64, %struct.usb_interface* }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32 }
%struct.usb_interface = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"udev == NULL\0A\00", align 1
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@USB_UNCONFIG_INDEX = common dso_local global i64 0, align 8
@USB_IFACE_INDEX_ANY = common dso_local global i64 0, align 8
@UQ_MSC_DYMO_EJECT = common dso_local global i32 0, align 4
@UAA_DEV_EJECTING = common dso_local global i64 0, align 8
@usb_dev_configured = common dso_local global i32 0, align 4
@UAA_DEV_READY = common dso_local global i64 0, align 8
@USB_IFACE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"end of interfaces at %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"iclass=%u/%u/%u iindex=%u/%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"device delete child failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_probe_and_attach(%struct.usb_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.usb_attach_arg, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %12 = icmp eq %struct.usb_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %164

16:                                               ; preds = %2
  %17 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %18 = call i64 @usbd_enum_lock(%struct.usb_device* %17)
  store i64 %18, i64* %10, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @USB_UNCONFIG_INDEX, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %157

25:                                               ; preds = %16
  %26 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %27 = call i32 @usb_init_attach_arg(%struct.usb_device* %26, %struct.usb_attach_arg* %6)
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @USB_IFACE_INDEX_ANY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = load i32, i32* @UQ_MSC_DYMO_EJECT, align 4
  %33 = call i64 @usb_test_quirk(%struct.usb_attach_arg* %6, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %37 = call i64 @usb_dymo_eject(%struct.usb_device* %36, i32 0)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i64, i64* @UAA_DEV_EJECTING, align 8
  %41 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %35, %31
  %43 = load i32, i32* @usb_dev_configured, align 4
  %44 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %45 = call i32 @EVENTHANDLER_INVOKE(i32 %43, %struct.usb_device* %44, %struct.usb_attach_arg* %6)
  %46 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @UAA_DEV_READY, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %52 = call i32 @usb_unconfigure(%struct.usb_device* %51, i32 0)
  br label %157

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %25
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @USB_IFACE_INDEX_ANY, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64, i64* %5, align 8
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %9, align 8
  br label %64

62:                                               ; preds = %54
  store i64 0, i64* %8, align 8
  %63 = load i64, i64* @USB_IFACE_MAX, align 8
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %62, %58
  br label %65

65:                                               ; preds = %153, %64
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %156

69:                                               ; preds = %65
  %70 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %70, i64 %71)
  store %struct.usb_interface* %72, %struct.usb_interface** %7, align 8
  %73 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %74 = icmp eq %struct.usb_interface* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i64, i64* %8, align 8
  %77 = call i32 (i32, i8*, ...) @DPRINTFN(i32 2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %76)
  br label %156

78:                                               ; preds = %69
  %79 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %80 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = icmp eq %struct.TYPE_3__* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %153

84:                                               ; preds = %78
  %85 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %86 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 4
  store %struct.usb_interface* %85, %struct.usb_interface** %86, align 8
  %87 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %88 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %95 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %102 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %112 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 3
  store i64 0, i64* %118, align 8
  %119 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32, i8*, ...) @DPRINTFN(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %124, i32 %127, i64 %130, i32 %133)
  %135 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %136 = call i32 @usb_probe_and_attach_sub(%struct.usb_device* %135, %struct.usb_attach_arg* %6)
  %137 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %84
  br label %153

141:                                              ; preds = %84
  %142 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %143 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i64 @device_delete_child(i32 %144, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %141
  %152 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %6, i32 0, i32 1
  store i32* null, i32** %152, align 8
  br label %153

153:                                              ; preds = %151, %140, %83
  %154 = load i64, i64* %8, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %8, align 8
  br label %65

156:                                              ; preds = %75, %65
  br label %157

157:                                              ; preds = %156, %50, %24
  %158 = load i64, i64* %10, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %162 = call i32 @usbd_enum_unlock(%struct.usb_device* %161)
  br label %163

163:                                              ; preds = %160, %157
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %13
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @usbd_enum_lock(%struct.usb_device*) #1

declare dso_local i32 @usb_init_attach_arg(%struct.usb_device*, %struct.usb_attach_arg*) #1

declare dso_local i64 @usb_test_quirk(%struct.usb_attach_arg*, i32) #1

declare dso_local i64 @usb_dymo_eject(%struct.usb_device*, i32) #1

declare dso_local i32 @EVENTHANDLER_INVOKE(i32, %struct.usb_device*, %struct.usb_attach_arg*) #1

declare dso_local i32 @usb_unconfigure(%struct.usb_device*, i32) #1

declare dso_local %struct.usb_interface* @usbd_get_iface(%struct.usb_device*, i64) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @usb_probe_and_attach_sub(%struct.usb_device*, %struct.usb_attach_arg*) #1

declare dso_local i64 @device_delete_child(i32, i32*) #1

declare dso_local i32 @usbd_enum_unlock(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
