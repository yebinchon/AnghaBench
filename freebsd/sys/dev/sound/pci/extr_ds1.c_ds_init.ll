; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.sc_info = type { i64, i32, i32*, i32, i32, i64, i64, %struct.pbank**, %struct.rbank*, i32*, i32, i32, i32 }
%struct.pbank = type { i32 }
%struct.rbank = type { i32 }

@ds_devs = common dso_local global %struct.TYPE_2__* null, align 8
@YDSXGR_NATIVEDACOUTVOL = common dso_local global i64 0, align 8
@YDSXGR_MODE = common dso_local global i64 0, align 8
@YDSXGR_MAPOFREC = common dso_local global i64 0, align 8
@YDSXGR_MAPOFEFFECT = common dso_local global i64 0, align 8
@YDSXGR_PLAYCTRLBASE = common dso_local global i64 0, align 8
@YDSXGR_RECCTRLBASE = common dso_local global i64 0, align 8
@YDSXGR_EFFCTRLBASE = common dso_local global i64 0, align 8
@YDSXGR_GLOBALCTRL = common dso_local global i64 0, align 8
@YDSXG_DSPLENGTH = common dso_local global i32 0, align 4
@YDSXGR_DSPINSTRAM = common dso_local global i64 0, align 8
@DspInst = common dso_local global i32* null, align 8
@YDSXG_CTRLLENGTH = common dso_local global i32 0, align 4
@YDSXGR_CTRLINSTRAM = common dso_local global i64 0, align 8
@YDSXGR_PLAYCTRLSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"preposterous playctrlsize (%d)\0A\00", align 1
@YDSXGR_RECCTRLSIZE = common dso_local global i64 0, align 8
@YDSXGR_EFFCTRLSIZE = common dso_local global i64 0, align 8
@YDSXGR_WORKSIZE = common dso_local global i64 0, align 8
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@ds_setmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"pcs=%d, rcs=%d, ecs=%d, ws=%d, memsz=%d\0A\00", align 1
@YDSXGR_WORKBASE = common dso_local global i64 0, align 8
@DS1_CHANS = common dso_local global i32 0, align 4
@YDSXGR_NATIVEADCINVOL = common dso_local global i64 0, align 8
@YDSXGR_NATIVEDACINVOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @ds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_init(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ds_devs, align 8
  %16 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %17 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  %22 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %23 = load i64, i64* @YDSXGR_NATIVEDACOUTVOL, align 8
  %24 = call i32 @ds_wr(%struct.sc_info* %22, i64 %23, i32 0, i32 4)
  %25 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %26 = call i32 @ds_enadsp(%struct.sc_info* %25, i32 0)
  %27 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %28 = load i64, i64* @YDSXGR_MODE, align 8
  %29 = call i32 @ds_wr(%struct.sc_info* %27, i64 %28, i32 65536, i32 4)
  %30 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %31 = load i64, i64* @YDSXGR_MODE, align 8
  %32 = call i32 @ds_wr(%struct.sc_info* %30, i64 %31, i32 0, i32 4)
  %33 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %34 = load i64, i64* @YDSXGR_MAPOFREC, align 8
  %35 = call i32 @ds_wr(%struct.sc_info* %33, i64 %34, i32 0, i32 4)
  %36 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %37 = load i64, i64* @YDSXGR_MAPOFEFFECT, align 8
  %38 = call i32 @ds_wr(%struct.sc_info* %36, i64 %37, i32 0, i32 4)
  %39 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %40 = load i64, i64* @YDSXGR_PLAYCTRLBASE, align 8
  %41 = call i32 @ds_wr(%struct.sc_info* %39, i64 %40, i32 0, i32 4)
  %42 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %43 = load i64, i64* @YDSXGR_RECCTRLBASE, align 8
  %44 = call i32 @ds_wr(%struct.sc_info* %42, i64 %43, i32 0, i32 4)
  %45 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %46 = load i64, i64* @YDSXGR_EFFCTRLBASE, align 8
  %47 = call i32 @ds_wr(%struct.sc_info* %45, i64 %46, i32 0, i32 4)
  %48 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %49 = load i64, i64* @YDSXGR_GLOBALCTRL, align 8
  %50 = call i32 @ds_rd(%struct.sc_info* %48, i64 %49, i32 2)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %52 = load i64, i64* @YDSXGR_GLOBALCTRL, align 8
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, -8
  %55 = call i32 @ds_wr(%struct.sc_info* %51, i64 %52, i32 %54, i32 2)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %73, %1
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @YDSXG_DSPLENGTH, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %62 = load i64, i64* @YDSXGR_DSPINSTRAM, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = load i32*, i32** @DspInst, align 8
  %67 = load i32, i32* %4, align 4
  %68 = ashr i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ds_wr(%struct.sc_info* %61, i64 %65, i32 %71, i32 4)
  br label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 4
  store i32 %75, i32* %4, align 4
  br label %56

76:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %94, %76
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @YDSXG_CTRLLENGTH, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %83 = load i64, i64* @YDSXGR_CTRLINSTRAM, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %4, align 4
  %89 = ashr i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ds_wr(%struct.sc_info* %82, i64 %86, i32 %92, i32 4)
  br label %94

94:                                               ; preds = %81
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 4
  store i32 %96, i32* %4, align 4
  br label %77

97:                                               ; preds = %77
  %98 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %99 = call i32 @ds_enadsp(%struct.sc_info* %98, i32 1)
  store i32 0, i32* %7, align 4
  store i32 100, i32* %4, align 4
  br label %100

100:                                              ; preds = %114, %97
  %101 = load i32, i32* %4, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %105 = load i64, i64* @YDSXGR_PLAYCTRLSIZE, align 8
  %106 = call i32 @ds_rd(%struct.sc_info* %104, i64 %105, i32 4)
  %107 = shl i32 %106, 2
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp eq i64 %109, 4
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %117

112:                                              ; preds = %103
  %113 = call i32 @DELAY(i32 1000)
  br label %114

114:                                              ; preds = %112
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %4, align 4
  br label %100

117:                                              ; preds = %111, %100
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp ne i64 %119, 4
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %123 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %125)
  store i32 -1, i32* %2, align 4
  br label %358

