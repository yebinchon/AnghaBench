; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_warm_reset_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_warm_reset_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.usb_port_status = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Wrong state for warm reset\0A\00", align 1
@UHF_C_BH_PORT_RESET = common dso_local global i32 0, align 4
@UHF_BH_PORT_RESET = common dso_local global i32 0, align 4
@usb_port_reset_delay = common dso_local global i64 0, align 8
@UPS_CURRENT_CONNECT_STATUS = common dso_local global i32 0, align 4
@UPS_C_BH_PORT_RESET = common dso_local global i32 0, align 4
@USB_ERR_TIMEOUT = common dso_local global i64 0, align 8
@usb_port_reset_recovery = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"port %d warm reset returning error=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_req_warm_reset_port(%struct.usb_device* %0, %struct.mtx* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.mtx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_port_status, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.mtx* %1, %struct.mtx** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %15 = load %struct.mtx*, %struct.mtx** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @usbd_req_get_port_status(%struct.usb_device* %14, %struct.mtx* %15, %struct.usb_port_status* %8, i32 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %104

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.usb_port_status, %struct.usb_port_status* %8, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @UGETW(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @UPS_PORT_LINK_STATE_GET(i32 %25)
  switch i32 %26, label %28 [
    i32 128, label %27
    i32 131, label %27
    i32 130, label %27
    i32 129, label %27
  ]

27:                                               ; preds = %21, %21, %21, %21
  br label %30

28:                                               ; preds = %21
  %29 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %110

30:                                               ; preds = %27
  %31 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %32 = load %struct.mtx*, %struct.mtx** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @UHF_C_BH_PORT_RESET, align 4
  %35 = call i64 @usbd_req_clear_port_feature(%struct.usb_device* %31, %struct.mtx* %32, i32 %33, i32 %34)
  %36 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %37 = load %struct.mtx*, %struct.mtx** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @UHF_BH_PORT_RESET, align 4
  %40 = call i64 @usbd_req_set_port_feature(%struct.usb_device* %36, %struct.mtx* %37, i32 %38, i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %104

44:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %44, %84
  %46 = load %struct.mtx*, %struct.mtx** %6, align 8
  %47 = load i64, i64* @usb_port_reset_delay, align 8
  %48 = call i32 @USB_MS_TO_TICKS(i64 %47)
  %49 = call i32 @usb_pause_mtx(%struct.mtx* %46, i32 %48)
  %50 = load i64, i64* @usb_port_reset_delay, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %56 = load %struct.mtx*, %struct.mtx** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @usbd_req_get_port_status(%struct.usb_device* %55, %struct.mtx* %56, %struct.usb_port_status* %8, i32 %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  br label %104

62:                                               ; preds = %45
  %63 = getelementptr inbounds %struct.usb_port_status, %struct.usb_port_status* %8, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @UGETW(i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = getelementptr inbounds %struct.usb_port_status, %struct.usb_port_status* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @UGETW(i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @UPS_CURRENT_CONNECT_STATUS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %62
  br label %104

74:                                               ; preds = %62
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @UPS_C_BH_PORT_RESET, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %85

80:                                               ; preds = %74
  %81 = load i32, i32* %10, align 4
  %82 = icmp sgt i32 %81, 1000
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 0, i32* %10, align 4
  br label %85

84:                                               ; preds = %80
  br label %45

85:                                               ; preds = %83, %79
  %86 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %87 = load %struct.mtx*, %struct.mtx** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @UHF_C_BH_PORT_RESET, align 4
  %90 = call i64 @usbd_req_clear_port_feature(%struct.usb_device* %86, %struct.mtx* %87, i32 %88, i32 %89)
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %104

94:                                               ; preds = %85
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i64, i64* @USB_ERR_TIMEOUT, align 8
  store i64 %98, i64* %9, align 8
  br label %104

99:                                               ; preds = %94
  %100 = load %struct.mtx*, %struct.mtx** %6, align 8
  %101 = load i64, i64* @usb_port_reset_recovery, align 8
  %102 = call i32 @USB_MS_TO_TICKS(i64 %101)
  %103 = call i32 @usb_pause_mtx(%struct.mtx* %100, i32 %102)
  br label %104

104:                                              ; preds = %99, %97, %93, %73, %61, %43, %20
  %105 = load i32, i32* %7, align 4
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @usbd_errstr(i64 %106)
  %108 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %107)
  %109 = load i64, i64* %9, align 8
  store i64 %109, i64* %4, align 8
  br label %110

110:                                              ; preds = %104, %28
  %111 = load i64, i64* %4, align 8
  ret i64 %111
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @usbd_req_get_port_status(%struct.usb_device*, %struct.mtx*, %struct.usb_port_status*, i32) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i32 @UPS_PORT_LINK_STATE_GET(i32) #1

declare dso_local i64 @usbd_req_clear_port_feature(%struct.usb_device*, %struct.mtx*, i32, i32) #1

declare dso_local i64 @usbd_req_set_port_feature(%struct.usb_device*, %struct.mtx*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(%struct.mtx*, i32) #1

declare dso_local i32 @USB_MS_TO_TICKS(i64) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
