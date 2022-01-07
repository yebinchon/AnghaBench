; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_chan = type { i64, %struct.uaudio_softc* }
%struct.uaudio_softc = type { i32, %struct.uaudio_chan, %struct.uaudio_chan }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uaudio_chan_stop(%struct.uaudio_chan* %0) #0 {
  %2 = alloca %struct.uaudio_chan*, align 8
  %3 = alloca %struct.uaudio_softc*, align 8
  store %struct.uaudio_chan* %0, %struct.uaudio_chan** %2, align 8
  %4 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %5 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %4, i32 0, i32 1
  %6 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  store %struct.uaudio_softc* %6, %struct.uaudio_softc** %3, align 8
  %7 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @usb_proc_explore_lock(i32 %9)
  %11 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %12 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %17 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %19 = call i64 @uaudio_chan_need_both(%struct.uaudio_softc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %37

22:                                               ; preds = %15
  %23 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %24 = call i64 @uaudio_chan_need_none(%struct.uaudio_softc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %28 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %27, i32 0, i32 2
  %29 = call i32 @uaudio_chan_stop_sub(%struct.uaudio_chan* %28)
  %30 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %31 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %30, i32 0, i32 1
  %32 = call i32 @uaudio_chan_stop_sub(%struct.uaudio_chan* %31)
  br label %36

33:                                               ; preds = %22
  %34 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %35 = call i32 @uaudio_chan_stop_sub(%struct.uaudio_chan* %34)
  br label %36

36:                                               ; preds = %33, %26
  br label %37

37:                                               ; preds = %36, %21
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %40 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @usb_proc_explore_unlock(i32 %41)
  ret void
}

declare dso_local i32 @usb_proc_explore_lock(i32) #1

declare dso_local i64 @uaudio_chan_need_both(%struct.uaudio_softc*) #1

declare dso_local i64 @uaudio_chan_need_none(%struct.uaudio_softc*) #1

declare dso_local i32 @uaudio_chan_stop_sub(%struct.uaudio_chan*) #1

declare dso_local i32 @usb_proc_explore_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
