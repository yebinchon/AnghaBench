; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_t4dwave.c_tr_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_info = type { i32, i64, i64, i8*, i64, i64, i8*, i64, i32, i32, i32, i64, i32, i32, i32 }
%struct.ac97_info = type { i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"snd_t4dwave softc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dac\00", align 1
@TR_MAXPLAYCH = common dso_local global i32 0, align 4
@ALI_MAXPLAYCH = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to map register space\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unable to initialize the card\0A\00", align 1
@tr_ac97 = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@tr_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@ALI_MAXADDR = common dso_local global i32 0, align 4
@ALI_MAXHWCH = common dso_local global i32 0, align 4
@ALI_BUFSZ = common dso_local global i32 0, align 4
@TR_MAXADDR = common dso_local global i32 0, align 4
@TR_MAXHWCH = common dso_local global i32 0, align 4
@TR_DEFAULT_BUFSZ = common dso_local global i32 0, align 4
@TR_BUFALGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"at io 0x%jx irq %jd %s\00", align 1
@snd_t4dwave = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@trrchan_class = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@trpchan_class = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tr_info*)* @tr_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr_pci_attach(%struct.tr_info* byval(%struct.tr_info) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tr_info*, align 8
  %4 = alloca %struct.ac97_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
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
  %19 = call %struct.tr_info* @malloc(i32 104, i32 %15, i32 %18)
  store %struct.tr_info* %19, %struct.tr_info** %3, align 8
  %20 = call i32 @pci_get_devid(%struct.tr_info* byval(%struct.tr_info) align 8 %0)
  %21 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %22 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = call i32 @pci_get_revid(%struct.tr_info* byval(%struct.tr_info) align 8 %0)
  %24 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %25 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %24, i32 0, i32 14
  store i32 %23, i32* %25, align 8
  %26 = call i32 @device_get_nameunit(%struct.tr_info* byval(%struct.tr_info) align 8 %0)
  %27 = call i64 @snd_mtxcreate(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %29 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = call i32 @device_get_name(%struct.tr_info* byval(%struct.tr_info) align 8 %0)
  %31 = call i32 @device_get_unit(%struct.tr_info* byval(%struct.tr_info) align 8 %0)
  %32 = call i64 @resource_int_value(i32 %30, i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %1
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  br label %47

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @TR_MAXPLAYCH, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @TR_MAXPLAYCH, align 4
  store i32 %43, i32* %7, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %44, %42
  br label %47

47:                                               ; preds = %46, %37
  br label %57

48:                                               ; preds = %1
  %49 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %50 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %54 [
    i32 128, label %52
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* @ALI_MAXPLAYCH, align 4
  store i32 %53, i32* %7, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @TR_MAXPLAYCH, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %54, %52
  br label %57

57:                                               ; preds = %56, %47
  %58 = call i32 @pci_enable_busmaster(%struct.tr_info* byval(%struct.tr_info) align 8 %0)
  %59 = call i64 @PCIR_BAR(i32 0)
  %60 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %61 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %60, i32 0, i32 7
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @SYS_RES_IOPORT, align 4
  %63 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %64 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %66 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %69 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %68, i32 0, i32 7
  %70 = load i32, i32* @RF_ACTIVE, align 4
  %71 = call i8* @bus_alloc_resource_any(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i32 %67, i64* %69, i32 %70)
  %72 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %73 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %72, i32 0, i32 6
  store i8* %71, i8** %73, align 8
  %74 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %75 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %74, i32 0, i32 6
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %57
  %79 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %80 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %79, i32 0, i32 6
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @rman_get_bustag(i8* %81)
  %83 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %84 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %83, i32 0, i32 13
  store i32 %82, i32* %84, align 4
  %85 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %86 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %85, i32 0, i32 6
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @rman_get_bushandle(i8* %87)
  %89 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %90 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %89, i32 0, i32 12
  store i32 %88, i32* %90, align 8
  br label %93

91:                                               ; preds = %57
  %92 = call i32 (%struct.tr_info*, i8*, ...) @device_printf(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %216

93:                                               ; preds = %78
  %94 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %95 = call i32 @tr_init(%struct.tr_info* %94)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = call i32 (%struct.tr_info*, i8*, ...) @device_printf(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %216

99:                                               ; preds = %93
  %100 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %101 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %100, i32 0, i32 11
  store i64 0, i64* %101, align 8
  %102 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %103 = load i32, i32* @tr_ac97, align 4
  %104 = call %struct.ac97_info* @AC97_CREATE(%struct.tr_info* byval(%struct.tr_info) align 8 %0, %struct.tr_info* %102, i32 %103)
  store %struct.ac97_info* %104, %struct.ac97_info** %4, align 8
  %105 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %106 = icmp eq %struct.ac97_info* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %216

108:                                              ; preds = %99
  %109 = call i32 (...) @ac97_getmixerclass()
  %110 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %111 = call i32 @mixer_init(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i32 %109, %struct.ac97_info* %110)
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %216

114:                                              ; preds = %108
  %115 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %116 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %115, i32 0, i32 4
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* @SYS_RES_IRQ, align 4
  %118 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %119 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %118, i32 0, i32 4
  %120 = load i32, i32* @RF_ACTIVE, align 4
  %121 = load i32, i32* @RF_SHAREABLE, align 4
  %122 = or i32 %120, %121
  %123 = call i8* @bus_alloc_resource_any(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i32 %117, i64* %119, i32 %122)
  %124 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %125 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %127 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %140

130:                                              ; preds = %114
  %131 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %132 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = load i32, i32* @tr_intr, align 4
  %135 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %136 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %137 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %136, i32 0, i32 5
  %138 = call i64 @snd_setup_intr(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i8* %133, i32 0, i32 %134, %struct.tr_info* %135, i64* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %130, %114
  %141 = call i32 (%struct.tr_info*, i8*, ...) @device_printf(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %216

142:                                              ; preds = %130
  %143 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %144 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 128
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load i32, i32* @ALI_MAXADDR, align 4
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* @ALI_MAXHWCH, align 4
  %150 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %151 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %150, i32 0, i32 10
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* @ALI_BUFSZ, align 4
  %153 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %154 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %153, i32 0, i32 9
  store i32 %152, i32* %154, align 4
  br label %164

155:                                              ; preds = %142
  %156 = load i32, i32* @TR_MAXADDR, align 4
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* @TR_MAXHWCH, align 4
  %158 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %159 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %158, i32 0, i32 10
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* @TR_DEFAULT_BUFSZ, align 4
  %161 = call i32 @pcm_getbuffersize(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i32 4096, i32 %160, i32 65536)
  %162 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %163 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %162, i32 0, i32 9
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %155, %147
  %165 = call i32 @bus_get_dma_tag(%struct.tr_info* byval(%struct.tr_info) align 8 %0)
  %166 = load i32, i32* @TR_BUFALGN, align 4
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %169 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %170 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %173 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @busdma_lock_mutex, align 4
  %176 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %177 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %176, i32 0, i32 2
  %178 = call i64 @bus_dma_tag_create(i32 %165, i32 %166, i32 0, i32 %167, i32 %168, i32* null, i32* null, i32 %171, i32 1, i32 %174, i32 0, i32 %175, i32* @Giant, i64* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %164
  %181 = call i32 (%struct.tr_info*, i8*, ...) @device_printf(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %216

182:                                              ; preds = %164
  %183 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %184 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %183, i32 0, i32 6
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @rman_get_start(i8* %185)
  %187 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %188 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %187, i32 0, i32 3
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @rman_get_start(i8* %189)
  %191 = load i32, i32* @snd_t4dwave, align 4
  %192 = call i32 @PCM_KLDSTRING(i32 %191)
  %193 = call i32 @snprintf(i8* %14, i32 64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %186, i32 %190, i32 %192)
  %194 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i64 @pcm_register(%struct.tr_info* byval(%struct.tr_info) align 8 %0, %struct.tr_info* %194, i32 %195, i32 1)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %182
  br label %216

199:                                              ; preds = %182
  %200 = load i32, i32* @PCMDIR_REC, align 4
  %201 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %202 = call i32 @pcm_addchan(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i32 %200, i32* @trrchan_class, %struct.tr_info* %201)
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %211, %199
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %203
  %208 = load i32, i32* @PCMDIR_PLAY, align 4
  %209 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %210 = call i32 @pcm_addchan(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i32 %208, i32* @trpchan_class, %struct.tr_info* %209)
  br label %211

211:                                              ; preds = %207
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %6, align 4
  br label %203

214:                                              ; preds = %203
  %215 = call i32 @pcm_setstatus(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i8* %14)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %290

216:                                              ; preds = %198, %180, %140, %113, %107, %97, %91
  %217 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %218 = icmp ne %struct.ac97_info* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load %struct.ac97_info*, %struct.ac97_info** %4, align 8
  %221 = call i32 @ac97_destroy(%struct.ac97_info* %220)
  br label %222

222:                                              ; preds = %219, %216
  %223 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %224 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %223, i32 0, i32 6
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %238

227:                                              ; preds = %222
  %228 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %229 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %232 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %231, i32 0, i32 7
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %235 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %234, i32 0, i32 6
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @bus_release_resource(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i32 %230, i64 %233, i8* %236)
  br label %238

238:                                              ; preds = %227, %222
  %239 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %240 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %251

243:                                              ; preds = %238
  %244 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %245 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %244, i32 0, i32 3
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %248 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %247, i32 0, i32 5
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @bus_teardown_intr(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i8* %246, i64 %249)
  br label %251

251:                                              ; preds = %243, %238
  %252 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %253 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %252, i32 0, i32 3
  %254 = load i8*, i8** %253, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %265

256:                                              ; preds = %251
  %257 = load i32, i32* @SYS_RES_IRQ, align 4
  %258 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %259 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %258, i32 0, i32 4
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %262 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %261, i32 0, i32 3
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @bus_release_resource(%struct.tr_info* byval(%struct.tr_info) align 8 %0, i32 %257, i64 %260, i8* %263)
  br label %265

265:                                              ; preds = %256, %251
  %266 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %267 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %272 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @bus_dma_tag_destroy(i64 %273)
  br label %275

275:                                              ; preds = %270, %265
  %276 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %277 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %282 = getelementptr inbounds %struct.tr_info, %struct.tr_info* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @snd_mtxfree(i64 %283)
  br label %285

285:                                              ; preds = %280, %275
  %286 = load %struct.tr_info*, %struct.tr_info** %3, align 8
  %287 = load i32, i32* @M_DEVBUF, align 4
  %288 = call i32 @free(%struct.tr_info* %286, i32 %287)
  %289 = load i32, i32* @ENXIO, align 4
  store i32 %289, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %290

290:                                              ; preds = %285, %214
  %291 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %291)
  %292 = load i32, i32* %2, align 4
  ret i32 %292
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tr_info* @malloc(i32, i32, i32) #2

declare dso_local i32 @pci_get_devid(%struct.tr_info* byval(%struct.tr_info) align 8) #2

declare dso_local i32 @pci_get_revid(%struct.tr_info* byval(%struct.tr_info) align 8) #2

declare dso_local i64 @snd_mtxcreate(i32, i8*) #2

declare dso_local i32 @device_get_nameunit(%struct.tr_info* byval(%struct.tr_info) align 8) #2

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #2

declare dso_local i32 @device_get_name(%struct.tr_info* byval(%struct.tr_info) align 8) #2

declare dso_local i32 @device_get_unit(%struct.tr_info* byval(%struct.tr_info) align 8) #2

declare dso_local i32 @pci_enable_busmaster(%struct.tr_info* byval(%struct.tr_info) align 8) #2

declare dso_local i64 @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(%struct.tr_info* byval(%struct.tr_info) align 8, i32, i64*, i32) #2

declare dso_local i32 @rman_get_bustag(i8*) #2

declare dso_local i32 @rman_get_bushandle(i8*) #2

declare dso_local i32 @device_printf(%struct.tr_info* byval(%struct.tr_info) align 8, i8*, ...) #2

declare dso_local i32 @tr_init(%struct.tr_info*) #2

declare dso_local %struct.ac97_info* @AC97_CREATE(%struct.tr_info* byval(%struct.tr_info) align 8, %struct.tr_info*, i32) #2

declare dso_local i32 @mixer_init(%struct.tr_info* byval(%struct.tr_info) align 8, i32, %struct.ac97_info*) #2

declare dso_local i32 @ac97_getmixerclass(...) #2

declare dso_local i64 @snd_setup_intr(%struct.tr_info* byval(%struct.tr_info) align 8, i8*, i32, i32, %struct.tr_info*, i64*) #2

declare dso_local i32 @pcm_getbuffersize(%struct.tr_info* byval(%struct.tr_info) align 8, i32, i32, i32) #2

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i64*) #2

declare dso_local i32 @bus_get_dma_tag(%struct.tr_info* byval(%struct.tr_info) align 8) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i8*) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i64 @pcm_register(%struct.tr_info* byval(%struct.tr_info) align 8, %struct.tr_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(%struct.tr_info* byval(%struct.tr_info) align 8, i32, i32*, %struct.tr_info*) #2

declare dso_local i32 @pcm_setstatus(%struct.tr_info* byval(%struct.tr_info) align 8, i8*) #2

declare dso_local i32 @ac97_destroy(%struct.ac97_info*) #2

declare dso_local i32 @bus_release_resource(%struct.tr_info* byval(%struct.tr_info) align 8, i32, i64, i8*) #2

declare dso_local i32 @bus_teardown_intr(%struct.tr_info* byval(%struct.tr_info) align 8, i8*, i64) #2

declare dso_local i32 @bus_dma_tag_destroy(i64) #2

declare dso_local i32 @snd_mtxfree(i64) #2

declare dso_local i32 @free(%struct.tr_info*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