127:                                              ; preds = %117
  %128 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %129 = load i64, i64* @YDSXGR_RECCTRLSIZE, align 8
  %130 = call i32 @ds_rd(%struct.sc_info* %128, i64 %129, i32 4)
  %131 = shl i32 %130, 2
  store i32 %131, i32* %8, align 4
  %132 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %133 = load i64, i64* @YDSXGR_EFFCTRLSIZE, align 8
  %134 = call i32 @ds_rd(%struct.sc_info* %132, i64 %133, i32 4)
  %135 = shl i32 %134, 2
  store i32 %135, i32* %9, align 4
  %136 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %137 = load i64, i64* @YDSXGR_WORKSIZE, align 8
  %138 = call i32 @ds_rd(%struct.sc_info* %136, i64 %137, i32 4)
  %139 = shl i32 %138, 2
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %7, align 4
  %141 = mul nsw i32 128, %140
  %142 = load i32, i32* %8, align 4
  %143 = mul nsw i32 4, %142
  %144 = add nsw i32 %141, %143
  %145 = load i32, i32* %9, align 4
  %146 = mul nsw i32 10, %145
  %147 = add nsw i32 %144, %146
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %147, %148
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 260
  store i32 %151, i32* %11, align 4
  %152 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %153 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %152, i32 0, i32 9
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %213

