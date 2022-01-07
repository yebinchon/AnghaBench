; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_pcm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx-pcm.c_emu_pcm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_pcm_info = type { i32, i32, i32**, i64, i64, i32*, i64, %struct.emu_sc_info*, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32*, i32 }
%struct.emu_sc_info = type { i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i32*, i32*, i32*, i32* }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot get bridge conf\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"snd_emu10kx pcm softc\00", align 1
@EMU_VAR_ISEMU10K1 = common dso_local global i32 0, align 4
@EMU_VAR_MCH_DISABLED = common dso_local global i32 0, align 4
@EMU_VAR_ROUTE = common dso_local global i32 0, align 4
@emu_ac97 = common dso_local global i32 0, align 4
@emu_eac97 = common dso_local global i32 0, align 4
@emudspmixer_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to initialize DSP mixer\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to initialize mixer\0A\00", align 1
@emuefxmixer_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to initialize EFX mixer\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"invalid default route\0A\00", align 1
@EMU_INTE_INTERTIMERENB = common dso_local global i32 0, align 4
@EMU_IPR_INTERVALTIMER = common dso_local global i32 0, align 4
@emu_pcm_intr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"unable to initialize PCM part of the card\0A\00", align 1
@SD_F_MPSAFE = common dso_local global i32 0, align 4
@MAX_CHANNELS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"can't register PCM channels!\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@emupchan_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@emurchan_class = common dso_local global i32 0, align 4
@emufxrchan_class = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @emu_pcm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_pcm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.emu_pcm_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* @SND_STATUSLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @M_DEVBUF, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.emu_pcm_info* @malloc(i32 144, i32 %18, i32 %21)
  store %struct.emu_pcm_info* %22, %struct.emu_pcm_info** %4, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_get_parent(i32 %23)
  %25 = call i64 @device_get_softc(i32 %24)
  %26 = inttoptr i64 %25 to %struct.emu_sc_info*
  %27 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %28 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %27, i32 0, i32 7
  store %struct.emu_sc_info* %26, %struct.emu_sc_info** %28, align 8
  %29 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %30 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %29, i32 0, i32 7
  %31 = load %struct.emu_sc_info*, %struct.emu_sc_info** %30, align 8
  %32 = icmp eq %struct.emu_sc_info* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %37 = load i32, i32* @M_DEVBUF, align 4
  %38 = call i32 @free(%struct.emu_pcm_info* %36, i32 %37)
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %466

