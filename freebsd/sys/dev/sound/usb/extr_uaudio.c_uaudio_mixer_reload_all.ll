; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_reload_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_reload_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { i32*, %struct.TYPE_2__, i32*, %struct.uaudio_mixer_node* }
%struct.TYPE_2__ = type { i32* }
%struct.uaudio_mixer_node = type { i64, i32, i32*, %struct.uaudio_mixer_node* }

@SOUND_MIXER_NRDEVICES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_softc*)* @uaudio_mixer_reload_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_mixer_reload_all(%struct.uaudio_softc* %0) #0 {
  %2 = alloca %struct.uaudio_softc*, align 8
  %3 = alloca %struct.uaudio_mixer_node*, align 8
  %4 = alloca i32, align 4
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %2, align 8
  %5 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %6 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %74

10:                                               ; preds = %1
  %11 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %12 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %16 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %15, i32 0, i32 3
  %17 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %16, align 8
  store %struct.uaudio_mixer_node* %17, %struct.uaudio_mixer_node** %3, align 8
  br label %18

18:                                               ; preds = %52, %10
  %19 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %20 = icmp ne %struct.uaudio_mixer_node* %19, null
  br i1 %20, label %21, label %56

21:                                               ; preds = %18
  %22 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %23 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SOUND_MIXER_NRDEVICES, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %52

28:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %48, %28
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %32 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = srem i32 %36, 8
  %38 = shl i32 1, %37
  %39 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %40 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sdiv i32 %42, 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %38
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %29

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %54 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %53, i32 0, i32 3
  %55 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %54, align 8
  store %struct.uaudio_mixer_node* %55, %struct.uaudio_mixer_node** %3, align 8
  br label %18

56:                                               ; preds = %18
  %57 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %58 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @usbd_transfer_start(i32 %61)
  %63 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %64 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usbd_transfer_start(i32 %68)
  %70 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %71 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @mtx_unlock(i32* %72)
  br label %74

74:                                               ; preds = %56, %9
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
