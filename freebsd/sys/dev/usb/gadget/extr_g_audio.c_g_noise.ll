; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_audio.c_g_noise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_audio.c_g_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_audio_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_audio_softc*)* @g_noise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_noise(%struct.g_audio_softc* %0) #0 {
  %2 = alloca %struct.g_audio_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.g_audio_softc* %0, %struct.g_audio_softc** %2, align 8
  store i32 16776989, i32* %4, align 4
  %5 = load %struct.g_audio_softc*, %struct.g_audio_softc** %2, align 8
  %6 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.g_audio_softc*, %struct.g_audio_softc** %2, align 8
  %12 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 16776989
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.g_audio_softc*, %struct.g_audio_softc** %2, align 8
  %17 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %17, align 4
  %20 = load %struct.g_audio_softc*, %struct.g_audio_softc** %2, align 8
  %21 = getelementptr inbounds %struct.g_audio_softc, %struct.g_audio_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = xor i32 %23, 8388608
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 8388608
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, -8388608
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
