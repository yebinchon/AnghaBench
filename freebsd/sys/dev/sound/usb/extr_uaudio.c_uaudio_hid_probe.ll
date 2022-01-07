; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_hid_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_hid_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_attach_arg = type { i32 }

@UAUDIO_HID_VALID = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error reading report description\0A\00", align 1
@hid_input = common dso_local global i32 0, align 4
@UAUDIO_HID_HAS_ID = common dso_local global i32 0, align 4
@HUP_CONSUMER = common dso_local global i32 0, align 4
@HIO_VARIABLE = common dso_local global i32 0, align 4
@UAUDIO_HID_HAS_VOLUME_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Found Volume Up key\0A\00", align 1
@UAUDIO_HID_HAS_VOLUME_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Found Volume Down key\0A\00", align 1
@UAUDIO_HID_HAS_MUTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Found Mute key\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Did not find any volume related keys\0A\00", align 1
@uaudio_hid_config = common dso_local global i32 0, align 4
@UAUDIO_HID_N_TRANSFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uaudio_softc*, %struct.usb_attach_arg*)* @uaudio_hid_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uaudio_hid_probe(%struct.uaudio_softc* %0, %struct.usb_attach_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uaudio_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %4, align 8
  store %struct.usb_attach_arg* %1, %struct.usb_attach_arg** %5, align 8
  %11 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %12 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @UAUDIO_HID_VALID, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %190

19:                                               ; preds = %2
  %20 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %21 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %190

25:                                               ; preds = %19
  %26 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %27 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @M_TEMP, align 4
  %30 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %31 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @usbd_req_get_hid_desc(i32 %28, i32* null, i8** %6, i32* %8, i32 %29, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %190

39:                                               ; preds = %25
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @hid_input, align 4
  %43 = call i32 @hid_report_size(i8* %40, i32 %41, i32 %42, i64* %9)
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32, i32* @UAUDIO_HID_HAS_ID, align 4
  %48 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %49 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %46, %39
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @HUP_CONSUMER, align 4
  %57 = call i32 @HID_USAGE2(i32 %56, i32 233)
  %58 = load i32, i32* @hid_input, align 4
  %59 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %60 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 8
  %62 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %63 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 7
  %65 = call i64 @hid_locate(i8* %54, i32 %55, i32 %57, i32 %58, i32 0, i32* %61, i32* %7, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %53
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @HIO_VARIABLE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* @UAUDIO_HID_HAS_VOLUME_UP, align 4
  %74 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %75 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %72, %67
  %80 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %53
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @HUP_CONSUMER, align 4
  %85 = call i32 @HID_USAGE2(i32 %84, i32 234)
  %86 = load i32, i32* @hid_input, align 4
  %87 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %88 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 6
  %90 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %91 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 5
  %93 = call i64 @hid_locate(i8* %82, i32 %83, i32 %85, i32 %86, i32 0, i32* %89, i32* %7, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %81
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @HIO_VARIABLE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load i32, i32* @UAUDIO_HID_HAS_VOLUME_DOWN, align 4
  %102 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %103 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %101
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %100, %95
  %108 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %81
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @HUP_CONSUMER, align 4
  %113 = call i32 @HID_USAGE2(i32 %112, i32 226)
  %114 = load i32, i32* @hid_input, align 4
  %115 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %116 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 4
  %118 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %119 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  %121 = call i64 @hid_locate(i8* %110, i32 %111, i32 %113, i32 %114, i32 0, i32* %117, i32* %7, i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %109
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @HIO_VARIABLE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load i32, i32* @UAUDIO_HID_HAS_MUTE, align 4
  %130 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %131 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %129
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %128, %123
  %136 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %109
  %138 = load i8*, i8** %6, align 8
  %139 = load i32, i32* @M_TEMP, align 4
  %140 = call i32 @free(i8* %138, i32 %139)
  %141 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %142 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @UAUDIO_HID_HAS_VOLUME_UP, align 4
  %146 = load i32, i32* @UAUDIO_HID_HAS_VOLUME_DOWN, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @UAUDIO_HID_HAS_MUTE, align 4
  %149 = or i32 %147, %148
  %150 = and i32 %144, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %137
  %153 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %190

154:                                              ; preds = %137
  %155 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %156 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %159 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %163 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @usbd_set_parent_iface(i32 %157, i32 %161, i32 %164)
  %166 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %167 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %170 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 2
  %172 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %173 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @uaudio_hid_config, align 4
  %177 = load i32, i32* @UAUDIO_HID_N_TRANSFER, align 4
  %178 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %179 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %180 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @usbd_transfer_setup(i32 %168, i32* %171, i32 %175, i32 %176, i32 %177, %struct.uaudio_softc* %178, i32* %181)
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %154
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @usbd_errstr(i32 %186)
  %188 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %187)
  store i32 -1, i32* %3, align 4
  br label %190

189:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %189, %185, %152, %37, %24, %18
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @usbd_req_get_hid_desc(i32, i32*, i8**, i32*, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @hid_report_size(i8*, i32, i32, i64*) #1

declare dso_local i64 @hid_locate(i8*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @HID_USAGE2(i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @usbd_set_parent_iface(i32, i32, i32) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.uaudio_softc*, i32*) #1

declare dso_local i32 @usbd_errstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
