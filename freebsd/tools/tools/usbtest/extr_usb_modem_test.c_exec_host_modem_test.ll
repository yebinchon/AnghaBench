; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_modem_test.c_exec_host_modem_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_modem_test.c_exec_host_modem_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modem = type { i64, i64, i64, i64, i64, %struct.libusb20_device*, i8*, i8*, i64 }
%struct.libusb20_device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"USB device not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not find USB endpoints\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Attaching to: %s @ iface %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Could not open USB device\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"WARNING: Could not detach kernel driver\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Could not open USB endpoint %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"No tests selected\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\0ADone\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.modem*, i32, i32)* @exec_host_modem_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_host_modem_test(%struct.modem* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.modem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.libusb20_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.modem* %0, %struct.modem** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.libusb20_device* @find_usb_device(i32 %14, i32 %15)
  store %struct.libusb20_device* %16, %struct.libusb20_device** %7, align 8
  %17 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %18 = icmp eq %struct.libusb20_device* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %170

21:                                               ; preds = %3
  %22 = load %struct.modem*, %struct.modem** %4, align 8
  %23 = getelementptr inbounds %struct.modem, %struct.modem* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %28 = call i32 @find_usb_endpoints(%struct.libusb20_device* %27, i32 255, i32 255, i32 255, i32 0, i64* %12, i64* %10, i64* %11, i32 0)
  br label %32

29:                                               ; preds = %21
  %30 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %31 = call i32 @find_usb_endpoints(%struct.libusb20_device* %30, i32 2, i32 2, i32 1, i32 0, i64* %12, i64* %10, i64* %11, i32 1)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* %10, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %11, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %32
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %41 = call i32 @libusb20_dev_free(%struct.libusb20_device* %40)
  br label %170

42:                                               ; preds = %35
  %43 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %44 = call i8* @libusb20_dev_get_desc(%struct.libusb20_device* %43)
  %45 = load i64, i64* %12, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %44, i64 %45)
  %47 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %48 = call i64 @libusb20_dev_open(%struct.libusb20_device* %47, i32 2)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %53 = call i32 @libusb20_dev_free(%struct.libusb20_device* %52)
  br label %170