156:                                              ; preds = %127
  %157 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %158 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %157, i32 0, i32 10
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @bus_get_dma_tag(i32 %159)
  %161 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %162 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %166 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %165, i32 0, i32 12
  %167 = call i64 @bus_dma_tag_create(i32 %160, i32 2, i32 0, i32 %161, i32 %162, i32* null, i32* null, i32 %163, i32 1, i32 %164, i32 0, i32* null, i32* null, i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %156
  store i32 -1, i32* %2, align 4
  br label %358

170:                                              ; preds = %156
  %171 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %172 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %171, i32 0, i32 12
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %175 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %176 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %175, i32 0, i32 11
  %177 = call i64 @bus_dmamem_alloc(i32 %173, i8** %14, i32 %174, i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %170
  store i32 -1, i32* %2, align 4
  br label %358

180:                                              ; preds = %170
  %181 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %182 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %181, i32 0, i32 12
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %185 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %184, i32 0, i32 11
  %186 = load i32, i32* %185, align 4
  %187 = load i8*, i8** %14, align 8
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* @ds_setmap, align 4
  %190 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %191 = call i64 @bus_dmamap_load(i32 %183, i32 %186, i8* %187, i32 %188, i32 %189, %struct.sc_info* %190, i32 0)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %180
  %194 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %195 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %208, label %198

198:                                              ; preds = %193, %180
  %199 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %200 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %11, align 4
  %207 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %201, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %202, i32 %203, i32 %204, i32 %205, i32 %206)
  store i32 -1, i32* %2, align 4
  br label %358

208:                                              ; preds = %193
  %209 = load i8*, i8** %14, align 8
  %210 = bitcast i8* %209 to i32*
  %211 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %212 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %211, i32 0, i32 9
  store i32* %210, i32** %212, align 8
  br label %218

213:                                              ; preds = %127
  %214 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %215 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %214, i32 0, i32 9
  %216 = load i32*, i32** %215, align 8
  %217 = bitcast i32* %216 to i8*
  store i8* %217, i8** %14, align 8
  br label %218

218:                                              ; preds = %213, %208
  store i32 0, i32* %12, align 4
  %219 = load i8*, i8** %14, align 8
  %220 = bitcast i8* %219 to i32*
  store i32* %220, i32** %13, align 8
  %221 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %222 = load i64, i64* @YDSXGR_WORKBASE, align 8
  %223 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %224 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %12, align 4
  %227 = add nsw i32 %225, %226
  %228 = call i32 @ds_wr(%struct.sc_info* %221, i64 %222, i32 %227, i32 4)
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %12, align 4
  %232 = load i32*, i32** %13, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %237 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %236, i32 0, i32 2
  store i32* %235, i32** %237, align 8
  %238 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %239 = load i64, i64* @YDSXGR_PLAYCTRLBASE, align 8
  %240 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %241 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %242, %243
  %245 = call i32 @ds_wr(%struct.sc_info* %238, i64 %239, i32 %244, i32 4)
  %246 = load i32, i32* %12, align 4
  %247 = add nsw i32 %246, 260
  store i32 %247, i32* %12, align 4
  %248 = load i32*, i32** %13, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = bitcast i32* %251 to %struct.rbank*
  %253 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %254 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %253, i32 0, i32 8
  store %struct.rbank* %252, %struct.rbank** %254, align 8
  %255 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %256 = load i64, i64* @YDSXGR_RECCTRLBASE, align 8
  %257 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %258 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %12, align 4
  %261 = add nsw i32 %259, %260
  %262 = call i32 @ds_wr(%struct.sc_info* %255, i64 %256, i32 %261, i32 4)
  %263 = load i32, i32* %8, align 4
  %264 = mul nsw i32 4, %263
  %265 = load i32, i32* %12, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %12, align 4
  %267 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %268 = load i64, i64* @YDSXGR_EFFCTRLBASE, align 8
  %269 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %270 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* %12, align 4
  %273 = add nsw i32 %271, %272
  %274 = call i32 @ds_wr(%struct.sc_info* %267, i64 %268, i32 %273, i32 4)
  %275 = load i32, i32* %9, align 4
  %276 = mul nsw i32 10, %275
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, i32* %12, align 4
  %279 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %280 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %12, align 4
  %283 = add nsw i32 %281, %282
  %284 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %285 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %284, i32 0, i32 3
  store i32 %283, i32* %285, align 8
  %286 = load i32, i32* %7, align 4
  %287 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %288 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %287, i32 0, i32 4
  store i32 %286, i32* %288, align 4
  store i32 0, i32* %4, align 4
  br label %289

289:                                              ; preds = %333, %218
  %290 = load i32, i32* %4, align 4
  %291 = icmp slt i32 %290, 64
  br i1 %291, label %292, label %336

292:                                              ; preds = %289
  %293 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %294 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %295 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %294, i32 0, i32 2
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %4, align 4
  %298 = add nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %296, i64 %299
  %301 = call i32 @wrl(%struct.sc_info* %293, i32* %300, i32 0)
  %302 = load i32*, i32** %13, align 8
  %303 = load i32, i32* %12, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = bitcast i32* %305 to %struct.pbank*
  %307 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %308 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %307, i32 0, i32 7
  %309 = load %struct.pbank**, %struct.pbank*** %308, align 8
  %310 = load i32, i32* %4, align 4
  %311 = mul nsw i32 %310, 2
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.pbank*, %struct.pbank** %309, i64 %312
  store %struct.pbank* %306, %struct.pbank** %313, align 8
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* %12, align 4
  %316 = add nsw i32 %315, %314
  store i32 %316, i32* %12, align 4
  %317 = load i32*, i32** %13, align 8
  %318 = load i32, i32* %12, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = bitcast i32* %320 to %struct.pbank*
  %322 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %323 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %322, i32 0, i32 7
  %324 = load %struct.pbank**, %struct.pbank*** %323, align 8
  %325 = load i32, i32* %4, align 4
  %326 = mul nsw i32 %325, 2
  %327 = add nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.pbank*, %struct.pbank** %324, i64 %328
  store %struct.pbank* %321, %struct.pbank** %329, align 8
  %330 = load i32, i32* %7, align 4
  %331 = load i32, i32* %12, align 4
  %332 = add nsw i32 %331, %330
  store i32 %332, i32* %12, align 4
  br label %333

333:                                              ; preds = %292
  %334 = load i32, i32* %4, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %4, align 4
  br label %289

336:                                              ; preds = %289
  %337 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %338 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %339 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %338, i32 0, i32 2
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  %342 = load i32, i32* @DS1_CHANS, align 4
  %343 = mul nsw i32 %342, 2
  %344 = call i32 @wrl(%struct.sc_info* %337, i32* %341, i32 %343)
  %345 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %346 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %345, i32 0, i32 5
  store i64 0, i64* %346, align 8
  %347 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %348 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %347, i32 0, i32 6
  store i64 0, i64* %348, align 8
  %349 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %350 = load i64, i64* @YDSXGR_NATIVEDACOUTVOL, align 8
  %351 = call i32 @ds_wr(%struct.sc_info* %349, i64 %350, i32 1073692671, i32 4)
  %352 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %353 = load i64, i64* @YDSXGR_NATIVEADCINVOL, align 8
  %354 = call i32 @ds_wr(%struct.sc_info* %352, i64 %353, i32 1073692671, i32 4)
  %355 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %356 = load i64, i64* @YDSXGR_NATIVEDACINVOL, align 8
  %357 = call i32 @ds_wr(%struct.sc_info* %355, i64 %356, i32 1073692671, i32 4)
  store i32 0, i32* %2, align 4
  br label %358

358:                                              ; preds = %336, %198, %179, %169, %121
  %359 = load i32, i32* %2, align 4
  ret i32 %359
}

declare dso_local i32 @ds_wr(%struct.sc_info*, i64, i32, i32) #1

declare dso_local i32 @ds_enadsp(%struct.sc_info*, i32) #1

declare dso_local i32 @ds_rd(%struct.sc_info*, i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i8*, i32, i32, %struct.sc_info*, i32) #1

declare dso_local i32 @wrl(%struct.sc_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
