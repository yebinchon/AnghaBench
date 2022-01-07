; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_start_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_start_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_chan = type { i64, i64, i64, i32*, i32, %struct.uaudio_softc* }
%struct.uaudio_softc = type { i32*, i32 }

@CHAN_OP_DRAIN = common dso_local global i64 0, align 8
@CHAN_OP_NONE = common dso_local global i64 0, align 8
@CHAN_OP_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_chan*)* @uaudio_chan_start_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_chan_start_sub(%struct.uaudio_chan* %0) #0 {
  %2 = alloca %struct.uaudio_chan*, align 8
  %3 = alloca %struct.uaudio_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.uaudio_chan* %0, %struct.uaudio_chan** %2, align 8
  %5 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %6 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %5, i32 0, i32 5
  %7 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  store %struct.uaudio_softc* %7, %struct.uaudio_softc** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %9 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHAN_OP_DRAIN, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %1
  %14 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %15 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %18 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %13
  %22 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %23 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CHAN_OP_NONE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %29 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @mtx_owned(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %50

34:                                               ; preds = %27, %21, %13
  %35 = load i64, i64* @CHAN_OP_START, align 8
  %36 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %37 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %39 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %42 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %46 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = call i32 @usb_proc_explore_msignal(i32 %40, i32* %44, i32* %48)
  br label %50

50:                                               ; preds = %34, %33
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %56 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usbd_transfer_start(i32 %59)
  %61 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %62 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @usbd_transfer_start(i32 %65)
  br label %67

67:                                               ; preds = %54, %51
  ret void
}

declare dso_local i64 @mtx_owned(i32) #1

declare dso_local i32 @usb_proc_explore_msignal(i32, i32*, i32*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
