; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_info = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i8*, i64, i8*, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.atiixp_info.0*)*, %struct.atiixp_info* }
%struct.atiixp_info.0 = type opaque

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"snd_atiixp softc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"polling\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"unable to allocate register space\0A\00", align 1
@ATI_IXP_BUFSZ_MIN = common dso_local global i32 0, align 4
@ATI_IXP_BUFSZ_DEFAULT = common dso_local global i32 0, align 4
@ATI_IXP_BUFSZ_MAX = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@atiixp_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"unable to map interrupt\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"blocksize\00", align 1
@ATI_IXP_BLK_ALIGN = common dso_local global i32 0, align 4
@ATI_IXP_BLK_MIN = common dso_local global i32 0, align 4
@ATI_IXP_DMA_CHSEGS_MIN = common dso_local global i32 0, align 4
@ATI_IXP_DMA_CHSEGS_MAX = common dso_local global i32 0, align 4
@ATI_IXP_DMA_CHSEGS = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@ATI_IXP_NCHANS = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@atiixp_dma_cb = common dso_local global i32 0, align 4
@cold = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atiixp_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atiixp_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.atiixp_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @M_DEVBUF, align 4
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @M_ZERO, align 4
  %9 = or i32 %7, %8
  %10 = call %struct.atiixp_info* @malloc(i32 112, i32 %6, i32 %9)
  store %struct.atiixp_info* %10, %struct.atiixp_info** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_nameunit(i32 %11)
  %13 = call i32 @snd_mtxcreate(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %15 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %14, i32 0, i32 19
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %18 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %17, i32 0, i32 17
  store i32 %16, i32* %18, align 4
  %19 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %20 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %19, i32 0, i32 18
  %21 = call i32 @callout_init(i32* %20, i32 1)
  %22 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %23 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %25 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %24, i32 0, i32 17
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @device_get_name(i32 %26)
  %28 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %29 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %28, i32 0, i32 17
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @device_get_unit(i32 %30)
  %32 = call i64 @resource_int_value(i32 %27, i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %39 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %43

40:                                               ; preds = %34, %1
  %41 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %42 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @pci_enable_busmaster(i32 %44)
  %46 = call i64 @PCIR_BAR(i32 0)
  %47 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %48 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %47, i32 0, i32 15
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* @SYS_RES_MEMORY, align 4
  %50 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %51 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %50, i32 0, i32 16
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %54 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %53, i32 0, i32 16
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %57 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %56, i32 0, i32 15
  %58 = load i32, i32* @RF_ACTIVE, align 4
  %59 = call i8* @bus_alloc_resource_any(i32 %52, i32 %55, i64* %57, i32 %58)
  %60 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %61 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %60, i32 0, i32 12
  store i8* %59, i8** %61, align 8
  %62 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %63 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %62, i32 0, i32 12
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %43
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %279

69:                                               ; preds = %43
  %70 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %71 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %70, i32 0, i32 12
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @rman_get_bustag(i8* %72)
  %74 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %75 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %74, i32 0, i32 14
  store i32 %73, i32* %75, align 4
  %76 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %77 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %76, i32 0, i32 12
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @rman_get_bushandle(i8* %78)
  %80 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %81 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %80, i32 0, i32 13
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @ATI_IXP_BUFSZ_MIN, align 4
  %84 = load i32, i32* @ATI_IXP_BUFSZ_DEFAULT, align 4
  %85 = load i32, i32* @ATI_IXP_BUFSZ_MAX, align 4
  %86 = call i32 @pcm_getbuffersize(i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %88 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %90 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %89, i32 0, i32 11
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @SYS_RES_IRQ, align 4
  %93 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %94 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %93, i32 0, i32 11
  %95 = load i32, i32* @RF_ACTIVE, align 4
  %96 = load i32, i32* @RF_SHAREABLE, align 4
  %97 = or i32 %95, %96
  %98 = call i8* @bus_alloc_resource_any(i32 %91, i32 %92, i64* %94, i32 %97)
  %99 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %100 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %99, i32 0, i32 10
  store i8* %98, i8** %100, align 8
  %101 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %102 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %101, i32 0, i32 10
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %69
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %108 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %107, i32 0, i32 10
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @INTR_MPSAFE, align 4
  %111 = load i32, i32* @atiixp_intr, align 4
  %112 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %113 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %114 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %113, i32 0, i32 9
  %115 = call i64 @snd_setup_intr(i32 %106, i8* %109, i32 %110, i32 %111, %struct.atiixp_info* %112, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %105, %69
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @device_printf(i32 %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %279

120:                                              ; preds = %105
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @device_get_name(i32 %121)
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @device_get_unit(i32 %123)
  %125 = call i64 @resource_int_value(i32 %122, i32 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %5)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %184

127:                                              ; preds = %120
  %128 = load i32, i32* %5, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %184

130:                                              ; preds = %127
  %131 = load i32, i32* @ATI_IXP_BLK_ALIGN, align 4
  %132 = load i32, i32* %5, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @ATI_IXP_BLK_MIN, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = load i32, i32* @ATI_IXP_BLK_MIN, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %137, %130
  %140 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %141 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sdiv i32 %142, %143
  %145 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %146 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %154, %139
  %148 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %149 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %5, align 4
  %152 = ashr i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %147

157:                                              ; preds = %147
  %158 = load i32, i32* %5, align 4
  %159 = sub nsw i32 %158, 1
  %160 = shl i32 1, %159
  %161 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %162 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  %163 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %164 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @ATI_IXP_DMA_CHSEGS_MIN, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %157
  %169 = load i32, i32* @ATI_IXP_DMA_CHSEGS_MIN, align 4
  %170 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %171 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  br label %183

172:                                              ; preds = %157
  %173 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %174 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @ATI_IXP_DMA_CHSEGS_MAX, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load i32, i32* @ATI_IXP_DMA_CHSEGS_MAX, align 4
  %180 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %181 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %178, %172
  br label %183

183:                                              ; preds = %182, %168
  br label %188

184:                                              ; preds = %127, %120
  %185 = load i32, i32* @ATI_IXP_DMA_CHSEGS, align 4
  %186 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %187 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %184, %183
  %189 = load i32, i32* %3, align 4
  %190 = call i32 @bus_get_dma_tag(i32 %189)
  %191 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %192 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %193 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %194 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %197 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %196, i32 0, i32 8
  %198 = call i64 @bus_dma_tag_create(i32 %190, i32 2, i32 0, i32 %191, i32 %192, i32* null, i32* null, i32 %195, i32 1, i32 262143, i32 0, i32* null, i32* null, i32* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %188
  %201 = load i32, i32* %3, align 4
  %202 = call i32 @device_printf(i32 %201, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %279

203:                                              ; preds = %188
  %204 = load i32, i32* %3, align 4
  %205 = call i32 @bus_get_dma_tag(i32 %204)
  %206 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %207 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %208 = load i32, i32* @ATI_IXP_DMA_CHSEGS_MAX, align 4
  %209 = load i32, i32* @ATI_IXP_NCHANS, align 4
  %210 = mul nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = mul i64 %211, 4
  %213 = trunc i64 %212 to i32
  %214 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %215 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %214, i32 0, i32 7
  %216 = call i64 @bus_dma_tag_create(i32 %205, i32 2, i32 0, i32 %206, i32 %207, i32* null, i32* null, i32 %213, i32 1, i32 262143, i32 0, i32* null, i32* null, i32* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %203
  %219 = load i32, i32* %3, align 4
  %220 = call i32 @device_printf(i32 %219, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %279

221:                                              ; preds = %203
  %222 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %223 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %226 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %225, i32 0, i32 5
  %227 = bitcast i32* %226 to i8**
  %228 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %229 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %230 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %229, i32 0, i32 6
  %231 = call i32 @bus_dmamem_alloc(i32 %224, i8** %227, i32 %228, i32* %230)
  %232 = icmp eq i32 %231, -1
  br i1 %232, label %233, label %234

233:                                              ; preds = %221
  br label %279

234:                                              ; preds = %221
  %235 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %236 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %239 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %242 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @ATI_IXP_DMA_CHSEGS_MAX, align 4
  %245 = load i32, i32* @ATI_IXP_NCHANS, align 4
  %246 = mul nsw i32 %244, %245
  %247 = sext i32 %246 to i64
  %248 = mul i64 %247, 4
  %249 = trunc i64 %248 to i32
  %250 = load i32, i32* @atiixp_dma_cb, align 4
  %251 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %252 = call i64 @bus_dmamap_load(i32 %237, i32 %240, i32 %243, i32 %249, i32 %250, %struct.atiixp_info* %251, i32 0)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %234
  br label %279

255:                                              ; preds = %234
  %256 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %257 = call i32 @atiixp_chip_pre_init(%struct.atiixp_info* %256)
  %258 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %259 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %258, i32 0, i32 4
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 0
  store i32 (%struct.atiixp_info.0*)* bitcast (i32 (%struct.atiixp_info*)* @atiixp_chip_post_init to i32 (%struct.atiixp_info.0*)*), i32 (%struct.atiixp_info.0*)** %260, align 8
  %261 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %262 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %263 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %262, i32 0, i32 4
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 1
  store %struct.atiixp_info* %261, %struct.atiixp_info** %264, align 8
  %265 = load i64, i64* @cold, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %255
  %268 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %269 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %268, i32 0, i32 4
  %270 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %267, %255
  %273 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %274 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 0
  store i32 (%struct.atiixp_info.0*)* null, i32 (%struct.atiixp_info.0*)** %275, align 8
  %276 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %277 = call i32 @atiixp_chip_post_init(%struct.atiixp_info* %276)
  br label %278

278:                                              ; preds = %272, %267
  store i32 0, i32* %2, align 4
  br label %283

279:                                              ; preds = %254, %233, %218, %200, %117, %66
  %280 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %281 = call i32 @atiixp_release_resource(%struct.atiixp_info* %280)
  %282 = load i32, i32* @ENXIO, align 4
  store i32 %282, i32* %2, align 4
  br label %283

283:                                              ; preds = %279, %278
  %284 = load i32, i32* %2, align 4
  ret i32 %284
}

declare dso_local %struct.atiixp_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @snd_mtxcreate(i32, i8*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @pci_enable_busmaster(i32) #1

declare dso_local i64 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #1

declare dso_local i64 @snd_setup_intr(i32, i8*, i32, i32, %struct.atiixp_info*, i32*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.atiixp_info*, i32) #1

declare dso_local i32 @atiixp_chip_pre_init(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_chip_post_init(%struct.atiixp_info*) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

declare dso_local i32 @atiixp_release_resource(%struct.atiixp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
