; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_attach_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_attach_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"hardware has swapped left and right\0A\00", align 1
@SOUND_MASK_PCM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"emulating master volume\0A\00", align 1
@SD_F_SOFTPCMVOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"device needs bitperfect by default\0A\00", align 1
@SD_F_BITPERFECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"at ? %s\00", align 1
@snd_uaudio = common dso_local global i32 0, align 4
@SD_F_MPSAFE = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"feedback_rate\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Feedback sample rate in Hz\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uaudio_attach_sub(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uaudio_softc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  %14 = call %struct.uaudio_softc* @device_get_softc(i32 %13)
  store %struct.uaudio_softc* %14, %struct.uaudio_softc** %8, align 8
  %15 = load i32, i32* @SND_STATUSLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %20 = call i32 @uaudio_mixer_init(%struct.uaudio_softc* %19)
  %21 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %22 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 @DPRINTF(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %3
  %28 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %29 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SOUND_MASK_PCM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = call i32 @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SD_F_SOFTPCMVOL, align 4
  %38 = call i32 @uaudio_pcm_setflags(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %27
  %40 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %41 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = call i32 @DPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SD_F_BITPERFECT, align 4
  %48 = call i32 @uaudio_pcm_setflags(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %53 = call i64 @mixer_init(i32 %50, i32 %51, %struct.uaudio_softc* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %130

56:                                               ; preds = %49
  %57 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %58 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @mixer_hwvol_init(i32 %59)
  %61 = trunc i64 %16 to i32
  %62 = load i32, i32* @snd_uaudio, align 4
  %63 = call i8* @PCM_KLDSTRING(i32 %62)
  %64 = call i32 @snprintf(i8* %18, i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %67 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %68 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  %74 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %75 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  %81 = call i64 @pcm_register(i32 %65, %struct.uaudio_softc* %66, i32 %73, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %56
  br label %130

84:                                               ; preds = %56
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @SD_F_MPSAFE, align 4
  %87 = call i32 @uaudio_pcm_setflags(i32 %85, i32 %86)
  %88 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %89 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %88, i32 0, i32 2
  store i32 1, i32* %89, align 8
  %90 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %91 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @PCMDIR_PLAY, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %100 = call i32 @pcm_addchan(i32 %96, i32 %97, i32 %98, %struct.uaudio_softc* %99)
  br label %101

101:                                              ; preds = %95, %84
  %102 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %103 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @PCMDIR_REC, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %112 = call i32 @pcm_addchan(i32 %108, i32 %109, i32 %110, %struct.uaudio_softc* %111)
  br label %113

113:                                              ; preds = %107, %101
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @pcm_setstatus(i32 %114, i8* %18)
  %116 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @uaudio_mixer_register_sysctl(%struct.uaudio_softc* %116, i32 %117)
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @device_get_sysctl_ctx(i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @device_get_sysctl_tree(i32 %121)
  %123 = call i32 @SYSCTL_CHILDREN(i32 %122)
  %124 = load i32, i32* @OID_AUTO, align 4
  %125 = load i32, i32* @CTLFLAG_RD, align 4
  %126 = load %struct.uaudio_softc*, %struct.uaudio_softc** %8, align 8
  %127 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = call i32 @SYSCTL_ADD_INT(i32 %120, i32 %123, i32 %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %125, i32* %128, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %134

130:                                              ; preds = %83, %55
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @uaudio_detach_sub(i32 %131)
  %133 = load i32, i32* @ENXIO, align 4
  store i32 %133, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %134

134:                                              ; preds = %130, %113
  %135 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.uaudio_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @uaudio_mixer_init(%struct.uaudio_softc*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @uaudio_pcm_setflags(i32, i32) #1

declare dso_local i64 @mixer_init(i32, i32, %struct.uaudio_softc*) #1

declare dso_local i32 @mixer_hwvol_init(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @PCM_KLDSTRING(i32) #1

declare dso_local i64 @pcm_register(i32, %struct.uaudio_softc*, i32, i32) #1

declare dso_local i32 @pcm_addchan(i32, i32, i32, %struct.uaudio_softc*) #1

declare dso_local i32 @pcm_setstatus(i32, i8*) #1

declare dso_local i32 @uaudio_mixer_register_sysctl(%struct.uaudio_softc*, i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @uaudio_detach_sub(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
