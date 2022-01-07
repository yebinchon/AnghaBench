; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_chan = type { i32, i64, i64, i64, i64, i32, %struct.uaudio_softc* }
%struct.uaudio_softc = type { i32, %struct.uaudio_chan, %struct.uaudio_chan }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uaudio_chan_start(%struct.uaudio_chan* %0) #0 {
  %2 = alloca %struct.uaudio_chan*, align 8
  %3 = alloca %struct.uaudio_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.uaudio_chan* %0, %struct.uaudio_chan** %2, align 8
  %5 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %6 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %5, i32 0, i32 6
  %7 = load %struct.uaudio_softc*, %struct.uaudio_softc** %6, align 8
  store %struct.uaudio_softc* %7, %struct.uaudio_softc** %3, align 8
  %8 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @usb_proc_explore_lock(i32 %10)
  %12 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %13 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %57

16:                                               ; preds = %1
  %17 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %18 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %19 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @uaudio_get_buffer_size(%struct.uaudio_chan* %17, i32 %20)
  %22 = mul nsw i32 2, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %24 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %26 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %29 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %28, i32 0, i32 4
  store i64 %27, i64* %29, align 8
  %30 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %31 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %37 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %39 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %42 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %44 = call i64 @uaudio_chan_need_both(%struct.uaudio_softc* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %16
  %47 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %48 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %47, i32 0, i32 2
  %49 = call i32 @uaudio_chan_start_sub(%struct.uaudio_chan* %48)
  %50 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %51 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %50, i32 0, i32 1
  %52 = call i32 @uaudio_chan_start_sub(%struct.uaudio_chan* %51)
  br label %56

53:                                               ; preds = %16
  %54 = load %struct.uaudio_chan*, %struct.uaudio_chan** %2, align 8
  %55 = call i32 @uaudio_chan_start_sub(%struct.uaudio_chan* %54)
  br label %56

56:                                               ; preds = %53, %46
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %59 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @usb_proc_explore_unlock(i32 %60)
  ret void
}

declare dso_local i32 @usb_proc_explore_lock(i32) #1

declare dso_local i32 @uaudio_get_buffer_size(%struct.uaudio_chan*, i32) #1

declare dso_local i64 @uaudio_chan_need_both(%struct.uaudio_softc*) #1

declare dso_local i32 @uaudio_chan_start_sub(%struct.uaudio_chan*) #1

declare dso_local i32 @usb_proc_explore_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