40:                                               ; preds = %1
  %41 = load i32, i32* %3, align 4
  %42 = call i8* @device_get_nameunit(i32 %41)
  %43 = call i64 @snd_mtxcreate(i8* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %45 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %48 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %47, i32 0, i32 12
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_get_parent(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @EMU_VAR_ISEMU10K1, align 4
  %53 = call i64 @BUS_READ_IVAR(i32 %50, i32 %51, i32 %52, i64* %12)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %59 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @device_get_parent(i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @EMU_VAR_MCH_DISABLED, align 4
  %64 = call i64 @BUS_READ_IVAR(i32 %61, i32 %62, i32 %63, i64* %12)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %70 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %72 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %71, i32 0, i32 5
  store i32* null, i32** %72, align 8
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %107, %40
  %74 = load i32, i32* %5, align 4
  %75 = icmp ult i32 %74, 8
  br i1 %75, label %76, label %110

76:                                               ; preds = %73
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %79 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %78, i32 0, i32 10
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %77, i32* %84, align 4
  %85 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %86 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %85, i32 0, i32 10
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %94 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %93, i32 0, i32 10
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %92, i32* %99, align 4
  %100 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %101 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %100, i32 0, i32 10
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %76
  %108 = load i32, i32* %5, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %73

110:                                              ; preds = %73
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %145, %110
  %112 = load i32, i32* %5, align 4
  %113 = icmp ult i32 %112, 8
  br i1 %113, label %114, label %148

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %117 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %116, i32 0, i32 9
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %115, i32* %122, align 4
  %123 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %124 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %123, i32 0, i32 9
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 0, i32* %129, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %132 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %131, i32 0, i32 9
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %130, i32* %137, align 4
  %138 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %139 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %138, i32 0, i32 9
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 0, i32* %144, align 4
  br label %145

145:                                              ; preds = %114
  %146 = load i32, i32* %5, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %111

148:                                              ; preds = %111
  %149 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %150 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %149, i32 0, i32 2
  %151 = load i32**, i32*** %150, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 75, i32* %154, align 4
  %155 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %156 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %155, i32 0, i32 2
  %157 = load i32**, i32*** %156, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 75, i32* %160, align 4
  %161 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %162 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %161, i32 0, i32 2
  %163 = load i32**, i32*** %162, align 8
  %164 = getelementptr inbounds i32*, i32** %163, i64 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  store i32 75, i32* %166, align 4
  %167 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %168 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %167, i32 0, i32 2
  %169 = load i32**, i32*** %168, align 8
  %170 = getelementptr inbounds i32*, i32** %169, i64 1
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  store i32 75, i32* %172, align 4
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @device_get_parent(i32 %173)
  %175 = load i32, i32* %3, align 4
  %176 = load i32, i32* @EMU_VAR_ROUTE, align 4
  %177 = call i64 @BUS_READ_IVAR(i32 %174, i32 %175, i32 %176, i64* %10)
  store i64 %177, i64* %11, align 8
  %178 = load i64, i64* %10, align 8
  %179 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %180 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %179, i32 0, i32 3
  store i64 %178, i64* %180, align 8
  %181 = load i64, i64* %10, align 8
  switch i64 %181, label %348 [
    i64 132, label %182
    i64 130, label %243
    i64 133, label %272
    i64 128, label %291
    i64 129, label %310
    i64 131, label %339
  ]

182:                                              ; preds = %148
  %183 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %184 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %183, i32 0, i32 10
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  store i32 255, i32* %187, align 4
  %188 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %189 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %188, i32 0, i32 10
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  store i32 255, i32* %192, align 4
  %193 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %194 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %193, i32 0, i32 9
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  store i32 255, i32* %197, align 4
  %198 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %199 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %198, i32 0, i32 9
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  store i32 255, i32* %202, align 4
  %203 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %204 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %182
  %208 = load i32, i32* %3, align 4
  %209 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %210 = load i32, i32* @emu_ac97, align 4
  %211 = call i8* @AC97_CREATE(i32 %208, %struct.emu_pcm_info* %209, i32 %210)
  %212 = bitcast i8* %211 to i32*
  %213 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %214 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %213, i32 0, i32 5
  store i32* %212, i32** %214, align 8
  br label %223

215:                                              ; preds = %182
  %216 = load i32, i32* %3, align 4
  %217 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %218 = load i32, i32* @emu_eac97, align 4
  %219 = call i8* @AC97_CREATE(i32 %216, %struct.emu_pcm_info* %217, i32 %218)
  %220 = bitcast i8* %219 to i32*
  %221 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %222 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %221, i32 0, i32 5
  store i32* %220, i32** %222, align 8
  br label %223

223:                                              ; preds = %215, %207
  %224 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %225 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %224, i32 0, i32 11
  store i32* null, i32** %225, align 8
  %226 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %227 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %226, i32 0, i32 5
  %228 = load i32*, i32** %227, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %234

230:                                              ; preds = %223
  %231 = call i32* (...) @ac97_getmixerclass()
  %232 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %233 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %232, i32 0, i32 11
  store i32* %231, i32** %233, align 8
  br label %234

234:                                              ; preds = %230, %223
  %235 = load i32, i32* %3, align 4
  %236 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %237 = call i32 @mixer_init(i32 %235, i32* @emudspmixer_class, %struct.emu_pcm_info* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load i32, i32* %3, align 4
  %241 = call i32 @device_printf(i32 %240, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %441

242:                                              ; preds = %234
  br label %351

243:                                              ; preds = %148
  %244 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %245 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %244, i32 0, i32 10
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 2
  store i32 255, i32* %248, align 4
  %249 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %250 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %249, i32 0, i32 10
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 3
  store i32 255, i32* %253, align 4
  %254 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %255 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %254, i32 0, i32 9
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 2
  store i32 255, i32* %258, align 4
  %259 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %260 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %259, i32 0, i32 9
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 3
  store i32 255, i32* %263, align 4
  %264 = load i32, i32* %3, align 4
  %265 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %266 = call i32 @mixer_init(i32 %264, i32* @emudspmixer_class, %struct.emu_pcm_info* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %243
  %269 = load i32, i32* %3, align 4
  %270 = call i32 @device_printf(i32 %269, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %441

271:                                              ; preds = %243
  br label %351

272:                                              ; preds = %148
  %273 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %274 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %273, i32 0, i32 10
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 4
  store i32 255, i32* %277, align 4
  %278 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %279 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %278, i32 0, i32 9
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 4
  store i32 255, i32* %282, align 4
  %283 = load i32, i32* %3, align 4
  %284 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %285 = call i32 @mixer_init(i32 %283, i32* @emudspmixer_class, %struct.emu_pcm_info* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %272
  %288 = load i32, i32* %3, align 4
  %289 = call i32 @device_printf(i32 %288, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %441

290:                                              ; preds = %272
  br label %351

291:                                              ; preds = %148
  %292 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %293 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %292, i32 0, i32 10
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 5
  store i32 255, i32* %296, align 4
  %297 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %298 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %297, i32 0, i32 9
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 5
  store i32 255, i32* %301, align 4
  %302 = load i32, i32* %3, align 4
  %303 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %304 = call i32 @mixer_init(i32 %302, i32* @emudspmixer_class, %struct.emu_pcm_info* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %291
  %307 = load i32, i32* %3, align 4
  %308 = call i32 @device_printf(i32 %307, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %441

309:                                              ; preds = %291
  br label %351

310:                                              ; preds = %148
  %311 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %312 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %311, i32 0, i32 10
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 6
  store i32 255, i32* %315, align 4
  %316 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %317 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %316, i32 0, i32 10
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 3
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 7
  store i32 255, i32* %320, align 4
  %321 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %322 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %321, i32 0, i32 9
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 1
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 6
  store i32 255, i32* %325, align 4
  %326 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %327 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %326, i32 0, i32 9
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 7
  store i32 255, i32* %330, align 4
  %331 = load i32, i32* %3, align 4
  %332 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %333 = call i32 @mixer_init(i32 %331, i32* @emudspmixer_class, %struct.emu_pcm_info* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %310
  %336 = load i32, i32* %3, align 4
  %337 = call i32 @device_printf(i32 %336, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %441

338:                                              ; preds = %310
  br label %351

339:                                              ; preds = %148
  %340 = load i32, i32* %3, align 4
  %341 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %342 = call i32 @mixer_init(i32 %340, i32* @emuefxmixer_class, %struct.emu_pcm_info* %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %339
  %345 = load i32, i32* %3, align 4
  %346 = call i32 @device_printf(i32 %345, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %441

347:                                              ; preds = %339
  br label %351

348:                                              ; preds = %148
  %349 = load i32, i32* %3, align 4
  %350 = call i32 @device_printf(i32 %349, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %441

351:                                              ; preds = %347, %338, %309, %290, %271, %242
  %352 = load i32, i32* @EMU_INTE_INTERTIMERENB, align 4
  store i32 %352, i32* %8, align 4
  %353 = load i32, i32* @EMU_IPR_INTERVALTIMER, align 4
  store i32 %353, i32* %9, align 4
  %354 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %355 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %354, i32 0, i32 7
  %356 = load %struct.emu_sc_info*, %struct.emu_sc_info** %355, align 8
  %357 = load i32, i32* %8, align 4
  %358 = load i32, i32* %9, align 4
  %359 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %360 = call i32 @emu_intr_register(%struct.emu_sc_info* %356, i32 %357, i32 %358, i32* @emu_pcm_intr, %struct.emu_pcm_info* %359)
  %361 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %362 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %361, i32 0, i32 8
  store i32 %360, i32* %362, align 8
  %363 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %364 = call i32 @emu_pcm_init(%struct.emu_pcm_info* %363)
  %365 = icmp eq i32 %364, -1
  br i1 %365, label %366, label %369

366:                                              ; preds = %351
  %367 = load i32, i32* %3, align 4
  %368 = call i32 @device_printf(i32 %367, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %441

369:                                              ; preds = %351
  %370 = load i32, i32* %3, align 4
  %371 = load i32, i32* %3, align 4
  %372 = call i32 @pcm_getflags(i32 %371)
  %373 = load i32, i32* @SD_F_MPSAFE, align 4
  %374 = or i32 %372, %373
  %375 = call i32 @pcm_setflags(i32 %370, i32 %374)
  %376 = load i32, i32* %3, align 4
  %377 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %378 = load i64, i64* %10, align 8
  %379 = icmp eq i64 %378, 132
  br i1 %379, label %380, label %382

380:                                              ; preds = %369
  %381 = load i32, i32* @MAX_CHANNELS, align 4
  br label %383

382:                                              ; preds = %369
  br label %383

383:                                              ; preds = %382, %380
  %384 = phi i32 [ %381, %380 ], [ 1, %382 ]
  %385 = load i64, i64* %10, align 8
  %386 = icmp eq i64 %385, 132
  %387 = zext i1 %386 to i64
  %388 = select i1 %386, i32 1, i32 0
  %389 = call i64 @pcm_register(i32 %376, %struct.emu_pcm_info* %377, i32 %384, i32 %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %383
  %392 = load i32, i32* %3, align 4
  %393 = call i32 @device_printf(i32 %392, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %441

394:                                              ; preds = %383
  %395 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %396 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %395, i32 0, i32 6
  store i64 0, i64* %396, align 8
  %397 = load i64, i64* %10, align 8
  %398 = icmp ne i64 %397, 131
  br i1 %398, label %399, label %404

399:                                              ; preds = %394
  %400 = load i32, i32* %3, align 4
  %401 = load i32, i32* @PCMDIR_PLAY, align 4
  %402 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %403 = call i32 @pcm_addchan(i32 %400, i32 %401, i32* @emupchan_class, %struct.emu_pcm_info* %402)
  br label %404

404:                                              ; preds = %399, %394
  %405 = load i64, i64* %10, align 8
  %406 = icmp eq i64 %405, 132
  br i1 %406, label %407, label %425

407:                                              ; preds = %404
  store i32 1, i32* %5, align 4
  br label %408

408:                                              ; preds = %417, %407
  %409 = load i32, i32* %5, align 4
  %410 = load i32, i32* @MAX_CHANNELS, align 4
  %411 = icmp ult i32 %409, %410
  br i1 %411, label %412, label %420

412:                                              ; preds = %408
  %413 = load i32, i32* %3, align 4
  %414 = load i32, i32* @PCMDIR_PLAY, align 4
  %415 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %416 = call i32 @pcm_addchan(i32 %413, i32 %414, i32* @emupchan_class, %struct.emu_pcm_info* %415)
  br label %417

417:                                              ; preds = %412
  %418 = load i32, i32* %5, align 4
  %419 = add i32 %418, 1
  store i32 %419, i32* %5, align 4
  br label %408

420:                                              ; preds = %408
  %421 = load i32, i32* %3, align 4
  %422 = load i32, i32* @PCMDIR_REC, align 4
  %423 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %424 = call i32 @pcm_addchan(i32 %421, i32 %422, i32* @emurchan_class, %struct.emu_pcm_info* %423)
  br label %425

425:                                              ; preds = %420, %404
  %426 = load i64, i64* %10, align 8
  %427 = icmp eq i64 %426, 131
  br i1 %427, label %428, label %433

428:                                              ; preds = %425
  %429 = load i32, i32* %3, align 4
  %430 = load i32, i32* @PCMDIR_REC, align 4
  %431 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %432 = call i32 @pcm_addchan(i32 %429, i32 %430, i32* @emufxrchan_class, %struct.emu_pcm_info* %431)
  br label %433

433:                                              ; preds = %428, %425
  %434 = load i32, i32* @SND_STATUSLEN, align 4
  %435 = load i32, i32* %3, align 4
  %436 = call i32 @device_get_parent(i32 %435)
  %437 = call i8* @device_get_nameunit(i32 %436)
  %438 = call i32 @snprintf(i8* %17, i32 %434, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %437)
  %439 = load i32, i32* %3, align 4
  %440 = call i32 @pcm_setstatus(i32 %439, i8* %17)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %466

441:                                              ; preds = %391, %366, %348, %344, %335, %306, %287, %268, %239
  %442 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %443 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %442, i32 0, i32 5
  %444 = load i32*, i32** %443, align 8
  %445 = icmp ne i32* %444, null
  br i1 %445, label %446, label %451

446:                                              ; preds = %441
  %447 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %448 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %447, i32 0, i32 5
  %449 = load i32*, i32** %448, align 8
  %450 = call i32 @ac97_destroy(i32* %449)
  br label %451

451:                                              ; preds = %446, %441
  %452 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %453 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %452, i32 0, i32 4
  %454 = load i64, i64* %453, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %461

456:                                              ; preds = %451
  %457 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %458 = getelementptr inbounds %struct.emu_pcm_info, %struct.emu_pcm_info* %457, i32 0, i32 4
  %459 = load i64, i64* %458, align 8
  %460 = call i32 @snd_mtxfree(i64 %459)
  br label %461

461:                                              ; preds = %456, %451
  %462 = load %struct.emu_pcm_info*, %struct.emu_pcm_info** %4, align 8
  %463 = load i32, i32* @M_DEVBUF, align 4
  %464 = call i32 @free(%struct.emu_pcm_info* %462, i32 %463)
  %465 = load i32, i32* @ENXIO, align 4
  store i32 %465, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %466

466:                                              ; preds = %461, %433, %33
  %467 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %467)
  %468 = load i32, i32* %2, align 4
  ret i32 %468
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.emu_pcm_info* @malloc(i32, i32, i32) #2

declare dso_local i64 @device_get_softc(i32) #2

declare dso_local i32 @device_get_parent(i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @free(%struct.emu_pcm_info*, i32) #2

declare dso_local i64 @snd_mtxcreate(i8*, i8*) #2

declare dso_local i8* @device_get_nameunit(i32) #2

declare dso_local i64 @BUS_READ_IVAR(i32, i32, i32, i64*) #2

declare dso_local i8* @AC97_CREATE(i32, %struct.emu_pcm_info*, i32) #2

declare dso_local i32* @ac97_getmixerclass(...) #2

declare dso_local i32 @mixer_init(i32, i32*, %struct.emu_pcm_info*) #2

declare dso_local i32 @emu_intr_register(%struct.emu_sc_info*, i32, i32, i32*, %struct.emu_pcm_info*) #2

declare dso_local i32 @emu_pcm_init(%struct.emu_pcm_info*) #2

declare dso_local i32 @pcm_setflags(i32, i32) #2

declare dso_local i32 @pcm_getflags(i32) #2

declare dso_local i64 @pcm_register(i32, %struct.emu_pcm_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.emu_pcm_info*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @ac97_destroy(i32*) #2

declare dso_local i32 @snd_mtxfree(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
