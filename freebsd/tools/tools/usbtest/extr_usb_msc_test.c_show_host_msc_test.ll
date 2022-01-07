; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_msc_test.c_show_host_msc_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/usbtest/extr_usb_msc_test.c_show_host_msc_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_msc_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Mass Storage Test Parameters\00", align 1
@.str.1 = private unnamed_addr constant [713 x i8] c" 1) Toggle I/O mode: <%s>\0A 2) Toggle I/O size: <%s>\0A 3) Toggle I/O delay: <%s>\0A 4) Toggle I/O offset: <%s>\0A 5) Toggle I/O area: <%s>\0A 6) Toggle I/O pattern: <%s>\0A 7) Toggle try invalid SCSI command: <%s>\0A 8) Toggle try invalid wrapper block: <%s>\0A 9) Toggle try invalid MaxPacketSize: <%s>\0A10) Toggle try last Logical Block Address: <%s>\0A11) Toggle I/O lun: <%d>\0A12) Set maximum number of errors: <%d>\0A13) Set test duration: <%d> seconds\0A14) Toggle try aborted write transfer: <%s>\0A15) Toggle request sense on error: <%s>\0A16) Toggle try all LUN: <%s>\0A17) Toggle try too short wrapper block: <%s>\0A20) Reset parameters\0A30) Start test (VID=0x%04x, PID=0x%04x)\0A40) Select another device\0A x) Return to previous menu \0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@USB_MSC_IO_MODE_MAX = common dso_local global i32 0, align 4
@USB_MSC_IO_SIZE_MAX = common dso_local global i32 0, align 4
@USB_MSC_IO_DELAY_MAX = common dso_local global i32 0, align 4
@USB_MSC_IO_OFF_MAX = common dso_local global i32 0, align 4
@USB_MSC_IO_AREA_MAX = common dso_local global i32 0, align 4
@USB_MSC_IO_PATTERN_MAX = common dso_local global i32 0, align 4
@USB_MSC_IO_LUN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_host_msc_test(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.usb_msc_params, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = call i32 @set_defaults(%struct.usb_msc_params* %9)
  %12 = load i8*, i8** %8, align 8
  %13 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 8
  store i8* %12, i8** %13, align 8
  br label %14

14:                                               ; preds = %4, %180
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @get_io_mode(%struct.usb_msc_params* %9)
  %17 = call i32 @get_io_size(%struct.usb_msc_params* %9)
  %18 = call i32 @get_io_delay(%struct.usb_msc_params* %9)
  %19 = call i32 @get_io_offset(%struct.usb_msc_params* %9)
  %20 = call i32 @get_io_area(%struct.usb_msc_params* %9)
  %21 = call i32 @get_io_pattern(%struct.usb_msc_params* %9)
  %22 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %27 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %32 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %37 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %42 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 10
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 9
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 8
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %55 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %60 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %65 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @usb_ts_show_menu(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([713 x i8], [713 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i8* %26, i8* %31, i8* %36, i8* %41, i32 %43, i32 %46, i32 %49, i8* %54, i8* %59, i8* %64, i8* %69, i32 %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  switch i32 %73, label %179 [
    i32 0, label %74
    i32 1, label %75
    i32 2, label %83
    i32 3, label %91
    i32 4, label %99
    i32 5, label %107
    i32 6, label %115
    i32 7, label %123
    i32 8, label %127
    i32 9, label %131
    i32 10, label %135
    i32 11, label %139
    i32 12, label %147
    i32 13, label %150
    i32 14, label %153
    i32 15, label %157
    i32 16, label %161
    i32 17, label %165
    i32 20, label %169
    i32 30, label %171
    i32 40, label %175
  ]

74:                                               ; preds = %14
  br label %180

75:                                               ; preds = %14
  %76 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 16
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* @USB_MSC_IO_MODE_MAX, align 4
  %80 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 16
  %81 = load i32, i32* %80, align 8
  %82 = srem i32 %81, %79
  store i32 %82, i32* %80, align 8
  br label %180

83:                                               ; preds = %14
  %84 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 15
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @USB_MSC_IO_SIZE_MAX, align 4
  %88 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 15
  %89 = load i32, i32* %88, align 4
  %90 = srem i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %180

91:                                               ; preds = %14
  %92 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 14
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* @USB_MSC_IO_DELAY_MAX, align 4
  %96 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 14
  %97 = load i32, i32* %96, align 8
  %98 = srem i32 %97, %95
  store i32 %98, i32* %96, align 8
  br label %180

99:                                               ; preds = %14
  %100 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 13
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @USB_MSC_IO_OFF_MAX, align 4
  %104 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 13
  %105 = load i32, i32* %104, align 4
  %106 = srem i32 %105, %103
  store i32 %106, i32* %104, align 4
  br label %180

107:                                              ; preds = %14
  %108 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 12
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @USB_MSC_IO_AREA_MAX, align 4
  %112 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 12
  %113 = load i32, i32* %112, align 8
  %114 = srem i32 %113, %111
  store i32 %114, i32* %112, align 8
  br label %180

115:                                              ; preds = %14
  %116 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 11
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* @USB_MSC_IO_PATTERN_MAX, align 4
  %120 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 11
  %121 = load i32, i32* %120, align 4
  %122 = srem i32 %121, %119
  store i32 %122, i32* %120, align 4
  br label %180

123:                                              ; preds = %14
  %124 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = xor i32 %125, 1
  store i32 %126, i32* %124, align 8
  br label %180

127:                                              ; preds = %14
  %128 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = xor i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %180

131:                                              ; preds = %14
  %132 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = xor i32 %133, 1
  store i32 %134, i32* %132, align 8
  br label %180

135:                                              ; preds = %14
  %136 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = xor i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %180

139:                                              ; preds = %14
  %140 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 10
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* @USB_MSC_IO_LUN_MAX, align 4
  %144 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 10
  %145 = load i32, i32* %144, align 8
  %146 = srem i32 %145, %143
  store i32 %146, i32* %144, align 8
  br label %180

147:                                              ; preds = %14
  %148 = call i8* (...) @get_integer()
  %149 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 9
  store i8* %148, i8** %149, align 8
  br label %180

150:                                              ; preds = %14
  %151 = call i8* (...) @get_integer()
  %152 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 8
  store i8* %151, i8** %152, align 8
  br label %180

153:                                              ; preds = %14
  %154 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = xor i32 %155, 1
  store i32 %156, i32* %154, align 8
  br label %180

157:                                              ; preds = %14
  %158 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = xor i32 %159, 1
  store i32 %160, i32* %158, align 4
  br label %180

161:                                              ; preds = %14
  %162 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = xor i32 %163, 1
  store i32 %164, i32* %162, align 8
  br label %180

165:                                              ; preds = %14
  %166 = getelementptr inbounds %struct.usb_msc_params, %struct.usb_msc_params* %9, i32 0, i32 7
  %167 = load i32, i32* %166, align 4
  %168 = xor i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %180

169:                                              ; preds = %14
  %170 = call i32 @set_defaults(%struct.usb_msc_params* %9)
  br label %180

171:                                              ; preds = %14
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @exec_host_msc_test(%struct.usb_msc_params* %9, i32 %172, i32 %173)
  br label %180

175:                                              ; preds = %14
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  %178 = call i32 @show_host_device_selection(i32 %177, i32* %6, i32* %7)
  br label %180

179:                                              ; preds = %14
  ret void

180:                                              ; preds = %175, %171, %169, %165, %161, %157, %153, %150, %147, %139, %135, %131, %127, %123, %115, %107, %99, %91, %83, %75, %74
  br label %14
}

declare dso_local i32 @set_defaults(%struct.usb_msc_params*) #1

declare dso_local i32 @usb_ts_show_menu(i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @get_io_mode(%struct.usb_msc_params*) #1

declare dso_local i32 @get_io_size(%struct.usb_msc_params*) #1

declare dso_local i32 @get_io_delay(%struct.usb_msc_params*) #1

declare dso_local i32 @get_io_offset(%struct.usb_msc_params*) #1

declare dso_local i32 @get_io_area(%struct.usb_msc_params*) #1

declare dso_local i32 @get_io_pattern(%struct.usb_msc_params*) #1

declare dso_local i8* @get_integer(...) #1

declare dso_local i32 @exec_host_msc_test(%struct.usb_msc_params*, i32, i32) #1

declare dso_local i32 @show_host_device_selection(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
