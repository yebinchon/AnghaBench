; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_fill_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { i32, i32 }
%struct.usb_device = type { i32 }

@uaudio_default_rate = common dso_local global i64 0, align 8
@uaudio_default_bits = common dso_local global i32 0, align 4
@uaudio_default_channels = common dso_local global i32 0, align 4
@UAUDIO_CHANNELS_MAX = common dso_local global i32 0, align 4
@SBUF_AUTOEXTEND = common dso_local global i32 0, align 4
@uaudio_rate_list = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_softc*, %struct.usb_device*)* @uaudio_chan_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_chan_fill_info(%struct.uaudio_softc* %0, %struct.usb_device* %1) #0 {
  %3 = alloca %struct.uaudio_softc*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %3, align 8
  store %struct.usb_device* %1, %struct.usb_device** %4, align 8
  %11 = load i64, i64* @uaudio_default_rate, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* @uaudio_default_bits, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @uaudio_default_channels, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = srem i32 %14, 8
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 32
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %2
  store i32 32, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %29 = call i32 @usbd_get_speed(%struct.usb_device* %28)
  switch i32 %29, label %31 [
    i32 128, label %30
    i32 129, label %30
  ]

30:                                               ; preds = %27, %27
  store i32 4, i32* %9, align 4
  br label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @UAUDIO_CHANNELS_MAX, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %30
  br label %41

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @UAUDIO_CHANNELS_MAX, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @UAUDIO_CHANNELS_MAX, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %34
  br label %41

41:                                               ; preds = %40, %33
  %42 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %43 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %42, i32 0, i32 1
  %44 = load i32, i32* @SBUF_AUTOEXTEND, align 4
  %45 = call i64 @sbuf_new(i32* %43, i32* null, i32 4096, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %49 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %97, %50
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %100

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %93, %55
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %96

60:                                               ; preds = %57
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %65 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @uaudio_chan_fill_info_sub(%struct.uaudio_softc* %64, %struct.usb_device* %65, i64 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %60
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %89, %70
  %72 = load i64*, i64** @uaudio_rate_list, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %71
  %79 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %80 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %81 = load i64*, i64** @uaudio_rate_list, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @uaudio_chan_fill_info_sub(%struct.uaudio_softc* %79, %struct.usb_device* %80, i64 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %71

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %94, 8
  store i32 %95, i32* %8, align 4
  br label %57

96:                                               ; preds = %57
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %10, align 4
  br label %52

100:                                              ; preds = %52
  %101 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %102 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %107 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %106, i32 0, i32 1
  %108 = call i32 @sbuf_finish(i32* %107)
  br label %109

109:                                              ; preds = %105, %100
  ret void
}

declare dso_local i32 @usbd_get_speed(%struct.usb_device*) #1

declare dso_local i64 @sbuf_new(i32*, i32*, i32, i32) #1

declare dso_local i32 @uaudio_chan_fill_info_sub(%struct.uaudio_softc*, %struct.usb_device*, i64, i32, i32) #1

declare dso_local i32 @sbuf_finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
