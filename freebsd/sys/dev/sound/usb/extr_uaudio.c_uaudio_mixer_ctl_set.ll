; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_ctl_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_ctl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { i32* }
%struct.uaudio_mixer_node = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_softc*, %struct.uaudio_mixer_node*, i32, i32)* @uaudio_mixer_ctl_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_mixer_ctl_set(%struct.uaudio_softc* %0, %struct.uaudio_mixer_node* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uaudio_softc*, align 8
  %6 = alloca %struct.uaudio_mixer_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %5, align 8
  store %struct.uaudio_mixer_node* %1, %struct.uaudio_mixer_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %6, align 8
  %10 = load i32, i32* %8, align 4
  %11 = call i32 @uaudio_mixer_bsd2value(%struct.uaudio_mixer_node* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = srem i32 %12, 8
  %14 = shl i32 1, %13
  %15 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %6, align 8
  %16 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sdiv i32 %18, 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %14
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %6, align 8
  %26 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %24, i32* %30, align 4
  %31 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %32 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usbd_transfer_start(i32 %35)
  ret void
}

declare dso_local i32 @uaudio_mixer_bsd2value(%struct.uaudio_mixer_node*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
