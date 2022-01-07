; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_au_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.au_info = type { i32, i32*, i32*, i32 }
%struct.resource = type { i32 }
%struct.ac97_info = type { i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PCI_MAXMAPS_0 = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"too many resources\00", align 1
@AU_REG_IRQEN = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@au_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"irq test failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unable to initialize the card\0A\00", align 1
@au_ac97 = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@AU_BUFFSIZE = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"at %s 0x%jx irq %jd %s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@snd_aureal = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@auchan_class = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PCI_MAPPORT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@config_id = common dso_local global %struct.TYPE_4__* null, align 8
@unit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @au_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.au_info*, align 8
  %5 = alloca [10 x i32], align 16
  %6 = alloca [10 x i32], align 16
  %7 = alloca [10 x %struct.resource*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ac97_info*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @SND_STATUSLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.au_info* @malloc(i32 32, i32 %22, i32 %25)
  store %struct.au_info* %26, %struct.au_info** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_get_unit(i32 %27)
  %29 = load %struct.au_info*, %struct.au_info** %4, align 8
  %30 = getelementptr inbounds %struct.au_info, %struct.au_info* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @pci_enable_busmaster(i32 %31)
  store %struct.resource* null, %struct.resource** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %127, %1
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @PCI_MAXMAPS_0, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %130

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @PCIR_BAR(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @SYS_RES_MEMORY, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %53
  %55 = load i32, i32* @RF_ACTIVE, align 4
  %56 = call %struct.resource* @bus_alloc_resource_any(i32 %47, i32 %51, i32* %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x %struct.resource*], [10 x %struct.resource*]* %7, i64 0, i64 %58
  store %struct.resource* %56, %struct.resource** %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [10 x %struct.resource*], [10 x %struct.resource*]* %7, i64 0, i64 %61
  %63 = load %struct.resource*, %struct.resource** %62, align 8
  %64 = icmp ne %struct.resource* %63, null
  br i1 %64, label %83, label %65

65:                                               ; preds = %37
  %66 = load i32, i32* @SYS_RES_IOPORT, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %68
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %76
  %78 = load i32, i32* @RF_ACTIVE, align 4
  %79 = call %struct.resource* @bus_alloc_resource_any(i32 %70, i32 %74, i32* %77, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [10 x %struct.resource*], [10 x %struct.resource*]* %7, i64 0, i64 %81
  store %struct.resource* %79, %struct.resource** %82, align 8
  br label %83

83:                                               ; preds = %65, %37
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [10 x %struct.resource*], [10 x %struct.resource*]* %7, i64 0, i64 %85
  %87 = load %struct.resource*, %struct.resource** %86, align 8
  %88 = icmp ne %struct.resource* %87, null
  br i1 %88, label %89, label %114

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [10 x %struct.resource*], [10 x %struct.resource*]* %7, i64 0, i64 %91
  %93 = load %struct.resource*, %struct.resource** %92, align 8
  %94 = call i32 @rman_get_bustag(%struct.resource* %93)
  %95 = load %struct.au_info*, %struct.au_info** %4, align 8
  %96 = getelementptr inbounds %struct.au_info, %struct.au_info* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [10 x %struct.resource*], [10 x %struct.resource*]* %7, i64 0, i64 %102
  %104 = load %struct.resource*, %struct.resource** %103, align 8
  %105 = call i32 @rman_get_bushandle(%struct.resource* %104)
  %106 = load %struct.au_info*, %struct.au_info** %4, align 8
  %107 = getelementptr inbounds %struct.au_info, %struct.au_info* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %89, %83
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 10
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @device_printf(i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %224

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %33

130:                                              ; preds = %33
  %131 = load %struct.au_info*, %struct.au_info** %4, align 8
  %132 = load i32, i32* @AU_REG_IRQEN, align 4
  %133 = call i32 @au_wr(%struct.au_info* %131, i32 0, i32 %132, i32 0, i32 4)
  store i32 0, i32* %11, align 4
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @SYS_RES_IRQ, align 4
  %136 = load i32, i32* @RF_ACTIVE, align 4
  %137 = load i32, i32* @RF_SHAREABLE, align 4
  %138 = or i32 %136, %137
  %139 = call %struct.resource* @bus_alloc_resource_any(i32 %134, i32 %135, i32* %11, i32 %138)
  store %struct.resource* %139, %struct.resource** %12, align 8
  %140 = load %struct.resource*, %struct.resource** %12, align 8
  %141 = icmp ne %struct.resource* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %130
  %143 = load i32, i32* %3, align 4
  %144 = load %struct.resource*, %struct.resource** %12, align 8
  %145 = load i32, i32* @au_intr, align 4
  %146 = load %struct.au_info*, %struct.au_info** %4, align 8
  %147 = call i64 @snd_setup_intr(i32 %143, %struct.resource* %144, i32 0, i32 %145, %struct.au_info* %146, i8** %13)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142, %130
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @device_printf(i32 %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %224

152:                                              ; preds = %142
  %153 = load %struct.au_info*, %struct.au_info** %4, align 8
  %154 = call i64 @au_testirq(%struct.au_info* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* %3, align 4
  %158 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %159

159:                                              ; preds = %156, %152
  %160 = load i32, i32* %3, align 4
  %161 = load %struct.au_info*, %struct.au_info** %4, align 8
  %162 = call i32 @au_init(i32 %160, %struct.au_info* %161)
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @device_printf(i32 %165, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %224

167:                                              ; preds = %159
  %168 = load i32, i32* %3, align 4
  %169 = load %struct.au_info*, %struct.au_info** %4, align 8
  %170 = load i32, i32* @au_ac97, align 4
  %171 = call %struct.ac97_info* @AC97_CREATE(i32 %168, %struct.au_info* %169, i32 %170)
  store %struct.ac97_info* %171, %struct.ac97_info** %14, align 8
  %172 = load %struct.ac97_info*, %struct.ac97_info** %14, align 8
  %173 = icmp eq %struct.ac97_info* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %224

175:                                              ; preds = %167
  %176 = load i32, i32* %3, align 4
  %177 = call i32 (...) @ac97_getmixerclass()
  %178 = load %struct.ac97_info*, %struct.ac97_info** %14, align 8
  %179 = call i32 @mixer_init(i32 %176, i32 %177, %struct.ac97_info* %178)
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %224

182:                                              ; preds = %175
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @bus_get_dma_tag(i32 %183)
  %185 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %186 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %187 = load i32, i32* @AU_BUFFSIZE, align 4
  %188 = load i32, i32* @busdma_lock_mutex, align 4
  %189 = load %struct.au_info*, %struct.au_info** %4, align 8
  %190 = getelementptr inbounds %struct.au_info, %struct.au_info* %189, i32 0, i32 0
  %191 = call i64 @bus_dma_tag_create(i32 %184, i32 2, i32 0, i32 %185, i32 %186, i32* null, i32* null, i32 %187, i32 1, i32 262143, i32 0, i32 %188, i32* @Giant, i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %182
  %194 = load i32, i32* %3, align 4
  %195 = call i32 @device_printf(i32 %194, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %224

196:                                              ; preds = %182
  %197 = load i32, i32* @SND_STATUSLEN, align 4
  %198 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %199 = load i32, i32* %198, align 16
  %200 = load i32, i32* @SYS_RES_IOPORT, align 4
  %201 = icmp eq i32 %199, %200
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %204 = getelementptr inbounds [10 x %struct.resource*], [10 x %struct.resource*]* %7, i64 0, i64 0
  %205 = load %struct.resource*, %struct.resource** %204, align 16
  %206 = call i32 @rman_get_start(%struct.resource* %205)
  %207 = load %struct.resource*, %struct.resource** %12, align 8
  %208 = call i32 @rman_get_start(%struct.resource* %207)
  %209 = load i32, i32* @snd_aureal, align 4
  %210 = call i32 @PCM_KLDSTRING(i32 %209)
  %211 = call i32 @snprintf(i8* %21, i32 %197, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %203, i32 %206, i32 %208, i32 %210)
  %212 = load i32, i32* %3, align 4
  %213 = load %struct.au_info*, %struct.au_info** %4, align 8
  %214 = call i64 @pcm_register(i32 %212, %struct.au_info* %213, i32 1, i32 1)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %196
  br label %224

217:                                              ; preds = %196
  %218 = load i32, i32* %3, align 4
  %219 = load i32, i32* @PCMDIR_PLAY, align 4
  %220 = load %struct.au_info*, %struct.au_info** %4, align 8
  %221 = call i32 @pcm_addchan(i32 %218, i32 %219, i32* @auchan_class, %struct.au_info* %220)
  %222 = load i32, i32* %3, align 4
  %223 = call i32 @pcm_setstatus(i32 %222, i8* %21)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %273

224:                                              ; preds = %216, %193, %181, %174, %164, %149, %123
  %225 = load %struct.au_info*, %struct.au_info** %4, align 8
  %226 = icmp ne %struct.au_info* %225, null
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load %struct.au_info*, %struct.au_info** %4, align 8
  %229 = load i32, i32* @M_DEVBUF, align 4
  %230 = call i32 @free(%struct.au_info* %228, i32 %229)
  br label %231

231:                                              ; preds = %227, %224
  store i32 0, i32* %8, align 4
  br label %232

232:                                              ; preds = %251, %231
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* %9, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %254

236:                                              ; preds = %232
  %237 = load i32, i32* %3, align 4
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %8, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [10 x %struct.resource*], [10 x %struct.resource*]* %7, i64 0, i64 %247
  %249 = load %struct.resource*, %struct.resource** %248, align 8
  %250 = call i32 @bus_release_resource(i32 %237, i32 %241, i32 %245, %struct.resource* %249)
  br label %251

251:                                              ; preds = %236
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %8, align 4
  br label %232

254:                                              ; preds = %232
  %255 = load i8*, i8** %13, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %262

257:                                              ; preds = %254
  %258 = load i32, i32* %3, align 4
  %259 = load %struct.resource*, %struct.resource** %12, align 8
  %260 = load i8*, i8** %13, align 8
  %261 = call i32 @bus_teardown_intr(i32 %258, %struct.resource* %259, i8* %260)
  br label %262

262:                                              ; preds = %257, %254
  %263 = load %struct.resource*, %struct.resource** %12, align 8
  %264 = icmp ne %struct.resource* %263, null
  br i1 %264, label %265, label %271

265:                                              ; preds = %262
  %266 = load i32, i32* %3, align 4
  %267 = load i32, i32* @SYS_RES_IRQ, align 4
  %268 = load i32, i32* %11, align 4
  %269 = load %struct.resource*, %struct.resource** %12, align 8
  %270 = call i32 @bus_release_resource(i32 %266, i32 %267, i32 %268, %struct.resource* %269)
  br label %271

271:                                              ; preds = %265, %262
  %272 = load i32, i32* @ENXIO, align 4
  store i32 %272, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %273

273:                                              ; preds = %271, %217
  %274 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %274)
  %275 = load i32, i32* %2, align 4
  ret i32 %275
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.au_info* @malloc(i32, i32, i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i32 @PCIR_BAR(i32) #2

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #2

declare dso_local i32 @rman_get_bustag(%struct.resource*) #2

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @au_wr(%struct.au_info*, i32, i32, i32, i32) #2

declare dso_local i64 @snd_setup_intr(i32, %struct.resource*, i32, i32, %struct.au_info*, i8**) #2

declare dso_local i64 @au_testirq(%struct.au_info*) #2

declare dso_local i32 @au_init(i32, %struct.au_info*) #2

declare dso_local %struct.ac97_info* @AC97_CREATE(i32, %struct.au_info*, i32) #2

declare dso_local i32 @mixer_init(i32, i32, %struct.ac97_info*) #2

declare dso_local i32 @ac97_getmixerclass(...) #2

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(%struct.resource*) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i64 @pcm_register(i32, %struct.au_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.au_info*) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @free(%struct.au_info*, i32) #2

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #2

declare dso_local i32 @bus_teardown_intr(i32, %struct.resource*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
