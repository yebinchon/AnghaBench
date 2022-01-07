; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32* }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i32, i8* }

@CHAN_OP_DRAIN = common dso_local global i8* null, align 8
@UAUDIO_NCHANBUFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"detach failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uaudio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uaudio_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uaudio_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.uaudio_softc* @device_get_softc(i32 %4)
  store %struct.uaudio_softc* %5, %struct.uaudio_softc** %3, align 8
  %6 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %7 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @usb_proc_explore_lock(i32 %8)
  %10 = load i8*, i8** @CHAN_OP_DRAIN, align 8
  %11 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %12 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i8* %10, i8** %13, align 8
  %14 = load i8*, i8** @CHAN_OP_DRAIN, align 8
  %15 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %16 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %19 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %22 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %26 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = call i32 @usb_proc_explore_mwait(i32 %20, i32* %24, i32* %28)
  %30 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %31 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usb_proc_explore_unlock(i32 %32)
  %34 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %35 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* @UAUDIO_NCHANBUFS, align 8
  %39 = add nsw i64 %38, 1
  %40 = call i32 @usbd_transfer_unsetup(i32 %37, i64 %39)
  %41 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %42 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* @UAUDIO_NCHANBUFS, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i32 @usbd_transfer_unsetup(i32 %44, i64 %46)
  %48 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %49 = call i32 @uaudio_hid_detach(%struct.uaudio_softc* %48)
  %50 = load i32, i32* %2, align 4
  %51 = call i64 @bus_generic_detach(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %1
  %54 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %1
  %56 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %57 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %56, i32 0, i32 1
  %58 = call i32 @sbuf_delete(i32* %57)
  %59 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %60 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @umidi_detach(i32 %61)
  %63 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %64 = call i32 @uaudio_mixer_ctl_free(%struct.uaudio_softc* %63)
  ret i32 0
}

declare dso_local %struct.uaudio_softc* @device_get_softc(i32) #1

declare dso_local i32 @usb_proc_explore_lock(i32) #1

declare dso_local i32 @usb_proc_explore_mwait(i32, i32*, i32*) #1

declare dso_local i32 @usb_proc_explore_unlock(i32) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i64) #1

declare dso_local i32 @uaudio_hid_detach(%struct.uaudio_softc*) #1

declare dso_local i64 @bus_generic_detach(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @sbuf_delete(i32*) #1

declare dso_local i32 @umidi_detach(i32) #1

declare dso_local i32 @uaudio_mixer_ctl_free(%struct.uaudio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
