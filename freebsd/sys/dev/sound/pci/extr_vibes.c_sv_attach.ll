; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_sv_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_sv_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32*, i8*, i8*, i32*, i8*, i8*, i32*, i8*, i8*, i32*, i8*, i64, i64, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"chip is in D%d power mode -- setting to D0\0A\00", align 1
@SV_PCI_ENHANCED = common dso_local global i8* null, align 8
@SYS_RES_IOPORT = common dso_local global i8* null, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"sv_attach: cannot allocate enh\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SV_PCI_DMAA = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"sv_attach: initial dmaa 0x%08x\0A\00", align 1
@SV_PCI_DMAC = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"sv_attach: initial dmac 0x%08x\0A\00", align 1
@SV_PCI_DMA_EXTENDED = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i8* null, align 8
@RF_SHAREABLE = common dso_local global i32 0, align 4
@sv_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"sv_attach: Unable to map interrupt\0A\00", align 1
@SV_DEFAULT_BUFSZ = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_24BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"sv_attach: Unable to create dma tag\0A\00", align 1
@sv_mixer_class = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"sv_attach: Mixer failed to initialize\0A\00", align 1
@SV_PCI_MIDI = common dso_local global i32 0, align 4
@SV_PCI_GAMES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [71 x i8] c"sv_attach: resource assumptions not met (midi 0x%08lx, games 0x%08lx)\0A\00", align 1
@SV_PCI_DMAA_SIZE = common dso_local global i32 0, align 4
@SV_PCI_DMAC_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"sv_attach: cannot allocate dmaa\0A\00", align 1
@SV_PCI_DMA_ENABLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"dmaa: 0x%x 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"sv_attach: cannot allocate dmac\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"dmac: 0x%x 0x%x\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"Sonicvibes: revision %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"sv_attach: pcm_register fail\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@svpchan_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@svrchan_class = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"at io 0x%jx irq %jd %s\00", align 1
@snd_vibes = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"sv_attach: succeeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sv_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sv_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %16 = load i32, i32* @SND_STATUSLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @M_DEVBUF, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.sc_info* @malloc(i32 176, i32 %20, i32 %23)
  store %struct.sc_info* %24, %struct.sc_info** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %27 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %26, i32 0, i32 21
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pci_enable_busmaster(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @pci_get_powerstate(i32 %30)
  %32 = load i64, i64* @PCI_POWERSTATE_D0, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @pci_get_powerstate(i32 %36)
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i64, i64* @PCI_POWERSTATE_D0, align 8
  %41 = call i32 @pci_set_powerstate(i32 %39, i64 %40)
  br label %42

42:                                               ; preds = %34, %1
  %43 = load i8*, i8** @SV_PCI_ENHANCED, align 8
  %44 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %45 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %44, i32 0, i32 8
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @SYS_RES_IOPORT, align 8
  %47 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %48 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %47, i32 0, i32 9
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 9
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %54 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %53, i32 0, i32 8
  %55 = load i32, i32* @RF_ACTIVE, align 4
  %56 = call i8* @bus_alloc_resource_any(i32 %49, i8* %52, i8** %54, i32 %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %59 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %58, i32 0, i32 7
  store i32* %57, i32** %59, align 8
  %60 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %61 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %60, i32 0, i32 7
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %42
  %65 = load i32, i32* %3, align 4
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %473

68:                                               ; preds = %42
  %69 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %70 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %69, i32 0, i32 7
  %71 = load i32*, i32** %70, align 8
  %72 = call i8* @rman_get_bustag(i32* %71)
  %73 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %74 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %73, i32 0, i32 20
  store i8* %72, i8** %74, align 8
  %75 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %76 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %75, i32 0, i32 7
  %77 = load i32*, i32** %76, align 8
  %78 = call i8* @rman_get_bushandle(i32* %77)
  %79 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %80 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %79, i32 0, i32 19
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %3, align 4
  %82 = load i8*, i8** @SV_PCI_DMAA, align 8
  %83 = call i32 @pci_read_config(i32 %81, i8* %82, i32 4)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = call i32 @DEB(i32 %85)
  %87 = load i32, i32* %3, align 4
  %88 = load i8*, i8** @SV_PCI_DMAC, align 8
  %89 = call i32 @pci_read_config(i32 %87, i8* %88, i32 4)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = call i32 @DEB(i32 %91)
  %93 = load i32, i32* %3, align 4
  %94 = load i8*, i8** @SV_PCI_DMAA, align 8
  %95 = load i32, i32* @SV_PCI_DMA_EXTENDED, align 4
  %96 = call i32 @pci_write_config(i32 %93, i8* %94, i32 %95, i32 4)
  %97 = load i32, i32* %3, align 4
  %98 = load i8*, i8** @SV_PCI_DMAC, align 8
  %99 = call i32 @pci_write_config(i32 %97, i8* %98, i32 0, i32 4)
  %100 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %101 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %100, i32 0, i32 11
  store i8* null, i8** %101, align 8
  %102 = load i32, i32* %3, align 4
  %103 = load i8*, i8** @SYS_RES_IRQ, align 8
  %104 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %105 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %104, i32 0, i32 11
  %106 = load i32, i32* @RF_ACTIVE, align 4
  %107 = load i32, i32* @RF_SHAREABLE, align 4
  %108 = or i32 %106, %107
  %109 = call i8* @bus_alloc_resource_any(i32 %102, i8* %103, i8** %105, i32 %108)
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %112 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %111, i32 0, i32 10
  store i32* %110, i32** %112, align 8
  %113 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %114 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %113, i32 0, i32 10
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %68
  %118 = load i32, i32* %3, align 4
  %119 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %120 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %119, i32 0, i32 10
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @sv_intr, align 4
  %123 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %124 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %125 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %124, i32 0, i32 12
  %126 = call i64 @snd_setup_intr(i32 %118, i32* %121, i32 0, i32 %122, %struct.sc_info* %123, i64* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %117, %68
  %129 = load i32, i32* %3, align 4
  %130 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %381

131:                                              ; preds = %117
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @SV_DEFAULT_BUFSZ, align 4
  %134 = call i32 @pcm_getbuffersize(i32 %132, i32 4096, i32 %133, i32 65536)
  %135 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %136 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %135, i32 0, i32 18
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @bus_get_dma_tag(i32 %137)
  %139 = load i32, i32* @BUS_SPACE_MAXADDR_24BIT, align 4
  %140 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %141 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %142 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %141, i32 0, i32 18
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @busdma_lock_mutex, align 4
  %145 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %146 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %145, i32 0, i32 13
  %147 = call i64 @bus_dma_tag_create(i32 %138, i32 2, i32 0, i32 %139, i32 %140, i32* null, i32* null, i32 %143, i32 1, i32 262143, i32 0, i32 %144, i32* @Giant, i64* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %131
  %150 = load i32, i32* %3, align 4
  %151 = call i32 (i32, i8*, ...) @device_printf(i32 %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %381

152:                                              ; preds = %131
  %153 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %154 = call i32 @sv_mix_mute_all(%struct.sc_info* %153)
  %155 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %156 = call i32 @sv_power(%struct.sc_info* %155, i32 0)
  %157 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %158 = call i32 @sv_init(%struct.sc_info* %157)
  %159 = load i32, i32* %3, align 4
  %160 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %161 = call i64 @mixer_init(i32 %159, i32* @sv_mixer_class, %struct.sc_info* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %152
  %164 = load i32, i32* %3, align 4
  %165 = call i32 (i32, i8*, ...) @device_printf(i32 %164, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %381

166:                                              ; preds = %152
  %167 = load i32, i32* %3, align 4
  %168 = load i8*, i8** @SYS_RES_IOPORT, align 8
  %169 = load i32, i32* @SV_PCI_MIDI, align 4
  %170 = call i32 @bus_get_resource(i32 %167, i8* %168, i32 %169, i64* %6, i64* %5)
  %171 = load i32, i32* %3, align 4
  %172 = load i8*, i8** @SYS_RES_IOPORT, align 8
  %173 = load i32, i32* @SV_PCI_GAMES, align 4
  %174 = call i32 @bus_get_resource(i32 %171, i8* %172, i32 %173, i64* %7, i64* %5)
  %175 = load i64, i64* %7, align 8
  %176 = load i64, i64* %6, align 8
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %166
  %179 = load i64, i64* %7, align 8
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %13, align 4
  %181 = load i64, i64* %6, align 8
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %14, align 4
  br label %188

183:                                              ; preds = %166
  %184 = load i64, i64* %6, align 8
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %13, align 4
  %186 = load i64, i64* %7, align 8
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %14, align 4
  br label %188

188:                                              ; preds = %183, %178
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %13, align 4
  %191 = sub nsw i32 %189, %190
  %192 = icmp sge i32 %191, 2048
  br i1 %192, label %199, label %193

193:                                              ; preds = %188
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %13, align 4
  %196 = sub nsw i32 %194, %195
  %197 = srem i32 %196, 512
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %193, %188
  %200 = load i32, i32* %3, align 4
  %201 = load i64, i64* %6, align 8
  %202 = trunc i64 %201 to i32
  %203 = load i64, i64* %7, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 (i32, i8*, ...) @device_printf(i32 %200, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i32 %202, i32 %204)
  br label %381

206:                                              ; preds = %193
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, 64
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 64
  store i32 %210, i32* %12, align 4
  %211 = load i32, i32* %3, align 4
  %212 = load i8*, i8** @SYS_RES_IOPORT, align 8
  %213 = load i8*, i8** @SV_PCI_DMAA, align 8
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @SV_PCI_DMAA_SIZE, align 4
  %216 = call i32 @bus_set_resource(i32 %211, i8* %212, i8* %213, i32 %214, i32 %215)
  %217 = load i32, i32* %3, align 4
  %218 = load i8*, i8** @SYS_RES_IOPORT, align 8
  %219 = load i8*, i8** @SV_PCI_DMAC, align 8
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* @SV_PCI_DMAC_SIZE, align 4
  %222 = call i32 @bus_set_resource(i32 %217, i8* %218, i8* %219, i32 %220, i32 %221)
  %223 = load i8*, i8** @SV_PCI_DMAA, align 8
  %224 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %225 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %224, i32 0, i32 5
  store i8* %223, i8** %225, align 8
  %226 = load i8*, i8** @SYS_RES_IOPORT, align 8
  %227 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %228 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %227, i32 0, i32 6
  store i8* %226, i8** %228, align 8
  %229 = load i32, i32* %3, align 4
  %230 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %231 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %230, i32 0, i32 6
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %234 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %233, i32 0, i32 5
  %235 = load i32, i32* @RF_ACTIVE, align 4
  %236 = call i8* @bus_alloc_resource_any(i32 %229, i8* %232, i8** %234, i32 %235)
  %237 = bitcast i8* %236 to i32*
  %238 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %239 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %238, i32 0, i32 4
  store i32* %237, i32** %239, align 8
  %240 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %241 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %240, i32 0, i32 4
  %242 = load i32*, i32** %241, align 8
  %243 = icmp eq i32* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %206
  %245 = load i32, i32* %3, align 4
  %246 = call i32 (i32, i8*, ...) @device_printf(i32 %245, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %381

247:                                              ; preds = %206
  %248 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %249 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %248, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = call i8* @rman_get_bustag(i32* %250)
  %252 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %253 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %252, i32 0, i32 17
  store i8* %251, i8** %253, align 8
  %254 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %255 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %254, i32 0, i32 4
  %256 = load i32*, i32** %255, align 8
  %257 = call i8* @rman_get_bushandle(i32* %256)
  %258 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %259 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %258, i32 0, i32 16
  store i8* %257, i8** %259, align 8
  %260 = load i32, i32* %3, align 4
  %261 = load i8*, i8** @SV_PCI_DMAA, align 8
  %262 = call i32 @pci_read_config(i32 %260, i8* %261, i32 4)
  %263 = load i32, i32* @SV_PCI_DMA_ENABLE, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @SV_PCI_DMA_EXTENDED, align 4
  %266 = or i32 %264, %265
  store i32 %266, i32* %8, align 4
  %267 = load i32, i32* %11, align 4
  %268 = and i32 %267, -16
  %269 = load i32, i32* %8, align 4
  %270 = and i32 %269, 15
  %271 = or i32 %268, %270
  store i32 %271, i32* %8, align 4
  %272 = load i32, i32* %3, align 4
  %273 = load i8*, i8** @SV_PCI_DMAA, align 8
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @pci_write_config(i32 %272, i8* %273, i32 %274, i32 4)
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* %3, align 4
  %278 = load i8*, i8** @SV_PCI_DMAA, align 8
  %279 = call i32 @pci_read_config(i32 %277, i8* %278, i32 4)
  %280 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %276, i32 %279)
  %281 = call i32 @DEB(i32 %280)
  %282 = load i8*, i8** @SV_PCI_DMAC, align 8
  %283 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %284 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %283, i32 0, i32 2
  store i8* %282, i8** %284, align 8
  %285 = load i8*, i8** @SYS_RES_IOPORT, align 8
  %286 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %287 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %286, i32 0, i32 3
  store i8* %285, i8** %287, align 8
  %288 = load i32, i32* %3, align 4
  %289 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %290 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %289, i32 0, i32 3
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %293 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %292, i32 0, i32 2
  %294 = load i32, i32* @RF_ACTIVE, align 4
  %295 = call i8* @bus_alloc_resource_any(i32 %288, i8* %291, i8** %293, i32 %294)
  %296 = bitcast i8* %295 to i32*
  %297 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %298 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %297, i32 0, i32 1
  store i32* %296, i32** %298, align 8
  %299 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %300 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %299, i32 0, i32 1
  %301 = load i32*, i32** %300, align 8
  %302 = icmp eq i32* %301, null
  br i1 %302, label %303, label %306

303:                                              ; preds = %247
  %304 = load i32, i32* %3, align 4
  %305 = call i32 (i32, i8*, ...) @device_printf(i32 %304, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %381

306:                                              ; preds = %247
  %307 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %308 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = call i8* @rman_get_bustag(i32* %309)
  %311 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %312 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %311, i32 0, i32 15
  store i8* %310, i8** %312, align 8
  %313 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %314 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = call i8* @rman_get_bushandle(i32* %315)
  %317 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %318 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %317, i32 0, i32 14
  store i8* %316, i8** %318, align 8
  %319 = load i32, i32* %3, align 4
  %320 = load i8*, i8** @SV_PCI_DMAC, align 8
  %321 = call i32 @pci_read_config(i32 %319, i8* %320, i32 4)
  %322 = load i32, i32* @SV_PCI_DMA_ENABLE, align 4
  %323 = or i32 %321, %322
  %324 = load i32, i32* @SV_PCI_DMA_EXTENDED, align 4
  %325 = or i32 %323, %324
  store i32 %325, i32* %8, align 4
  %326 = load i32, i32* %12, align 4
  %327 = and i32 %326, -16
  %328 = load i32, i32* %8, align 4
  %329 = and i32 %328, 15
  %330 = or i32 %327, %329
  store i32 %330, i32* %8, align 4
  %331 = load i32, i32* %3, align 4
  %332 = load i8*, i8** @SV_PCI_DMAC, align 8
  %333 = load i32, i32* %8, align 4
  %334 = call i32 @pci_write_config(i32 %331, i8* %332, i32 %333, i32 4)
  %335 = load i32, i32* %8, align 4
  %336 = load i32, i32* %3, align 4
  %337 = load i8*, i8** @SV_PCI_DMAC, align 8
  %338 = call i32 @pci_read_config(i32 %336, i8* %337, i32 4)
  %339 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %335, i32 %338)
  %340 = call i32 @DEB(i32 %339)
  %341 = load i64, i64* @bootverbose, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %306
  %344 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %345 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %346)
  br label %348

348:                                              ; preds = %343, %306
  %349 = load i32, i32* %3, align 4
  %350 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %351 = call i64 @pcm_register(i32 %349, %struct.sc_info* %350, i32 1, i32 1)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %348
  %354 = load i32, i32* %3, align 4
  %355 = call i32 (i32, i8*, ...) @device_printf(i32 %354, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  br label %381

356:                                              ; preds = %348
  %357 = load i32, i32* %3, align 4
  %358 = load i32, i32* @PCMDIR_PLAY, align 4
  %359 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %360 = call i32 @pcm_addchan(i32 %357, i32 %358, i32* @svpchan_class, %struct.sc_info* %359)
  %361 = load i32, i32* %3, align 4
  %362 = load i32, i32* @PCMDIR_REC, align 4
  %363 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %364 = call i32 @pcm_addchan(i32 %361, i32 %362, i32* @svrchan_class, %struct.sc_info* %363)
  %365 = load i32, i32* @SND_STATUSLEN, align 4
  %366 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %367 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %366, i32 0, i32 7
  %368 = load i32*, i32** %367, align 8
  %369 = call i32 @rman_get_start(i32* %368)
  %370 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %371 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %370, i32 0, i32 10
  %372 = load i32*, i32** %371, align 8
  %373 = call i32 @rman_get_start(i32* %372)
  %374 = load i32, i32* @snd_vibes, align 4
  %375 = call i32 @PCM_KLDSTRING(i32 %374)
  %376 = call i32 @snprintf(i8* %19, i32 %365, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %369, i32 %373, i32 %375)
  %377 = load i32, i32* %3, align 4
  %378 = call i32 @pcm_setstatus(i32 %377, i8* %19)
  %379 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %380 = call i32 @DEB(i32 %379)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %473

381:                                              ; preds = %353, %303, %244, %199, %163, %149, %128
  %382 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %383 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %382, i32 0, i32 13
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %381
  %387 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %388 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %387, i32 0, i32 13
  %389 = load i64, i64* %388, align 8
  %390 = call i32 @bus_dma_tag_destroy(i64 %389)
  br label %391

391:                                              ; preds = %386, %381
  %392 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %393 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %392, i32 0, i32 12
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %405

396:                                              ; preds = %391
  %397 = load i32, i32* %3, align 4
  %398 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %399 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %398, i32 0, i32 10
  %400 = load i32*, i32** %399, align 8
  %401 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %402 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %401, i32 0, i32 12
  %403 = load i64, i64* %402, align 8
  %404 = call i32 @bus_teardown_intr(i32 %397, i32* %400, i64 %403)
  br label %405

405:                                              ; preds = %396, %391
  %406 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %407 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %406, i32 0, i32 10
  %408 = load i32*, i32** %407, align 8
  %409 = icmp ne i32* %408, null
  br i1 %409, label %410, label %420

410:                                              ; preds = %405
  %411 = load i32, i32* %3, align 4
  %412 = load i8*, i8** @SYS_RES_IRQ, align 8
  %413 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %414 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %413, i32 0, i32 11
  %415 = load i8*, i8** %414, align 8
  %416 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %417 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %416, i32 0, i32 10
  %418 = load i32*, i32** %417, align 8
  %419 = call i32 @bus_release_resource(i32 %411, i8* %412, i8* %415, i32* %418)
  br label %420

420:                                              ; preds = %410, %405
  %421 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %422 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %421, i32 0, i32 7
  %423 = load i32*, i32** %422, align 8
  %424 = icmp ne i32* %423, null
  br i1 %424, label %425, label %437

425:                                              ; preds = %420
  %426 = load i32, i32* %3, align 4
  %427 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %428 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %427, i32 0, i32 9
  %429 = load i8*, i8** %428, align 8
  %430 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %431 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %430, i32 0, i32 8
  %432 = load i8*, i8** %431, align 8
  %433 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %434 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %433, i32 0, i32 7
  %435 = load i32*, i32** %434, align 8
  %436 = call i32 @bus_release_resource(i32 %426, i8* %429, i8* %432, i32* %435)
  br label %437

437:                                              ; preds = %425, %420
  %438 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %439 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %438, i32 0, i32 4
  %440 = load i32*, i32** %439, align 8
  %441 = icmp ne i32* %440, null
  br i1 %441, label %442, label %454

442:                                              ; preds = %437
  %443 = load i32, i32* %3, align 4
  %444 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %445 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %444, i32 0, i32 6
  %446 = load i8*, i8** %445, align 8
  %447 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %448 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %447, i32 0, i32 5
  %449 = load i8*, i8** %448, align 8
  %450 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %451 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %450, i32 0, i32 4
  %452 = load i32*, i32** %451, align 8
  %453 = call i32 @bus_release_resource(i32 %443, i8* %446, i8* %449, i32* %452)
  br label %454

454:                                              ; preds = %442, %437
  %455 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %456 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %455, i32 0, i32 1
  %457 = load i32*, i32** %456, align 8
  %458 = icmp ne i32* %457, null
  br i1 %458, label %459, label %471

459:                                              ; preds = %454
  %460 = load i32, i32* %3, align 4
  %461 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %462 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %461, i32 0, i32 3
  %463 = load i8*, i8** %462, align 8
  %464 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %465 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %464, i32 0, i32 2
  %466 = load i8*, i8** %465, align 8
  %467 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %468 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %467, i32 0, i32 1
  %469 = load i32*, i32** %468, align 8
  %470 = call i32 @bus_release_resource(i32 %460, i8* %463, i8* %466, i32* %469)
  br label %471

471:                                              ; preds = %459, %454
  %472 = load i32, i32* @ENXIO, align 4
  store i32 %472, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %473

473:                                              ; preds = %471, %356, %64
  %474 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %474)
  %475 = load i32, i32* %2, align 4
  ret i32 %475
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sc_info* @malloc(i32, i32, i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i64 @pci_get_powerstate(i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @pci_set_powerstate(i32, i64) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i8*, i8**, i32) #2

declare dso_local i8* @rman_get_bustag(i32*) #2

declare dso_local i8* @rman_get_bushandle(i32*) #2

declare dso_local i32 @pci_read_config(i32, i8*, i32) #2

declare dso_local i32 @DEB(i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @pci_write_config(i32, i8*, i32, i32) #2

declare dso_local i64 @snd_setup_intr(i32, i32*, i32, i32, %struct.sc_info*, i64*) #2

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #2

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i64*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i32 @sv_mix_mute_all(%struct.sc_info*) #2

declare dso_local i32 @sv_power(%struct.sc_info*, i32) #2

declare dso_local i32 @sv_init(%struct.sc_info*) #2

declare dso_local i64 @mixer_init(i32, i32*, %struct.sc_info*) #2

declare dso_local i32 @bus_get_resource(i32, i8*, i32, i64*, i64*) #2

declare dso_local i32 @bus_set_resource(i32, i8*, i8*, i32, i32) #2

declare dso_local i64 @pcm_register(i32, %struct.sc_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.sc_info*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i32*) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @bus_dma_tag_destroy(i64) #2

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #2

declare dso_local i32 @bus_release_resource(i32, i8*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
