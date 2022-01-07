; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_re_enumerate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_re_enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i8*, %struct.TYPE_4__, i32, i32, %struct.usb_device*, %struct.usb_device*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.mtx = type { i32 }

@USB_MODE_HOST = common dso_local global i64 0, align 8
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"addr=%d, port reset failed, %s\0A\00", align 1
@USB_START_ADDR = common dso_local global i8* null, align 8
@USB_MAX_IPACKET = common dso_local global i32 0, align 4
@USB_STATE_POWERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"addr=%d, set address failed! (%s, ignored)\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@USB_STATE_ADDRESSED = common dso_local global i32 0, align 4
@UE_CONTROL = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_SPEED_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_req_re_enumerate(%struct.usb_device* %0, %struct.mtx* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.mtx* %1, %struct.mtx** %5, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %9, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USB_MODE_HOST, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %17, i64* %3, align 8
  br label %123

18:                                               ; preds = %2
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 6
  %24 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  store %struct.usb_device* %24, %struct.usb_device** %6, align 8
  %25 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %26 = icmp eq %struct.usb_device* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %28, i64* %3, align 8
  br label %123

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %99, %29
  %31 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @USB_SPEED_SUPER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %38 = load %struct.mtx*, %struct.mtx** %5, align 8
  %39 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usbd_req_warm_reset_port(%struct.usb_device* %37, %struct.mtx* %38, i32 %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %45 = load %struct.mtx*, %struct.mtx** %5, align 8
  %46 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @usbd_req_reset_port(%struct.usb_device* %44, %struct.mtx* %45, i32 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @usbd_errstr(i64 %54)
  %56 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %53, i32 %55)
  br label %93

57:                                               ; preds = %43
  %58 = load i8*, i8** @USB_START_ADDR, align 8
  %59 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %60 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @USB_MAX_IPACKET, align 4
  %62 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %66 = load i32, i32* @USB_STATE_POWERED, align 4
  %67 = call i32 @usb_set_device_state(%struct.usb_device* %65, i32 %66)
  %68 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %69 = load %struct.mtx*, %struct.mtx** %5, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i64 @usbd_req_set_address(%struct.usb_device* %68, %struct.mtx* %69, i8* %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %57
  %75 = load i8*, i8** %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @usbd_errstr(i64 %76)
  %78 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %75, i32 %77)
  br label %79

79:                                               ; preds = %74, %57
  %80 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %81 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** @USB_START_ADDR, align 8
  %84 = icmp eq i8* %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i8*, i8** %8, align 8
  %87 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %88 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %91 = load %struct.mtx*, %struct.mtx** %5, align 8
  %92 = call i64 @usbd_setup_device_desc(%struct.usb_device* %90, %struct.mtx* %91)
  store i64 %92, i64* %7, align 8
  br label %93

93:                                               ; preds = %89, %52
  %94 = load i64, i64* %7, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.mtx*, %struct.mtx** %5, align 8
  %101 = load i32, i32* @hz, align 4
  %102 = sdiv i32 %101, 2
  %103 = call i32 @usb_pause_mtx(%struct.mtx* %100, i32 %102)
  store i8* null, i8** %9, align 8
  br label %30

104:                                              ; preds = %96, %93
  %105 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %106 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load i8*, i8** @USB_START_ADDR, align 8
  %109 = icmp eq i8* %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i8*, i8** %8, align 8
  %112 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %113 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %110, %104
  %115 = load i64, i64* %7, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %119 = load i32, i32* @USB_STATE_ADDRESSED, align 4
  %120 = call i32 @usb_set_device_state(%struct.usb_device* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i64, i64* %7, align 8
  store i64 %122, i64* %3, align 8
  br label %123

123:                                              ; preds = %121, %27, %16
  %124 = load i64, i64* %3, align 8
  ret i64 %124
}

declare dso_local i32 @usbd_req_warm_reset_port(%struct.usb_device*, %struct.mtx*, i32) #1

declare dso_local i64 @usbd_req_reset_port(%struct.usb_device*, %struct.mtx*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i32 @usb_set_device_state(%struct.usb_device*, i32) #1

declare dso_local i64 @usbd_req_set_address(%struct.usb_device*, %struct.mtx*, i8*) #1

declare dso_local i64 @usbd_setup_device_desc(%struct.usb_device*, %struct.mtx*) #1

declare dso_local i32 @usb_pause_mtx(%struct.mtx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
