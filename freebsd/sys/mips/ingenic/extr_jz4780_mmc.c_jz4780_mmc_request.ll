; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_mmc.c_jz4780_mmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_request = type { %struct.mmc_command* }
%struct.mmc_command = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.jz4780_mmc_softc = type { i32, i64, i32, i32, i32, i32, i32, i64, i64, %struct.mmc_request* }

@EBUSY = common dso_local global i32 0, align 4
@JZ_INT_END_CMD_RES = common dso_local global i32 0, align 4
@JZ_RES_R1 = common dso_local global i32 0, align 4
@JZ_RES_R2 = common dso_local global i32 0, align 4
@JZ_RES_R3 = common dso_local global i32 0, align 4
@MMC_GO_IDLE_STATE = common dso_local global i32 0, align 4
@JZ_INIT = common dso_local global i32 0, align 4
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@JZ_BUSY = common dso_local global i32 0, align 4
@JZ_INT_PRG_DONE = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@JZ_DATA_EN = common dso_local global i32 0, align 4
@MMC_DATA_MULTI = common dso_local global i32 0, align 4
@JZ_AUTO_CMD12 = common dso_local global i32 0, align 4
@JZ_INT_AUTO_CMD12_DONE = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@JZ_WRITE = common dso_local global i32 0, align 4
@MMC_DATA_STREAM = common dso_local global i32 0, align 4
@JZ_STREAM = common dso_local global i32 0, align 4
@JZ_INT_DATA_TRAN_DONE = common dso_local global i32 0, align 4
@MMC_SECTOR_SIZE = common dso_local global i32 0, align 4
@JZ_MSC_BLKLEN = common dso_local global i32 0, align 4
@JZ_MSC_NOB = common dso_local global i32 0, align 4
@jz4780_mmc_pio_mode = common dso_local global i64 0, align 8
@JZ_INT_DMAEND = common dso_local global i32 0, align 4
@JZ_INT_TXFIFO_WR_REQ = common dso_local global i32 0, align 4
@JZ_INT_RXFIFO_RD_REQ = common dso_local global i32 0, align 4
@JZ_MSC_DMAC = common dso_local global i32 0, align 4
@JZ_MSC_IMASK = common dso_local global i32 0, align 4
@JZ_MSC_ARG = common dso_local global i32 0, align 4
@JZ_MSC_CMD = common dso_local global i32 0, align 4
@JZ_MSC_CMDAT = common dso_local global i32 0, align 4
@JZ_MSC_CTRL = common dso_local global i32 0, align 4
@JZ_START_OP = common dso_local global i32 0, align 4
@JZ_CLOCK_START = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@jz4780_mmc_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.mmc_request*)* @jz4780_mmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_mmc_request(i32 %0, i32 %1, %struct.mmc_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_request*, align 8
  %8 = alloca %struct.jz4780_mmc_softc*, align 8
  %9 = alloca %struct.mmc_command*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.mmc_request* %2, %struct.mmc_request** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.jz4780_mmc_softc* @device_get_softc(i32 %13)
  store %struct.jz4780_mmc_softc* %14, %struct.jz4780_mmc_softc** %8, align 8
  %15 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %16 = call i32 @JZ_MMC_LOCK(%struct.jz4780_mmc_softc* %15)
  %17 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %18 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %17, i32 0, i32 9
  %19 = load %struct.mmc_request*, %struct.mmc_request** %18, align 8
  %20 = icmp ne %struct.mmc_request* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %23 = call i32 @JZ_MMC_UNLOCK(%struct.jz4780_mmc_softc* %22)
  %24 = load i32, i32* @EBUSY, align 4
  store i32 %24, i32* %4, align 4
  br label %244

25:                                               ; preds = %3
  %26 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %27 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @JZ_INT_END_CMD_RES, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %31 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %30, i32 0, i32 0
  %32 = load %struct.mmc_command*, %struct.mmc_command** %31, align 8
  store %struct.mmc_command* %32, %struct.mmc_command** %9, align 8
  %33 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %34 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @MMC_RSP(i32 %35)
  switch i32 %36, label %49 [
    i32 131, label %37
    i32 130, label %37
    i32 129, label %41
    i32 128, label %45
  ]

37:                                               ; preds = %25, %25
  %38 = load i32, i32* @JZ_RES_R1, align 4
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %49

41:                                               ; preds = %25
  %42 = load i32, i32* @JZ_RES_R2, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %49

45:                                               ; preds = %25
  %46 = load i32, i32* @JZ_RES_R3, align 4
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %25, %45, %41, %37
  %50 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %51 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MMC_GO_IDLE_STATE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @JZ_INIT, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %61 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MMC_RSP_BUSY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = load i32, i32* @JZ_BUSY, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* @JZ_INT_PRG_DONE, align 4
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %66, %59
  %74 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %75 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %76 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %75, i32 0, i32 9
  store %struct.mmc_request* %74, %struct.mmc_request** %76, align 8
  %77 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %78 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %77, i32 0, i32 8
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* @MMC_ERR_NONE, align 4
  %80 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %81 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %83 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = icmp ne %struct.TYPE_2__* %84, null
  br i1 %85, label %86, label %195

86:                                               ; preds = %73
  %87 = load i32, i32* @JZ_DATA_EN, align 4
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %91 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MMC_DATA_MULTI, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %86
  %99 = load i32, i32* @JZ_AUTO_CMD12, align 4
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* @JZ_INT_AUTO_CMD12_DONE, align 4
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %98, %86
  %106 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %107 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %106, i32 0, i32 3
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MMC_DATA_WRITE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %105
  %115 = load i32, i32* @JZ_WRITE, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* @JZ_INT_PRG_DONE, align 4
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %114, %105
  %122 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %123 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %122, i32 0, i32 3
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MMC_DATA_STREAM, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load i32, i32* @JZ_STREAM, align 4
  %132 = load i32, i32* %10, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %10, align 4
  br label %138

134:                                              ; preds = %121
  %135 = load i32, i32* @JZ_INT_DATA_TRAN_DONE, align 4
  %136 = load i32, i32* %11, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %134, %130
  %139 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %140 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %139, i32 0, i32 3
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @MMC_SECTOR_SIZE, align 4
  %145 = call i32 @min(i32 %143, i32 %144)
  store i32 %145, i32* %12, align 4
  %146 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %147 = load i32, i32* @JZ_MSC_BLKLEN, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %146, i32 %147, i32 %148)
  %150 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %151 = load i32, i32* @JZ_MSC_NOB, align 4
  %152 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %153 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %152, i32 0, i32 3
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %12, align 4
  %158 = sdiv i32 %156, %157
  %159 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %150, i32 %151, i32 %158)
  %160 = load i64, i64* @jz4780_mmc_pio_mode, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %138
  %163 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %164 = call i32 @jz4780_mmc_prepare_dma(%struct.jz4780_mmc_softc* %163)
  br label %165

