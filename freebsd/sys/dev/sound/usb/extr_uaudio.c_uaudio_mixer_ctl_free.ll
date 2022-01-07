; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_ctl_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_ctl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { %struct.uaudio_mixer_node* }
%struct.uaudio_mixer_node = type { %struct.uaudio_mixer_node* }

@M_USBDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_softc*)* @uaudio_mixer_ctl_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_mixer_ctl_free(%struct.uaudio_softc* %0) #0 {
  %2 = alloca %struct.uaudio_softc*, align 8
  %3 = alloca %struct.uaudio_mixer_node*, align 8
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %6 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %5, i32 0, i32 0
  %7 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %6, align 8
  store %struct.uaudio_mixer_node* %7, %struct.uaudio_mixer_node** %3, align 8
  %8 = icmp ne %struct.uaudio_mixer_node* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %11 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %10, i32 0, i32 0
  %12 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %11, align 8
  %13 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %14 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %13, i32 0, i32 0
  store %struct.uaudio_mixer_node* %12, %struct.uaudio_mixer_node** %14, align 8
  %15 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %16 = load i32, i32* @M_USBDEV, align 4
  %17 = call i32 @free(%struct.uaudio_mixer_node* %15, i32 %16)
  br label %4

18:                                               ; preds = %4
  ret void
}

declare dso_local i32 @free(%struct.uaudio_mixer_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
