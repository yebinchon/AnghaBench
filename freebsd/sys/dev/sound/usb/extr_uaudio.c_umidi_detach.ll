; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_umidi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_umidi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { %struct.umidi_chan }
%struct.umidi_chan = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UMIDI_EMB_JACK_MAX = common dso_local global i64 0, align 8
@UMIDI_RX_TRANSFER = common dso_local global i64 0, align 8
@UMIDI_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @umidi_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umidi_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uaudio_softc*, align 8
  %4 = alloca %struct.umidi_chan*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.uaudio_softc* @device_get_softc(i32 %6)
  store %struct.uaudio_softc* %7, %struct.uaudio_softc** %3, align 8
  %8 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %8, i32 0, i32 0
  store %struct.umidi_chan* %9, %struct.umidi_chan** %4, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %22, %1
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @UMIDI_EMB_JACK_MAX, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.umidi_chan*, %struct.umidi_chan** %4, align 8
  %16 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @usb_fifo_detach(i32* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %5, align 8
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.umidi_chan*, %struct.umidi_chan** %4, align 8
  %27 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %26, i32 0, i32 0
  %28 = call i32 @mtx_lock(i32* %27)
  %29 = load %struct.umidi_chan*, %struct.umidi_chan** %4, align 8
  %30 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @UMIDI_RX_TRANSFER, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usbd_transfer_stop(i32 %34)
  %36 = load %struct.umidi_chan*, %struct.umidi_chan** %4, align 8
  %37 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %36, i32 0, i32 0
  %38 = call i32 @mtx_unlock(i32* %37)
  %39 = load %struct.umidi_chan*, %struct.umidi_chan** %4, align 8
  %40 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @UMIDI_N_TRANSFER, align 4
  %43 = call i32 @usbd_transfer_unsetup(i32* %41, i32 %42)
  %44 = load %struct.umidi_chan*, %struct.umidi_chan** %4, align 8
  %45 = getelementptr inbounds %struct.umidi_chan, %struct.umidi_chan* %44, i32 0, i32 0
  %46 = call i32 @mtx_destroy(i32* %45)
  ret i32 0
}

declare dso_local %struct.uaudio_softc* @device_get_softc(i32) #1

declare dso_local i32 @usb_fifo_detach(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_transfer_stop(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @usbd_transfer_unsetup(i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
