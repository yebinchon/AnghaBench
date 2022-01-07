; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_detach_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_detach_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { i64, i64, i32 (%struct.uaudio_softc*, i32)* }

@.str = private unnamed_addr constant [40 x i8] c"Waiting for sound application to exit!\0A\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uaudio_detach_sub(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uaudio_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @device_get_parent(i32 %5)
  %7 = call %struct.uaudio_softc* @device_get_softc(i32 %6)
  store %struct.uaudio_softc* %7, %struct.uaudio_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %8, i32 0, i32 2
  %10 = load i32 (%struct.uaudio_softc*, i32)*, i32 (%struct.uaudio_softc*, i32)** %9, align 8
  %11 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %12 = call i32 %10(%struct.uaudio_softc* %11, i32 0)
  br label %13

13:                                               ; preds = %33, %1
  %14 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %15 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @pcm_unregister(i32 %19)
  store i32 %20, i32* %4, align 4
  br label %30

21:                                               ; preds = %13
  %22 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %23 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @mixer_uninit(i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @hz, align 4
  %37 = mul nsw i32 2, %36
  %38 = call i32 @usb_pause_mtx(i32* null, i32 %37)
  br label %13

39:                                               ; preds = %30
  ret i32 0
}

declare dso_local %struct.uaudio_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local i32 @mixer_uninit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
