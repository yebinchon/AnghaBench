; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_ep_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_saf1761_otg.c_saf1761_otg_ep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.usb_endpoint_descriptor = type { i32, i32, i32 }
%struct.usb_endpoint = type { i32* }

@.str = private unnamed_addr constant [41 x i8] c"endpoint=%p, addr=%d, endpt=%d, mode=%d\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"A packet multiplier different from 1 is not supported\0A\00", align 1
@SOTG_HS_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Packet size %d bigger than %d\0A\00", align 1
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@UE_XFERTYPE = common dso_local global i32 0, align 4
@saf1761_otg_device_isoc_methods = common dso_local global i32 0, align 4
@saf1761_otg_non_isoc_methods = common dso_local global i32 0, align 4
@saf1761_otg_host_isoc_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint*)* @saf1761_otg_ep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saf1761_otg_ep_init(%struct.usb_device* %0, %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.usb_endpoint*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  store %struct.usb_endpoint* %2, %struct.usb_endpoint** %6, align 8
  %8 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %13 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @DPRINTFN(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.usb_endpoint* %8, i32 %11, i32 %14, i64 %18)
  %20 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %97

25:                                               ; preds = %3
  %26 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %27 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @UGETW(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @USB_SPEED_HIGH, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 11
  %38 = and i32 %37, 3
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %97

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @SOTG_HS_MAX_PACKET_SIZE, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SOTG_HS_MAX_PACKET_SIZE, align 4
  %50 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %49)
  br label %97

51:                                               ; preds = %43
  %52 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %53 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @USB_MODE_DEVICE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %51
  %59 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %60 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @USB_SPEED_FULL, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %66 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @USB_SPEED_HIGH, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %97

71:                                               ; preds = %64, %58
  %72 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %73 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @UE_XFERTYPE, align 4
  %76 = and i32 %74, %75
  switch i32 %76, label %80 [
    i32 128, label %77
  ]

77:                                               ; preds = %71
  %78 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %79 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %78, i32 0, i32 0
  store i32* @saf1761_otg_device_isoc_methods, i32** %79, align 8
  br label %83

80:                                               ; preds = %71
  %81 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %82 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %81, i32 0, i32 0
  store i32* @saf1761_otg_non_isoc_methods, i32** %82, align 8
  br label %83

83:                                               ; preds = %80, %77
  br label %97

84:                                               ; preds = %51
  %85 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %86 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @UE_XFERTYPE, align 4
  %89 = and i32 %87, %88
  switch i32 %89, label %93 [
    i32 128, label %90
  ]

90:                                               ; preds = %84
  %91 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %92 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %91, i32 0, i32 0
  store i32* @saf1761_otg_host_isoc_methods, i32** %92, align 8
  br label %96

93:                                               ; preds = %84
  %94 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %95 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %94, i32 0, i32 0
  store i32* @saf1761_otg_non_isoc_methods, i32** %95, align 8
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %24, %40, %47, %70, %96, %83
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_endpoint*, i32, i32, i64) #1

declare dso_local i32 @UGETW(i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
