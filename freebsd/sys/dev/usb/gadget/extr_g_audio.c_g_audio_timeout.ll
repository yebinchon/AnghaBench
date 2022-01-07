; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_audio.c_g_audio_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_audio.c_g_audio_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_audio_softc = type { i64, i32*, i64*, i32 }

@g_audio_mode = common dso_local global i64 0, align 8
@g_audio_pattern_data = common dso_local global i32 0, align 4
@G_AUDIO_MAX_STRLEN = common dso_local global i32 0, align 4
@G_AUDIO_MODE_LOOP = common dso_local global i64 0, align 8
@G_AUDIO_ISOC0_WR = common dso_local global i64 0, align 8
@G_AUDIO_ISOC1_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @g_audio_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_audio_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.g_audio_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.g_audio_softc*
  store %struct.g_audio_softc* %5, %struct.g_audio_softc** %3, align 8
  %6 = load i64, i64* @g_audio_mode, align 8
  %7 = load %struct.g_audio_softc*, %struct.g_audio_softc** %3, align 8
  %8 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %7, i32 0, i32 0
  store i64 %6, i64* %8, align 8
  %9 = load %struct.g_audio_softc*, %struct.g_audio_softc** %3, align 8
  %10 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %9, i32 0, i32 2
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* @g_audio_pattern_data, align 4
  %13 = call i32 @memcpy(i64* %11, i32 %12, i32 8)
  %14 = load %struct.g_audio_softc*, %struct.g_audio_softc** %3, align 8
  %15 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* @G_AUDIO_MAX_STRLEN, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  store i64 0, i64* %20, align 8
  %21 = load %struct.g_audio_softc*, %struct.g_audio_softc** %3, align 8
  %22 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = call i32 @strlen(i64* %23)
  %25 = load %struct.g_audio_softc*, %struct.g_audio_softc** %3, align 8
  %26 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.g_audio_softc*, %struct.g_audio_softc** %3, align 8
  %28 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @G_AUDIO_MODE_LOOP, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %1
  %33 = load %struct.g_audio_softc*, %struct.g_audio_softc** %3, align 8
  %34 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @G_AUDIO_ISOC0_WR, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usbd_transfer_start(i32 %38)
  %40 = load %struct.g_audio_softc*, %struct.g_audio_softc** %3, align 8
  %41 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @G_AUDIO_ISOC1_WR, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @usbd_transfer_start(i32 %45)
  br label %47

47:                                               ; preds = %32, %1
  %48 = load %struct.g_audio_softc*, %struct.g_audio_softc** %3, align 8
  %49 = call i32 @g_audio_timeout_reset(%struct.g_audio_softc* %48)
  ret void
}

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @g_audio_timeout_reset(%struct.g_audio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
