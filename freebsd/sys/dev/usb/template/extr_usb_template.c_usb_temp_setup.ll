; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_temp_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_temp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32*, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.usb_temp_setup* }
%struct.usb_temp_setup = type { i64, i8*, i32*, i32, i32 }
%struct.usb_temp_device_desc = type { i32 }

@USB_ERR_INVAL = common dso_local global i8* null, align 8
@USB_ERR_NOMEM = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [63 x i8] c"Could not resolve endpoints for Device Descriptor, error = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Could not resolve endpoints for Config Descriptor %u, error = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @usb_temp_setup(%struct.usb_device* %0, %struct.usb_temp_device_desc* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_temp_device_desc*, align 8
  %6 = alloca %struct.usb_temp_setup*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_temp_device_desc* %1, %struct.usb_temp_device_desc** %5, align 8
  %11 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %5, align 8
  %12 = icmp eq %struct.usb_temp_device_desc* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %149

14:                                               ; preds = %2
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = call i64 @usbd_ctrl_lock(%struct.usb_device* %15)
  store i64 %16, i64* %10, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %19, align 8
  store %struct.usb_temp_setup* %20, %struct.usb_temp_setup** %6, align 8
  %21 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %22 = call i32 @memset(%struct.usb_temp_setup* %21, i32 0, i32 32)
  %23 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %27 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %33 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %35 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %5, align 8
  %36 = call i32 @usb_make_device_desc(%struct.usb_temp_setup* %34, %struct.usb_temp_device_desc* %35)
  %37 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %38 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %14
  br label %132

42:                                               ; preds = %14
  %43 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %44 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i8*, i8** @USB_ERR_INVAL, align 8
  %49 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %50 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %132

51:                                               ; preds = %42
  %52 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %53 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %54 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32* @usbd_alloc_config_desc(%struct.usb_device* %52, i64 %55)
  %57 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %58 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %60 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load i8*, i8** @USB_ERR_NOMEM, align 8
  %65 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %66 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  br label %132

67:                                               ; preds = %51
  %68 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %69 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %71 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %5, align 8
  %72 = call i32 @usb_make_device_desc(%struct.usb_temp_setup* %70, %struct.usb_temp_device_desc* %71)
  %73 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %74 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %77 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %76, i32 0, i32 0
  store i32* %75, i32** %77, align 8
  %78 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %79 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  br label %132

83:                                               ; preds = %67
  %84 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %85 = call i8* @usb_temp_get_device_desc(%struct.usb_device* %84)
  store i8* %85, i8** %7, align 8
  %86 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i8* @usb_hw_ep_resolve(%struct.usb_device* %86, i8* %87)
  %89 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %90 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %92 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %83
  %96 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %97 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @usbd_errstr(i8* %98)
  %100 = sext i32 %99 to i64
  %101 = call i32 (i32, i8*, i64, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %100)
  br label %132

102:                                              ; preds = %83
  store i64 0, i64* %9, align 8
  br label %103

103:                                              ; preds = %128, %102
  %104 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i8* @usb_temp_get_config_desc(%struct.usb_device* %104, i32* null, i64 %105)
  store i8* %106, i8** %7, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %131

110:                                              ; preds = %103
  %111 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = call i8* @usb_hw_ep_resolve(%struct.usb_device* %111, i8* %112)
  %114 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %115 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %117 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %110
  %121 = load i64, i64* %9, align 8
  %122 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %123 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @usbd_errstr(i8* %124)
  %126 = call i32 (i32, i8*, i64, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %121, i32 %125)
  br label %132

127:                                              ; preds = %110
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %9, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %9, align 8
  br label %103

131:                                              ; preds = %109
  br label %132

132:                                              ; preds = %131, %120, %95, %82, %63, %47, %41
  %133 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %6, align 8
  %134 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %8, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %140 = call i32 @usb_temp_unsetup(%struct.usb_device* %139)
  br label %141

141:                                              ; preds = %138, %132
  %142 = load i64, i64* %10, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %146 = call i32 @usbd_ctrl_unlock(%struct.usb_device* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i8*, i8** %8, align 8
  store i8* %148, i8** %3, align 8
  br label %149

149:                                              ; preds = %147, %13
  %150 = load i8*, i8** %3, align 8
  ret i8* %150
}

declare dso_local i64 @usbd_ctrl_lock(%struct.usb_device*) #1

declare dso_local i32 @memset(%struct.usb_temp_setup*, i32, i32) #1

declare dso_local i32 @usb_make_device_desc(%struct.usb_temp_setup*, %struct.usb_temp_device_desc*) #1

declare dso_local i32* @usbd_alloc_config_desc(%struct.usb_device*, i64) #1

declare dso_local i8* @usb_temp_get_device_desc(%struct.usb_device*) #1

declare dso_local i8* @usb_hw_ep_resolve(%struct.usb_device*, i8*) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i64, ...) #1

declare dso_local i32 @usbd_errstr(i8*) #1

declare dso_local i8* @usb_temp_get_config_desc(%struct.usb_device*, i32*, i64) #1

declare dso_local i32 @usb_temp_unsetup(%struct.usb_device*) #1

declare dso_local i32 @usbd_ctrl_unlock(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
