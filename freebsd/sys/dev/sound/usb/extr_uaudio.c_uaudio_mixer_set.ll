; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { %struct.uaudio_mixer_node* }
%struct.uaudio_mixer_node = type { i32, i32, %struct.uaudio_mixer_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uaudio_mixer_set(%struct.uaudio_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uaudio_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uaudio_mixer_node*, align 8
  %10 = alloca i32, align 4
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %12 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %11, i32 0, i32 0
  %13 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %12, align 8
  store %struct.uaudio_mixer_node* %13, %struct.uaudio_mixer_node** %9, align 8
  br label %14

14:                                               ; preds = %50, %4
  %15 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %9, align 8
  %16 = icmp ne %struct.uaudio_mixer_node* %15, null
  br i1 %16, label %17, label %54

17:                                               ; preds = %14
  %18 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %9, align 8
  %19 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %45, %23
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %9, align 8
  %27 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.uaudio_softc*, %struct.uaudio_softc** %5, align 8
  %32 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = mul i32 %41, 255
  %43 = sdiv i32 %42, 100
  %44 = call i32 @uaudio_mixer_ctl_set(%struct.uaudio_softc* %31, %struct.uaudio_mixer_node* %32, i32 %33, i32 %43)
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %24

48:                                               ; preds = %24
  br label %49

49:                                               ; preds = %48, %17
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %9, align 8
  %52 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %51, i32 0, i32 2
  %53 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %52, align 8
  store %struct.uaudio_mixer_node* %53, %struct.uaudio_mixer_node** %9, align 8
  br label %14

54:                                               ; preds = %14
  ret void
}

declare dso_local i32 @uaudio_mixer_ctl_set(%struct.uaudio_softc*, %struct.uaudio_mixer_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
