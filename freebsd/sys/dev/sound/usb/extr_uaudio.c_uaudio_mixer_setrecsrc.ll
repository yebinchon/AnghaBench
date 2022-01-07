; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_setrecsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_setrecsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { %struct.uaudio_mixer_node* }
%struct.uaudio_mixer_node = type { i64, i64, i32, i32, i32*, %struct.uaudio_mixer_node* }

@SOUND_MIXER_NRDEVICES = common dso_local global i64 0, align 8
@MIX_SELECTOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uaudio_mixer_setrecsrc(%struct.uaudio_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uaudio_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uaudio_mixer_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %9, i32 0, i32 0
  %11 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %10, align 8
  store %struct.uaudio_mixer_node* %11, %struct.uaudio_mixer_node** %5, align 8
  br label %12

12:                                               ; preds = %113, %2
  %13 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %14 = icmp ne %struct.uaudio_mixer_node* %13, null
  br i1 %14, label %15, label %117

15:                                               ; preds = %12
  %16 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %17 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SOUND_MIXER_NRDEVICES, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %112

21:                                               ; preds = %15
  %22 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %23 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MIX_SELECTOR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %112

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  %28 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %29 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %54, %27
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %37 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %35, %38
  br label %40

40:                                               ; preds = %34, %31
  %41 = phi i1 [ false, %31 ], [ %39, %34 ]
  br i1 %41, label %42, label %57

42:                                               ; preds = %40
  %43 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %44 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %31

57:                                               ; preds = %40
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %113

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 0, %65
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %77 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %108, %64
  %80 = load i32, i32* %8, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %85 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp sle i32 %83, %86
  br label %88

88:                                               ; preds = %82, %79
  %89 = phi i1 [ false, %79 ], [ %87, %82 ]
  br i1 %89, label %90, label %111

90:                                               ; preds = %88
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %93 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 1, %99
  %101 = icmp ne i32 %91, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  br label %108

103:                                              ; preds = %90
  %104 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %105 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @uaudio_mixer_ctl_set(%struct.uaudio_softc* %104, %struct.uaudio_mixer_node* %105, i32 0, i32 %106)
  br label %111

108:                                              ; preds = %102
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %79

111:                                              ; preds = %103, %88
  br label %112

112:                                              ; preds = %111, %21, %15
  br label %113

113:                                              ; preds = %112, %63
  %114 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %115 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %114, i32 0, i32 5
  %116 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %115, align 8
  store %struct.uaudio_mixer_node* %116, %struct.uaudio_mixer_node** %5, align 8
  br label %12

117:                                              ; preds = %12
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @uaudio_mixer_ctl_set(%struct.uaudio_softc*, %struct.uaudio_mixer_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
