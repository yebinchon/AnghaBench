; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_via_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_via_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_info = type { i32, i32, i64, i64, i32, i64, i64, i64, i8*, i64, i64, i8*, i64, i64, i32, i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"snd_via82c686 softc\00", align 1
@VIA_AC97STATUS = common dso_local global i32 0, align 4
@VIA_AC97STATUS_RDY = common dso_local global i32 0, align 4
@VIA_ACLINKCTRL = common dso_local global i32 0, align 4
@VIA_ACLINK_EN = common dso_local global i32 0, align 4
@VIA_ACLINK_NRST = common dso_local global i32 0, align 4
@VIA_ACLINK_SYNC = common dso_local global i32 0, align 4
@VIA_ACLINK_DESIRED = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot allocate bus resource.\00", align 1
@VIA_DEFAULT_BUFSZ = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@via_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@VIA_PLAY_MODE = common dso_local global i32 0, align 4
@VIA_RPMODE_AUTOSTART = common dso_local global i32 0, align 4
@VIA_RPMODE_INTR_FLAG = common dso_local global i32 0, align 4
@VIA_RPMODE_INTR_EOL = common dso_local global i32 0, align 4
@VIA_RECORD_MODE = common dso_local global i32 0, align 4
@via_ac97 = common dso_local global i32 0, align 4
@AC97_EXTCAP_VRA = common dso_local global i32 0, align 4
@AC97_EXTCAP_VRM = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@NSEGS = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@dma_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"at io 0x%jx irq %jd %s\00", align 1
@snd_via82c686 = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@viachan_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @via_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.via_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.via_info* null, %struct.via_info** %4, align 8
  %10 = load i32, i32* @SND_STATUSLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.via_info* @malloc(i32 112, i32 %14, i32 %17)
  store %struct.via_info* %18, %struct.via_info** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_get_nameunit(i32 %19)
  %21 = call i64 @snd_mtxcreate(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.via_info*, %struct.via_info** %4, align 8
  %23 = getelementptr inbounds %struct.via_info, %struct.via_info* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @pci_enable_busmaster(i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @VIA_AC97STATUS, align 4
  %28 = call i32 @pci_read_config(i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @VIA_AC97STATUS_RDY, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @VIA_ACLINKCTRL, align 4
  %36 = load i32, i32* @VIA_ACLINK_EN, align 4
  %37 = call i32 @pci_write_config(i32 %34, i32 %35, i32 %36, i32 1)
  %38 = call i32 @DELAY(i32 100)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @VIA_ACLINKCTRL, align 4
  %41 = load i32, i32* @VIA_ACLINK_EN, align 4
  %42 = load i32, i32* @VIA_ACLINK_NRST, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @pci_write_config(i32 %39, i32 %40, i32 %43, i32 1)
  %45 = call i32 @DELAY(i32 5)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @VIA_ACLINKCTRL, align 4
  %48 = load i32, i32* @VIA_ACLINK_EN, align 4
  %49 = call i32 @pci_write_config(i32 %46, i32 %47, i32 %48, i32 1)
  br label %68

50:                                               ; preds = %1
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @VIA_ACLINKCTRL, align 4
  %53 = load i32, i32* @VIA_ACLINK_EN, align 4
  %54 = call i32 @pci_write_config(i32 %51, i32 %52, i32 %53, i32 1)
  %55 = call i32 @DELAY(i32 100)
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @VIA_ACLINKCTRL, align 4
  %58 = load i32, i32* @VIA_ACLINK_EN, align 4
  %59 = load i32, i32* @VIA_ACLINK_SYNC, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @pci_write_config(i32 %56, i32 %57, i32 %60, i32 1)
  %62 = call i32 @DELAY(i32 5)
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @VIA_ACLINKCTRL, align 4
  %65 = load i32, i32* @VIA_ACLINK_EN, align 4
  %66 = call i32 @pci_write_config(i32 %63, i32 %64, i32 %65, i32 1)
  %67 = call i32 @DELAY(i32 5)
  br label %68

68:                                               ; preds = %50, %33
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @VIA_ACLINKCTRL, align 4
  %71 = load i32, i32* @VIA_ACLINK_DESIRED, align 4
  %72 = call i32 @pci_write_config(i32 %69, i32 %70, i32 %71, i32 1)
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %87, %68
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 2000
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @VIA_AC97STATUS, align 4
  %79 = call i32 @pci_read_config(i32 %77, i32 %78, i32 1)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @VIA_AC97STATUS_RDY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %90

85:                                               ; preds = %76
  %86 = call i32 @DELAY(i32 5000)
  br label %87

87:                                               ; preds = %85
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %73

90:                                               ; preds = %84, %73
  %91 = call i64 @PCIR_BAR(i32 0)
  %92 = load %struct.via_info*, %struct.via_info** %4, align 8
  %93 = getelementptr inbounds %struct.via_info, %struct.via_info* %92, i32 0, i32 12
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @SYS_RES_IOPORT, align 4
  %96 = load %struct.via_info*, %struct.via_info** %4, align 8
  %97 = getelementptr inbounds %struct.via_info, %struct.via_info* %96, i32 0, i32 12
  %98 = load i32, i32* @RF_ACTIVE, align 4
  %99 = call i8* @bus_alloc_resource_any(i32 %94, i32 %95, i64* %97, i32 %98)
  %100 = load %struct.via_info*, %struct.via_info** %4, align 8
  %101 = getelementptr inbounds %struct.via_info, %struct.via_info* %100, i32 0, i32 11
  store i8* %99, i8** %101, align 8
  %102 = load %struct.via_info*, %struct.via_info** %4, align 8
  %103 = getelementptr inbounds %struct.via_info, %struct.via_info* %102, i32 0, i32 11
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %90
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @device_printf(i32 %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %304

109:                                              ; preds = %90
  %110 = load %struct.via_info*, %struct.via_info** %4, align 8
  %111 = getelementptr inbounds %struct.via_info, %struct.via_info* %110, i32 0, i32 11
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @rman_get_bustag(i8* %112)
  %114 = load %struct.via_info*, %struct.via_info** %4, align 8
  %115 = getelementptr inbounds %struct.via_info, %struct.via_info* %114, i32 0, i32 15
  store i32 %113, i32* %115, align 4
  %116 = load %struct.via_info*, %struct.via_info** %4, align 8
  %117 = getelementptr inbounds %struct.via_info, %struct.via_info* %116, i32 0, i32 11
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @rman_get_bushandle(i8* %118)
  %120 = load %struct.via_info*, %struct.via_info** %4, align 8
  %121 = getelementptr inbounds %struct.via_info, %struct.via_info* %120, i32 0, i32 14
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @VIA_DEFAULT_BUFSZ, align 4
  %124 = call i32 @pcm_getbuffersize(i32 %122, i32 4096, i32 %123, i32 65536)
  %125 = load %struct.via_info*, %struct.via_info** %4, align 8
  %126 = getelementptr inbounds %struct.via_info, %struct.via_info* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.via_info*, %struct.via_info** %4, align 8
  %128 = getelementptr inbounds %struct.via_info, %struct.via_info* %127, i32 0, i32 9
  store i64 0, i64* %128, align 8
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @SYS_RES_IRQ, align 4
  %131 = load %struct.via_info*, %struct.via_info** %4, align 8
  %132 = getelementptr inbounds %struct.via_info, %struct.via_info* %131, i32 0, i32 9
  %133 = load i32, i32* @RF_ACTIVE, align 4
  %134 = load i32, i32* @RF_SHAREABLE, align 4
  %135 = or i32 %133, %134
  %136 = call i8* @bus_alloc_resource_any(i32 %129, i32 %130, i64* %132, i32 %135)
  %137 = load %struct.via_info*, %struct.via_info** %4, align 8
  %138 = getelementptr inbounds %struct.via_info, %struct.via_info* %137, i32 0, i32 8
  store i8* %136, i8** %138, align 8
  %139 = load %struct.via_info*, %struct.via_info** %4, align 8
  %140 = getelementptr inbounds %struct.via_info, %struct.via_info* %139, i32 0, i32 8
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %109
  %144 = load i32, i32* %3, align 4
  %145 = load %struct.via_info*, %struct.via_info** %4, align 8
  %146 = getelementptr inbounds %struct.via_info, %struct.via_info* %145, i32 0, i32 8
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* @INTR_MPSAFE, align 4
  %149 = load i32, i32* @via_intr, align 4
  %150 = load %struct.via_info*, %struct.via_info** %4, align 8
  %151 = load %struct.via_info*, %struct.via_info** %4, align 8
  %152 = getelementptr inbounds %struct.via_info, %struct.via_info* %151, i32 0, i32 10
  %153 = call i64 @snd_setup_intr(i32 %144, i8* %147, i32 %148, i32 %149, %struct.via_info* %150, i64* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %143, %109
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @device_printf(i32 %156, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %304

158:                                              ; preds = %143
  %159 = load %struct.via_info*, %struct.via_info** %4, align 8
  %160 = load i32, i32* @VIA_PLAY_MODE, align 4
  %161 = load i32, i32* @VIA_RPMODE_AUTOSTART, align 4
  %162 = load i32, i32* @VIA_RPMODE_INTR_FLAG, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @VIA_RPMODE_INTR_EOL, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @via_wr(%struct.via_info* %159, i32 %160, i32 %165, i32 1)
  %167 = load %struct.via_info*, %struct.via_info** %4, align 8
  %168 = load i32, i32* @VIA_RECORD_MODE, align 4
  %169 = load i32, i32* @VIA_RPMODE_AUTOSTART, align 4
  %170 = load i32, i32* @VIA_RPMODE_INTR_FLAG, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @VIA_RPMODE_INTR_EOL, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @via_wr(%struct.via_info* %167, i32 %168, i32 %173, i32 1)
  %175 = load i32, i32* %3, align 4
  %176 = load %struct.via_info*, %struct.via_info** %4, align 8
  %177 = load i32, i32* @via_ac97, align 4
  %178 = call i64 @AC97_CREATE(i32 %175, %struct.via_info* %176, i32 %177)
  %179 = load %struct.via_info*, %struct.via_info** %4, align 8
  %180 = getelementptr inbounds %struct.via_info, %struct.via_info* %179, i32 0, i32 13
  store i64 %178, i64* %180, align 8
  %181 = load %struct.via_info*, %struct.via_info** %4, align 8
  %182 = getelementptr inbounds %struct.via_info, %struct.via_info* %181, i32 0, i32 13
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %158
  br label %304

186:                                              ; preds = %158
  %187 = load i32, i32* %3, align 4
  %188 = call i32 (...) @ac97_getmixerclass()
  %189 = load %struct.via_info*, %struct.via_info** %4, align 8
  %190 = getelementptr inbounds %struct.via_info, %struct.via_info* %189, i32 0, i32 13
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @mixer_init(i32 %187, i32 %188, i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  br label %304

195:                                              ; preds = %186
  %196 = load %struct.via_info*, %struct.via_info** %4, align 8
  %197 = getelementptr inbounds %struct.via_info, %struct.via_info* %196, i32 0, i32 13
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @ac97_getextcaps(i64 %198)
  %200 = load %struct.via_info*, %struct.via_info** %4, align 8
  %201 = getelementptr inbounds %struct.via_info, %struct.via_info* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.via_info*, %struct.via_info** %4, align 8
  %203 = getelementptr inbounds %struct.via_info, %struct.via_info* %202, i32 0, i32 13
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.via_info*, %struct.via_info** %4, align 8
  %206 = getelementptr inbounds %struct.via_info, %struct.via_info* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @AC97_EXTCAP_VRA, align 4
  %209 = load i32, i32* @AC97_EXTCAP_VRM, align 4
  %210 = or i32 %208, %209
  %211 = and i32 %207, %210
  %212 = call i32 @ac97_setextmode(i64 %204, i32 %211)
  %213 = load i32, i32* %3, align 4
  %214 = call i32 @bus_get_dma_tag(i32 %213)
  %215 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %216 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %217 = load %struct.via_info*, %struct.via_info** %4, align 8
  %218 = getelementptr inbounds %struct.via_info, %struct.via_info* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.via_info*, %struct.via_info** %4, align 8
  %221 = getelementptr inbounds %struct.via_info, %struct.via_info* %220, i32 0, i32 7
  %222 = call i64 @bus_dma_tag_create(i32 %214, i32 2, i32 0, i32 %215, i32 %216, i32* null, i32* null, i32 %219, i32 1, i32 262143, i32 0, i32* null, i32* null, i64* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %195
  %225 = load i32, i32* %3, align 4
  %226 = call i32 @device_printf(i32 %225, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %304

227:                                              ; preds = %195
  %228 = load i32, i32* %3, align 4
  %229 = call i32 @bus_get_dma_tag(i32 %228)
  %230 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %231 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %232 = load i32, i32* @NSEGS, align 4
  %233 = sext i32 %232 to i64
  %234 = mul i64 %233, 4
  %235 = trunc i64 %234 to i32
  %236 = load %struct.via_info*, %struct.via_info** %4, align 8
  %237 = getelementptr inbounds %struct.via_info, %struct.via_info* %236, i32 0, i32 3
  %238 = call i64 @bus_dma_tag_create(i32 %229, i32 2, i32 0, i32 %230, i32 %231, i32* null, i32* null, i32 %235, i32 1, i32 262143, i32 0, i32* null, i32* null, i64* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %227
  %241 = load i32, i32* %3, align 4
  %242 = call i32 @device_printf(i32 %241, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %304

243:                                              ; preds = %227
  %244 = load %struct.via_info*, %struct.via_info** %4, align 8
  %245 = getelementptr inbounds %struct.via_info, %struct.via_info* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.via_info*, %struct.via_info** %4, align 8
  %248 = getelementptr inbounds %struct.via_info, %struct.via_info* %247, i32 0, i32 5
  %249 = bitcast i64* %248 to i8**
  %250 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %251 = load %struct.via_info*, %struct.via_info** %4, align 8
  %252 = getelementptr inbounds %struct.via_info, %struct.via_info* %251, i32 0, i32 4
  %253 = call i64 @bus_dmamem_alloc(i64 %246, i8** %249, i32 %250, i32* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %243
  br label %304

256:                                              ; preds = %243
  %257 = load %struct.via_info*, %struct.via_info** %4, align 8
  %258 = getelementptr inbounds %struct.via_info, %struct.via_info* %257, i32 0, i32 3
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.via_info*, %struct.via_info** %4, align 8
  %261 = getelementptr inbounds %struct.via_info, %struct.via_info* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.via_info*, %struct.via_info** %4, align 8
  %264 = getelementptr inbounds %struct.via_info, %struct.via_info* %263, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = load i32, i32* @NSEGS, align 4
  %267 = sext i32 %266 to i64
  %268 = mul i64 %267, 4
  %269 = trunc i64 %268 to i32
  %270 = load i32, i32* @dma_cb, align 4
  %271 = load %struct.via_info*, %struct.via_info** %4, align 8
  %272 = call i64 @bus_dmamap_load(i64 %259, i32 %262, i64 %265, i32 %269, i32 %270, %struct.via_info* %271, i32 0)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %256
  br label %304

275:                                              ; preds = %256
  %276 = load i32, i32* @SND_STATUSLEN, align 4
  %277 = load %struct.via_info*, %struct.via_info** %4, align 8
  %278 = getelementptr inbounds %struct.via_info, %struct.via_info* %277, i32 0, i32 11
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 @rman_get_start(i8* %279)
  %281 = load %struct.via_info*, %struct.via_info** %4, align 8
  %282 = getelementptr inbounds %struct.via_info, %struct.via_info* %281, i32 0, i32 8
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @rman_get_start(i8* %283)
  %285 = load i32, i32* @snd_via82c686, align 4
  %286 = call i32 @PCM_KLDSTRING(i32 %285)
  %287 = call i32 @snprintf(i8* %13, i32 %276, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %280, i32 %284, i32 %286)
  %288 = load i32, i32* %3, align 4
  %289 = load %struct.via_info*, %struct.via_info** %4, align 8
  %290 = call i64 @pcm_register(i32 %288, %struct.via_info* %289, i32 1, i32 1)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %275
  br label %304

293:                                              ; preds = %275
  %294 = load i32, i32* %3, align 4
  %295 = load i32, i32* @PCMDIR_PLAY, align 4
  %296 = load %struct.via_info*, %struct.via_info** %4, align 8
  %297 = call i32 @pcm_addchan(i32 %294, i32 %295, i32* @viachan_class, %struct.via_info* %296)
  %298 = load i32, i32* %3, align 4
  %299 = load i32, i32* @PCMDIR_REC, align 4
  %300 = load %struct.via_info*, %struct.via_info** %4, align 8
  %301 = call i32 @pcm_addchan(i32 %298, i32 %299, i32* @viachan_class, %struct.via_info* %300)
  %302 = load i32, i32* %3, align 4
  %303 = call i32 @pcm_setstatus(i32 %302, i8* %13)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %426

304:                                              ; preds = %292, %274, %255, %240, %224, %194, %185, %155, %106
  %305 = load %struct.via_info*, %struct.via_info** %4, align 8
  %306 = getelementptr inbounds %struct.via_info, %struct.via_info* %305, i32 0, i32 13
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %304
  %310 = load %struct.via_info*, %struct.via_info** %4, align 8
  %311 = getelementptr inbounds %struct.via_info, %struct.via_info* %310, i32 0, i32 13
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @ac97_destroy(i64 %312)
  br label %314

314:                                              ; preds = %309, %304
  %315 = load %struct.via_info*, %struct.via_info** %4, align 8
  %316 = getelementptr inbounds %struct.via_info, %struct.via_info* %315, i32 0, i32 11
  %317 = load i8*, i8** %316, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %319, label %329

319:                                              ; preds = %314
  %320 = load i32, i32* %3, align 4
  %321 = load i32, i32* @SYS_RES_IOPORT, align 4
  %322 = load %struct.via_info*, %struct.via_info** %4, align 8
  %323 = getelementptr inbounds %struct.via_info, %struct.via_info* %322, i32 0, i32 12
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.via_info*, %struct.via_info** %4, align 8
  %326 = getelementptr inbounds %struct.via_info, %struct.via_info* %325, i32 0, i32 11
  %327 = load i8*, i8** %326, align 8
  %328 = call i32 @bus_release_resource(i32 %320, i32 %321, i64 %324, i8* %327)
  br label %329

329:                                              ; preds = %319, %314
  %330 = load %struct.via_info*, %struct.via_info** %4, align 8
  %331 = getelementptr inbounds %struct.via_info, %struct.via_info* %330, i32 0, i32 10
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %343

334:                                              ; preds = %329
  %335 = load i32, i32* %3, align 4
  %336 = load %struct.via_info*, %struct.via_info** %4, align 8
  %337 = getelementptr inbounds %struct.via_info, %struct.via_info* %336, i32 0, i32 8
  %338 = load i8*, i8** %337, align 8
  %339 = load %struct.via_info*, %struct.via_info** %4, align 8
  %340 = getelementptr inbounds %struct.via_info, %struct.via_info* %339, i32 0, i32 10
  %341 = load i64, i64* %340, align 8
  %342 = call i32 @bus_teardown_intr(i32 %335, i8* %338, i64 %341)
  br label %343

343:                                              ; preds = %334, %329
  %344 = load %struct.via_info*, %struct.via_info** %4, align 8
  %345 = getelementptr inbounds %struct.via_info, %struct.via_info* %344, i32 0, i32 8
  %346 = load i8*, i8** %345, align 8
  %347 = icmp ne i8* %346, null
  br i1 %347, label %348, label %358

348:                                              ; preds = %343
  %349 = load i32, i32* %3, align 4
  %350 = load i32, i32* @SYS_RES_IRQ, align 4
  %351 = load %struct.via_info*, %struct.via_info** %4, align 8
  %352 = getelementptr inbounds %struct.via_info, %struct.via_info* %351, i32 0, i32 9
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.via_info*, %struct.via_info** %4, align 8
  %355 = getelementptr inbounds %struct.via_info, %struct.via_info* %354, i32 0, i32 8
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 @bus_release_resource(i32 %349, i32 %350, i64 %353, i8* %356)
  br label %358

358:                                              ; preds = %348, %343
  %359 = load %struct.via_info*, %struct.via_info** %4, align 8
  %360 = getelementptr inbounds %struct.via_info, %struct.via_info* %359, i32 0, i32 7
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %358
  %364 = load %struct.via_info*, %struct.via_info** %4, align 8
  %365 = getelementptr inbounds %struct.via_info, %struct.via_info* %364, i32 0, i32 7
  %366 = load i64, i64* %365, align 8
  %367 = call i32 @bus_dma_tag_destroy(i64 %366)
  br label %368

368:                                              ; preds = %363, %358
  %369 = load %struct.via_info*, %struct.via_info** %4, align 8
  %370 = getelementptr inbounds %struct.via_info, %struct.via_info* %369, i32 0, i32 6
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %381

373:                                              ; preds = %368
  %374 = load %struct.via_info*, %struct.via_info** %4, align 8
  %375 = getelementptr inbounds %struct.via_info, %struct.via_info* %374, i32 0, i32 3
  %376 = load i64, i64* %375, align 8
  %377 = load %struct.via_info*, %struct.via_info** %4, align 8
  %378 = getelementptr inbounds %struct.via_info, %struct.via_info* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @bus_dmamap_unload(i64 %376, i32 %379)
  br label %381

381:                                              ; preds = %373, %368
  %382 = load %struct.via_info*, %struct.via_info** %4, align 8
  %383 = getelementptr inbounds %struct.via_info, %struct.via_info* %382, i32 0, i32 5
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %397

386:                                              ; preds = %381
  %387 = load %struct.via_info*, %struct.via_info** %4, align 8
  %388 = getelementptr inbounds %struct.via_info, %struct.via_info* %387, i32 0, i32 3
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.via_info*, %struct.via_info** %4, align 8
  %391 = getelementptr inbounds %struct.via_info, %struct.via_info* %390, i32 0, i32 5
  %392 = load i64, i64* %391, align 8
  %393 = load %struct.via_info*, %struct.via_info** %4, align 8
  %394 = getelementptr inbounds %struct.via_info, %struct.via_info* %393, i32 0, i32 4
  %395 = load i32, i32* %394, align 8
  %396 = call i32 @bus_dmamem_free(i64 %389, i64 %392, i32 %395)
  br label %397

397:                                              ; preds = %386, %381
  %398 = load %struct.via_info*, %struct.via_info** %4, align 8
  %399 = getelementptr inbounds %struct.via_info, %struct.via_info* %398, i32 0, i32 3
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %407

402:                                              ; preds = %397
  %403 = load %struct.via_info*, %struct.via_info** %4, align 8
  %404 = getelementptr inbounds %struct.via_info, %struct.via_info* %403, i32 0, i32 3
  %405 = load i64, i64* %404, align 8
  %406 = call i32 @bus_dma_tag_destroy(i64 %405)
  br label %407

407:                                              ; preds = %402, %397
  %408 = load %struct.via_info*, %struct.via_info** %4, align 8
  %409 = getelementptr inbounds %struct.via_info, %struct.via_info* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %417

412:                                              ; preds = %407
  %413 = load %struct.via_info*, %struct.via_info** %4, align 8
  %414 = getelementptr inbounds %struct.via_info, %struct.via_info* %413, i32 0, i32 2
  %415 = load i64, i64* %414, align 8
  %416 = call i32 @snd_mtxfree(i64 %415)
  br label %417

417:                                              ; preds = %412, %407
  %418 = load %struct.via_info*, %struct.via_info** %4, align 8
  %419 = icmp ne %struct.via_info* %418, null
  br i1 %419, label %420, label %424

420:                                              ; preds = %417
  %421 = load %struct.via_info*, %struct.via_info** %4, align 8
  %422 = load i32, i32* @M_DEVBUF, align 4
  %423 = call i32 @free(%struct.via_info* %421, i32 %422)
  br label %424

424:                                              ; preds = %420, %417
  %425 = load i32, i32* @ENXIO, align 4
  store i32 %425, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %426

426:                                              ; preds = %424, %293
  %427 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %427)
  %428 = load i32, i32* %2, align 4
  ret i32 %428
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.via_info* @malloc(i32, i32, i32) #2

declare dso_local i64 @snd_mtxcreate(i32, i8*) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i32 @pci_read_config(i32, i32, i32) #2

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #2

declare dso_local i32 @DELAY(i32) #2

declare dso_local i64 @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @rman_get_bustag(i8*) #2

declare dso_local i32 @rman_get_bushandle(i8*) #2

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #2

declare dso_local i64 @snd_setup_intr(i32, i8*, i32, i32, %struct.via_info*, i64*) #2

declare dso_local i32 @via_wr(%struct.via_info*, i32, i32, i32) #2

declare dso_local i64 @AC97_CREATE(i32, %struct.via_info*, i32) #2

declare dso_local i64 @mixer_init(i32, i32, i64) #2

declare dso_local i32 @ac97_getmixerclass(...) #2

declare dso_local i32 @ac97_getextcaps(i64) #2

declare dso_local i32 @ac97_setextmode(i64, i32) #2

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i64 @bus_dmamem_alloc(i64, i8**, i32, i32*) #2

declare dso_local i64 @bus_dmamap_load(i64, i32, i64, i32, i32, %struct.via_info*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i8*) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i64 @pcm_register(i32, %struct.via_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.via_info*) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @ac97_destroy(i64) #2

declare dso_local i32 @bus_release_resource(i32, i32, i64, i8*) #2

declare dso_local i32 @bus_teardown_intr(i32, i8*, i64) #2

declare dso_local i32 @bus_dma_tag_destroy(i64) #2

declare dso_local i32 @bus_dmamap_unload(i64, i32) #2

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #2

declare dso_local i32 @snd_mtxfree(i64) #2

declare dso_local i32 @free(%struct.via_info*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
