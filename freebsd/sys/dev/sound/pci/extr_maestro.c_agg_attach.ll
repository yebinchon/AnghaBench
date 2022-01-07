; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i32, i32, i32, i32, i32*, i32*, i32, i32*, i32, i32, %struct.ac97_info*, i8*, %struct.resource*, i32, i32, %struct.resource*, i32, i64, i32 }
%struct.ac97_info = type { i32 }
%struct.resource = type { i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"snd_maestro softc\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to create a mutex.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"dac\00", align 1
@AGG_MAXPLAYCH = common dso_local global i32 0, align 4
@AGG_DEFAULT_BUFSZ = common dso_local global i32 0, align 4
@MAESTRO_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@WAVCACHE_BASEADDR_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"cannot allocate status buffer\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"Maestro status/record buffer: %#llx\0A\00", align 1
@PCI_POWERSTATE_D3 = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D0 = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"unable to map register space\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@INTR_MPSAFE = common dso_local global i32 0, align 4
@agg_intr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"unable to setup interrupt\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"PT101 codec detected!\0A\00", align 1
@agg_ac97 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"failed to create AC97 codec softc!\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"mixer initialization failed!\0A\00", align 1
@powerstate_init = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@aggpch_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@aggrch_class = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [50 x i8] c"port 0x%jx-0x%jx irq %jd at device %d.%d on pci%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agg_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agg_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agg_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.ac97_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.agg_info* null, %struct.agg_info** %4, align 8
  %17 = call i32 @PCIR_BAR(i32 0)
  store i32 %17, i32* %6, align 4
  store %struct.resource* null, %struct.resource** %7, align 8
  store %struct.ac97_info* null, %struct.ac97_info** %8, align 8
  store i32 0, i32* %9, align 4
  store %struct.resource* null, %struct.resource** %10, align 8
  store i8* null, i8** %11, align 8
  %18 = load i32, i32* @SND_STATUSLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.agg_info* @malloc(i32 120, i32 %22, i32 %25)
  store %struct.agg_info* %26, %struct.agg_info** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %29 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %28, i32 0, i32 18
  store i32 %27, i32* %29, align 8
  %30 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %31 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %30, i32 0, i32 3
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_get_desc(i32 %32)
  %34 = load i32, i32* @MTX_DEF, align 4
  %35 = load i32, i32* @MTX_RECURSE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @mtx_init(i32* %31, i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %39 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %38, i32 0, i32 3
  %40 = call i64 @mtx_initialized(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %1
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %15, align 4
  br label %313

46:                                               ; preds = %1
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_get_name(i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_get_unit(i32 %49)
  %51 = call i64 @resource_int_value(i32 %48, i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %14)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %14, align 4
  br label %64

57:                                               ; preds = %53
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @AGG_MAXPLAYCH, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @AGG_MAXPLAYCH, align 4
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %61, %57
  br label %64

64:                                               ; preds = %63, %56
  br label %67

65:                                               ; preds = %46
  %66 = load i32, i32* @AGG_MAXPLAYCH, align 4
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @AGG_DEFAULT_BUFSZ, align 4
  %70 = call i32 @pcm_getbuffersize(i32 %68, i32 4096, i32 %69, i32 65536)
  %71 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %72 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @bus_get_dma_tag(i32 %73)
  %75 = load i32, i32* @MAESTRO_MAXADDR, align 4
  %76 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %77 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %78 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @busdma_lock_mutex, align 4
  %81 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %82 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %81, i32 0, i32 4
  %83 = call i64 @bus_dma_tag_create(i32 %74, i32 4, i32 131072, i32 %75, i32 %76, i32* null, i32* null, i32 %79, i32 1, i32 262143, i32 0, i32 %80, i32* @Giant, i32** %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %67
  %86 = load i32, i32* %3, align 4
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* %15, align 4
  br label %313

89:                                               ; preds = %67
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @bus_get_dma_tag(i32 %90)
  %92 = load i32, i32* @WAVCACHE_BASEADDR_SHIFT, align 4
  %93 = shl i32 1, %92
  %94 = load i32, i32* @MAESTRO_MAXADDR, align 4
  %95 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %96 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %97 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 3, %98
  %100 = load i32, i32* @busdma_lock_mutex, align 4
  %101 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %102 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %101, i32 0, i32 5
  %103 = call i64 @bus_dma_tag_create(i32 %91, i32 %93, i32 131072, i32 %94, i32 %95, i32* null, i32* null, i32 %99, i32 1, i32 262143, i32 0, i32 %100, i32* @Giant, i32** %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %89
  %106 = load i32, i32* %3, align 4
  %107 = call i32 (i32, i8*, ...) @device_printf(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @ENOMEM, align 4
  store i32 %108, i32* %15, align 4
  br label %313

109:                                              ; preds = %89
  %110 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %111 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %110, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %114 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = mul nsw i32 3, %115
  %117 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %118 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %117, i32 0, i32 17
  %119 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %120 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %119, i32 0, i32 6
  %121 = call i32* @dma_malloc(i32* %112, i32 %116, i64* %118, i32* %120)
  %122 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %123 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %122, i32 0, i32 7
  store i32* %121, i32** %123, align 8
  %124 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %125 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %124, i32 0, i32 7
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %109
  %129 = load i32, i32* %3, align 4
  %130 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* @ENOMEM, align 4
  store i32 %131, i32* %15, align 4
  br label %313

132:                                              ; preds = %109
  %133 = load i64, i64* @bootverbose, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32, i32* %3, align 4
  %137 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %138 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %137, i32 0, i32 17
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i32, i8*, ...) @device_printf(i32 %136, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %139)
  br label %141

141:                                              ; preds = %135, %132
  %142 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  %143 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %144 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %143, i32 0, i32 16
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @PCI_POWERSTATE_D0, align 4
  %147 = call i32 @pci_set_powerstate(i32 %145, i32 %146)
  %148 = load i32, i32* %3, align 4
  %149 = call i32 @pci_enable_busmaster(i32 %148)
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @SYS_RES_IOPORT, align 4
  %152 = load i32, i32* @RF_ACTIVE, align 4
  %153 = call %struct.resource* @bus_alloc_resource_any(i32 %150, i32 %151, i32* %6, i32 %152)
  store %struct.resource* %153, %struct.resource** %7, align 8
  %154 = load %struct.resource*, %struct.resource** %7, align 8
  %155 = icmp ne %struct.resource* %154, null
  br i1 %155, label %156, label %171

156:                                              ; preds = %141
  %157 = load %struct.resource*, %struct.resource** %7, align 8
  %158 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %159 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %158, i32 0, i32 15
  store %struct.resource* %157, %struct.resource** %159, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %162 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load %struct.resource*, %struct.resource** %7, align 8
  %164 = call i32 @rman_get_bustag(%struct.resource* %163)
  %165 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %166 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %165, i32 0, i32 14
  store i32 %164, i32* %166, align 4
  %167 = load %struct.resource*, %struct.resource** %7, align 8
  %168 = call i32 @rman_get_bushandle(%struct.resource* %167)
  %169 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %170 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %169, i32 0, i32 13
  store i32 %168, i32* %170, align 8
  br label %175

171:                                              ; preds = %141
  %172 = load i32, i32* %3, align 4
  %173 = call i32 (i32, i8*, ...) @device_printf(i32 %172, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %174 = load i32, i32* @ENXIO, align 4
  store i32 %174, i32* %15, align 4
  br label %313

175:                                              ; preds = %156
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @SYS_RES_IRQ, align 4
  %178 = load i32, i32* @RF_ACTIVE, align 4
  %179 = load i32, i32* @RF_SHAREABLE, align 4
  %180 = or i32 %178, %179
  %181 = call %struct.resource* @bus_alloc_resource_any(i32 %176, i32 %177, i32* %9, i32 %180)
  store %struct.resource* %181, %struct.resource** %10, align 8
  %182 = load %struct.resource*, %struct.resource** %10, align 8
  %183 = icmp ne %struct.resource* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %175
  %185 = load %struct.resource*, %struct.resource** %10, align 8
  %186 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %187 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %186, i32 0, i32 12
  store %struct.resource* %185, %struct.resource** %187, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %190 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %189, i32 0, i32 2
  store i32 %188, i32* %190, align 8
  br label %195

191:                                              ; preds = %175
  %192 = load i32, i32* %3, align 4
  %193 = call i32 (i32, i8*, ...) @device_printf(i32 %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %194 = load i32, i32* @ENXIO, align 4
  store i32 %194, i32* %15, align 4
  br label %313

195:                                              ; preds = %184
  %196 = load i32, i32* %3, align 4
  %197 = load %struct.resource*, %struct.resource** %10, align 8
  %198 = load i32, i32* @INTR_MPSAFE, align 4
  %199 = load i32, i32* @agg_intr, align 4
  %200 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %201 = call i64 @snd_setup_intr(i32 %196, %struct.resource* %197, i32 %198, i32 %199, %struct.agg_info* %200, i8** %11)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %195
  %204 = load i32, i32* %3, align 4
  %205 = call i32 (i32, i8*, ...) @device_printf(i32 %204, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %206 = load i32, i32* @ENXIO, align 4
  store i32 %206, i32* %15, align 4
  br label %313

207:                                              ; preds = %195
  %208 = load i8*, i8** %11, align 8
  %209 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %210 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %209, i32 0, i32 11
  store i8* %208, i8** %210, align 8
  br label %211

211:                                              ; preds = %207
  %212 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %213 = call i32 @agg_lock(%struct.agg_info* %212)
  %214 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %215 = load i32, i32* @PCI_POWERSTATE_D0, align 4
  %216 = call i32 @agg_power(%struct.agg_info* %214, i32 %215)
  %217 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %218 = call i32 @agg_rdcodec(%struct.agg_info* %217, i32 0)
  %219 = icmp eq i32 %218, 128
  br i1 %219, label %220, label %226

220:                                              ; preds = %211
  %221 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %222 = call i32 @agg_unlock(%struct.agg_info* %221)
  %223 = load i32, i32* %3, align 4
  %224 = call i32 (i32, i8*, ...) @device_printf(i32 %223, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %225 = load i32, i32* @ENXIO, align 4
  store i32 %225, i32* %15, align 4
  br label %313

226:                                              ; preds = %211
  %227 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %228 = call i32 @agg_unlock(%struct.agg_info* %227)
  %229 = load i32, i32* %3, align 4
  %230 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %231 = load i32, i32* @agg_ac97, align 4
  %232 = call %struct.ac97_info* @AC97_CREATE(i32 %229, %struct.agg_info* %230, i32 %231)
  store %struct.ac97_info* %232, %struct.ac97_info** %8, align 8
  %233 = load %struct.ac97_info*, %struct.ac97_info** %8, align 8
  %234 = icmp eq %struct.ac97_info* %233, null
  br i1 %234, label %235, label %239

235:                                              ; preds = %226
  %236 = load i32, i32* %3, align 4
  %237 = call i32 (i32, i8*, ...) @device_printf(i32 %236, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %238 = load i32, i32* @ENOMEM, align 4
  store i32 %238, i32* %15, align 4
  br label %313

239:                                              ; preds = %226
  %240 = load i32, i32* %3, align 4
  %241 = call i32 (...) @ac97_getmixerclass()
  %242 = load %struct.ac97_info*, %struct.ac97_info** %8, align 8
  %243 = call i32 @mixer_init(i32 %240, i32 %241, %struct.ac97_info* %242)
  %244 = icmp eq i32 %243, -1
  br i1 %244, label %245, label %249

245:                                              ; preds = %239
  %246 = load i32, i32* %3, align 4
  %247 = call i32 (i32, i8*, ...) @device_printf(i32 %246, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %248 = load i32, i32* @ENXIO, align 4
  store i32 %248, i32* %15, align 4
  br label %313

249:                                              ; preds = %239
  %250 = load %struct.ac97_info*, %struct.ac97_info** %8, align 8
  %251 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %252 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %251, i32 0, i32 10
  store %struct.ac97_info* %250, %struct.ac97_info** %252, align 8
  %253 = load i32, i32* %3, align 4
  %254 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %255 = load i32, i32* %14, align 4
  %256 = call i32 @pcm_register(i32 %253, %struct.agg_info* %254, i32 %255, i32 1)
  store i32 %256, i32* %15, align 4
  %257 = load i32, i32* %15, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %249
  br label %313

260:                                              ; preds = %249
  %261 = load i32, i32* %3, align 4
  %262 = call i32 @mixer_hwvol_init(i32 %261)
  %263 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %264 = call i32 @agg_lock(%struct.agg_info* %263)
  %265 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %266 = load i32, i32* @powerstate_init, align 4
  %267 = call i32 @agg_power(%struct.agg_info* %265, i32 %266)
  %268 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %269 = call i32 @agg_unlock(%struct.agg_info* %268)
  store i32 0, i32* %5, align 4
  br label %270

270:                                              ; preds = %279, %260
  %271 = load i32, i32* %5, align 4
  %272 = load i32, i32* %14, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %282

274:                                              ; preds = %270
  %275 = load i32, i32* %3, align 4
  %276 = load i32, i32* @PCMDIR_PLAY, align 4
  %277 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %278 = call i32 @pcm_addchan(i32 %275, i32 %276, i32* @aggpch_class, %struct.agg_info* %277)
  br label %279

279:                                              ; preds = %274
  %280 = load i32, i32* %5, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %5, align 4
  br label %270

282:                                              ; preds = %270
  %283 = load i32, i32* %3, align 4
  %284 = load i32, i32* @PCMDIR_REC, align 4
  %285 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %286 = call i32 @pcm_addchan(i32 %283, i32 %284, i32* @aggrch_class, %struct.agg_info* %285)
  %287 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %288 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %287, i32 0, i32 9
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %291 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %290, i32 0, i32 8
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %294 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @adjust_pchbase(i32 %289, i32 %292, i32 %295)
  %297 = load i32, i32* @SND_STATUSLEN, align 4
  %298 = load %struct.resource*, %struct.resource** %7, align 8
  %299 = call i32 @rman_get_start(%struct.resource* %298)
  %300 = load %struct.resource*, %struct.resource** %7, align 8
  %301 = call i32 @rman_get_end(%struct.resource* %300)
  %302 = load %struct.resource*, %struct.resource** %10, align 8
  %303 = call i32 @rman_get_start(%struct.resource* %302)
  %304 = load i32, i32* %3, align 4
  %305 = call i32 @pci_get_slot(i32 %304)
  %306 = load i32, i32* %3, align 4
  %307 = call i32 @pci_get_function(i32 %306)
  %308 = load i32, i32* %3, align 4
  %309 = call i32 @pci_get_bus(i32 %308)
  %310 = call i32 @snprintf(i8* %21, i32 %297, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i32 %299, i32 %301, i32 %303, i32 %305, i32 %307, i32 %309)
  %311 = load i32, i32* %3, align 4
  %312 = call i32 @pcm_setstatus(i32 %311, i8* %21)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %399

313:                                              ; preds = %259, %245, %235, %220, %203, %191, %171, %128, %105, %85, %42
  %314 = load %struct.ac97_info*, %struct.ac97_info** %8, align 8
  %315 = icmp ne %struct.ac97_info* %314, null
  br i1 %315, label %316, label %319

316:                                              ; preds = %313
  %317 = load %struct.ac97_info*, %struct.ac97_info** %8, align 8
  %318 = call i32 @ac97_destroy(%struct.ac97_info* %317)
  br label %319

319:                                              ; preds = %316, %313
  %320 = load i8*, i8** %11, align 8
  %321 = icmp ne i8* %320, null
  br i1 %321, label %322, label %327

322:                                              ; preds = %319
  %323 = load i32, i32* %3, align 4
  %324 = load %struct.resource*, %struct.resource** %10, align 8
  %325 = load i8*, i8** %11, align 8
  %326 = call i32 @bus_teardown_intr(i32 %323, %struct.resource* %324, i8* %325)
  br label %327

327:                                              ; preds = %322, %319
  %328 = load %struct.resource*, %struct.resource** %10, align 8
  %329 = icmp ne %struct.resource* %328, null
  br i1 %329, label %330, label %336

330:                                              ; preds = %327
  %331 = load i32, i32* %3, align 4
  %332 = load i32, i32* @SYS_RES_IRQ, align 4
  %333 = load i32, i32* %9, align 4
  %334 = load %struct.resource*, %struct.resource** %10, align 8
  %335 = call i32 @bus_release_resource(i32 %331, i32 %332, i32 %333, %struct.resource* %334)
  br label %336

336:                                              ; preds = %330, %327
  %337 = load %struct.resource*, %struct.resource** %7, align 8
  %338 = icmp ne %struct.resource* %337, null
  br i1 %338, label %339, label %345

339:                                              ; preds = %336
  %340 = load i32, i32* %3, align 4
  %341 = load i32, i32* @SYS_RES_IOPORT, align 4
  %342 = load i32, i32* %6, align 4
  %343 = load %struct.resource*, %struct.resource** %7, align 8
  %344 = call i32 @bus_release_resource(i32 %340, i32 %341, i32 %342, %struct.resource* %343)
  br label %345

345:                                              ; preds = %339, %336
  %346 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %347 = icmp ne %struct.agg_info* %346, null
  br i1 %347, label %348, label %397

348:                                              ; preds = %345
  %349 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %350 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %349, i32 0, i32 7
  %351 = load i32*, i32** %350, align 8
  %352 = icmp ne i32* %351, null
  br i1 %352, label %353, label %364

353:                                              ; preds = %348
  %354 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %355 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %354, i32 0, i32 5
  %356 = load i32*, i32** %355, align 8
  %357 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %358 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %357, i32 0, i32 7
  %359 = load i32*, i32** %358, align 8
  %360 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %361 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %360, i32 0, i32 6
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @dma_free(i32* %356, i32* %359, i32 %362)
  br label %364

364:                                              ; preds = %353, %348
  %365 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %366 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %365, i32 0, i32 5
  %367 = load i32*, i32** %366, align 8
  %368 = icmp ne i32* %367, null
  br i1 %368, label %369, label %374

369:                                              ; preds = %364
  %370 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %371 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %370, i32 0, i32 5
  %372 = load i32*, i32** %371, align 8
  %373 = call i32 @bus_dma_tag_destroy(i32* %372)
  br label %374

374:                                              ; preds = %369, %364
  %375 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %376 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %375, i32 0, i32 4
  %377 = load i32*, i32** %376, align 8
  %378 = icmp ne i32* %377, null
  br i1 %378, label %379, label %384

379:                                              ; preds = %374
  %380 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %381 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %380, i32 0, i32 4
  %382 = load i32*, i32** %381, align 8
  %383 = call i32 @bus_dma_tag_destroy(i32* %382)
  br label %384

384:                                              ; preds = %379, %374
  %385 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %386 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %385, i32 0, i32 3
  %387 = call i64 @mtx_initialized(i32* %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %384
  %390 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %391 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %390, i32 0, i32 3
  %392 = call i32 @mtx_destroy(i32* %391)
  br label %393

393:                                              ; preds = %389, %384
  %394 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %395 = load i32, i32* @M_DEVBUF, align 4
  %396 = call i32 @free(%struct.agg_info* %394, i32 %395)
  br label %397

397:                                              ; preds = %393, %345
  %398 = load i32, i32* %15, align 4
  store i32 %398, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %399

399:                                              ; preds = %397, %282
  %400 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %400)
  %401 = load i32, i32* %2, align 4
  ret i32 %401
}

declare dso_local i32 @PCIR_BAR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.agg_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_desc(i32) #1

declare dso_local i64 @mtx_initialized(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32* @dma_malloc(i32*, i32, i64*, i32*) #1

declare dso_local i32 @pci_set_powerstate(i32, i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i64 @snd_setup_intr(i32, %struct.resource*, i32, i32, %struct.agg_info*, i8**) #1

declare dso_local i32 @agg_lock(%struct.agg_info*) #1

declare dso_local i32 @agg_power(%struct.agg_info*, i32) #1

declare dso_local i32 @agg_rdcodec(%struct.agg_info*, i32) #1

declare dso_local i32 @agg_unlock(%struct.agg_info*) #1

declare dso_local %struct.ac97_info* @AC97_CREATE(i32, %struct.agg_info*, i32) #1

declare dso_local i32 @mixer_init(i32, i32, %struct.ac97_info*) #1

declare dso_local i32 @ac97_getmixerclass(...) #1

declare dso_local i32 @pcm_register(i32, %struct.agg_info*, i32, i32) #1

declare dso_local i32 @mixer_hwvol_init(i32) #1

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.agg_info*) #1

declare dso_local i32 @adjust_pchbase(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_end(%struct.resource*) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @pci_get_function(i32) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pcm_setstatus(i32, i8*) #1

declare dso_local i32 @ac97_destroy(%struct.ac97_info*) #1

declare dso_local i32 @bus_teardown_intr(i32, %struct.resource*, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @dma_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.agg_info*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