165:                                              ; preds = %162, %138
  %166 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %167 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i32, i32* @JZ_INT_DMAEND, align 4
  %172 = load i32, i32* %11, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %11, align 4
  br label %194

174:                                              ; preds = %165
  %175 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %176 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %175, i32 0, i32 3
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @MMC_DATA_WRITE, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %174
  %184 = load i32, i32* @JZ_INT_TXFIFO_WR_REQ, align 4
  br label %187

185:                                              ; preds = %174
  %186 = load i32, i32* @JZ_INT_RXFIFO_RD_REQ, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = load i32, i32* %11, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %11, align 4
  %191 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %192 = load i32, i32* @JZ_MSC_DMAC, align 4
  %193 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %191, i32 %192, i32 0)
  br label %194

194:                                              ; preds = %187, %170
  br label %195

195:                                              ; preds = %194, %73
  %196 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %197 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %196, i32 0, i32 7
  store i64 0, i64* %197, align 8
  %198 = load i32, i32* %11, align 4
  %199 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %200 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %202 = load i32, i32* @JZ_MSC_IMASK, align 4
  %203 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %204 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %11, align 4
  %207 = or i32 %205, %206
  %208 = xor i32 %207, -1
  %209 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %201, i32 %202, i32 %208)
  %210 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %211 = load i32, i32* @JZ_MSC_ARG, align 4
  %212 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %213 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %210, i32 %211, i32 %214)
  %216 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %217 = load i32, i32* @JZ_MSC_CMD, align 4
  %218 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  %219 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %216, i32 %217, i32 %220)
  %222 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %223 = load i32, i32* @JZ_MSC_CMDAT, align 4
  %224 = load i32, i32* %10, align 4
  %225 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %222, i32 %223, i32 %224)
  %226 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %227 = load i32, i32* @JZ_MSC_CTRL, align 4
  %228 = load i32, i32* @JZ_START_OP, align 4
  %229 = load i32, i32* @JZ_CLOCK_START, align 4
  %230 = or i32 %228, %229
  %231 = call i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc* %226, i32 %227, i32 %230)
  %232 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %233 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %232, i32 0, i32 5
  %234 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %235 = getelementptr inbounds %struct.jz4780_mmc_softc, %struct.jz4780_mmc_softc* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @hz, align 4
  %238 = mul nsw i32 %236, %237
  %239 = load i32, i32* @jz4780_mmc_timeout, align 4
  %240 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %241 = call i32 @callout_reset(i32* %233, i32 %238, i32 %239, %struct.jz4780_mmc_softc* %240)
  %242 = load %struct.jz4780_mmc_softc*, %struct.jz4780_mmc_softc** %8, align 8
  %243 = call i32 @JZ_MMC_UNLOCK(%struct.jz4780_mmc_softc* %242)
  store i32 0, i32* %4, align 4
  br label %244

244:                                              ; preds = %195, %21
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local %struct.jz4780_mmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @JZ_MMC_LOCK(%struct.jz4780_mmc_softc*) #1

declare dso_local i32 @JZ_MMC_UNLOCK(%struct.jz4780_mmc_softc*) #1

declare dso_local i32 @MMC_RSP(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @JZ_MMC_WRITE_4(%struct.jz4780_mmc_softc*, i32, i32) #1

declare dso_local i32 @jz4780_mmc_prepare_dma(%struct.jz4780_mmc_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.jz4780_mmc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