54:                                               ; preds = %42
  %55 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @libusb20_dev_detach_kernel_driver(%struct.libusb20_device* %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54
  %62 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %63 = call i8* @libusb20_tr_get_pointer(%struct.libusb20_device* %62, i32 0)
  %64 = load %struct.modem*, %struct.modem** %4, align 8
  %65 = getelementptr inbounds %struct.modem, %struct.modem* %64, i32 0, i32 7
  store i8* %63, i8** %65, align 8
  %66 = load %struct.modem*, %struct.modem** %4, align 8
  %67 = getelementptr inbounds %struct.modem, %struct.modem* %66, i32 0, i32 7
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @libusb20_tr_open(i8* %68, i32 16384, i32 1, i64 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load i64, i64* %10, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %74)
  %76 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %77 = call i32 @libusb20_dev_free(%struct.libusb20_device* %76)
  br label %170

78:                                               ; preds = %61
  %79 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %80 = call i8* @libusb20_tr_get_pointer(%struct.libusb20_device* %79, i32 1)
  %81 = load %struct.modem*, %struct.modem** %4, align 8
  %82 = getelementptr inbounds %struct.modem, %struct.modem* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load %struct.modem*, %struct.modem** %4, align 8
  %84 = getelementptr inbounds %struct.modem, %struct.modem* %83, i32 0, i32 6
  %85 = load i8*, i8** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @libusb20_tr_open(i8* %85, i32 16384, i32 1, i64 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %78
  %91 = load i64, i64* %11, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %91)
  %93 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %94 = call i32 @libusb20_dev_free(%struct.libusb20_device* %93)
  br label %170

95:                                               ; preds = %78
  %96 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %97 = load %struct.modem*, %struct.modem** %4, align 8
  %98 = getelementptr inbounds %struct.modem, %struct.modem* %97, i32 0, i32 5
  store %struct.libusb20_device* %96, %struct.libusb20_device** %98, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.modem*, %struct.modem** %4, align 8
  %101 = getelementptr inbounds %struct.modem, %struct.modem* %100, i32 0, i32 4
  store i64 %99, i64* %101, align 8
  %102 = load %struct.modem*, %struct.modem** %4, align 8
  %103 = getelementptr inbounds %struct.modem, %struct.modem* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.modem*, %struct.modem** %4, align 8
  %105 = getelementptr inbounds %struct.modem, %struct.modem* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %95
  %109 = load i64, i64* %8, align 8
  %110 = add nsw i64 %109, 7
  store i64 %110, i64* %8, align 8
  br label %111

111:                                              ; preds = %108, %95
  %112 = load %struct.modem*, %struct.modem** %4, align 8
  %113 = getelementptr inbounds %struct.modem, %struct.modem* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i64, i64* %8, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %8, align 8
  br label %119

119:                                              ; preds = %116, %111
  %120 = load i64, i64* %8, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %166

124:                                              ; preds = %119
  %125 = load %struct.modem*, %struct.modem** %4, align 8
  %126 = getelementptr inbounds %struct.modem, %struct.modem* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %124
  store i64 1, i64* %9, align 8
  br label %130

130:                                              ; preds = %145, %129
  %131 = load i64, i64* %9, align 8
  %132 = icmp ne i64 %131, 8
  br i1 %132, label %133, label %148

133:                                              ; preds = %130
  %134 = load %struct.modem*, %struct.modem** %4, align 8
  %135 = load %struct.modem*, %struct.modem** %4, align 8
  %136 = getelementptr inbounds %struct.modem, %struct.modem* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %8, align 8
  %139 = add nsw i64 %137, %138
  %140 = sub nsw i64 %139, 1
  %141 = load i64, i64* %8, align 8
  %142 = sdiv i64 %140, %141
  %143 = load i64, i64* %9, align 8
  %144 = call i32 @usb_modem_control_ep_test(%struct.modem* %134, i64 %142, i64 %143)
  br label %145

145:                                              ; preds = %133
  %146 = load i64, i64* %9, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %9, align 8
  br label %130

148:                                              ; preds = %130
  br label %149

149:                                              ; preds = %148, %124
  %150 = load %struct.modem*, %struct.modem** %4, align 8
  %151 = getelementptr inbounds %struct.modem, %struct.modem* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = load %struct.modem*, %struct.modem** %4, align 8
  %156 = load %struct.modem*, %struct.modem** %4, align 8
  %157 = getelementptr inbounds %struct.modem, %struct.modem* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = add nsw i64 %158, %159
  %161 = sub nsw i64 %160, 1
  %162 = load i64, i64* %8, align 8
  %163 = sdiv i64 %161, %162
  %164 = call i32 @usb_modem_data_stress_test(%struct.modem* %155, i64 %163)
  br label %165

165:                                              ; preds = %154, %149
  br label %166

166:                                              ; preds = %165, %122
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %168 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %169 = call i32 @libusb20_dev_free(%struct.libusb20_device* %168)
  br label %170

170:                                              ; preds = %166, %90, %73, %50, %38, %19
  ret void
}

declare dso_local %struct.libusb20_device* @find_usb_device(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @find_usb_endpoints(%struct.libusb20_device*, i32, i32, i32, i32, i64*, i64*, i64*, i32) #1

declare dso_local i32 @libusb20_dev_free(%struct.libusb20_device*) #1

declare dso_local i8* @libusb20_dev_get_desc(%struct.libusb20_device*) #1

declare dso_local i64 @libusb20_dev_open(%struct.libusb20_device*, i32) #1

declare dso_local i64 @libusb20_dev_detach_kernel_driver(%struct.libusb20_device*, i64) #1

declare dso_local i8* @libusb20_tr_get_pointer(%struct.libusb20_device*, i32) #1

declare dso_local i32 @libusb20_tr_open(i8*, i32, i32, i64) #1

declare dso_local i32 @usb_modem_control_ep_test(%struct.modem*, i64, i64) #1

declare dso_local i32 @usb_modem_data_stress_test(%struct.modem*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
