; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_start_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/host/extr_dwmmc.c_dwmmc_start_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwmmc_softc = type { i32, i32, i64, i64, i32, %struct.TYPE_4__, %struct.mmc_command* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_command = type { i32, i32, i32, i32, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32 }

@HWTYPE_MASK = common dso_local global i32 0, align 4
@HWTYPE_ROCKCHIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cmd->opcode 0x%08x\0A\00", align 1
@MMC_STOP_TRANSMISSION = common dso_local global i64 0, align 8
@MMC_GO_IDLE_STATE = common dso_local global i64 0, align 8
@MMC_GO_INACTIVE_STATE = common dso_local global i64 0, align 8
@SDMMC_CMD_STOP_ABORT = common dso_local global i32 0, align 4
@MMC_SEND_STATUS = common dso_local global i64 0, align 8
@SDMMC_CMD_WAIT_PRVDATA = common dso_local global i32 0, align 4
@MMC_RSP_NONE = common dso_local global i64 0, align 8
@SDMMC_CMD_RESP_EXP = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@SDMMC_CMD_RESP_LONG = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@SDMMC_CMD_RESP_CRC = common dso_local global i32 0, align 4
@SDMMC_CMD_USE_HOLD_REG = common dso_local global i32 0, align 4
@CARD_INIT_DONE = common dso_local global i32 0, align 4
@SDMMC_CMD_SEND_INIT = common dso_local global i32 0, align 4
@MMC_WRITE_MULTIPLE_BLOCK = common dso_local global i64 0, align 8
@MMC_READ_MULTIPLE_BLOCK = common dso_local global i64 0, align 8
@SDMMC_CMD_SEND_ASTOP = common dso_local global i32 0, align 4
@SDMMC_CMD_DATA_EXP = common dso_local global i32 0, align 4
@MMC_DATA_STREAM = common dso_local global i32 0, align 4
@SDMMC_CMD_MODE_STREAM = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@SDMMC_CMD_DATA_WRITE = common dso_local global i32 0, align 4
@SDMMC_TMOUT = common dso_local global i32 0, align 4
@SDMMC_BYTCNT = common dso_local global i32 0, align 4
@MMC_SECTOR_SIZE = common dso_local global i32 0, align 4
@SDMMC_BLKSIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"cmdr 0x%08x\0A\00", align 1
@SDMMC_CMDARG = common dso_local global i32 0, align 4
@SDMMC_CMD = common dso_local global i32 0, align 4
@SDMMC_CMD_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwmmc_softc*, %struct.mmc_command*)* @dwmmc_start_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwmmc_start_cmd(%struct.dwmmc_softc* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.dwmmc_softc*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwmmc_softc* %0, %struct.dwmmc_softc** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %8 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %9 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %9, i32 0, i32 6
  store %struct.mmc_command* %8, %struct.mmc_command** %10, align 8
  %11 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %11, i32 0, i32 4
  %13 = load %struct.mmc_data*, %struct.mmc_data** %12, align 8
  store %struct.mmc_data* %13, %struct.mmc_data** %5, align 8
  %14 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %15 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HWTYPE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @HWTYPE_ROCKCHIP, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %23 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %24 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dwmmc_setup_bus(%struct.dwmmc_softc* %22, i32 %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %31 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %7, align 4
  %38 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @MMC_STOP_TRANSMISSION, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %62, label %48

48:                                               ; preds = %29
  %49 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @MMC_GO_IDLE_STATE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %57 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @MMC_GO_INACTIVE_STATE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55, %48, %29
  %63 = load i32, i32* @SDMMC_CMD_STOP_ABORT, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %81

66:                                               ; preds = %55
  %67 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %68 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @MMC_SEND_STATUS, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %75 = icmp ne %struct.mmc_data* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @SDMMC_CMD_WAIT_PRVDATA, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %73, %66
  br label %81

81:                                               ; preds = %80, %62
  %82 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %83 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @MMC_RSP(i32 %84)
  %86 = load i64, i64* @MMC_RSP_NONE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %81
  %89 = load i32, i32* @SDMMC_CMD_RESP_EXP, align 4
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %93 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MMC_RSP_136, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %88
  %99 = load i32, i32* @SDMMC_CMD_RESP_LONG, align 4
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %98, %88
  br label %103

103:                                              ; preds = %102, %81
  %104 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %105 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MMC_RSP_CRC, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @SDMMC_CMD_RESP_CRC, align 4
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load i32, i32* @SDMMC_CMD_USE_HOLD_REG, align 4
  %116 = load i32, i32* %7, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %119 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CARD_INIT_DONE, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %114
  %125 = load i32, i32* @CARD_INIT_DONE, align 4
  %126 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %127 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* @SDMMC_CMD_SEND_INIT, align 4
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %124, %114
  %134 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %135 = icmp ne %struct.mmc_data* %134, null
  br i1 %135, label %136, label %225

136:                                              ; preds = %133
  %137 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %138 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* @MMC_WRITE_MULTIPLE_BLOCK, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %150, label %143

143:                                              ; preds = %136
  %144 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %145 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* @MMC_READ_MULTIPLE_BLOCK, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %143, %136
  %151 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %152 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* @SDMMC_CMD_SEND_ASTOP, align 4
  %157 = load i32, i32* %7, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %155, %150, %143
  %160 = load i32, i32* @SDMMC_CMD_DATA_EXP, align 4
  %161 = load i32, i32* %7, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %7, align 4
  %163 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %164 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @MMC_DATA_STREAM, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %159
  %170 = load i32, i32* @SDMMC_CMD_MODE_STREAM, align 4
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %169, %159
  %174 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %175 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @MMC_DATA_WRITE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load i32, i32* @SDMMC_CMD_DATA_WRITE, align 4
  %182 = load i32, i32* %7, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %180, %173
  %185 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %186 = load i32, i32* @SDMMC_TMOUT, align 4
  %187 = call i32 @WRITE4(%struct.dwmmc_softc* %185, i32 %186, i32 -1)
  %188 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %189 = load i32, i32* @SDMMC_BYTCNT, align 4
  %190 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %191 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @WRITE4(%struct.dwmmc_softc* %188, i32 %189, i32 %192)
  %194 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %195 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @MMC_SECTOR_SIZE, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %184
  %200 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %201 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  br label %205

203:                                              ; preds = %184
  %204 = load i32, i32* @MMC_SECTOR_SIZE, align 4
  br label %205

205:                                              ; preds = %203, %199
  %206 = phi i32 [ %202, %199 ], [ %204, %203 ]
  store i32 %206, i32* %6, align 4
  %207 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %208 = load i32, i32* @SDMMC_BLKSIZ, align 4
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @WRITE4(%struct.dwmmc_softc* %207, i32 %208, i32 %209)
  %211 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %212 = getelementptr inbounds %struct.dwmmc_softc, %struct.dwmmc_softc* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %205
  %216 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %217 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %218 = call i32 @pio_prepare(%struct.dwmmc_softc* %216, %struct.mmc_command* %217)
  br label %223

219:                                              ; preds = %205
  %220 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %221 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %222 = call i32 @dma_prepare(%struct.dwmmc_softc* %220, %struct.mmc_command* %221)
  br label %223

223:                                              ; preds = %219, %215
  %224 = call i32 (...) @wmb()
  br label %225

225:                                              ; preds = %223, %133
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %226)
  %228 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %229 = load i32, i32* @SDMMC_CMDARG, align 4
  %230 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %231 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @WRITE4(%struct.dwmmc_softc* %228, i32 %229, i32 %232)
  %234 = call i32 (...) @wmb()
  %235 = load %struct.dwmmc_softc*, %struct.dwmmc_softc** %3, align 8
  %236 = load i32, i32* @SDMMC_CMD, align 4
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* @SDMMC_CMD_START, align 4
  %239 = or i32 %237, %238
  %240 = call i32 @WRITE4(%struct.dwmmc_softc* %235, i32 %236, i32 %239)
  ret void
}

declare dso_local i32 @dwmmc_setup_bus(%struct.dwmmc_softc*, i32) #1

declare dso_local i32 @dprintf(i8*, i32) #1

declare dso_local i64 @MMC_RSP(i32) #1

declare dso_local i32 @WRITE4(%struct.dwmmc_softc*, i32, i32) #1

declare dso_local i32 @pio_prepare(%struct.dwmmc_softc*, %struct.mmc_command*) #1

declare dso_local i32 @dma_prepare(%struct.dwmmc_softc*, %struct.mmc_command*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
