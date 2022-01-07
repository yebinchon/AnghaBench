; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_set_param_speed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_chan_set_param_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_chan = type { i64, i64, %struct.TYPE_2__*, %struct.uaudio_softc* }
%struct.TYPE_2__ = type { i64 }
%struct.uaudio_softc = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Selecting alt %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uaudio_chan_set_param_speed(%struct.uaudio_chan* %0, i64 %1) #0 {
  %3 = alloca %struct.uaudio_chan*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uaudio_softc*, align 8
  %6 = alloca i64, align 8
  store %struct.uaudio_chan* %0, %struct.uaudio_chan** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.uaudio_chan*, %struct.uaudio_chan** %3, align 8
  %8 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %7, i32 0, i32 3
  %9 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  store %struct.uaudio_softc* %9, %struct.uaudio_softc** %5, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %28, %2
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.uaudio_chan*, %struct.uaudio_chan** %3, align 8
  %13 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = load %struct.uaudio_chan*, %struct.uaudio_chan** %3, align 8
  %18 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %31

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %10

31:                                               ; preds = %26, %10
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %39 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_proc_explore_lock(i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.uaudio_chan*, %struct.uaudio_chan** %3, align 8
  %44 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %46 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usb_proc_explore_unlock(i32 %47)
  %49 = load i64, i64* %6, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @DPRINTF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.uaudio_chan*, %struct.uaudio_chan** %3, align 8
  %53 = getelementptr inbounds %struct.uaudio_chan, %struct.uaudio_chan* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  ret i32 %59
}

declare dso_local i32 @usb_proc_explore_lock(i32) #1

declare dso_local i32 @usb_proc_explore_unlock(i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
