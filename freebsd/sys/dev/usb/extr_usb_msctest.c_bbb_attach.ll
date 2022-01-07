; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_msctest.c_bbb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_msctest.c_bbb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config = type { i32 }
%struct.bbb_transfer = type { i32*, i8*, i8*, i32, i8*, i32, i32 }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { %struct.usb_interface_descriptor* }
%struct.usb_interface_descriptor = type { i32, i32, i32 }

@bbb_config = common dso_local global %struct.usb_config* null, align 8
@ST_MAX = common dso_local global i32 0, align 4
@bbb_raw_config = common dso_local global %struct.usb_config* null, align 8
@M_USB = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"USB autoinstall\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"WBBB\00", align 1
@ST_DATA_RD = common dso_local global i64 0, align 8
@ST_COMMAND = common dso_local global i64 0, align 8
@ST_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bbb_transfer* (%struct.usb_device*, i32, i32)* @bbb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bbb_transfer* @bbb_attach(%struct.usb_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bbb_transfer*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_interface*, align 8
  %9 = alloca %struct.usb_interface_descriptor*, align 8
  %10 = alloca %struct.usb_config*, align 8
  %11 = alloca %struct.bbb_transfer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.usb_interface* @usbd_get_iface(%struct.usb_device* %14, i32 %15)
  store %struct.usb_interface* %16, %struct.usb_interface** %8, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %18 = icmp eq %struct.usb_interface* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct.bbb_transfer* null, %struct.bbb_transfer** %4, align 8
  br label %133

20:                                               ; preds = %3
  %21 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  %23 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %22, align 8
  store %struct.usb_interface_descriptor* %23, %struct.usb_interface_descriptor** %9, align 8
  %24 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %25 = icmp eq %struct.usb_interface_descriptor* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %28 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20
  store %struct.bbb_transfer* null, %struct.bbb_transfer** %4, align 8
  br label %133

33:                                               ; preds = %26
  %34 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %35 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %60 [
    i32 134, label %37
    i32 135, label %52
  ]

37:                                               ; preds = %33
  %38 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %39 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %42 [
    i32 131, label %41
    i32 128, label %41
    i32 130, label %41
    i32 129, label %41
  ]

41:                                               ; preds = %37, %37, %37, %37
  br label %43

42:                                               ; preds = %37
  store %struct.bbb_transfer* null, %struct.bbb_transfer** %4, align 8
  br label %133

43:                                               ; preds = %41
  %44 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %45 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %48 [
    i32 132, label %47
    i32 133, label %47
  ]

47:                                               ; preds = %43, %43
  br label %49

48:                                               ; preds = %43
  store %struct.bbb_transfer* null, %struct.bbb_transfer** %4, align 8
  br label %133

49:                                               ; preds = %47
  %50 = load %struct.usb_config*, %struct.usb_config** @bbb_config, align 8
  store %struct.usb_config* %50, %struct.usb_config** %10, align 8
  %51 = load i32, i32* @ST_MAX, align 4
  store i32 %51, i32* %13, align 4
  br label %61

52:                                               ; preds = %33
  %53 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %54 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %57 [
    i32 0, label %56
  ]

56:                                               ; preds = %52
  br label %58

57:                                               ; preds = %52
  store %struct.bbb_transfer* null, %struct.bbb_transfer** %4, align 8
  br label %133

58:                                               ; preds = %56
  %59 = load %struct.usb_config*, %struct.usb_config** @bbb_raw_config, align 8
  store %struct.usb_config* %59, %struct.usb_config** %10, align 8
  store i32 1, i32* %13, align 4
  br label %61

60:                                               ; preds = %33
  store %struct.bbb_transfer* null, %struct.bbb_transfer** %4, align 8
  br label %133

61:                                               ; preds = %58, %49
  %62 = load i32, i32* @M_USB, align 4
  %63 = load i32, i32* @M_WAITOK, align 4
  %64 = load i32, i32* @M_ZERO, align 4
  %65 = or i32 %63, %64
  %66 = call %struct.bbb_transfer* @malloc(i32 48, i32 %62, i32 %65)
  store %struct.bbb_transfer* %66, %struct.bbb_transfer** %11, align 8
  %67 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  %68 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %67, i32 0, i32 5
  %69 = load i32, i32* @MTX_DEF, align 4
  %70 = call i32 @mtx_init(i32* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %69)
  %71 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  %72 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %71, i32 0, i32 6
  %73 = call i32 @cv_init(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %75 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  %76 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.usb_config*, %struct.usb_config** %10, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  %81 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  %82 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %81, i32 0, i32 5
  %83 = call i64 @usbd_transfer_setup(%struct.usb_device* %74, i32* %6, i32* %77, %struct.usb_config* %78, i32 %79, %struct.bbb_transfer* %80, i32* %82)
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %12, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %61
  %87 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  %88 = call i32 @bbb_detach(%struct.bbb_transfer* %87)
  store %struct.bbb_transfer* null, %struct.bbb_transfer** %4, align 8
  br label %133

89:                                               ; preds = %61
  %90 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %91 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %130 [
    i32 134, label %93
  ]

93:                                               ; preds = %89
  %94 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  %95 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @ST_DATA_RD, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @usbd_xfer_get_frame_buffer(i32 %99, i32 0)
  %101 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  %102 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  %104 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @ST_DATA_RD, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @usbd_xfer_max_len(i32 %108)
  %110 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  %111 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  %113 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @ST_COMMAND, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @usbd_xfer_get_frame_buffer(i32 %117, i32 0)
  %119 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  %120 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  %122 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @ST_STATUS, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @usbd_xfer_get_frame_buffer(i32 %126, i32 0)
  %128 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  %129 = getelementptr inbounds %struct.bbb_transfer, %struct.bbb_transfer* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  br label %131

130:                                              ; preds = %89
  br label %131

131:                                              ; preds = %130, %93
  %132 = load %struct.bbb_transfer*, %struct.bbb_transfer** %11, align 8
  store %struct.bbb_transfer* %132, %struct.bbb_transfer** %4, align 8
  br label %133

133:                                              ; preds = %131, %86, %60, %57, %48, %42, %32, %19
  %134 = load %struct.bbb_transfer*, %struct.bbb_transfer** %4, align 8
  ret %struct.bbb_transfer* %134
}

declare dso_local %struct.usb_interface* @usbd_get_iface(%struct.usb_device*, i32) #1

declare dso_local %struct.bbb_transfer* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i64 @usbd_transfer_setup(%struct.usb_device*, i32*, i32*, %struct.usb_config*, i32, %struct.bbb_transfer*, i32*) #1

declare dso_local i32 @bbb_detach(%struct.bbb_transfer*) #1

declare dso_local i8* @usbd_xfer_get_frame_buffer(i32, i32) #1

declare dso_local i32 @usbd_xfer_max_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
