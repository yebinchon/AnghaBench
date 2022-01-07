; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_fm801.c_fm801_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_info = type { i32 }
%struct.fm801_info = type { i64, i64, i8*, i64, i64, i8*, i64, i32, i32, i32, i32, i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PCI_MAXMAPS_0 = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"unable to map register space\0A\00", align 1
@FM801_DEFAULT_BUFSZ = common dso_local global i32 0, align 4
@fm801_ac97 = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i64 0, align 8
@RF_SHAREABLE = common dso_local global i32 0, align 4
@fm801_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"at %s 0x%jx irq %jd %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@snd_fm801 = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@fm801ch_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@FM801_MAXPLAYCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fm801_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm801_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ac97_info*, align 8
  %5 = alloca %struct.fm801_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ac97_info* null, %struct.ac97_info** %4, align 8
  store i32 0, i32* %7, align 4
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
  %19 = call %struct.fm801_info* @malloc(i32 80, i32 %15, i32 %18)
  store %struct.fm801_info* %19, %struct.fm801_info** %5, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pci_get_devid(i32 %20)
  %22 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %23 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %22, i32 0, i32 11
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @pci_enable_busmaster(i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %92, %1
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @PCI_MAXMAPS_0, align 4
  %32 = icmp slt i32 %30, %31
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i1 [ false, %26 ], [ %32, %29 ]
  br i1 %34, label %35, label %95

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @PCIR_BAR(i32 %36)
  %38 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %39 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %38, i32 0, i32 6
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* @SYS_RES_MEMORY, align 8
  %41 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %42 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %45 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %48 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %47, i32 0, i32 6
  %49 = load i32, i32* @RF_ACTIVE, align 4
  %50 = call i8* @bus_alloc_resource_any(i32 %43, i64 %46, i64* %48, i32 %49)
  %51 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %52 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %54 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %53, i32 0, i32 5
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %35
  %58 = load i64, i64* @SYS_RES_IOPORT, align 8
  %59 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %60 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %63 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %66 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %65, i32 0, i32 6
  %67 = load i32, i32* @RF_ACTIVE, align 4
  %68 = call i8* @bus_alloc_resource_any(i32 %61, i64 %64, i64* %66, i32 %67)
  %69 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %70 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %57, %35
  %72 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %73 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %72, i32 0, i32 5
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %78 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %77, i32 0, i32 5
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @rman_get_bustag(i8* %79)
  %81 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %82 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %81, i32 0, i32 10
  store i32 %80, i32* %82, align 4
  %83 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %84 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %83, i32 0, i32 5
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @rman_get_bushandle(i8* %85)
  %87 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %88 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %87, i32 0, i32 9
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %76, %71
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %26

95:                                               ; preds = %33
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %211

101:                                              ; preds = %95
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @FM801_DEFAULT_BUFSZ, align 4
  %104 = call i32 @pcm_getbuffersize(i32 %102, i32 4096, i32 %103, i32 65536)
  %105 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %106 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 4
  %107 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %108 = call i32 @fm801_init(%struct.fm801_info* %107)
  %109 = load i32, i32* %3, align 4
  %110 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %111 = load i32, i32* @fm801_ac97, align 4
  %112 = call %struct.ac97_info* @AC97_CREATE(i32 %109, %struct.fm801_info* %110, i32 %111)
  store %struct.ac97_info* %112, %struct.ac97_info** %4, align 8
  %113 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %114 = icmp eq %struct.ac97_info* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %101
  br label %211

116:                                              ; preds = %101
  %117 = load i32, i32* %3, align 4
  %118 = call i32 (...) @ac97_getmixerclass()
  %119 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %120 = call i32 @mixer_init(i32 %117, i32 %118, %struct.ac97_info* %119)
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %211

123:                                              ; preds = %116
  %124 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %125 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %124, i32 0, i32 3
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* %3, align 4
  %127 = load i64, i64* @SYS_RES_IRQ, align 8
  %128 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %129 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %128, i32 0, i32 3
  %130 = load i32, i32* @RF_ACTIVE, align 4
  %131 = load i32, i32* @RF_SHAREABLE, align 4
  %132 = or i32 %130, %131
  %133 = call i8* @bus_alloc_resource_any(i32 %126, i64 %127, i64* %129, i32 %132)
  %134 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %135 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %137 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %151

140:                                              ; preds = %123
  %141 = load i32, i32* %3, align 4
  %142 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %143 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = load i32, i32* @fm801_intr, align 4
  %146 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %147 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %148 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %147, i32 0, i32 4
  %149 = call i64 @snd_setup_intr(i32 %141, i8* %144, i32 0, i32 %145, %struct.fm801_info* %146, i64* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %140, %123
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @device_printf(i32 %152, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %211

154:                                              ; preds = %140
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @bus_get_dma_tag(i32 %155)
  %157 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %158 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %159 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %160 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @busdma_lock_mutex, align 4
  %163 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %164 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %163, i32 0, i32 1
  %165 = call i64 @bus_dma_tag_create(i32 %156, i32 2, i32 0, i32 %157, i32 %158, i32* null, i32* null, i32 %161, i32 1, i32 262143, i32 0, i32 %162, i32* @Giant, i64* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %154
  %168 = load i32, i32* %3, align 4
  %169 = call i32 @device_printf(i32 %168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %211

170:                                              ; preds = %154
  %171 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %172 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @SYS_RES_IOPORT, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %178 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %179 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %178, i32 0, i32 5
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @rman_get_start(i8* %180)
  %182 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %183 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @rman_get_start(i8* %184)
  %186 = load i32, i32* @snd_fm801, align 4
  %187 = call i32 @PCM_KLDSTRING(i32 %186)
  %188 = call i32 @snprintf(i8* %14, i32 64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %177, i32 %181, i32 %185, i32 %187)
  %189 = load i32, i32* %3, align 4
  %190 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %191 = call i64 @pcm_register(i32 %189, %struct.fm801_info* %190, i32 1, i32 1)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %170
  br label %211

194:                                              ; preds = %170
  %195 = load i32, i32* %3, align 4
  %196 = load i32, i32* @PCMDIR_PLAY, align 4
  %197 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %198 = call i32 @pcm_addchan(i32 %195, i32 %196, i32* @fm801ch_class, %struct.fm801_info* %197)
  %199 = load i32, i32* %3, align 4
  %200 = load i32, i32* @PCMDIR_REC, align 4
  %201 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %202 = call i32 @pcm_addchan(i32 %199, i32 %200, i32* @fm801ch_class, %struct.fm801_info* %201)
  %203 = load i32, i32* %3, align 4
  %204 = call i32 @pcm_setstatus(i32 %203, i8* %14)
  %205 = load i32, i32* %3, align 4
  %206 = call i32 @device_add_child(i32 %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  %207 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %208 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %207, i32 0, i32 7
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* %3, align 4
  %210 = call i32 @bus_generic_attach(i32 %209)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %278

211:                                              ; preds = %193, %167, %151, %122, %115, %98
  %212 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %213 = icmp ne %struct.ac97_info* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %216 = call i32 @ac97_destroy(%struct.ac97_info* %215)
  br label %217

217:                                              ; preds = %214, %211
  %218 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %219 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %218, i32 0, i32 5
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %234

222:                                              ; preds = %217
  %223 = load i32, i32* %3, align 4
  %224 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %225 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %228 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %227, i32 0, i32 6
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %231 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %230, i32 0, i32 5
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @bus_release_resource(i32 %223, i64 %226, i64 %229, i8* %232)
  br label %234

234:                                              ; preds = %222, %217
  %235 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %236 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %234
  %240 = load i32, i32* %3, align 4
  %241 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %242 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %241, i32 0, i32 2
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %245 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @bus_teardown_intr(i32 %240, i8* %243, i64 %246)
  br label %248

248:                                              ; preds = %239, %234
  %249 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %250 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %249, i32 0, i32 2
  %251 = load i8*, i8** %250, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %263

253:                                              ; preds = %248
  %254 = load i32, i32* %3, align 4
  %255 = load i64, i64* @SYS_RES_IRQ, align 8
  %256 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %257 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %260 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %259, i32 0, i32 2
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @bus_release_resource(i32 %254, i64 %255, i64 %258, i8* %261)
  br label %263

263:                                              ; preds = %253, %248
  %264 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %265 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %263
  %269 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %270 = getelementptr inbounds %struct.fm801_info, %struct.fm801_info* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @bus_dma_tag_destroy(i64 %271)
  br label %273

273:                                              ; preds = %268, %263
  %274 = load %struct.fm801_info*, %struct.fm801_info** %5, align 8
  %275 = load i32, i32* @M_DEVBUF, align 4
  %276 = call i32 @free(%struct.fm801_info* %274, i32 %275)
  %277 = load i32, i32* @ENXIO, align 4
  store i32 %277, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %278

278:                                              ; preds = %273, %194
  %279 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %279)
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.fm801_info* @malloc(i32, i32, i32) #2

declare dso_local i32 @pci_get_devid(i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i64 @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i64, i64*, i32) #2

declare dso_local i32 @rman_get_bustag(i8*) #2

declare dso_local i32 @rman_get_bushandle(i8*) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #2

declare dso_local i32 @fm801_init(%struct.fm801_info*) #2

declare dso_local %struct.ac97_info* @AC97_CREATE(i32, %struct.fm801_info*, i32) #2

declare dso_local i32 @mixer_init(i32, i32, %struct.ac97_info*) #2

declare dso_local i32 @ac97_getmixerclass(...) #2

declare dso_local i64 @snd_setup_intr(i32, i8*, i32, i32, %struct.fm801_info*, i64*) #2

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i64*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i8*) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i64 @pcm_register(i32, %struct.fm801_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.fm801_info*) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @device_add_child(i32, i8*, i32) #2

declare dso_local i32 @bus_generic_attach(i32) #2

declare dso_local i32 @ac97_destroy(%struct.ac97_info*) #2

declare dso_local i32 @bus_release_resource(i32, i64, i64, i8*) #2

declare dso_local i32 @bus_teardown_intr(i32, i8*, i64) #2

declare dso_local i32 @bus_dma_tag_destroy(i64) #2

declare dso_local i32 @free(%struct.fm801_info*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
