; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-dma.c_ata_dmainit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-dma.c_ata_dmainit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32* }
%struct.ata_dc_cb_args = type { i32, i64 }

@ata_dmaalloc = common dso_local global i32* null, align 8
@ata_dmafree = common dso_local global i32* null, align 8
@ata_dmasetprd = common dso_local global i32* null, align 8
@ata_dmaload = common dso_local global i32* null, align 8
@ata_dmaunload = common dso_local global i32* null, align 8
@ATA_DMA_ENTRIES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MAXWSPCSZ = common dso_local global i64 0, align 8
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@ata_dmasetupc_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"WARNING - DMA initialization failed, disabling DMA\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_dmainit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_channel*, align 8
  %4 = alloca %struct.ata_dc_cb_args, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ata_channel* @device_get_softc(i32 %5)
  store %struct.ata_channel* %6, %struct.ata_channel** %3, align 8
  %7 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %8 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 15
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32*, i32** @ata_dmaalloc, align 8
  %14 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %15 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 15
  store i32* %13, i32** %16, align 8
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %19 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 14
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32*, i32** @ata_dmafree, align 8
  %25 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %26 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 14
  store i32* %24, i32** %27, align 8
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %30 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 13
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32*, i32** @ata_dmasetprd, align 8
  %36 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %37 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 13
  store i32* %35, i32** %38, align 8
  br label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %41 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 12
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32*, i32** @ata_dmaload, align 8
  %47 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %48 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 12
  store i32* %46, i32** %49, align 8
  br label %50

50:                                               ; preds = %45, %39
  %51 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %52 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 11
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32*, i32** @ata_dmaunload, align 8
  %58 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %59 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 11
  store i32* %57, i32** %60, align 8
  br label %61

61:                                               ; preds = %56, %50
  %62 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %63 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %69 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 2, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %61
  %72 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %73 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %79 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 65536, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %71
  %82 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %83 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %89 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i32 65536, i32* %90, align 8
  br label %91

91:                                               ; preds = %87, %81
  %92 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %93 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load i32, i32* @ATA_DMA_ENTRIES, align 4
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* @MAXPHYS, align 4
  %103 = call i64 @MIN(i32 %101, i32 %102)
  %104 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %105 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  store i64 %103, i64* %106, align 8
  br label %107

107:                                              ; preds = %97, %91
  %108 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %109 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i64, i64* @BUS_SPACE_MAXADDR_32BIT, align 8
  %115 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %116 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 4
  store i64 %114, i64* %117, align 8
  br label %118

118:                                              ; preds = %113, %107
  %119 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %120 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %126 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 5
  store i32 1, i32* %127, align 8
  br label %128

128:                                              ; preds = %124, %118
  %129 = load i32, i32* %2, align 4
  %130 = call i32 @bus_get_dma_tag(i32 %129)
  %131 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %132 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %136 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %140 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %141 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* @ATA_DMA_ENTRIES, align 4
  %145 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %146 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %151 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 10
  %153 = call i64 @bus_dma_tag_create(i32 %130, i32 %134, i32 0, i64 %138, i32 %139, i32* null, i32* null, i64 %143, i32 %144, i64 %149, i32 0, i32* null, i32* null, i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %128
  br label %234

156:                                              ; preds = %128
  %157 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %158 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @PAGE_SIZE, align 4
  %162 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %163 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %167 = load i64, i64* @MAXWSPCSZ, align 8
  %168 = load i64, i64* @MAXWSPCSZ, align 8
  %169 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %170 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 9
  %172 = call i64 @bus_dma_tag_create(i32 %160, i32 %161, i32 65536, i64 %165, i32 %166, i32* null, i32* null, i64 %167, i32 1, i64 %168, i32 0, i32* null, i32* null, i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %156
  br label %234

175:                                              ; preds = %156
  %176 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %177 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 9
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %181 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 8
  %183 = bitcast i32* %182 to i8**
  %184 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %185 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %188 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 7
  %190 = call i64 @bus_dmamem_alloc(i32 %179, i8** %183, i32 %186, i32* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %175
  br label %234

193:                                              ; preds = %175
  %194 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %195 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 9
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %199 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %203 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 4
  %206 = load i64, i64* @MAXWSPCSZ, align 8
  %207 = load i32, i32* @ata_dmasetupc_cb, align 4
  %208 = call i64 @bus_dmamap_load(i32 %197, i32 %201, i32 %205, i64 %206, i32 %207, %struct.ata_dc_cb_args* %4, i32 0)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %193
  %211 = getelementptr inbounds %struct.ata_dc_cb_args, %struct.ata_dc_cb_args* %4, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %228

214:                                              ; preds = %210, %193
  %215 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %216 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 9
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %220 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 8
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %224 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @bus_dmamem_free(i32 %218, i32 %222, i32 %226)
  br label %234

228:                                              ; preds = %210
  %229 = getelementptr inbounds %struct.ata_dc_cb_args, %struct.ata_dc_cb_args* %4, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %232 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 6
  store i32 %230, i32* %233, align 4
  br label %239

234:                                              ; preds = %214, %192, %174, %155
  %235 = load i32, i32* %2, align 4
  %236 = call i32 @device_printf(i32 %235, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %237 = load i32, i32* %2, align 4
  %238 = call i32 @ata_dmafini(i32 %237)
  br label %239

239:                                              ; preds = %234, %228
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i64, i32, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32, i64, i32, %struct.ata_dc_cb_args*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ata_dmafini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
