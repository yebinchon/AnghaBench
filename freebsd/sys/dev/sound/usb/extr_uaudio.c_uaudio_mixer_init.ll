; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { i32, i32, %struct.uaudio_mixer_node* }
%struct.uaudio_mixer_node = type { i32, i64, i32, i32, i32*, %struct.uaudio_mixer_node* }

@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@MIX_SELECTOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_softc*)* @uaudio_mixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_mixer_init(%struct.uaudio_softc* %0) #0 {
  %2 = alloca %struct.uaudio_softc*, align 8
  %3 = alloca %struct.uaudio_mixer_node*, align 8
  %4 = alloca i32, align 4
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %2, align 8
  %5 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %6 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %5, i32 0, i32 2
  %7 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %6, align 8
  store %struct.uaudio_mixer_node* %7, %struct.uaudio_mixer_node** %3, align 8
  br label %8

8:                                                ; preds = %84, %1
  %9 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %10 = icmp ne %struct.uaudio_mixer_node* %9, null
  br i1 %10, label %11, label %88

11:                                               ; preds = %8
  %12 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %13 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %19 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 1, %20
  %22 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %23 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %17, %11
  %27 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %28 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %83

32:                                               ; preds = %26
  %33 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %34 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MIX_SELECTOR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %83

38:                                               ; preds = %32
  %39 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %40 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %79, %38
  %43 = load i32, i32* %4, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %48 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %46, %49
  br label %51

51:                                               ; preds = %45, %42
  %52 = phi i1 [ false, %42 ], [ %50, %45 ]
  br i1 %52, label %53, label %82

53:                                               ; preds = %51
  %54 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %55 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %79

65:                                               ; preds = %53
  %66 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %67 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 1, %73
  %75 = load %struct.uaudio_softc*, %struct.uaudio_softc** %2, align 8
  %76 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %65, %64
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %42

82:                                               ; preds = %51
  br label %83

83:                                               ; preds = %82, %32, %26
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %86 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %85, i32 0, i32 5
  %87 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %86, align 8
  store %struct.uaudio_mixer_node* %87, %struct.uaudio_mixer_node** %3, align 8
  br label %8

88:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
