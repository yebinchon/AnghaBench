; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwmmc_softc = type { i32, i64, i32, i32, %struct.TYPE_2__, i32, i32, i64, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Can't get FDT property.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@dwmmc_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@dwmmc_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"could not setup interrupt handler.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Hardware version ID is %04x\0A\00", align 1
@SDMMC_VERID = common dso_local global i32 0, align 4
@DESC_MAX = common dso_local global i64 0, align 8
@SDMMC_PWREN = common dso_local global i32 0, align 4
@SDMMC_CTRL_RESET = common dso_local global i32 0, align 4
@SDMMC_CTRL_FIFO_RESET = common dso_local global i32 0, align 4
@SDMMC_CTRL_DMA_RESET = common dso_local global i32 0, align 4
@SDMMC_FIFOTH = common dso_local global i32 0, align 4
@SDMMC_FIFOTH_RXWMARK_S = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"No fifo-depth, using FIFOTH %x\0A\00", align 1
@SDMMC_DBADDR = common dso_local global i32 0, align 4
@SDMMC_IDSTS = common dso_local global i32 0, align 4
@SDMMC_IDINTEN_MASK = common dso_local global i32 0, align 4
@SDMMC_IDINTEN = common dso_local global i32 0, align 4
@SDMMC_IDINTEN_NI = common dso_local global i32 0, align 4
@SDMMC_IDINTEN_RI = common dso_local global i32 0, align 4
@SDMMC_IDINTEN_TI = common dso_local global i32 0, align 4
@SDMMC_RINTSTS = common dso_local global i32 0, align 4
@SDMMC_INTMASK = common dso_local global i32 0, align 4
@SDMMC_TMOUT = common dso_local global i32 0, align 4
@SDMMC_INTMASK_CMD_DONE = common dso_local global i32 0, align 4
@SDMMC_INTMASK_DTO = common dso_local global i32 0, align 4
@SDMMC_INTMASK_ACD = common dso_local global i32 0, align 4
@SDMMC_INTMASK_TXDR = common dso_local global i32 0, align 4
@SDMMC_INTMASK_RXDR = common dso_local global i32 0, align 4
@DWMMC_ERR_FLAGS = common dso_local global i32 0, align 4
@SDMMC_INTMASK_CD = common dso_local global i32 0, align 4
@SDMMC_CTRL = common dso_local global i32 0, align 4
@SDMMC_CTRL_INT_ENABLE = common dso_local global i32 0, align 4
@MMC_OCR_320_330 = common dso_local global i32 0, align 4
@MMC_OCR_330_340 = common dso_local global i32 0, align 4
@MMC_CAP_HSPEED = common dso_local global i32 0, align 4
@MMC_CAP_SIGNALING_330 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwmmc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwmmc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.dwmmc_softc* @device_get_softc(i32 %7)
  store %struct.dwmmc_softc* %8, %struct.dwmmc_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %10, i32 0, i32 10
  store i32 %9, i32* %11, align 8
  %12 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %13 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %15 = call i32 @parse_fdt(%struct.dwmmc_softc* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %222

22:                                               ; preds = %1
  %23 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %24 = call i32 @DWMMC_LOCK_INIT(%struct.dwmmc_softc* %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @dwmmc_spec, align 4
  %27 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %28 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %27, i32 0, i32 9
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @bus_alloc_resources(i32 %25, i32 %26, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load i32, i32* %3, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %222

36:                                               ; preds = %22
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %39 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %38, i32 0, i32 9
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @INTR_TYPE_NET, align 4
  %44 = load i32, i32* @INTR_MPSAFE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @dwmmc_intr, align 4
  %47 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %48 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %49 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %48, i32 0, i32 8
  %50 = call i32 @bus_setup_intr(i32 %37, i32 %42, i32 %45, i32* null, i32 %46, %struct.dwmmc_softc* %47, i32* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %36
  %54 = load i32, i32* %3, align 4
  %55 = call i32 (i32, i8*, ...) @device_printf(i32 %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %222

57:                                               ; preds = %36
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %60 = load i32, i32* @SDMMC_VERID, align 4
  %61 = call i32 @READ4(%struct.dwmmc_softc* %59, i32 %60)
  %62 = and i32 %61, 65535
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %65 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = load i64, i64* @DESC_MAX, align 8
  %70 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %71 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %57
  store i32 0, i32* %6, align 4
  %73 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %74 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %79 = load i32, i32* @SDMMC_PWREN, align 4
  %80 = load i32, i32* %6, align 4
  %81 = shl i32 0, %80
  %82 = call i32 @WRITE4(%struct.dwmmc_softc* %78, i32 %79, i32 %81)
  br label %89

83:                                               ; preds = %72
  %84 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %85 = load i32, i32* @SDMMC_PWREN, align 4
  %86 = load i32, i32* %6, align 4
  %87 = shl i32 1, %86
  %88 = call i32 @WRITE4(%struct.dwmmc_softc* %84, i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %91 = load i32, i32* @SDMMC_CTRL_RESET, align 4
  %92 = load i32, i32* @SDMMC_CTRL_FIFO_RESET, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @SDMMC_CTRL_DMA_RESET, align 4
  %95 = or i32 %93, %94
  %96 = call i64 @dwmmc_ctrl_reset(%struct.dwmmc_softc* %90, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* @ENXIO, align 4
  store i32 %99, i32* %2, align 4
  br label %222

100:                                              ; preds = %89
  %101 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %102 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %103 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dwmmc_setup_bus(%struct.dwmmc_softc* %101, i32 %105)
  %107 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %108 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %100
  %112 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %113 = load i32, i32* @SDMMC_FIFOTH, align 4
  %114 = call i32 @READ4(%struct.dwmmc_softc* %112, i32 %113)
  %115 = load i32, i32* @SDMMC_FIFOTH_RXWMARK_S, align 4
  %116 = ashr i32 %114, %115
  %117 = and i32 %116, 4095
  %118 = add nsw i32 1, %117
  %119 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %120 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %3, align 4
  %122 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %123 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32, i8*, ...) @device_printf(i32 %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %111, %100
  %127 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %128 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %158, label %131

131:                                              ; preds = %126
  %132 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %133 = call i32 @dma_stop(%struct.dwmmc_softc* %132)
  %134 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %135 = call i64 @dma_setup(%struct.dwmmc_softc* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* @ENXIO, align 4
  store i32 %138, i32* %2, align 4
  br label %222

139:                                              ; preds = %131
  %140 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %141 = load i32, i32* @SDMMC_DBADDR, align 4
  %142 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %143 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @WRITE4(%struct.dwmmc_softc* %140, i32 %141, i32 %144)
  %146 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %147 = load i32, i32* @SDMMC_IDSTS, align 4
  %148 = load i32, i32* @SDMMC_IDINTEN_MASK, align 4
  %149 = call i32 @WRITE4(%struct.dwmmc_softc* %146, i32 %147, i32 %148)
  %150 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %151 = load i32, i32* @SDMMC_IDINTEN, align 4
  %152 = load i32, i32* @SDMMC_IDINTEN_NI, align 4
  %153 = load i32, i32* @SDMMC_IDINTEN_RI, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @SDMMC_IDINTEN_TI, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @WRITE4(%struct.dwmmc_softc* %150, i32 %151, i32 %156)
  br label %158

158:                                              ; preds = %139, %126
  %159 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %160 = load i32, i32* @SDMMC_RINTSTS, align 4
  %161 = call i32 @WRITE4(%struct.dwmmc_softc* %159, i32 %160, i32 -1)
  %162 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %163 = load i32, i32* @SDMMC_INTMASK, align 4
  %164 = call i32 @WRITE4(%struct.dwmmc_softc* %162, i32 %163, i32 0)
  %165 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %166 = load i32, i32* @SDMMC_TMOUT, align 4
  %167 = call i32 @WRITE4(%struct.dwmmc_softc* %165, i32 %166, i32 -1)
  %168 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %169 = load i32, i32* @SDMMC_RINTSTS, align 4
  %170 = call i32 @WRITE4(%struct.dwmmc_softc* %168, i32 %169, i32 -1)
  %171 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %172 = load i32, i32* @SDMMC_INTMASK, align 4
  %173 = load i32, i32* @SDMMC_INTMASK_CMD_DONE, align 4
  %174 = load i32, i32* @SDMMC_INTMASK_DTO, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @SDMMC_INTMASK_ACD, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @SDMMC_INTMASK_TXDR, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @SDMMC_INTMASK_RXDR, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @DWMMC_ERR_FLAGS, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @SDMMC_INTMASK_CD, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @WRITE4(%struct.dwmmc_softc* %171, i32 %172, i32 %185)
  %187 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %188 = load i32, i32* @SDMMC_CTRL, align 4
  %189 = load i32, i32* @SDMMC_CTRL_INT_ENABLE, align 4
  %190 = call i32 @WRITE4(%struct.dwmmc_softc* %187, i32 %188, i32 %189)
  %191 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %192 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  store i32 400000, i32* %193, align 8
  %194 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %195 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %198 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 3
  store i32 %196, i32* %199, align 4
  %200 = load i32, i32* @MMC_OCR_320_330, align 4
  %201 = load i32, i32* @MMC_OCR_330_340, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %204 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  store i32 %202, i32* %205, align 4
  %206 = load i32, i32* @MMC_CAP_HSPEED, align 4
  %207 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %208 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %206
  store i32 %211, i32* %209, align 8
  %212 = load i32, i32* @MMC_CAP_SIGNALING_330, align 4
  %213 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %4, align 8
  %214 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %212
  store i32 %217, i32* %215, align 8
  %218 = load i32, i32* %3, align 4
  %219 = call i32 @device_add_child(i32 %218, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  %220 = load i32, i32* %3, align 4
  %221 = call i32 @bus_generic_attach(i32 %220)
  store i32 %221, i32* %2, align 4
  br label %222

222:                                              ; preds = %158, %137, %98, %53, %32, %18
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local %struct.dwmmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @parse_fdt(%struct.dwmmc_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @DWMMC_LOCK_INIT(%struct.dwmmc_softc*) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.dwmmc_softc*, i32*) #1

declare dso_local i32 @READ4(%struct.dwmmc_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.dwmmc_softc*, i32, i32) #1

declare dso_local i64 @dwmmc_ctrl_reset(%struct.dwmmc_softc*, i32) #1

declare dso_local i32 @dwmmc_setup_bus(%struct.dwmmc_softc*, i32) #1

declare dso_local i32 @dma_stop(%struct.dwmmc_softc*) #1

declare dso_local i64 @dma_setup(%struct.dwmmc_softc*) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
