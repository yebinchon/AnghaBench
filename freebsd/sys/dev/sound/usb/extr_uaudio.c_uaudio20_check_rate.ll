; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio20_check_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio20_check_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"ifaceno=%d clockid=%d rate=%u\0A\00", align 1
@UT_READ_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UA20_CS_RANGE = common dso_local global i32 0, align 4
@UA20_CS_SAM_FREQ_CONTROL = common dso_local global i32 0, align 4
@USB_SHORT_XFER_OK = common dso_local global i32 0, align 4
@USB_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Too many rates truncating to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Need to read full rate descriptor\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Zero residue\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Swapped max and min\0A\00", align 1
@UAUDIO20_MAX_RATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.usb_device*, i32, i32, i64)* @uaudio20_check_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uaudio20_check_rate(%struct.usb_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_device_request, align 4
  %11 = alloca i64, align 8
  %12 = alloca [386 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @DPRINTFN(i32 6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i64 %22)
  %24 = load i32, i32* @UT_READ_CLASS_INTERFACE, align 4
  %25 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @UA20_CS_RANGE, align 4
  %27 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UA20_CS_SAM_FREQ_CONTROL, align 4
  %31 = call i32 @USETW2(i32 %29, i32 %30, i32 0)
  %32 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @USETW2(i32 %33, i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @USETW(i32 %38, i32 14)
  %40 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %41 = getelementptr inbounds [386 x i32], [386 x i32]* %12, i64 0, i64 0
  %42 = load i32, i32* @USB_SHORT_XFER_OK, align 4
  %43 = load i32, i32* @USB_DEFAULT_TIMEOUT, align 4
  %44 = call i64 @usbd_do_request_flags(%struct.usb_device* %40, i32* null, %struct.usb_device_request* %10, i32* %41, i32 %42, i32* %13, i32 %43)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %4
  %51 = call i32 @MIN(i32 32, i32 21)
  store i32 %51, i32* %14, align 4
  %52 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %52, i64* %11, align 8
  br label %69

53:                                               ; preds = %47
  %54 = getelementptr inbounds [386 x i32], [386 x i32]* %12, i64 0, i64 0
  %55 = call i32 @UGETW(i32* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp sgt i32 %56, 32
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 32)
  store i32 32, i32* %14, align 4
  %60 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %60, i64* %11, align 8
  br label %68

61:                                               ; preds = %53
  %62 = load i32, i32* %14, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %58
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = load i32, i32* %14, align 4
  %74 = mul nsw i32 %73, 12
  %75 = add nsw i32 2, %74
  store i32 %75, i32* %13, align 4
  %76 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @USETW(i32 %77, i32 %78)
  %80 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %81 = getelementptr inbounds [386 x i32], [386 x i32]* %12, i64 0, i64 0
  %82 = load i32, i32* @USB_SHORT_XFER_OK, align 4
  %83 = load i32, i32* @USB_DEFAULT_TIMEOUT, align 4
  %84 = call i64 @usbd_do_request_flags(%struct.usb_device* %80, i32* null, %struct.usb_device_request* %10, i32* %81, i32 %82, i32* %13, i32 %83)
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %92

90:                                               ; preds = %87, %72
  %91 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %91, i64* %5, align 8
  br label %168

92:                                               ; preds = %87
  %93 = getelementptr inbounds [386 x i32], [386 x i32]* %12, i64 0, i64 0
  %94 = call i32 @UGETW(i32* %93)
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %92, %69
  %96 = load i32, i32* %13, align 4
  %97 = sub nsw i32 %96, 2
  %98 = sdiv i32 %97, 12
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i32, i32* %13, align 4
  %104 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %102, %95
  store i32 0, i32* %15, align 4
  br label %107

107:                                              ; preds = %163, %106
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %166

111:                                              ; preds = %107
  %112 = getelementptr inbounds [386 x i32], [386 x i32]* %12, i64 0, i64 0
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %15, align 4
  %115 = mul nsw i32 12, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = call i64 @UGETDW(i32* %117)
  store i64 %118, i64* %16, align 8
  %119 = getelementptr inbounds [386 x i32], [386 x i32]* %12, i64 0, i64 0
  %120 = getelementptr inbounds i32, i32* %119, i64 6
  %121 = load i32, i32* %15, align 4
  %122 = mul nsw i32 12, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = call i64 @UGETDW(i32* %124)
  store i64 %125, i64* %17, align 8
  %126 = getelementptr inbounds [386 x i32], [386 x i32]* %12, i64 0, i64 0
  %127 = getelementptr inbounds i32, i32* %126, i64 10
  %128 = load i32, i32* %15, align 4
  %129 = mul nsw i32 12, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = call i64 @UGETDW(i32* %131)
  store i64 %132, i64* %18, align 8
  %133 = load i64, i64* %18, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %111
  %136 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i64 1, i64* %18, align 8
  br label %137

137:                                              ; preds = %135, %111
  %138 = load i64, i64* %16, align 8
  %139 = load i64, i64* %17, align 8
  %140 = icmp sgt i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %143 = load i64, i64* %16, align 8
  store i64 %143, i64* %19, align 8
  %144 = load i64, i64* %17, align 8
  store i64 %144, i64* %16, align 8
  %145 = load i64, i64* %19, align 8
  store i64 %145, i64* %17, align 8
  br label %146

146:                                              ; preds = %141, %137
  %147 = load i64, i64* %9, align 8
  %148 = load i64, i64* %16, align 8
  %149 = icmp sge i64 %147, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %146
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* %17, align 8
  %153 = icmp sle i64 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load i64, i64* %9, align 8
  %156 = load i64, i64* %16, align 8
  %157 = sub nsw i64 %155, %156
  %158 = load i64, i64* %18, align 8
  %159 = srem i64 %157, %158
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  store i64 0, i64* %5, align 8
  br label %168

162:                                              ; preds = %154, %150, %146
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %15, align 4
  br label %107

166:                                              ; preds = %107
  %167 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %167, i64* %5, align 8
  br label %168

168:                                              ; preds = %166, %161, %90
  %169 = load i64, i64* %5, align 8
  ret i64 %169
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @USETW2(i32, i32, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request_flags(%struct.usb_device*, i32*, %struct.usb_device_request*, i32*, i32, i32*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @UGETW(i32*) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i64 @UGETDW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
