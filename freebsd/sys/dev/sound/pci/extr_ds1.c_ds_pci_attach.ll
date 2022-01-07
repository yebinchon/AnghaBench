; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i64, i64, i64, i8*, i64, i64, i8*, i64, i32*, i32, i32, i32, i32, i32, i32 }
%struct.ac97_info = type { i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"snd_ds1 softc\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to map register space\0A\00", align 1
@DS1_BUFFSIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unable to initialize the card\0A\00", align 1
@ds_ac97 = common dso_local global i32 0, align 4
@AC97_F_EAPD_INV = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ds_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"at memory 0x%jx irq %jd %s\00", align 1
@snd_ds1 = common dso_local global i32 0, align 4
@DS1_CHANS = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@ds1pchan_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@ds1rchan_class = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ds_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sc_info*, align 8
  %7 = alloca %struct.ac97_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ac97_info* null, %struct.ac97_info** %7, align 8
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
  %19 = call %struct.sc_info* @malloc(i32 96, i32 %15, i32 %18)
  store %struct.sc_info* %19, %struct.sc_info** %6, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_get_nameunit(i32 %20)
  %22 = call i64 @snd_mtxcreate(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %24 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %27 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %26, i32 0, i32 14
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pci_get_subdevice(i32 %28)
  %30 = shl i32 %29, 16
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @pci_get_subvendor(i32 %31)
  %33 = or i32 %30, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @pci_get_devid(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ds_finddev(i32 %35, i32 %36)
  %38 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %39 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %38, i32 0, i32 13
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @pci_get_revid(i32 %40)
  %42 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %43 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %42, i32 0, i32 12
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @pci_enable_busmaster(i32 %44)
  %46 = call i64 @PCIR_BAR(i32 0)
  %47 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %48 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %47, i32 0, i32 7
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @SYS_RES_MEMORY, align 4
  %51 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %52 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %51, i32 0, i32 7
  %53 = load i32, i32* @RF_ACTIVE, align 4
  %54 = call i8* @bus_alloc_resource_any(i32 %49, i32 %50, i64* %52, i32 %53)
  %55 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 6
  store i8* %54, i8** %56, align 8
  %57 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %58 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %57, i32 0, i32 6
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %1
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %206

64:                                               ; preds = %1
  %65 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %66 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %65, i32 0, i32 6
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @rman_get_bustag(i8* %67)
  %69 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %70 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %69, i32 0, i32 11
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %72 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %71, i32 0, i32 6
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @rman_get_bushandle(i8* %73)
  %75 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %76 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @DS1_BUFFSIZE, align 4
  %79 = call i32 @pcm_getbuffersize(i32 %77, i32 4096, i32 %78, i32 65536)
  %80 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %81 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @bus_get_dma_tag(i32 %82)
  %84 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %85 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %86 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %87 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %90 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %89, i32 0, i32 2
  %91 = call i64 @bus_dma_tag_create(i32 %83, i32 2, i32 0, i32 %84, i32 %85, i32* null, i32* null, i32 %88, i32 1, i32 262143, i32 0, i32* null, i32* null, i64* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %64
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @device_printf(i32 %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %206

96:                                               ; preds = %64
  %97 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %98 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %97, i32 0, i32 8
  store i32* null, i32** %98, align 8
  %99 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %100 = call i32 @ds_init(%struct.sc_info* %99)
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @device_printf(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %206

105:                                              ; preds = %96
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %108 = load i32, i32* @ds_ac97, align 4
  %109 = call %struct.ac97_info* @AC97_CREATE(i32 %106, %struct.sc_info* %107, i32 %108)
  store %struct.ac97_info* %109, %struct.ac97_info** %7, align 8
  %110 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  %111 = icmp eq %struct.ac97_info* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %206

113:                                              ; preds = %105
  %114 = load i32, i32* %4, align 4
  switch i32 %114, label %122 [
    i32 -2129194957, label %115
  ]

115:                                              ; preds = %113
  %116 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  %117 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  %118 = call i32 @ac97_getflags(%struct.ac97_info* %117)
  %119 = load i32, i32* @AC97_F_EAPD_INV, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @ac97_setflags(%struct.ac97_info* %116, i32 %120)
  br label %123

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %115
  %124 = load i32, i32* %3, align 4
  %125 = call i32 (...) @ac97_getmixerclass()
  %126 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  %127 = call i32 @mixer_init(i32 %124, i32 %125, %struct.ac97_info* %126)
  %128 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %129 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %128, i32 0, i32 4
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @SYS_RES_IRQ, align 4
  %132 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %133 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %132, i32 0, i32 4
  %134 = load i32, i32* @RF_ACTIVE, align 4
  %135 = load i32, i32* @RF_SHAREABLE, align 4
  %136 = or i32 %134, %135
  %137 = call i8* @bus_alloc_resource_any(i32 %130, i32 %131, i64* %133, i32 %136)
  %138 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %139 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  %140 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %141 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %156

144:                                              ; preds = %123
  %145 = load i32, i32* %3, align 4
  %146 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %147 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* @INTR_MPSAFE, align 4
  %150 = load i32, i32* @ds_intr, align 4
  %151 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %152 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %153 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %152, i32 0, i32 5
  %154 = call i64 @snd_setup_intr(i32 %145, i8* %148, i32 %149, i32 %150, %struct.sc_info* %151, i64* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %144, %123
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %206

159:                                              ; preds = %144
  %160 = load i32, i32* @SND_STATUSLEN, align 4
  %161 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %162 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %161, i32 0, i32 6
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @rman_get_start(i8* %163)
  %165 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %166 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %165, i32 0, i32 3
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @rman_get_start(i8* %167)
  %169 = load i32, i32* @snd_ds1, align 4
  %170 = call i32 @PCM_KLDSTRING(i32 %169)
  %171 = call i32 @snprintf(i8* %14, i32 %160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %164, i32 %168, i32 %170)
  %172 = load i32, i32* %3, align 4
  %173 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %174 = load i32, i32* @DS1_CHANS, align 4
  %175 = call i64 @pcm_register(i32 %172, %struct.sc_info* %173, i32 %174, i32 2)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %159
  br label %206

178:                                              ; preds = %159
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %188, %178
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @DS1_CHANS, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %179
  %184 = load i32, i32* %3, align 4
  %185 = load i32, i32* @PCMDIR_PLAY, align 4
  %186 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %187 = call i32 @pcm_addchan(i32 %184, i32 %185, i32* @ds1pchan_class, %struct.sc_info* %186)
  br label %188

188:                                              ; preds = %183
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %5, align 4
  br label %179

191:                                              ; preds = %179
  store i32 0, i32* %5, align 4
  br label %192

192:                                              ; preds = %200, %191
  %193 = load i32, i32* %5, align 4
  %194 = icmp slt i32 %193, 2
  br i1 %194, label %195, label %203

195:                                              ; preds = %192
  %196 = load i32, i32* %3, align 4
  %197 = load i32, i32* @PCMDIR_REC, align 4
  %198 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %199 = call i32 @pcm_addchan(i32 %196, i32 %197, i32* @ds1rchan_class, %struct.sc_info* %198)
  br label %200

200:                                              ; preds = %195
  %201 = load i32, i32* %5, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %5, align 4
  br label %192

203:                                              ; preds = %192
  %204 = load i32, i32* %3, align 4
  %205 = call i32 @pcm_setstatus(i32 %204, i8* %14)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %291

206:                                              ; preds = %177, %156, %112, %102, %93, %61
  %207 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  %208 = icmp ne %struct.ac97_info* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load %struct.ac97_info*, %struct.ac97_info** %7, align 8
  %211 = call i32 @ac97_destroy(%struct.ac97_info* %210)
  br label %212

212:                                              ; preds = %209, %206
  %213 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %214 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %213, i32 0, i32 6
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %227

217:                                              ; preds = %212
  %218 = load i32, i32* %3, align 4
  %219 = load i32, i32* @SYS_RES_MEMORY, align 4
  %220 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %221 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %220, i32 0, i32 7
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %224 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %223, i32 0, i32 6
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @bus_release_resource(i32 %218, i32 %219, i64 %222, i8* %225)
  br label %227

227:                                              ; preds = %217, %212
  %228 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %229 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %241

232:                                              ; preds = %227
  %233 = load i32, i32* %3, align 4
  %234 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %235 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %234, i32 0, i32 3
  %236 = load i8*, i8** %235, align 8
  %237 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %238 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %237, i32 0, i32 5
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @bus_teardown_intr(i32 %233, i8* %236, i64 %239)
  br label %241

241:                                              ; preds = %232, %227
  %242 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %243 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %242, i32 0, i32 3
  %244 = load i8*, i8** %243, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %256

246:                                              ; preds = %241
  %247 = load i32, i32* %3, align 4
  %248 = load i32, i32* @SYS_RES_IRQ, align 4
  %249 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %250 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %253 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %252, i32 0, i32 3
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @bus_release_resource(i32 %247, i32 %248, i64 %251, i8* %254)
  br label %256

256:                                              ; preds = %246, %241
  %257 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %258 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %256
  %262 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %263 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @bus_dma_tag_destroy(i64 %264)
  br label %266

266:                                              ; preds = %261, %256
  %267 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %268 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %266
  %272 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %273 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @bus_dma_tag_destroy(i64 %274)
  br label %276

276:                                              ; preds = %271, %266
  %277 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %278 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %276
  %282 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %283 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @snd_mtxfree(i64 %284)
  br label %286

286:                                              ; preds = %281, %276
  %287 = load %struct.sc_info*, %struct.sc_info** %6, align 8
  %288 = load i32, i32* @M_DEVBUF, align 4
  %289 = call i32 @free(%struct.sc_info* %287, i32 %288)
  %290 = load i32, i32* @ENXIO, align 4
  store i32 %290, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %291

291:                                              ; preds = %286, %203
  %292 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %292)
  %293 = load i32, i32* %2, align 4
  ret i32 %293
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sc_info* @malloc(i32, i32, i32) #2

declare dso_local i64 @snd_mtxcreate(i32, i8*) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @pci_get_subdevice(i32) #2

declare dso_local i32 @pci_get_subvendor(i32) #2

declare dso_local i32 @ds_finddev(i32, i32) #2

declare dso_local i32 @pci_get_devid(i32) #2

declare dso_local i32 @pci_get_revid(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i64 @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @rman_get_bustag(i8*) #2

declare dso_local i32 @rman_get_bushandle(i8*) #2

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #2

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i32 @ds_init(%struct.sc_info*) #2

declare dso_local %struct.ac97_info* @AC97_CREATE(i32, %struct.sc_info*, i32) #2

declare dso_local i32 @ac97_setflags(%struct.ac97_info*, i32) #2

declare dso_local i32 @ac97_getflags(%struct.ac97_info*) #2

declare dso_local i32 @mixer_init(i32, i32, %struct.ac97_info*) #2

declare dso_local i32 @ac97_getmixerclass(...) #2

declare dso_local i64 @snd_setup_intr(i32, i8*, i32, i32, %struct.sc_info*, i64*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i8*) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i64 @pcm_register(i32, %struct.sc_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.sc_info*) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @ac97_destroy(%struct.ac97_info*) #2

declare dso_local i32 @bus_release_resource(i32, i32, i64, i8*) #2

declare dso_local i32 @bus_teardown_intr(i32, i8*, i64) #2

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
