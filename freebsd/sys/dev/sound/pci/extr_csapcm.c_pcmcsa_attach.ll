; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_pcmcsa_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_pcmcsa_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csa_info = type { i32, %struct.TYPE_11__*, %struct.TYPE_12__, %struct.TYPE_10__*, i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32, i64, i8*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ac97_info = type { i32 }
%struct.sndcard_func = type { %struct.TYPE_10__* }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@csa_ac97 = common dso_local global i32 0, align 4
@AC97_F_EAPD_INV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"at irq %jd %s\00", align 1
@snd_csa = common dso_local global i32 0, align 4
@csa_intr = common dso_local global i32 0, align 4
@BA1_PFIE = common dso_local global i32 0, align 4
@BA1_CIE = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@csachan_class = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pcmcsa_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcsa_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.csa_info*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ac97_info*, align 8
  %10 = alloca %struct.sndcard_func*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @SND_STATUSLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* @M_DEVBUF, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.csa_info* @malloc(i32 72, i32 %16, i32 %19)
  store %struct.csa_info* %20, %struct.csa_info** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_get_unit(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.sndcard_func* @device_get_ivars(i32 %23)
  store %struct.sndcard_func* %24, %struct.sndcard_func** %10, align 8
  %25 = load %struct.sndcard_func*, %struct.sndcard_func** %10, align 8
  %26 = getelementptr inbounds %struct.sndcard_func, %struct.sndcard_func* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %29 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %28, i32 0, i32 3
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %29, align 8
  %30 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %31 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %34 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %37 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %39 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %38, i32 0, i32 3
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %44 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %43, i32 0, i32 1
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %44, align 8
  %45 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %46 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %45, i32 0, i32 2
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %5, align 8
  %47 = call i8* @PCIR_BAR(i32 0)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = call i8* @PCIR_BAR(i32 1)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call i64 @csa_allocres(%struct.csa_info* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %1
  %60 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @csa_releaseres(%struct.csa_info* %60, i32 %61)
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %177

64:                                               ; preds = %1
  %65 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %66 = call i32 @csa_active(%struct.csa_info* %65, i32 1)
  %67 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %68 = call i64 @csa_init(%struct.csa_info* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @csa_releaseres(%struct.csa_info* %71, i32 %72)
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %177

75:                                               ; preds = %64
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %78 = load i32, i32* @csa_ac97, align 4
  %79 = call %struct.ac97_info* @AC97_CREATE(i32 %76, %struct.csa_info* %77, i32 %78)
  store %struct.ac97_info* %79, %struct.ac97_info** %9, align 8
  %80 = load %struct.ac97_info*, %struct.ac97_info** %9, align 8
  %81 = icmp eq %struct.ac97_info* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @csa_releaseres(%struct.csa_info* %83, i32 %84)
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %177

87:                                               ; preds = %75
  %88 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %89 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.ac97_info*, %struct.ac97_info** %9, align 8
  %96 = load i32, i32* @AC97_F_EAPD_INV, align 4
  %97 = call i32 @ac97_setflags(%struct.ac97_info* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %87
  %99 = load i32, i32* %3, align 4
  %100 = call i32 (...) @ac97_getmixerclass()
  %101 = load %struct.ac97_info*, %struct.ac97_info** %9, align 8
  %102 = call i32 @mixer_init(i32 %99, i32 %100, %struct.ac97_info* %101)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.ac97_info*, %struct.ac97_info** %9, align 8
  %106 = call i32 @ac97_destroy(%struct.ac97_info* %105)
  %107 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @csa_releaseres(%struct.csa_info* %107, i32 %108)
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %177

111:                                              ; preds = %98
  %112 = load i32, i32* @SND_STATUSLEN, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @rman_get_start(i32 %115)
  %117 = load i32, i32* @snd_csa, align 4
  %118 = call i32 @PCM_KLDSTRING(i32 %117)
  %119 = call i32 @snprintf(i8* %15, i32 %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %118)
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @csa_intr, align 4
  %125 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %126 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %127 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %126, i32 0, i32 0
  %128 = call i64 @snd_setup_intr(i32 %120, i32 %123, i32 0, i32 %124, %struct.csa_info* %125, i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %111
  %131 = load %struct.ac97_info*, %struct.ac97_info** %9, align 8
  %132 = call i32 @ac97_destroy(%struct.ac97_info* %131)
  %133 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @csa_releaseres(%struct.csa_info* %133, i32 %134)
  %136 = load i32, i32* @ENXIO, align 4
  store i32 %136, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %177

137:                                              ; preds = %111
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = load i32, i32* @BA1_PFIE, align 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = load i32, i32* @BA1_PFIE, align 4
  %142 = call i32 @csa_readmem(%struct.TYPE_12__* %140, i32 %141)
  %143 = and i32 %142, -61504
  %144 = call i32 @csa_writemem(%struct.TYPE_12__* %138, i32 %139, i32 %143)
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %146 = load i32, i32* @BA1_CIE, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = load i32, i32* @BA1_CIE, align 4
  %149 = call i32 @csa_readmem(%struct.TYPE_12__* %147, i32 %148)
  %150 = and i32 %149, -64
  %151 = or i32 %150, 1
  %152 = call i32 @csa_writemem(%struct.TYPE_12__* %145, i32 %146, i32 %151)
  %153 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %154 = call i32 @csa_active(%struct.csa_info* %153, i32 -1)
  %155 = load i32, i32* %3, align 4
  %156 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %157 = call i64 @pcm_register(i32 %155, %struct.csa_info* %156, i32 1, i32 1)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %137
  %160 = load %struct.ac97_info*, %struct.ac97_info** %9, align 8
  %161 = call i32 @ac97_destroy(%struct.ac97_info* %160)
  %162 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @csa_releaseres(%struct.csa_info* %162, i32 %163)
  %165 = load i32, i32* @ENXIO, align 4
  store i32 %165, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %177

166:                                              ; preds = %137
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* @PCMDIR_REC, align 4
  %169 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %170 = call i32 @pcm_addchan(i32 %167, i32 %168, i32* @csachan_class, %struct.csa_info* %169)
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* @PCMDIR_PLAY, align 4
  %173 = load %struct.csa_info*, %struct.csa_info** %4, align 8
  %174 = call i32 @pcm_addchan(i32 %171, i32 %172, i32* @csachan_class, %struct.csa_info* %173)
  %175 = load i32, i32* %3, align 4
  %176 = call i32 @pcm_setstatus(i32 %175, i8* %15)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %177

177:                                              ; preds = %166, %159, %130, %104, %82, %70, %59
  %178 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.csa_info* @malloc(i32, i32, i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local %struct.sndcard_func* @device_get_ivars(i32) #2

declare dso_local i8* @PCIR_BAR(i32) #2

declare dso_local i64 @csa_allocres(%struct.csa_info*, i32) #2

declare dso_local i32 @csa_releaseres(%struct.csa_info*, i32) #2

declare dso_local i32 @csa_active(%struct.csa_info*, i32) #2

declare dso_local i64 @csa_init(%struct.csa_info*) #2

declare dso_local %struct.ac97_info* @AC97_CREATE(i32, %struct.csa_info*, i32) #2

declare dso_local i32 @ac97_setflags(%struct.ac97_info*, i32) #2

declare dso_local i32 @mixer_init(i32, i32, %struct.ac97_info*) #2

declare dso_local i32 @ac97_getmixerclass(...) #2

declare dso_local i32 @ac97_destroy(%struct.ac97_info*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @rman_get_start(i32) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i64 @snd_setup_intr(i32, i32, i32, i32, %struct.csa_info*, i32*) #2

declare dso_local i32 @csa_writemem(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @csa_readmem(%struct.TYPE_12__*, i32) #2

declare dso_local i64 @pcm_register(i32, %struct.csa_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.csa_info*) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
