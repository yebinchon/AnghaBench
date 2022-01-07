; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_info = type { i32 }
%struct.sc_info = type { i64, i32, i32, i32, i32, i64, i64, i32*, i64, i32*, i32, i32, i32, i32, i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"snd_emu10k1 softc\00", align 1
@EMU10K2_PCI_ID = common dso_local global i64 0, align 8
@EMU10K3_PCI_ID = common dso_local global i64 0, align 8
@EMU_A_PTR_ADDR_MASK = common dso_local global i32 0, align 4
@EMU_PTR_ADDR_MASK = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to map register space\0A\00", align 1
@EMU_DEFAULT_BUFSZ = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unable to initialize the card\0A\00", align 1
@emu_ac97 = common dso_local global i32 0, align 4
@AC97_CAP_MICCHANNEL = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@emu_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"at io 0x%jx irq %jd %s\00", align 1
@snd_emu10k1 = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@emupchan_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@emurchan_class = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @emu_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ac97_info*, align 8
  %5 = alloca %struct.sc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ac97_info* null, %struct.ac97_info** %4, align 8
  %11 = load i32, i32* @SND_STATUSLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @M_DEVBUF, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.sc_info* @malloc(i32 88, i32 %15, i32 %18)
  store %struct.sc_info* %19, %struct.sc_info** %5, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_get_nameunit(i32 %20)
  %22 = call i64 @snd_mtxcreate(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %24 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %23, i32 0, i32 5
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %27 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %26, i32 0, i32 14
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @pci_get_devid(i32 %28)
  %30 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %31 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pci_get_revid(i32 %32)
  %34 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %35 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %37 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EMU10K2_PCI_ID, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %1
  %42 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %43 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EMU10K3_PCI_ID, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %41, %1
  %48 = phi i1 [ true, %1 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %58 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 4
  br label %61

61:                                               ; preds = %56, %47
  %62 = phi i1 [ false, %47 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  %64 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %65 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %67 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 8, i32 4
  %72 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %73 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %75 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %61
  %79 = load i32, i32* @EMU_A_PTR_ADDR_MASK, align 4
  br label %82

80:                                               ; preds = %61
  %81 = load i32, i32* @EMU_PTR_ADDR_MASK, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %85 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %84, i32 0, i32 13
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @pci_enable_busmaster(i32 %86)
  %88 = call i32 @PCIR_BAR(i32 0)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @SYS_RES_IOPORT, align 4
  %91 = load i32, i32* @RF_ACTIVE, align 4
  %92 = call i8* @bus_alloc_resource_any(i32 %89, i32 %90, i32* %6, i32 %91)
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %95 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %94, i32 0, i32 9
  store i32* %93, i32** %95, align 8
  %96 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %97 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %96, i32 0, i32 9
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %82
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @device_printf(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %254

103:                                              ; preds = %82
  %104 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %105 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %104, i32 0, i32 9
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @rman_get_bustag(i32* %106)
  %108 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %109 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %108, i32 0, i32 12
  store i32 %107, i32* %109, align 8
  %110 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %111 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %110, i32 0, i32 9
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @rman_get_bushandle(i32* %112)
  %114 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %115 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %114, i32 0, i32 11
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @EMU_DEFAULT_BUFSZ, align 4
  %118 = call i32 @pcm_getbuffersize(i32 %116, i32 4096, i32 %117, i32 65536)
  %119 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %120 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %119, i32 0, i32 10
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @bus_get_dma_tag(i32 %121)
  %123 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %124 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %125 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %124, i32 0, i32 10
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @busdma_lock_mutex, align 4
  %128 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %129 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %128, i32 0, i32 6
  %130 = call i64 @bus_dma_tag_create(i32 %122, i32 2, i32 0, i32 2147483647, i32 %123, i32* null, i32* null, i32 %126, i32 1, i32 262143, i32 0, i32 %127, i32* @Giant, i64* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %103
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @device_printf(i32 %133, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %254

135:                                              ; preds = %103
  %136 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %137 = call i32 @emu_init(%struct.sc_info* %136)
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @device_printf(i32 %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %254

142:                                              ; preds = %135
  %143 = load i32, i32* %3, align 4
  %144 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %145 = load i32, i32* @emu_ac97, align 4
  %146 = call %struct.ac97_info* @AC97_CREATE(i32 %143, %struct.sc_info* %144, i32 %145)
  store %struct.ac97_info* %146, %struct.ac97_info** %4, align 8
  %147 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %148 = icmp eq %struct.ac97_info* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %254

150:                                              ; preds = %142
  %151 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %152 = call i32 @ac97_getcaps(%struct.ac97_info* %151)
  %153 = load i32, i32* @AC97_CAP_MICCHANNEL, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 1, i32 0
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %3, align 4
  %159 = call i32 (...) @ac97_getmixerclass()
  %160 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %161 = call i32 @mixer_init(i32 %158, i32 %159, %struct.ac97_info* %160)
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %164

163:                                              ; preds = %150
  br label %254

164:                                              ; preds = %150
  %165 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %166 = call i32 @emu_midiattach(%struct.sc_info* %165)
  store i32 0, i32* %6, align 4
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* @SYS_RES_IRQ, align 4
  %169 = load i32, i32* @RF_ACTIVE, align 4
  %170 = load i32, i32* @RF_SHAREABLE, align 4
  %171 = or i32 %169, %170
  %172 = call i8* @bus_alloc_resource_any(i32 %167, i32 %168, i32* %6, i32 %171)
  %173 = bitcast i8* %172 to i32*
  %174 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %175 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %174, i32 0, i32 7
  store i32* %173, i32** %175, align 8
  %176 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %177 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %176, i32 0, i32 7
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %192

180:                                              ; preds = %164
  %181 = load i32, i32* %3, align 4
  %182 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %183 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %182, i32 0, i32 7
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* @INTR_MPSAFE, align 4
  %186 = load i32, i32* @emu_intr, align 4
  %187 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %188 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %189 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %188, i32 0, i32 8
  %190 = call i64 @snd_setup_intr(i32 %181, i32* %184, i32 %185, i32 %186, %struct.sc_info* %187, i64* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %180, %164
  %193 = load i32, i32* %3, align 4
  %194 = call i32 @device_printf(i32 %193, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %254

195:                                              ; preds = %180
  %196 = load i32, i32* @SND_STATUSLEN, align 4
  %197 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %198 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %197, i32 0, i32 9
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @rman_get_start(i32* %199)
  %201 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %202 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %201, i32 0, i32 7
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @rman_get_start(i32* %203)
  %205 = load i32, i32* @snd_emu10k1, align 4
  %206 = call i32 @PCM_KLDSTRING(i32 %205)
  %207 = call i32 @snprintf(i8* %14, i32 %196, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %200, i32 %204, i32 %206)
  %208 = load i32, i32* %3, align 4
  %209 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %210 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %211 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %7, align 4
  %214 = icmp ne i32 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 3, i32 2
  %217 = call i64 @pcm_register(i32 %208, %struct.sc_info* %209, i32 %212, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %195
  br label %254

220:                                              ; preds = %195
  store i32 0, i32* %6, align 4
  br label %221

221:                                              ; preds = %232, %220
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %224 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %221
  %228 = load i32, i32* %3, align 4
  %229 = load i32, i32* @PCMDIR_PLAY, align 4
  %230 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %231 = call i32 @pcm_addchan(i32 %228, i32 %229, i32* @emupchan_class, %struct.sc_info* %230)
  br label %232

232:                                              ; preds = %227
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %6, align 4
  br label %221

235:                                              ; preds = %221
  store i32 0, i32* %6, align 4
  br label %236

236:                                              ; preds = %248, %235
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i32 3, i32 2
  %242 = icmp slt i32 %237, %241
  br i1 %242, label %243, label %251

243:                                              ; preds = %236
  %244 = load i32, i32* %3, align 4
  %245 = load i32, i32* @PCMDIR_REC, align 4
  %246 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %247 = call i32 @pcm_addchan(i32 %244, i32 %245, i32* @emurchan_class, %struct.sc_info* %246)
  br label %248

248:                                              ; preds = %243
  %249 = load i32, i32* %6, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %6, align 4
  br label %236

251:                                              ; preds = %236
  %252 = load i32, i32* %3, align 4
  %253 = call i32 @pcm_setstatus(i32 %252, i8* %14)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %324

254:                                              ; preds = %219, %192, %163, %149, %139, %132, %100
  %255 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %256 = icmp ne %struct.ac97_info* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %259 = call i32 @ac97_destroy(%struct.ac97_info* %258)
  br label %260

260:                                              ; preds = %257, %254
  %261 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %262 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %261, i32 0, i32 9
  %263 = load i32*, i32** %262, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %265, label %273

265:                                              ; preds = %260
  %266 = load i32, i32* %3, align 4
  %267 = load i32, i32* @SYS_RES_IOPORT, align 4
  %268 = call i32 @PCIR_BAR(i32 0)
  %269 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %270 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %269, i32 0, i32 9
  %271 = load i32*, i32** %270, align 8
  %272 = call i32 @bus_release_resource(i32 %266, i32 %267, i32 %268, i32* %271)
  br label %273

273:                                              ; preds = %265, %260
  %274 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %275 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %274, i32 0, i32 8
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %273
  %279 = load i32, i32* %3, align 4
  %280 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %281 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %280, i32 0, i32 7
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %284 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %283, i32 0, i32 8
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @bus_teardown_intr(i32 %279, i32* %282, i64 %285)
  br label %287

287:                                              ; preds = %278, %273
  %288 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %289 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %288, i32 0, i32 7
  %290 = load i32*, i32** %289, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %299

292:                                              ; preds = %287
  %293 = load i32, i32* %3, align 4
  %294 = load i32, i32* @SYS_RES_IRQ, align 4
  %295 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %296 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %295, i32 0, i32 7
  %297 = load i32*, i32** %296, align 8
  %298 = call i32 @bus_release_resource(i32 %293, i32 %294, i32 0, i32* %297)
  br label %299

299:                                              ; preds = %292, %287
  %300 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %301 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %300, i32 0, i32 6
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %299
  %305 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %306 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %305, i32 0, i32 6
  %307 = load i64, i64* %306, align 8
  %308 = call i32 @bus_dma_tag_destroy(i64 %307)
  br label %309

309:                                              ; preds = %304, %299
  %310 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %311 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %310, i32 0, i32 5
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %309
  %315 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %316 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %315, i32 0, i32 5
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @snd_mtxfree(i64 %317)
  br label %319

319:                                              ; preds = %314, %309
  %320 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %321 = load i32, i32* @M_DEVBUF, align 4
  %322 = call i32 @free(%struct.sc_info* %320, i32 %321)
  %323 = load i32, i32* @ENXIO, align 4
  store i32 %323, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %324

324:                                              ; preds = %319, %251
  %325 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %325)
  %326 = load i32, i32* %2, align 4
  ret i32 %326
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sc_info* @malloc(i32, i32, i32) #2

declare dso_local i64 @snd_mtxcreate(i32, i8*) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i64 @pci_get_devid(i32) #2

declare dso_local i32 @pci_get_revid(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i32 @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @rman_get_bustag(i32*) #2

declare dso_local i32 @rman_get_bushandle(i32*) #2

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #2

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i64*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i32 @emu_init(%struct.sc_info*) #2

declare dso_local %struct.ac97_info* @AC97_CREATE(i32, %struct.sc_info*, i32) #2

declare dso_local i32 @ac97_getcaps(%struct.ac97_info*) #2

declare dso_local i32 @mixer_init(i32, i32, %struct.ac97_info*) #2

declare dso_local i32 @ac97_getmixerclass(...) #2

declare dso_local i32 @emu_midiattach(%struct.sc_info*) #2

declare dso_local i64 @snd_setup_intr(i32, i32*, i32, i32, %struct.sc_info*, i64*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i32*) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i64 @pcm_register(i32, %struct.sc_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.sc_info*) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @ac97_destroy(%struct.ac97_info*) #2

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #2

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #2

declare dso_local i32 @bus_dma_tag_destroy(i64) #2

declare dso_local i32 @snd_mtxfree(i64) #2

declare dso_local i32 @free(%struct.sc_info*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
