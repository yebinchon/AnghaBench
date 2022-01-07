; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_set_endpoint_stall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_set_endpoint_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.usb_device*, %struct.usb_endpoint*)*, i32 (%struct.usb_device*, %struct.usb_endpoint*, i32*)*, i32 (%struct.usb_xfer*)* }
%struct.usb_xfer = type { i32 }
%struct.usb_endpoint = type { i32, %struct.TYPE_8__*, i64, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.usb_xfer* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Cannot find endpoint\0A\00", align 1
@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_BULK = common dso_local global i32 0, align 4
@UE_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid endpoint\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"No change\0A\00", align 1
@USB_MAX_EP_STREAMS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbd_set_endpoint_stall(%struct.usb_device* %0, %struct.usb_endpoint* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usb_endpoint*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_xfer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.usb_endpoint* %1, %struct.usb_endpoint** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %13 = icmp eq %struct.usb_endpoint* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %149

16:                                               ; preds = %3
  %17 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %18 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @UE_XFERTYPE, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @UE_BULK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @UE_INTERRUPT, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %149

33:                                               ; preds = %27, %16
  %34 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = call i32 @USB_BUS_LOCK(%struct.TYPE_9__* %36)
  %38 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %39 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_9__* %49)
  %51 = call i32 @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %149

52:                                               ; preds = %43, %33
  %53 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %54 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %104, label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %93, label %63

63:                                               ; preds = %60
  store i64 0, i64* %9, align 8
  br label %64

64:                                               ; preds = %89, %63
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @USB_MAX_EP_STREAMS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %70 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.usb_xfer*, %struct.usb_xfer** %74, align 8
  store %struct.usb_xfer* %75, %struct.usb_xfer** %8, align 8
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %8, align 8
  %77 = icmp ne %struct.usb_xfer* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %68
  %79 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %80 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32 (%struct.usb_xfer*)*, i32 (%struct.usb_xfer*)** %84, align 8
  %86 = load %struct.usb_xfer*, %struct.usb_xfer** %8, align 8
  %87 = call i32 %85(%struct.usb_xfer* %86)
  br label %88

88:                                               ; preds = %78, %68
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %64

92:                                               ; preds = %64
  br label %93

93:                                               ; preds = %92, %60
  %94 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %95 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32 (%struct.usb_device*, %struct.usb_endpoint*, i32*)*, i32 (%struct.usb_device*, %struct.usb_endpoint*, i32*)** %99, align 8
  %101 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %102 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %103 = call i32 %100(%struct.usb_device* %101, %struct.usb_endpoint* %102, i32* %7)
  br label %104

104:                                              ; preds = %93, %57
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %144, label %107

107:                                              ; preds = %104
  %108 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %109 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %111 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %113 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32 (%struct.usb_device*, %struct.usb_endpoint*)*, i32 (%struct.usb_device*, %struct.usb_endpoint*)** %117, align 8
  %119 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %120 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %121 = call i32 %118(%struct.usb_device* %119, %struct.usb_endpoint* %120)
  store i64 0, i64* %9, align 8
  br label %122

122:                                              ; preds = %140, %107
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* @USB_MAX_EP_STREAMS, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %122
  %127 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %128 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i64 %130
  %132 = load %struct.usb_endpoint*, %struct.usb_endpoint** %6, align 8
  %133 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i64, i64* %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load %struct.usb_xfer*, %struct.usb_xfer** %137, align 8
  %139 = call i32 @usb_command_wrapper(%struct.TYPE_8__* %131, %struct.usb_xfer* %138)
  br label %140

140:                                              ; preds = %126
  %141 = load i64, i64* %9, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %9, align 8
  br label %122

143:                                              ; preds = %122
  br label %144

144:                                              ; preds = %143, %104
  %145 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %146 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %145, i32 0, i32 0
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_9__* %147)
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %144, %46, %31, %14
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @usb_command_wrapper(%struct.TYPE_8__*, %struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
