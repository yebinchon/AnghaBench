; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_info = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i64, i8*, i64, i64, i8*, i64, i64, i32, i32, i32, i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"snd_via8233 softc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"polling\00", align 1
@PCI_POWERSTATE_D0 = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot allocate bus resource.\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@via_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@VIA_DEFAULT_BUFSZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"blocksize\00", align 1
@VIA_BLK_ALIGN = common dso_local global i32 0, align 4
@VIA_BLK_MIN = common dso_local global i32 0, align 4
@VIA_SEGS_MIN = common dso_local global i32 0, align 4
@VIA_SEGS_MAX = common dso_local global i32 0, align 4
@VIA_SEGS_DEFAULT = common dso_local global i32 0, align 4
@VIA8233_REV_ID_8251 = common dso_local global i64 0, align 8
@VIA8233_REV_ID_8233A = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"via_dxs_disabled\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"via_dxs_channels\00", align 1
@NDXSCHANS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"via_sgd_channels\00", align 1
@NMSGDCHANS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"via_dxs_src\00", align 1
@NWRCHANS = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@dma_cb = common dso_local global i32 0, align 4
@via_ac97 = common dso_local global i32 0, align 4
@AC97_EXTCAP_VRA = common dso_local global i32 0, align 4
@AC97_EXTCAP_VRM = common dso_local global i32 0, align 4
@AC97_EXTCAP_DRA = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"at io 0x%jx irq %jd %s\00", align 1
@snd_via8233 = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@via8233dxs_class = common dso_local global i32 0, align 4
@via8233msgd_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@via8233wr_class = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [47 x i8] c"<VIA DXS %sabled: DXS%s %d / SGD %d / REC %d>\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"(SRC)\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
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
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.via_info* null, %struct.via_info** %4, align 8
  %16 = load i32, i32* @SND_STATUSLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load i32, i32* @M_DEVBUF, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.via_info* @malloc(i32 144, i32 %20, i32 %23)
  store %struct.via_info* %24, %struct.via_info** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_get_nameunit(i32 %25)
  %27 = call i64 @snd_mtxcreate(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.via_info*, %struct.via_info** %4, align 8
  %29 = getelementptr inbounds %struct.via_info, %struct.via_info* %28, i32 0, i32 7
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.via_info*, %struct.via_info** %4, align 8
  %32 = getelementptr inbounds %struct.via_info, %struct.via_info* %31, i32 0, i32 22
  store i32 %30, i32* %32, align 4
  %33 = load %struct.via_info*, %struct.via_info** %4, align 8
  %34 = getelementptr inbounds %struct.via_info, %struct.via_info* %33, i32 0, i32 21
  %35 = call i32 @callout_init(i32* %34, i32 1)
  %36 = load %struct.via_info*, %struct.via_info** %4, align 8
  %37 = getelementptr inbounds %struct.via_info, %struct.via_info* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_get_name(i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_get_unit(i32 %40)
  %42 = call i64 @resource_int_value(i32 %39, i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %1
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.via_info*, %struct.via_info** %4, align 8
  %49 = getelementptr inbounds %struct.via_info, %struct.via_info* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  br label %53

50:                                               ; preds = %44, %1
  %51 = load %struct.via_info*, %struct.via_info** %4, align 8
  %52 = getelementptr inbounds %struct.via_info, %struct.via_info* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @PCI_POWERSTATE_D0, align 4
  %56 = call i32 @pci_set_powerstate(i32 %54, i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @pci_enable_busmaster(i32 %57)
  %59 = call i64 @PCIR_BAR(i32 0)
  %60 = load %struct.via_info*, %struct.via_info** %4, align 8
  %61 = getelementptr inbounds %struct.via_info, %struct.via_info* %60, i32 0, i32 17
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @SYS_RES_IOPORT, align 4
  %64 = load %struct.via_info*, %struct.via_info** %4, align 8
  %65 = getelementptr inbounds %struct.via_info, %struct.via_info* %64, i32 0, i32 17
  %66 = load i32, i32* @RF_ACTIVE, align 4
  %67 = call i8* @bus_alloc_resource_any(i32 %62, i32 %63, i64* %65, i32 %66)
  %68 = load %struct.via_info*, %struct.via_info** %4, align 8
  %69 = getelementptr inbounds %struct.via_info, %struct.via_info* %68, i32 0, i32 16
  store i8* %67, i8** %69, align 8
  %70 = load %struct.via_info*, %struct.via_info** %4, align 8
  %71 = getelementptr inbounds %struct.via_info, %struct.via_info* %70, i32 0, i32 16
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %53
  %75 = load i32, i32* %3, align 4
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %514

77:                                               ; preds = %53
  %78 = load %struct.via_info*, %struct.via_info** %4, align 8
  %79 = getelementptr inbounds %struct.via_info, %struct.via_info* %78, i32 0, i32 16
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @rman_get_bustag(i8* %80)
  %82 = load %struct.via_info*, %struct.via_info** %4, align 8
  %83 = getelementptr inbounds %struct.via_info, %struct.via_info* %82, i32 0, i32 20
  store i32 %81, i32* %83, align 4
  %84 = load %struct.via_info*, %struct.via_info** %4, align 8
  %85 = getelementptr inbounds %struct.via_info, %struct.via_info* %84, i32 0, i32 16
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @rman_get_bushandle(i8* %86)
  %88 = load %struct.via_info*, %struct.via_info** %4, align 8
  %89 = getelementptr inbounds %struct.via_info, %struct.via_info* %88, i32 0, i32 19
  store i32 %87, i32* %89, align 8
  %90 = load %struct.via_info*, %struct.via_info** %4, align 8
  %91 = getelementptr inbounds %struct.via_info, %struct.via_info* %90, i32 0, i32 14
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @SYS_RES_IRQ, align 4
  %94 = load %struct.via_info*, %struct.via_info** %4, align 8
  %95 = getelementptr inbounds %struct.via_info, %struct.via_info* %94, i32 0, i32 14
  %96 = load i32, i32* @RF_ACTIVE, align 4
  %97 = load i32, i32* @RF_SHAREABLE, align 4
  %98 = or i32 %96, %97
  %99 = call i8* @bus_alloc_resource_any(i32 %92, i32 %93, i64* %95, i32 %98)
  %100 = load %struct.via_info*, %struct.via_info** %4, align 8
  %101 = getelementptr inbounds %struct.via_info, %struct.via_info* %100, i32 0, i32 13
  store i8* %99, i8** %101, align 8
  %102 = load %struct.via_info*, %struct.via_info** %4, align 8
  %103 = getelementptr inbounds %struct.via_info, %struct.via_info* %102, i32 0, i32 13
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %77
  %107 = load i32, i32* %3, align 4
  %108 = load %struct.via_info*, %struct.via_info** %4, align 8
  %109 = getelementptr inbounds %struct.via_info, %struct.via_info* %108, i32 0, i32 13
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* @INTR_MPSAFE, align 4
  %112 = load i32, i32* @via_intr, align 4
  %113 = load %struct.via_info*, %struct.via_info** %4, align 8
  %114 = load %struct.via_info*, %struct.via_info** %4, align 8
  %115 = getelementptr inbounds %struct.via_info, %struct.via_info* %114, i32 0, i32 15
  %116 = call i64 @snd_setup_intr(i32 %107, i8* %110, i32 %111, i32 %112, %struct.via_info* %113, i64* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %106, %77
  %119 = load i32, i32* %3, align 4
  %120 = call i32 (i32, i8*, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %514

121:                                              ; preds = %106
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @VIA_DEFAULT_BUFSZ, align 4
  %124 = call i32 @pcm_getbuffersize(i32 %122, i32 4096, i32 %123, i32 65536)
  %125 = load %struct.via_info*, %struct.via_info** %4, align 8
  %126 = getelementptr inbounds %struct.via_info, %struct.via_info* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @device_get_name(i32 %127)
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @device_get_unit(i32 %129)
  %131 = call i64 @resource_int_value(i32 %128, i32 %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %190

133:                                              ; preds = %121
  %134 = load i32, i32* %7, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %190

136:                                              ; preds = %133
  %137 = load i32, i32* @VIA_BLK_ALIGN, align 4
  %138 = load i32, i32* %7, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @VIA_BLK_MIN, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = load i32, i32* @VIA_BLK_MIN, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %143, %136
  %146 = load %struct.via_info*, %struct.via_info** %4, align 8
  %147 = getelementptr inbounds %struct.via_info, %struct.via_info* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sdiv i32 %148, %149
  %151 = load %struct.via_info*, %struct.via_info** %4, align 8
  %152 = getelementptr inbounds %struct.via_info, %struct.via_info* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %160, %145
  %154 = load %struct.via_info*, %struct.via_info** %4, align 8
  %155 = getelementptr inbounds %struct.via_info, %struct.via_info* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %7, align 4
  %158 = ashr i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %153
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %153

163:                                              ; preds = %153
  %164 = load i32, i32* %7, align 4
  %165 = sub nsw i32 %164, 1
  %166 = shl i32 1, %165
  %167 = load %struct.via_info*, %struct.via_info** %4, align 8
  %168 = getelementptr inbounds %struct.via_info, %struct.via_info* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  %169 = load %struct.via_info*, %struct.via_info** %4, align 8
  %170 = getelementptr inbounds %struct.via_info, %struct.via_info* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @VIA_SEGS_MIN, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %163
  %175 = load i32, i32* @VIA_SEGS_MIN, align 4
  %176 = load %struct.via_info*, %struct.via_info** %4, align 8
  %177 = getelementptr inbounds %struct.via_info, %struct.via_info* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  br label %189

178:                                              ; preds = %163
  %179 = load %struct.via_info*, %struct.via_info** %4, align 8
  %180 = getelementptr inbounds %struct.via_info, %struct.via_info* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @VIA_SEGS_MAX, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load i32, i32* @VIA_SEGS_MAX, align 4
  %186 = load %struct.via_info*, %struct.via_info** %4, align 8
  %187 = getelementptr inbounds %struct.via_info, %struct.via_info* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %184, %178
  br label %189

189:                                              ; preds = %188, %174
  br label %194

190:                                              ; preds = %133, %121
  %191 = load i32, i32* @VIA_SEGS_DEFAULT, align 4
  %192 = load %struct.via_info*, %struct.via_info** %4, align 8
  %193 = getelementptr inbounds %struct.via_info, %struct.via_info* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  br label %194

194:                                              ; preds = %190, %189
  %195 = load i32, i32* %3, align 4
  %196 = call i64 @pci_get_revid(i32 %195)
  store i64 %196, i64* %13, align 8
  %197 = load i64, i64* %13, align 8
  %198 = load i64, i64* @VIA8233_REV_ID_8251, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load %struct.via_info*, %struct.via_info** %4, align 8
  %202 = getelementptr inbounds %struct.via_info, %struct.via_info* %201, i32 0, i32 4
  store i32 1, i32* %202, align 8
  br label %206

203:                                              ; preds = %194
  %204 = load %struct.via_info*, %struct.via_info** %4, align 8
  %205 = getelementptr inbounds %struct.via_info, %struct.via_info* %204, i32 0, i32 4
  store i32 0, i32* %205, align 8
  br label %206

206:                                              ; preds = %203, %200
  %207 = load i64, i64* %13, align 8
  %208 = load i64, i64* @VIA8233_REV_ID_8233A, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  store i32 1, i32* %8, align 4
  br label %225

211:                                              ; preds = %206
  %212 = load i32, i32* %3, align 4
  %213 = call i32 @device_get_name(i32 %212)
  %214 = load i32, i32* %3, align 4
  %215 = call i32 @device_get_unit(i32 %214)
  %216 = call i64 @resource_int_value(i32 %213, i32 %215, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %8)
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %211
  %219 = load i32, i32* %8, align 4
  %220 = icmp sgt i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i32 1, i32 0
  store i32 %222, i32* %8, align 4
  br label %224

223:                                              ; preds = %211
  store i32 0, i32* %8, align 4
  br label %224

224:                                              ; preds = %223, %218
  br label %225

225:                                              ; preds = %224, %210
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %248

229:                                              ; preds = %225
  %230 = load i32, i32* %3, align 4
  %231 = call i32 @device_get_name(i32 %230)
  %232 = load i32, i32* %3, align 4
  %233 = call i32 @device_get_unit(i32 %232)
  %234 = call i64 @resource_int_value(i32 %231, i32 %233, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %10)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %229
  %237 = load i32, i32* @NDXSCHANS, align 4
  store i32 %237, i32* %10, align 4
  br label %238

238:                                              ; preds = %236, %229
  %239 = load i32, i32* %3, align 4
  %240 = call i32 @device_get_name(i32 %239)
  %241 = load i32, i32* %3, align 4
  %242 = call i32 @device_get_unit(i32 %241)
  %243 = call i64 @resource_int_value(i32 %240, i32 %242, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32* %11)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %238
  %246 = load i32, i32* @NMSGDCHANS, align 4
  store i32 %246, i32* %11, align 4
  br label %247

247:                                              ; preds = %245, %238
  br label %248

248:                                              ; preds = %247, %228
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* @NDXSCHANS, align 4
  %251 = icmp sgt i32 %249, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %248
  %253 = load i32, i32* @NDXSCHANS, align 4
  store i32 %253, i32* %10, align 4
  br label %259

254:                                              ; preds = %248
  %255 = load i32, i32* %10, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i32 0, i32* %10, align 4
  br label %258

258:                                              ; preds = %257, %254
  br label %259

259:                                              ; preds = %258, %252
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* @NMSGDCHANS, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %259
  %264 = load i32, i32* @NMSGDCHANS, align 4
  store i32 %264, i32* %11, align 4
  br label %270

265:                                              ; preds = %259
  %266 = load i32, i32* %11, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  store i32 0, i32* %11, align 4
  br label %269

269:                                              ; preds = %268, %265
  br label %270

270:                                              ; preds = %269, %263
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* %11, align 4
  %273 = add nsw i32 %271, %272
  %274 = icmp slt i32 %273, 1
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %276

276:                                              ; preds = %275, %270
  %277 = load i32, i32* %10, align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %293

279:                                              ; preds = %276
  %280 = load i32, i32* %3, align 4
  %281 = call i32 @device_get_name(i32 %280)
  %282 = load i32, i32* %3, align 4
  %283 = call i32 @device_get_unit(i32 %282)
  %284 = call i64 @resource_int_value(i32 %281, i32 %283, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %9)
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %279
  %287 = load i32, i32* %9, align 4
  %288 = icmp sgt i32 %287, 0
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i32 1, i32 0
  %291 = load %struct.via_info*, %struct.via_info** %4, align 8
  %292 = getelementptr inbounds %struct.via_info, %struct.via_info* %291, i32 0, i32 5
  store i32 %290, i32* %292, align 4
  br label %296

293:                                              ; preds = %279, %276
  %294 = load %struct.via_info*, %struct.via_info** %4, align 8
  %295 = getelementptr inbounds %struct.via_info, %struct.via_info* %294, i32 0, i32 5
  store i32 0, i32* %295, align 4
  br label %296

296:                                              ; preds = %293, %286
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* %11, align 4
  %299 = add nsw i32 %297, %298
  %300 = load i32, i32* @NWRCHANS, align 4
  %301 = add nsw i32 %299, %300
  %302 = load i32, i32* @VIA_SEGS_MAX, align 4
  %303 = mul nsw i32 %301, %302
  store i32 %303, i32* %12, align 4
  %304 = load i32, i32* %3, align 4
  %305 = call i32 @bus_get_dma_tag(i32 %304)
  %306 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %307 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %308 = load %struct.via_info*, %struct.via_info** %4, align 8
  %309 = getelementptr inbounds %struct.via_info, %struct.via_info* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.via_info*, %struct.via_info** %4, align 8
  %312 = getelementptr inbounds %struct.via_info, %struct.via_info* %311, i32 0, i32 12
  %313 = call i64 @bus_dma_tag_create(i32 %305, i32 2, i32 0, i32 %306, i32 %307, i32* null, i32* null, i32 %310, i32 1, i32 262143, i32 0, i32* null, i32* null, i64* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %296
  %316 = load i32, i32* %3, align 4
  %317 = call i32 (i32, i8*, ...) @device_printf(i32 %316, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %514

318:                                              ; preds = %296
  %319 = load i32, i32* %3, align 4
  %320 = call i32 @bus_get_dma_tag(i32 %319)
  %321 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %322 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %323 = load i32, i32* %12, align 4
  %324 = sext i32 %323 to i64
  %325 = mul i64 %324, 4
  %326 = trunc i64 %325 to i32
  %327 = load %struct.via_info*, %struct.via_info** %4, align 8
  %328 = getelementptr inbounds %struct.via_info, %struct.via_info* %327, i32 0, i32 8
  %329 = call i64 @bus_dma_tag_create(i32 %320, i32 2, i32 0, i32 %321, i32 %322, i32* null, i32* null, i32 %326, i32 1, i32 262143, i32 0, i32* null, i32* null, i64* %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %318
  %332 = load i32, i32* %3, align 4
  %333 = call i32 (i32, i8*, ...) @device_printf(i32 %332, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %514

334:                                              ; preds = %318
  %335 = load %struct.via_info*, %struct.via_info** %4, align 8
  %336 = getelementptr inbounds %struct.via_info, %struct.via_info* %335, i32 0, i32 8
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.via_info*, %struct.via_info** %4, align 8
  %339 = getelementptr inbounds %struct.via_info, %struct.via_info* %338, i32 0, i32 10
  %340 = bitcast i64* %339 to i8**
  %341 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %342 = load %struct.via_info*, %struct.via_info** %4, align 8
  %343 = getelementptr inbounds %struct.via_info, %struct.via_info* %342, i32 0, i32 9
  %344 = call i32 @bus_dmamem_alloc(i64 %337, i8** %340, i32 %341, i32* %343)
  %345 = icmp eq i32 %344, -1
  br i1 %345, label %346, label %347

346:                                              ; preds = %334
  br label %514

347:                                              ; preds = %334
  %348 = load %struct.via_info*, %struct.via_info** %4, align 8
  %349 = getelementptr inbounds %struct.via_info, %struct.via_info* %348, i32 0, i32 8
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.via_info*, %struct.via_info** %4, align 8
  %352 = getelementptr inbounds %struct.via_info, %struct.via_info* %351, i32 0, i32 9
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.via_info*, %struct.via_info** %4, align 8
  %355 = getelementptr inbounds %struct.via_info, %struct.via_info* %354, i32 0, i32 10
  %356 = load i64, i64* %355, align 8
  %357 = load i32, i32* %12, align 4
  %358 = sext i32 %357 to i64
  %359 = mul i64 %358, 4
  %360 = trunc i64 %359 to i32
  %361 = load i32, i32* @dma_cb, align 4
  %362 = load %struct.via_info*, %struct.via_info** %4, align 8
  %363 = call i64 @bus_dmamap_load(i64 %350, i32 %353, i64 %356, i32 %360, i32 %361, %struct.via_info* %362, i32 0)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %347
  br label %514

366:                                              ; preds = %347
  %367 = load i32, i32* %3, align 4
  %368 = call i64 @via_chip_init(i32 %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  br label %514

371:                                              ; preds = %366
  %372 = load i32, i32* %3, align 4
  %373 = load %struct.via_info*, %struct.via_info** %4, align 8
  %374 = load i32, i32* @via_ac97, align 4
  %375 = call i64 @AC97_CREATE(i32 %372, %struct.via_info* %373, i32 %374)
  %376 = load %struct.via_info*, %struct.via_info** %4, align 8
  %377 = getelementptr inbounds %struct.via_info, %struct.via_info* %376, i32 0, i32 18
  store i64 %375, i64* %377, align 8
  %378 = load %struct.via_info*, %struct.via_info** %4, align 8
  %379 = getelementptr inbounds %struct.via_info, %struct.via_info* %378, i32 0, i32 18
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %383, label %382

382:                                              ; preds = %371
  br label %514

383:                                              ; preds = %371
  %384 = load i32, i32* %3, align 4
  %385 = call i32 (...) @ac97_getmixerclass()
  %386 = load %struct.via_info*, %struct.via_info** %4, align 8
  %387 = getelementptr inbounds %struct.via_info, %struct.via_info* %386, i32 0, i32 18
  %388 = load i64, i64* %387, align 8
  %389 = call i32 @mixer_init(i32 %384, i32 %385, i64 %388)
  %390 = load %struct.via_info*, %struct.via_info** %4, align 8
  %391 = getelementptr inbounds %struct.via_info, %struct.via_info* %390, i32 0, i32 18
  %392 = load i64, i64* %391, align 8
  %393 = call i32 @ac97_getextcaps(i64 %392)
  %394 = load %struct.via_info*, %struct.via_info** %4, align 8
  %395 = getelementptr inbounds %struct.via_info, %struct.via_info* %394, i32 0, i32 6
  store i32 %393, i32* %395, align 8
  %396 = load %struct.via_info*, %struct.via_info** %4, align 8
  %397 = getelementptr inbounds %struct.via_info, %struct.via_info* %396, i32 0, i32 6
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* @AC97_EXTCAP_VRA, align 4
  %400 = load i32, i32* @AC97_EXTCAP_VRM, align 4
  %401 = or i32 %399, %400
  %402 = load i32, i32* @AC97_EXTCAP_DRA, align 4
  %403 = or i32 %401, %402
  %404 = and i32 %398, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %429

406:                                              ; preds = %383
  %407 = load %struct.via_info*, %struct.via_info** %4, align 8
  %408 = getelementptr inbounds %struct.via_info, %struct.via_info* %407, i32 0, i32 18
  %409 = load i64, i64* %408, align 8
  %410 = call i32 @ac97_getextmode(i64 %409)
  store i32 %410, i32* %14, align 4
  %411 = load %struct.via_info*, %struct.via_info** %4, align 8
  %412 = getelementptr inbounds %struct.via_info, %struct.via_info* %411, i32 0, i32 6
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @AC97_EXTCAP_VRA, align 4
  %415 = load i32, i32* @AC97_EXTCAP_VRM, align 4
  %416 = or i32 %414, %415
  %417 = and i32 %413, %416
  %418 = load i32, i32* %14, align 4
  %419 = or i32 %418, %417
  store i32 %419, i32* %14, align 4
  %420 = load i32, i32* @AC97_EXTCAP_DRA, align 4
  %421 = xor i32 %420, -1
  %422 = load i32, i32* %14, align 4
  %423 = and i32 %422, %421
  store i32 %423, i32* %14, align 4
  %424 = load %struct.via_info*, %struct.via_info** %4, align 8
  %425 = getelementptr inbounds %struct.via_info, %struct.via_info* %424, i32 0, i32 18
  %426 = load i64, i64* %425, align 8
  %427 = load i32, i32* %14, align 4
  %428 = call i32 @ac97_setextmode(i64 %426, i32 %427)
  br label %429

429:                                              ; preds = %406, %383
  %430 = load i32, i32* @SND_STATUSLEN, align 4
  %431 = load %struct.via_info*, %struct.via_info** %4, align 8
  %432 = getelementptr inbounds %struct.via_info, %struct.via_info* %431, i32 0, i32 16
  %433 = load i8*, i8** %432, align 8
  %434 = call i32 @rman_get_start(i8* %433)
  %435 = load %struct.via_info*, %struct.via_info** %4, align 8
  %436 = getelementptr inbounds %struct.via_info, %struct.via_info* %435, i32 0, i32 13
  %437 = load i8*, i8** %436, align 8
  %438 = call i32 @rman_get_start(i8* %437)
  %439 = load i32, i32* @snd_via8233, align 4
  %440 = call i32 @PCM_KLDSTRING(i32 %439)
  %441 = call i32 @snprintf(i8* %19, i32 %430, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %434, i32 %438, i32 %440)
  %442 = load i32, i32* %3, align 4
  %443 = load %struct.via_info*, %struct.via_info** %4, align 8
  %444 = load i32, i32* %10, align 4
  %445 = load i32, i32* %11, align 4
  %446 = add nsw i32 %444, %445
  %447 = load i32, i32* @NWRCHANS, align 4
  %448 = call i64 @pcm_register(i32 %442, %struct.via_info* %443, i32 %446, i32 %447)
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %451

450:                                              ; preds = %429
  br label %514

451:                                              ; preds = %429
  store i32 0, i32* %7, align 4
  br label %452

452:                                              ; preds = %461, %451
  %453 = load i32, i32* %7, align 4
  %454 = load i32, i32* %10, align 4
  %455 = icmp slt i32 %453, %454
  br i1 %455, label %456, label %464

456:                                              ; preds = %452
  %457 = load i32, i32* %3, align 4
  %458 = load i32, i32* @PCMDIR_PLAY, align 4
  %459 = load %struct.via_info*, %struct.via_info** %4, align 8
  %460 = call i32 @pcm_addchan(i32 %457, i32 %458, i32* @via8233dxs_class, %struct.via_info* %459)
  br label %461

461:                                              ; preds = %456
  %462 = load i32, i32* %7, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %7, align 4
  br label %452

464:                                              ; preds = %452
  store i32 0, i32* %7, align 4
  br label %465

465:                                              ; preds = %474, %464
  %466 = load i32, i32* %7, align 4
  %467 = load i32, i32* %11, align 4
  %468 = icmp slt i32 %466, %467
  br i1 %468, label %469, label %477

469:                                              ; preds = %465
  %470 = load i32, i32* %3, align 4
  %471 = load i32, i32* @PCMDIR_PLAY, align 4
  %472 = load %struct.via_info*, %struct.via_info** %4, align 8
  %473 = call i32 @pcm_addchan(i32 %470, i32 %471, i32* @via8233msgd_class, %struct.via_info* %472)
  br label %474

474:                                              ; preds = %469
  %475 = load i32, i32* %7, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %7, align 4
  br label %465

477:                                              ; preds = %465
  store i32 0, i32* %7, align 4
  br label %478

478:                                              ; preds = %487, %477
  %479 = load i32, i32* %7, align 4
  %480 = load i32, i32* @NWRCHANS, align 4
  %481 = icmp slt i32 %479, %480
  br i1 %481, label %482, label %490

482:                                              ; preds = %478
  %483 = load i32, i32* %3, align 4
  %484 = load i32, i32* @PCMDIR_REC, align 4
  %485 = load %struct.via_info*, %struct.via_info** %4, align 8
  %486 = call i32 @pcm_addchan(i32 %483, i32 %484, i32* @via8233wr_class, %struct.via_info* %485)
  br label %487

487:                                              ; preds = %482
  %488 = load i32, i32* %7, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %7, align 4
  br label %478

490:                                              ; preds = %478
  %491 = load i32, i32* %10, align 4
  %492 = icmp sgt i32 %491, 0
  br i1 %492, label %493, label %496

493:                                              ; preds = %490
  %494 = load i32, i32* %3, align 4
  %495 = call i32 @via_init_sysctls(i32 %494)
  br label %496

496:                                              ; preds = %493, %490
  %497 = load i32, i32* %3, align 4
  %498 = load i32, i32* %10, align 4
  %499 = icmp sgt i32 %498, 0
  %500 = zext i1 %499 to i64
  %501 = select i1 %499, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)
  %502 = load %struct.via_info*, %struct.via_info** %4, align 8
  %503 = getelementptr inbounds %struct.via_info, %struct.via_info* %502, i32 0, i32 5
  %504 = load i32, i32* %503, align 4
  %505 = icmp ne i32 %504, 0
  %506 = zext i1 %505 to i64
  %507 = select i1 %505, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %508 = load i32, i32* %10, align 4
  %509 = load i32, i32* %11, align 4
  %510 = load i32, i32* @NWRCHANS, align 4
  %511 = call i32 (i32, i8*, ...) @device_printf(i32 %497, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8* %501, i8* %507, i32 %508, i32 %509, i32 %510)
  %512 = load i32, i32* %3, align 4
  %513 = call i32 @pcm_setstatus(i32 %512, i8* %19)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %636

514:                                              ; preds = %450, %382, %370, %365, %346, %331, %315, %118, %74
  %515 = load %struct.via_info*, %struct.via_info** %4, align 8
  %516 = getelementptr inbounds %struct.via_info, %struct.via_info* %515, i32 0, i32 18
  %517 = load i64, i64* %516, align 8
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %524

519:                                              ; preds = %514
  %520 = load %struct.via_info*, %struct.via_info** %4, align 8
  %521 = getelementptr inbounds %struct.via_info, %struct.via_info* %520, i32 0, i32 18
  %522 = load i64, i64* %521, align 8
  %523 = call i32 @ac97_destroy(i64 %522)
  br label %524

524:                                              ; preds = %519, %514
  %525 = load %struct.via_info*, %struct.via_info** %4, align 8
  %526 = getelementptr inbounds %struct.via_info, %struct.via_info* %525, i32 0, i32 16
  %527 = load i8*, i8** %526, align 8
  %528 = icmp ne i8* %527, null
  br i1 %528, label %529, label %539

529:                                              ; preds = %524
  %530 = load i32, i32* %3, align 4
  %531 = load i32, i32* @SYS_RES_IOPORT, align 4
  %532 = load %struct.via_info*, %struct.via_info** %4, align 8
  %533 = getelementptr inbounds %struct.via_info, %struct.via_info* %532, i32 0, i32 17
  %534 = load i64, i64* %533, align 8
  %535 = load %struct.via_info*, %struct.via_info** %4, align 8
  %536 = getelementptr inbounds %struct.via_info, %struct.via_info* %535, i32 0, i32 16
  %537 = load i8*, i8** %536, align 8
  %538 = call i32 @bus_release_resource(i32 %530, i32 %531, i64 %534, i8* %537)
  br label %539

539:                                              ; preds = %529, %524
  %540 = load %struct.via_info*, %struct.via_info** %4, align 8
  %541 = getelementptr inbounds %struct.via_info, %struct.via_info* %540, i32 0, i32 15
  %542 = load i64, i64* %541, align 8
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %544, label %553

544:                                              ; preds = %539
  %545 = load i32, i32* %3, align 4
  %546 = load %struct.via_info*, %struct.via_info** %4, align 8
  %547 = getelementptr inbounds %struct.via_info, %struct.via_info* %546, i32 0, i32 13
  %548 = load i8*, i8** %547, align 8
  %549 = load %struct.via_info*, %struct.via_info** %4, align 8
  %550 = getelementptr inbounds %struct.via_info, %struct.via_info* %549, i32 0, i32 15
  %551 = load i64, i64* %550, align 8
  %552 = call i32 @bus_teardown_intr(i32 %545, i8* %548, i64 %551)
  br label %553

553:                                              ; preds = %544, %539
  %554 = load %struct.via_info*, %struct.via_info** %4, align 8
  %555 = getelementptr inbounds %struct.via_info, %struct.via_info* %554, i32 0, i32 13
  %556 = load i8*, i8** %555, align 8
  %557 = icmp ne i8* %556, null
  br i1 %557, label %558, label %568

558:                                              ; preds = %553
  %559 = load i32, i32* %3, align 4
  %560 = load i32, i32* @SYS_RES_IRQ, align 4
  %561 = load %struct.via_info*, %struct.via_info** %4, align 8
  %562 = getelementptr inbounds %struct.via_info, %struct.via_info* %561, i32 0, i32 14
  %563 = load i64, i64* %562, align 8
  %564 = load %struct.via_info*, %struct.via_info** %4, align 8
  %565 = getelementptr inbounds %struct.via_info, %struct.via_info* %564, i32 0, i32 13
  %566 = load i8*, i8** %565, align 8
  %567 = call i32 @bus_release_resource(i32 %559, i32 %560, i64 %563, i8* %566)
  br label %568

568:                                              ; preds = %558, %553
  %569 = load %struct.via_info*, %struct.via_info** %4, align 8
  %570 = getelementptr inbounds %struct.via_info, %struct.via_info* %569, i32 0, i32 12
  %571 = load i64, i64* %570, align 8
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %573, label %578

573:                                              ; preds = %568
  %574 = load %struct.via_info*, %struct.via_info** %4, align 8
  %575 = getelementptr inbounds %struct.via_info, %struct.via_info* %574, i32 0, i32 12
  %576 = load i64, i64* %575, align 8
  %577 = call i32 @bus_dma_tag_destroy(i64 %576)
  br label %578

578:                                              ; preds = %573, %568
  %579 = load %struct.via_info*, %struct.via_info** %4, align 8
  %580 = getelementptr inbounds %struct.via_info, %struct.via_info* %579, i32 0, i32 11
  %581 = load i64, i64* %580, align 8
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %591

583:                                              ; preds = %578
  %584 = load %struct.via_info*, %struct.via_info** %4, align 8
  %585 = getelementptr inbounds %struct.via_info, %struct.via_info* %584, i32 0, i32 8
  %586 = load i64, i64* %585, align 8
  %587 = load %struct.via_info*, %struct.via_info** %4, align 8
  %588 = getelementptr inbounds %struct.via_info, %struct.via_info* %587, i32 0, i32 9
  %589 = load i32, i32* %588, align 8
  %590 = call i32 @bus_dmamap_unload(i64 %586, i32 %589)
  br label %591

591:                                              ; preds = %583, %578
  %592 = load %struct.via_info*, %struct.via_info** %4, align 8
  %593 = getelementptr inbounds %struct.via_info, %struct.via_info* %592, i32 0, i32 10
  %594 = load i64, i64* %593, align 8
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %596, label %607

596:                                              ; preds = %591
  %597 = load %struct.via_info*, %struct.via_info** %4, align 8
  %598 = getelementptr inbounds %struct.via_info, %struct.via_info* %597, i32 0, i32 8
  %599 = load i64, i64* %598, align 8
  %600 = load %struct.via_info*, %struct.via_info** %4, align 8
  %601 = getelementptr inbounds %struct.via_info, %struct.via_info* %600, i32 0, i32 10
  %602 = load i64, i64* %601, align 8
  %603 = load %struct.via_info*, %struct.via_info** %4, align 8
  %604 = getelementptr inbounds %struct.via_info, %struct.via_info* %603, i32 0, i32 9
  %605 = load i32, i32* %604, align 8
  %606 = call i32 @bus_dmamem_free(i64 %599, i64 %602, i32 %605)
  br label %607

607:                                              ; preds = %596, %591
  %608 = load %struct.via_info*, %struct.via_info** %4, align 8
  %609 = getelementptr inbounds %struct.via_info, %struct.via_info* %608, i32 0, i32 8
  %610 = load i64, i64* %609, align 8
  %611 = icmp ne i64 %610, 0
  br i1 %611, label %612, label %617

612:                                              ; preds = %607
  %613 = load %struct.via_info*, %struct.via_info** %4, align 8
  %614 = getelementptr inbounds %struct.via_info, %struct.via_info* %613, i32 0, i32 8
  %615 = load i64, i64* %614, align 8
  %616 = call i32 @bus_dma_tag_destroy(i64 %615)
  br label %617

617:                                              ; preds = %612, %607
  %618 = load %struct.via_info*, %struct.via_info** %4, align 8
  %619 = getelementptr inbounds %struct.via_info, %struct.via_info* %618, i32 0, i32 7
  %620 = load i64, i64* %619, align 8
  %621 = icmp ne i64 %620, 0
  br i1 %621, label %622, label %627

622:                                              ; preds = %617
  %623 = load %struct.via_info*, %struct.via_info** %4, align 8
  %624 = getelementptr inbounds %struct.via_info, %struct.via_info* %623, i32 0, i32 7
  %625 = load i64, i64* %624, align 8
  %626 = call i32 @snd_mtxfree(i64 %625)
  br label %627

627:                                              ; preds = %622, %617
  %628 = load %struct.via_info*, %struct.via_info** %4, align 8
  %629 = icmp ne %struct.via_info* %628, null
  br i1 %629, label %630, label %634

630:                                              ; preds = %627
  %631 = load %struct.via_info*, %struct.via_info** %4, align 8
  %632 = load i32, i32* @M_DEVBUF, align 4
  %633 = call i32 @free(%struct.via_info* %631, i32 %632)
  br label %634

634:                                              ; preds = %630, %627
  %635 = load i32, i32* @ENXIO, align 4
  store i32 %635, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %636

636:                                              ; preds = %634, %496
  %637 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %637)
  %638 = load i32, i32* %2, align 4
  ret i32 %638
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.via_info* @malloc(i32, i32, i32) #2

declare dso_local i64 @snd_mtxcreate(i32, i8*) #2

declare dso_local i32 @device_get_nameunit(i32) #2

declare dso_local i32 @callout_init(i32*, i32) #2

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #2

declare dso_local i32 @device_get_name(i32) #2

declare dso_local i32 @device_get_unit(i32) #2

declare dso_local i32 @pci_set_powerstate(i32, i32) #2

declare dso_local i32 @pci_enable_busmaster(i32) #2

declare dso_local i64 @PCIR_BAR(i32) #2

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @rman_get_bustag(i8*) #2

declare dso_local i32 @rman_get_bushandle(i8*) #2

declare dso_local i64 @snd_setup_intr(i32, i8*, i32, i32, %struct.via_info*, i64*) #2

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #2

declare dso_local i64 @pci_get_revid(i32) #2

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*) #2

declare dso_local i32 @bus_get_dma_tag(i32) #2

declare dso_local i32 @bus_dmamem_alloc(i64, i8**, i32, i32*) #2

declare dso_local i64 @bus_dmamap_load(i64, i32, i64, i32, i32, %struct.via_info*, i32) #2

declare dso_local i64 @via_chip_init(i32) #2

declare dso_local i64 @AC97_CREATE(i32, %struct.via_info*, i32) #2

declare dso_local i32 @mixer_init(i32, i32, i64) #2

declare dso_local i32 @ac97_getmixerclass(...) #2

declare dso_local i32 @ac97_getextcaps(i64) #2

declare dso_local i32 @ac97_getextmode(i64) #2

declare dso_local i32 @ac97_setextmode(i64, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i8*) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i64 @pcm_register(i32, %struct.via_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.via_info*) #2

declare dso_local i32 @via_init_sysctls(i32) #2

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
