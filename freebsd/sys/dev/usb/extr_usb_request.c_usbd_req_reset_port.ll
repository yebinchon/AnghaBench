; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_reset_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_reset_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.usb_port_status = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UHF_C_PORT_RESET = common dso_local global i32 0, align 4
@UHF_PORT_RESET = common dso_local global i32 0, align 4
@usb_port_reset_delay = common dso_local global i64 0, align 8
@UPS_CURRENT_CONNECT_STATUS = common dso_local global i32 0, align 4
@UPS_C_PORT_RESET = common dso_local global i32 0, align 4
@UPS_RESET = common dso_local global i32 0, align 4
@USB_ERR_TIMEOUT = common dso_local global i64 0, align 8
@usb_port_reset_recovery = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"port %d reset returning error=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_req_reset_port(%struct.usb_device* %0, %struct.mtx* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_port_status, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.mtx* %1, %struct.mtx** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = load %struct.mtx*, %struct.mtx** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @UHF_C_PORT_RESET, align 4
  %17 = call i64 @usbd_req_clear_port_feature(%struct.usb_device* %13, %struct.mtx* %14, i32 %15, i32 %16)
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = load %struct.mtx*, %struct.mtx** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @UHF_PORT_RESET, align 4
  %22 = call i64 @usbd_req_set_port_feature(%struct.usb_device* %18, %struct.mtx* %19, i32 %20, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %92

26:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %72
  %28 = load %struct.mtx*, %struct.mtx** %5, align 8
  %29 = load i64, i64* @usb_port_reset_delay, align 8
  %30 = call i32 @USB_MS_TO_TICKS(i64 %29)
  %31 = call i32 @usb_pause_mtx(%struct.mtx* %28, i32 %30)
  %32 = load i64, i64* @usb_port_reset_delay, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %38 = load %struct.mtx*, %struct.mtx** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @usbd_req_get_port_status(%struct.usb_device* %37, %struct.mtx* %38, %struct.usb_port_status* %7, i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %92

44:                                               ; preds = %27
  %45 = getelementptr inbounds %struct.usb_port_status, %struct.usb_port_status* %7, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @UGETW(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = getelementptr inbounds %struct.usb_port_status, %struct.usb_port_status* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @UGETW(i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @UPS_CURRENT_CONNECT_STATUS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %44
  br label %92

56:                                               ; preds = %44
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @UPS_C_PORT_RESET, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %73

62:                                               ; preds = %56
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @UPS_RESET, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %73

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %69, 1000
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  br label %73

72:                                               ; preds = %68
  br label %27

73:                                               ; preds = %71, %67, %61
  %74 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %75 = load %struct.mtx*, %struct.mtx** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @UHF_C_PORT_RESET, align 4
  %78 = call i64 @usbd_req_clear_port_feature(%struct.usb_device* %74, %struct.mtx* %75, i32 %76, i32 %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %92

82:                                               ; preds = %73
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i64, i64* @USB_ERR_TIMEOUT, align 8
  store i64 %86, i64* %8, align 8
  br label %92

87:                                               ; preds = %82
  %88 = load %struct.mtx*, %struct.mtx** %5, align 8
  %89 = load i64, i64* @usb_port_reset_recovery, align 8
  %90 = call i32 @USB_MS_TO_TICKS(i64 %89)
  %91 = call i32 @usb_pause_mtx(%struct.mtx* %88, i32 %90)
  br label %92

92:                                               ; preds = %87, %85, %81, %55, %43, %25
  %93 = load i32, i32* %6, align 4
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @usbd_errstr(i64 %94)
  %96 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %95)
  %97 = load i64, i64* %8, align 8
  ret i64 %97
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @usbd_req_clear_port_feature(%struct.usb_device*, %struct.mtx*, i32, i32) #1

declare dso_local i64 @usbd_req_set_port_feature(%struct.usb_device*, %struct.mtx*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(%struct.mtx*, i32) #1

declare dso_local i32 @USB_MS_TO_TICKS(i64) #1

declare dso_local i64 @usbd_req_get_port_status(%struct.usb_device*, %struct.mtx*, %struct.usb_port_status*, i32) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
