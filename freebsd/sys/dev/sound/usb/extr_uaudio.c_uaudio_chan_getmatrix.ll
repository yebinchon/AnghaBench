; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_getmatrix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_getmatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmchan_matrix = type { i32 }
%struct.uaudio_chan = type { %struct.uaudio_softc* }
%struct.uaudio_softc = type { i64 }

@uaudio_chan_matrix_swap_2_0 = common dso_local global %struct.pcmchan_matrix zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcmchan_matrix* @uaudio_chan_getmatrix(%struct.uaudio_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.pcmchan_matrix*, align 8
  %4 = alloca %struct.uaudio_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uaudio_softc*, align 8
  store %struct.uaudio_chan* %0, %struct.uaudio_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.uaudio_chan*, %struct.uaudio_chan** %4, align 8
  %8 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %7, i32 0, i32 0
  %9 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  store %struct.uaudio_softc* %9, %struct.uaudio_softc** %6, align 8
  %10 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %11 = icmp ne %struct.uaudio_softc* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  %14 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @AFMT_CHANNEL(i32 %18)
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store %struct.pcmchan_matrix* @uaudio_chan_matrix_swap_2_0, %struct.pcmchan_matrix** %3, align 8
  br label %25

22:                                               ; preds = %17, %12, %2
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.pcmchan_matrix* @feeder_matrix_format_map(i32 %23)
  store %struct.pcmchan_matrix* %24, %struct.pcmchan_matrix** %3, align 8
  br label %25

25:                                               ; preds = %22, %21
  %26 = load %struct.pcmchan_matrix*, %struct.pcmchan_matrix** %3, align 8
  ret %struct.pcmchan_matrix* %26
}

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local %struct.pcmchan_matrix* @feeder_matrix_format_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
