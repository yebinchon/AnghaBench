; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_explore_handle_re_enumerate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_explore_handle_re_enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@USB_MODE_HOST = common dso_local global i64 0, align 8
@USB_UNCONFIG_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unconfigure failed: %s: Ignored.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot reset root HUB\0A\00", align 1
@USB_IFACE_INDEX_ANY = common dso_local global i32 0, align 4
@USB_RE_ENUM_DONE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Could not unconfigure device (ignored)\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"cannot set port feature\0A\00", align 1
@UHF_PORT_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Could not disable port (ignored)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Configure failed: %s: Ignored.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uhub_explore_handle_re_enumerate(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %6 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @USB_MODE_HOST, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %122

12:                                               ; preds = %1
  %13 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %14 = call i64 @usbd_enum_lock(%struct.usb_device* %13)
  store i64 %14, i64* %3, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %111 [
    i32 128, label %18
    i32 130, label %56
    i32 129, label %90
  ]

18:                                               ; preds = %12
  %19 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %20 = load i32, i32* @USB_UNCONFIG_INDEX, align 4
  %21 = call i32 @usbd_set_config_index(%struct.usb_device* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @usbd_errstr(i32 %25)
  %27 = call i32 @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %30 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @DPRINTFN(i32 6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %38

35:                                               ; preds = %28
  %36 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %37 = call i32 @usbd_req_re_enumerate(%struct.usb_device* %36, i32* null)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %33
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %43 = call i32 @usbd_set_config_index(%struct.usb_device* %42, i32 0)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %49 = load i32, i32* @USB_IFACE_INDEX_ANY, align 4
  %50 = call i32 @usb_probe_and_attach(%struct.usb_device* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i8*, i8** @USB_RE_ENUM_DONE, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %55 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %116

56:                                               ; preds = %12
  %57 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %58 = load i32, i32* @USB_UNCONFIG_INDEX, align 4
  %59 = call i32 @usbd_set_config_index(%struct.usb_device* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %56
  %65 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %66 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 @DPRINTFN(i32 6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %85

71:                                               ; preds = %64
  %72 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %73 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %76 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @UHF_PORT_ENABLE, align 4
  %79 = call i32 @usbd_req_clear_port_feature(i32* %74, i32* null, i32 %77, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %71
  br label %85

85:                                               ; preds = %84, %69
  %86 = load i8*, i8** @USB_RE_ENUM_DONE, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %89 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %116

90:                                               ; preds = %12
  %91 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %92 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %93 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @usbd_set_config_index(%struct.usb_device* %91, i32 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @usbd_errstr(i32 %99)
  %101 = call i32 @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  br label %106

102:                                              ; preds = %90
  %103 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %104 = load i32, i32* @USB_IFACE_INDEX_ANY, align 4
  %105 = call i32 @usb_probe_and_attach(%struct.usb_device* %103, i32 %104)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %98
  %107 = load i8*, i8** @USB_RE_ENUM_DONE, align 8
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %110 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %116

111:                                              ; preds = %12
  %112 = load i8*, i8** @USB_RE_ENUM_DONE, align 8
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %115 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %111, %106, %85, %51
  %117 = load i64, i64* %3, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %121 = call i32 @usbd_enum_unlock(%struct.usb_device* %120)
  br label %122

122:                                              ; preds = %11, %119, %116
  ret void
}

declare dso_local i64 @usbd_enum_lock(%struct.usb_device*) #1

declare dso_local i32 @usbd_set_config_index(%struct.usb_device*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @usbd_req_re_enumerate(%struct.usb_device*, i32*) #1

declare dso_local i32 @usb_probe_and_attach(%struct.usb_device*, i32) #1

declare dso_local i32 @usbd_req_clear_port_feature(i32*, i32*, i32, i32) #1

declare dso_local i32 @usbd_enum_unlock(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
