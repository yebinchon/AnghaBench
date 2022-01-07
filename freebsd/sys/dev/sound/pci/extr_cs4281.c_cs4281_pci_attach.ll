; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i64, i64, i32*, i8*, i64, i32*, i8*, i32*, i8*, i32, i32, i32, i32, i32 }
%struct.ac97_info = type { i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"chip is in D%d power mode -- setting to D0\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to allocate register space\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unable to allocate fifo space\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i64 0, align 8
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to allocate interrupt\0A\00", align 1
@cs4281_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"unable to setup interrupt\0A\00", align 1
@CS4281_DEFAULT_BUFSZ = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"unable to initialize the card\0A\00", align 1
@cs4281_ac97 = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@cs4281chan_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"at %s 0x%jx irq %jd %s\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@snd_cs4281 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cs4281_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4281_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca %struct.ac97_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ac97_info* null, %struct.ac97_info** %5, align 8
  %9 = load i32, i32* @SND_STATUSLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* @M_DEVBUF, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.sc_info* @malloc(i32 96, i32 %13, i32 %16)
  store %struct.sc_info* %17, %struct.sc_info** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 13
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @pci_get_devid(i32 %21)
  %23 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %24 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pci_enable_busmaster(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @pci_get_powerstate(i32 %27)
  %29 = load i64, i64* @PCI_POWERSTATE_D0, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @pci_get_powerstate(i32 %33)
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i64, i64* @PCI_POWERSTATE_D0, align 8
  %38 = call i32 @pci_set_powerstate(i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %31, %1
  %40 = call i8* @PCIR_BAR(i32 0)
  %41 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %42 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %41, i32 0, i32 8
  store i8* %40, i8** %42, align 8
  %43 = load i64, i64* @SYS_RES_MEMORY, align 8
  %44 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %45 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %48 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 8
  %52 = load i32, i32* @RF_ACTIVE, align 4
  %53 = call i8* @bus_alloc_resource_any(i32 %46, i64 %49, i8** %51, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 7
  store i32* %54, i32** %56, align 8
  %57 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %58 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %57, i32 0, i32 7
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %84, label %61

61:                                               ; preds = %39
  %62 = load i64, i64* @SYS_RES_IOPORT, align 8
  %63 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %64 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %67 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %70 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %69, i32 0, i32 8
  %71 = load i32, i32* @RF_ACTIVE, align 4
  %72 = call i8* @bus_alloc_resource_any(i32 %65, i64 %68, i8** %70, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %75 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %74, i32 0, i32 7
  store i32* %73, i32** %75, align 8
  %76 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %77 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %76, i32 0, i32 7
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %61
  %81 = load i32, i32* %3, align 4
  %82 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %229

83:                                               ; preds = %61
  br label %84

84:                                               ; preds = %83, %39
  %85 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %86 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @rman_get_bustag(i32* %87)
  %89 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %90 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %89, i32 0, i32 11
  store i32 %88, i32* %90, align 8
  %91 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %92 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %91, i32 0, i32 7
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @rman_get_bushandle(i32* %93)
  %95 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %96 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %95, i32 0, i32 10
  store i32 %94, i32* %96, align 4
  %97 = call i8* @PCIR_BAR(i32 1)
  %98 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %99 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %98, i32 0, i32 6
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* %3, align 4
  %101 = load i64, i64* @SYS_RES_MEMORY, align 8
  %102 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %103 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %102, i32 0, i32 6
  %104 = load i32, i32* @RF_ACTIVE, align 4
  %105 = call i8* @bus_alloc_resource_any(i32 %100, i64 %101, i8** %103, i32 %104)
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %108 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %107, i32 0, i32 5
  store i32* %106, i32** %108, align 8
  %109 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %110 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %84
  %114 = load i32, i32* %3, align 4
  %115 = call i32 (i32, i8*, ...) @device_printf(i32 %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %229

116:                                              ; preds = %84
  %117 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %118 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %117, i32 0, i32 3
  store i8* null, i8** %118, align 8
  %119 = load i32, i32* %3, align 4
  %120 = load i64, i64* @SYS_RES_IRQ, align 8
  %121 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %122 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %121, i32 0, i32 3
  %123 = load i32, i32* @RF_ACTIVE, align 4
  %124 = load i32, i32* @RF_SHAREABLE, align 4
  %125 = or i32 %123, %124
  %126 = call i8* @bus_alloc_resource_any(i32 %119, i64 %120, i8** %122, i32 %125)
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %129 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %128, i32 0, i32 2
  store i32* %127, i32** %129, align 8
  %130 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %131 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %116
  %135 = load i32, i32* %3, align 4
  %136 = call i32 (i32, i8*, ...) @device_printf(i32 %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %229

137:                                              ; preds = %116
  %138 = load i32, i32* %3, align 4
  %139 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %140 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* @cs4281_intr, align 4
  %143 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %144 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %145 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %144, i32 0, i32 4
  %146 = call i64 @snd_setup_intr(i32 %138, i32* %141, i32 0, i32 %142, %struct.sc_info* %143, i64* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %137
  %149 = load i32, i32* %3, align 4
  %150 = call i32 (i32, i8*, ...) @device_printf(i32 %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %229

151:                                              ; preds = %137
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @CS4281_DEFAULT_BUFSZ, align 4
  %154 = call i32 @pcm_getbuffersize(i32 %152, i32 4096, i32 %153, i32 65536)
  %155 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %156 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %155, i32 0, i32 9
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @bus_get_dma_tag(i32 %157)
  %159 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %160 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %161 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %162 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @busdma_lock_mutex, align 4
  %165 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %166 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %165, i32 0, i32 1
  %167 = call i64 @bus_dma_tag_create(i32 %158, i32 2, i32 0, i32 %159, i32 %160, i32* null, i32* null, i32 %163, i32 1, i32 262143, i32 0, i32 %164, i32* @Giant, i64* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %151
  %170 = load i32, i32* %3, align 4
  %171 = call i32 (i32, i8*, ...) @device_printf(i32 %170, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %229

172:                                              ; preds = %151
  %173 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %174 = call i32 @cs4281_power(%struct.sc_info* %173, i32 0)
  %175 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %176 = call i32 @cs4281_init(%struct.sc_info* %175)
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = load i32, i32* %3, align 4
  %180 = call i32 (i32, i8*, ...) @device_printf(i32 %179, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %229

181:                                              ; preds = %172
  %182 = load i32, i32* %3, align 4
  %183 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %184 = load i32, i32* @cs4281_ac97, align 4
  %185 = call %struct.ac97_info* @AC97_CREATE(i32 %182, %struct.sc_info* %183, i32 %184)
  store %struct.ac97_info* %185, %struct.ac97_info** %5, align 8
  %186 = load %struct.ac97_info*, %struct.ac97_info** %5, align 8
  %187 = icmp eq %struct.ac97_info* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  br label %229

189:                                              ; preds = %181
  %190 = load i32, i32* %3, align 4
  %191 = call i32 (...) @ac97_getmixerclass()
  %192 = load %struct.ac97_info*, %struct.ac97_info** %5, align 8
  %193 = call i32 @mixer_init(i32 %190, i32 %191, %struct.ac97_info* %192)
  %194 = load i32, i32* %3, align 4
  %195 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %196 = call i64 @pcm_register(i32 %194, %struct.sc_info* %195, i32 1, i32 1)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %189
  br label %229

199:                                              ; preds = %189
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* @PCMDIR_PLAY, align 4
  %202 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %203 = call i32 @pcm_addchan(i32 %200, i32 %201, i32* @cs4281chan_class, %struct.sc_info* %202)
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* @PCMDIR_REC, align 4
  %206 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %207 = call i32 @pcm_addchan(i32 %204, i32 %205, i32* @cs4281chan_class, %struct.sc_info* %206)
  %208 = load i32, i32* @SND_STATUSLEN, align 4
  %209 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %210 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @SYS_RES_IOPORT, align 8
  %213 = icmp eq i64 %211, %212
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)
  %216 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %217 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %216, i32 0, i32 7
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @rman_get_start(i32* %218)
  %220 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %221 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @rman_get_start(i32* %222)
  %224 = load i32, i32* @snd_cs4281, align 4
  %225 = call i32 @PCM_KLDSTRING(i32 %224)
  %226 = call i32 @snprintf(i8* %12, i32 %208, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %215, i32 %219, i32 %223, i32 %225)
  %227 = load i32, i32* %3, align 4
  %228 = call i32 @pcm_setstatus(i32 %227, i8* %12)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %311

229:                                              ; preds = %198, %188, %178, %169, %148, %134, %113, %80
  %230 = load %struct.ac97_info*, %struct.ac97_info** %5, align 8
  %231 = icmp ne %struct.ac97_info* %230, null
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load %struct.ac97_info*, %struct.ac97_info** %5, align 8
  %234 = call i32 @ac97_destroy(%struct.ac97_info* %233)
  br label %235

235:                                              ; preds = %232, %229
  %236 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %237 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %236, i32 0, i32 7
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %252

240:                                              ; preds = %235
  %241 = load i32, i32* %3, align 4
  %242 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %243 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %246 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %245, i32 0, i32 8
  %247 = load i8*, i8** %246, align 8
  %248 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %249 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %248, i32 0, i32 7
  %250 = load i32*, i32** %249, align 8
  %251 = call i32 @bus_release_resource(i32 %241, i64 %244, i8* %247, i32* %250)
  br label %252

252:                                              ; preds = %240, %235
  %253 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %254 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %253, i32 0, i32 5
  %255 = load i32*, i32** %254, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %267

257:                                              ; preds = %252
  %258 = load i32, i32* %3, align 4
  %259 = load i64, i64* @SYS_RES_MEMORY, align 8
  %260 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %261 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %260, i32 0, i32 6
  %262 = load i8*, i8** %261, align 8
  %263 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %264 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %263, i32 0, i32 5
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @bus_release_resource(i32 %258, i64 %259, i8* %262, i32* %265)
  br label %267

267:                                              ; preds = %257, %252
  %268 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %269 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %268, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %281

272:                                              ; preds = %267
  %273 = load i32, i32* %3, align 4
  %274 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %275 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %274, i32 0, i32 2
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %278 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %277, i32 0, i32 4
  %279 = load i64, i64* %278, align 8
  %280 = call i32 @bus_teardown_intr(i32 %273, i32* %276, i64 %279)
  br label %281

281:                                              ; preds = %272, %267
  %282 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %283 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %282, i32 0, i32 2
  %284 = load i32*, i32** %283, align 8
  %285 = icmp ne i32* %284, null
  br i1 %285, label %286, label %296

286:                                              ; preds = %281
  %287 = load i32, i32* %3, align 4
  %288 = load i64, i64* @SYS_RES_IRQ, align 8
  %289 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %290 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %289, i32 0, i32 3
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %293 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %292, i32 0, i32 2
  %294 = load i32*, i32** %293, align 8
  %295 = call i32 @bus_release_resource(i32 %287, i64 %288, i8* %291, i32* %294)
  br label %296

296:                                              ; preds = %286, %281
  %297 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %298 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %303 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = call i32 @bus_dma_tag_destroy(i64 %304)
  br label %306

306:                                              ; preds = %301, %296
  %307 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %308 = load i32, i32* @M_DEVBUF, align 4
  %309 = call i32 @free(%struct.sc_info* %307, i32 %308)
  %310 = load i32, i32* @ENXIO, align 4
  store i32 %310, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %311

311:                                              ; preds = %306, %199
  %312 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %312)
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sc_info* @malloc(i32, i32, i32) #2

declare dso_local i32 @pci_get_devid(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i64 @pci_get_powerstate(i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @pci_set_powerstate(i32, i64) #2

declare dso_local i8* @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i64, i8**, i32) #2

declare dso_local i32 @rman_get_bustag(i32*) #2

declare dso_local i32 @rman_get_bushandle(i32*) #2

declare dso_local i64 @snd_setup_intr(i32, i32*, i32, i32, %struct.sc_info*, i64*) #2

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #2

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i64*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i32 @cs4281_power(%struct.sc_info*, i32) #2

declare dso_local i32 @cs4281_init(%struct.sc_info*) #2

declare dso_local %struct.ac97_info* @AC97_CREATE(i32, %struct.sc_info*, i32) #2

declare dso_local i32 @mixer_init(i32, i32, %struct.ac97_info*) #2

declare dso_local i32 @ac97_getmixerclass(...) #2

declare dso_local i64 @pcm_register(i32, %struct.sc_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.sc_info*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i32*) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @ac97_destroy(%struct.ac97_info*) #2

declare dso_local i32 @bus_release_resource(i32, i64, i8*, i32*) #2

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #2

declare dso_local i32 @bus_dma_tag_destroy(i64) #2

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
