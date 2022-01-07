; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_handle_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_handle_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i32, i32, %struct.msk_if_softc**, i32, i32, i32, i32, %struct.msk_stat_desc* }
%struct.msk_if_softc = type { i32, %struct.TYPE_4__, i64, %struct.TYPE_3__*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.msk_stat_desc = type { i32, i32 }

@STAT_PUT_IDX = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@MSK_PORT_B = common dso_local global i64 0, align 8
@MSK_PORT_A = common dso_local global i64 0, align 8
@HW_OWNER = common dso_local global i32 0, align 4
@STLE_LEN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid port opcode 0x%08x\0A\00", align 1
@STLE_OP_MASK = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i64 0, align 8
@MSK_RX_BUF_ALIGN = common dso_local global i64 0, align 8
@STLE_TXA1_MSKL = common dso_local global i32 0, align 4
@STLE_TXA2_MSKL = common dso_local global i32 0, align 4
@STLE_TXA2_SHIFTL = common dso_local global i32 0, align 4
@STLE_TXA2_MSKH = common dso_local global i32 0, align 4
@STLE_TXA2_SHIFTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unhandled opcode 0x%08x\0A\00", align 1
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msk_softc*)* @msk_handle_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msk_handle_events(%struct.msk_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca %struct.msk_if_softc*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct.msk_stat_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.msk_softc* %0, %struct.msk_softc** %3, align 8
  %13 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %14 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %17 = load i32, i32* @STAT_PUT_IDX, align 4
  %18 = call i32 @CSR_READ_2(%struct.msk_softc* %16, i32 %17)
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %279

21:                                               ; preds = %1
  %22 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %23 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %26 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %29 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @bus_dmamap_sync(i32 %24, i32 %27, i32 %30)
  %32 = load i64, i64* @MSK_PORT_B, align 8
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %32
  store i32 0, i32* %33, align 4
  %34 = load i64, i64* @MSK_PORT_A, align 8
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %34
  store i32 0, i32* %35, align 4
  store i32 0, i32* %12, align 4
  %36 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %37 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %230, %83, %21
  %40 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %41 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %40, i32 0, i32 7
  %42 = load %struct.msk_stat_desc*, %struct.msk_stat_desc** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.msk_stat_desc, %struct.msk_stat_desc* %42, i64 %44
  store %struct.msk_stat_desc* %45, %struct.msk_stat_desc** %6, align 8
  %46 = load %struct.msk_stat_desc*, %struct.msk_stat_desc** %6, align 8
  %47 = getelementptr inbounds %struct.msk_stat_desc, %struct.msk_stat_desc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32toh(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @HW_OWNER, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %231

55:                                               ; preds = %39
  %56 = load i32, i32* @HW_OWNER, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @htole32(i32 %60)
  %62 = load %struct.msk_stat_desc*, %struct.msk_stat_desc** %6, align 8
  %63 = getelementptr inbounds %struct.msk_stat_desc, %struct.msk_stat_desc* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.msk_stat_desc*, %struct.msk_stat_desc** %6, align 8
  %65 = getelementptr inbounds %struct.msk_stat_desc, %struct.msk_stat_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32toh(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @STLE_LEN_MASK, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %7, align 4
  %72 = ashr i32 %71, 16
  %73 = and i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %75 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %74, i32 0, i32 2
  %76 = load %struct.msk_if_softc**, %struct.msk_if_softc*** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.msk_if_softc*, %struct.msk_if_softc** %76, i64 %78
  %80 = load %struct.msk_if_softc*, %struct.msk_if_softc** %79, align 8
  store %struct.msk_if_softc* %80, %struct.msk_if_softc** %4, align 8
  %81 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %82 = icmp eq %struct.msk_if_softc* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %55
  %84 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %85 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @STLE_OP_MASK, align 4
  %89 = and i32 %87, %88
  %90 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %39

91:                                               ; preds = %55
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @STLE_OP_MASK, align 4
  %94 = and i32 %92, %93
  switch i32 %94, label %210 [
    i32 129, label %95
    i32 131, label %100
    i32 132, label %105
    i32 130, label %109
    i32 128, label %163
  ]

95:                                               ; preds = %91
  %96 = load i32, i32* %10, align 4
  %97 = call i8* @ntohs(i32 %96)
  %98 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %99 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  br label %218

100:                                              ; preds = %91
  %101 = load i32, i32* %10, align 4
  %102 = call i8* @ntohs(i32 %101)
  %103 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %104 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %91, %100
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %108 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %218

109:                                              ; preds = %91
  %110 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %111 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %110, i32 0, i32 3
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %109
  br label %218

119:                                              ; preds = %109
  %120 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %121 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @MCLBYTES, align 8
  %124 = load i64, i64* @MSK_RX_BUF_ALIGN, align 8
  %125 = sub nsw i64 %123, %124
  %126 = icmp sgt i64 %122, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @msk_jumbo_rxeof(%struct.msk_if_softc* %128, i32 %129, i32 %130, i32 %131)
  br label %139

133:                                              ; preds = %119
  %134 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @msk_rxeof(%struct.msk_if_softc* %134, i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %133, %127
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %152 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp sge i32 %150, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %139
  %157 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %158 = call i32 @msk_rxput(%struct.msk_if_softc* %157)
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %160
  store i32 0, i32* %161, align 4
  br label %162

162:                                              ; preds = %156, %139
  br label %218

163:                                              ; preds = %91
  %164 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %165 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %164, i32 0, i32 2
  %166 = load %struct.msk_if_softc**, %struct.msk_if_softc*** %165, align 8
  %167 = load i64, i64* @MSK_PORT_A, align 8
  %168 = getelementptr inbounds %struct.msk_if_softc*, %struct.msk_if_softc** %166, i64 %167
  %169 = load %struct.msk_if_softc*, %struct.msk_if_softc** %168, align 8
  %170 = icmp ne %struct.msk_if_softc* %169, null
  br i1 %170, label %171, label %182

171:                                              ; preds = %163
  %172 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %173 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %172, i32 0, i32 2
  %174 = load %struct.msk_if_softc**, %struct.msk_if_softc*** %173, align 8
  %175 = load i64, i64* @MSK_PORT_A, align 8
  %176 = getelementptr inbounds %struct.msk_if_softc*, %struct.msk_if_softc** %174, i64 %175
  %177 = load %struct.msk_if_softc*, %struct.msk_if_softc** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @STLE_TXA1_MSKL, align 4
  %180 = and i32 %178, %179
  %181 = call i32 @msk_txeof(%struct.msk_if_softc* %177, i32 %180)
  br label %182

182:                                              ; preds = %171, %163
  %183 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %184 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %183, i32 0, i32 2
  %185 = load %struct.msk_if_softc**, %struct.msk_if_softc*** %184, align 8
  %186 = load i64, i64* @MSK_PORT_B, align 8
  %187 = getelementptr inbounds %struct.msk_if_softc*, %struct.msk_if_softc** %185, i64 %186
  %188 = load %struct.msk_if_softc*, %struct.msk_if_softc** %187, align 8
  %189 = icmp ne %struct.msk_if_softc* %188, null
  br i1 %189, label %190, label %209

190:                                              ; preds = %182
  %191 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %192 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %191, i32 0, i32 2
  %193 = load %struct.msk_if_softc**, %struct.msk_if_softc*** %192, align 8
  %194 = load i64, i64* @MSK_PORT_B, align 8
  %195 = getelementptr inbounds %struct.msk_if_softc*, %struct.msk_if_softc** %193, i64 %194
  %196 = load %struct.msk_if_softc*, %struct.msk_if_softc** %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @STLE_TXA2_MSKL, align 4
  %199 = and i32 %197, %198
  %200 = load i32, i32* @STLE_TXA2_SHIFTL, align 4
  %201 = ashr i32 %199, %200
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @STLE_TXA2_MSKH, align 4
  %204 = and i32 %202, %203
  %205 = load i32, i32* @STLE_TXA2_SHIFTH, align 4
  %206 = shl i32 %204, %205
  %207 = or i32 %201, %206
  %208 = call i32 @msk_txeof(%struct.msk_if_softc* %196, i32 %207)
  br label %209

209:                                              ; preds = %190, %182
  br label %218

210:                                              ; preds = %91
  %211 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %212 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* @STLE_OP_MASK, align 4
  %216 = and i32 %214, %215
  %217 = call i32 @device_printf(i32 %213, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %210, %209, %162, %118, %105, %95
  %219 = load i32, i32* %9, align 4
  %220 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %221 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @MSK_INC(i32 %219, i32 %222)
  %224 = load i32, i32* %12, align 4
  %225 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %226 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp sgt i32 %224, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %218
  br label %231

230:                                              ; preds = %218
  br label %39

231:                                              ; preds = %229, %54
  %232 = load i32, i32* %9, align 4
  %233 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %234 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %236 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %239 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %242 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @bus_dmamap_sync(i32 %237, i32 %240, i32 %243)
  %245 = load i64, i64* @MSK_PORT_A, align 8
  %246 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %231
  %250 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %251 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %250, i32 0, i32 2
  %252 = load %struct.msk_if_softc**, %struct.msk_if_softc*** %251, align 8
  %253 = load i64, i64* @MSK_PORT_A, align 8
  %254 = getelementptr inbounds %struct.msk_if_softc*, %struct.msk_if_softc** %252, i64 %253
  %255 = load %struct.msk_if_softc*, %struct.msk_if_softc** %254, align 8
  %256 = call i32 @msk_rxput(%struct.msk_if_softc* %255)
  br label %257

257:                                              ; preds = %249, %231
  %258 = load i64, i64* @MSK_PORT_B, align 8
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %257
  %263 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %264 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %263, i32 0, i32 2
  %265 = load %struct.msk_if_softc**, %struct.msk_if_softc*** %264, align 8
  %266 = load i64, i64* @MSK_PORT_B, align 8
  %267 = getelementptr inbounds %struct.msk_if_softc*, %struct.msk_if_softc** %265, i64 %266
  %268 = load %struct.msk_if_softc*, %struct.msk_if_softc** %267, align 8
  %269 = call i32 @msk_rxput(%struct.msk_if_softc* %268)
  br label %270

270:                                              ; preds = %262, %257
  %271 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %272 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %275 = load i32, i32* @STAT_PUT_IDX, align 4
  %276 = call i32 @CSR_READ_2(%struct.msk_softc* %274, i32 %275)
  %277 = icmp ne i32 %273, %276
  %278 = zext i1 %277 to i32
  store i32 %278, i32* %2, align 4
  br label %279

279:                                              ; preds = %270, %20
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local i32 @CSR_READ_2(%struct.msk_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @msk_jumbo_rxeof(%struct.msk_if_softc*, i32, i32, i32) #1

declare dso_local i32 @msk_rxeof(%struct.msk_if_softc*, i32, i32, i32) #1

declare dso_local i32 @msk_rxput(%struct.msk_if_softc*) #1

declare dso_local i32 @msk_txeof(%struct.msk_if_softc*, i32) #1

declare dso_local i32 @MSK_INC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
