; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_em_txrx.c_em_isc_txd_encap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_em_txrx.c_em_isc_txd_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.adapter = type { i32, i32, %struct.em_tx_queue*, %struct.TYPE_11__* }
%struct.em_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i32, i32*, i64, i32, %struct.e1000_tx_desc* }
%struct.e1000_tx_desc = type { %struct.TYPE_10__, %struct.TYPE_9__, i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32* }

@IPI_TX_INTR = common dso_local global i32 0, align 4
@E1000_TXD_CMD_RS = common dso_local global i32 0, align 4
@CSUM_TSO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@EM_CSUM_OFFLOAD = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@E1000_TXD_CMD_VLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"encap: set up tx: nsegs=%d first=%d i=%d\0A\00", align 1
@E1000_TXD_CMD_IFCS = common dso_local global i32 0, align 4
@TSO_WORKAROUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"TSO path pidx_last=%d i=%d ntxd[0]=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"pidx_last=%d i=%d ntxd[0]=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"setting to RS on %d rs_pidx %d first: %d\0A\00", align 1
@E1000_TXD_CMD_EOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"tx_buffers[%d]->eop = %d ipi_new_pidx=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_12__*)* @em_isc_txd_encap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_isc_txd_encap(i8* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.em_tx_queue*, align 8
  %8 = alloca %struct.tx_ring*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.e1000_tx_desc*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = bitcast i8* %26 to %struct.adapter*
  store %struct.adapter* %27, %struct.adapter** %5, align 8
  %28 = load %struct.adapter*, %struct.adapter** %5, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 3
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %6, align 8
  %31 = load %struct.adapter*, %struct.adapter** %5, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 2
  %33 = load %struct.em_tx_queue*, %struct.em_tx_queue** %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %33, i64 %36
  store %struct.em_tx_queue* %37, %struct.em_tx_queue** %7, align 8
  %38 = load %struct.em_tx_queue*, %struct.em_tx_queue** %7, align 8
  %39 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %38, i32 0, i32 0
  store %struct.tx_ring* %39, %struct.tx_ring** %8, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %9, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store %struct.e1000_tx_desc* null, %struct.e1000_tx_desc** %19, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IPI_TX_INTR, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %2
  %56 = load i32, i32* @E1000_TXD_CMD_RS, align 4
  br label %58

57:                                               ; preds = %2
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  store i32 %59, i32* %16, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %14, align 4
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @CSUM_TSO, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %20, align 4
  %66 = load i8*, i8** @FALSE, align 8
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %21, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %22, align 4
  %73 = load i32, i32* %20, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %58
  %76 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %77 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @TRUE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %21, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i8*, i8** @FALSE, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %90 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %86, %75, %58
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.adapter*, %struct.adapter** %5, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = call i32 @em_tso_setup(%struct.adapter* %95, %struct.TYPE_12__* %96, i32* %17, i32* %18)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* @TRUE, align 4
  store i32 %98, i32* %21, align 4
  br label %109

99:                                               ; preds = %91
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @EM_CSUM_OFFLOAD, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.adapter*, %struct.adapter** %5, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = call i32 @em_transmit_checksum_setup(%struct.adapter* %105, %struct.TYPE_12__* %106, i32* %17, i32* %18)
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %104, %99
  br label %109

109:                                              ; preds = %108, %94
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @M_VLANTAG, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %109
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @htole16(i32 %119)
  %121 = shl i32 %120, 16
  %122 = load i32, i32* %17, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* @E1000_TXD_CMD_VLE, align 4
  %125 = call i32 @htole32(i32 %124)
  %126 = load i32, i32* %18, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %18, align 4
  br label %128

128:                                              ; preds = %116, %109
  %129 = load %struct.adapter*, %struct.adapter** %5, align 8
  %130 = getelementptr inbounds %struct.adapter, %struct.adapter* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @iflib_get_dev(i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @DPRINTF(i32 %132, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %134, i32 %135)
  store i32 0, i32* %13, align 4
  br label %137

137:                                              ; preds = %300, %128
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %303

141:                                              ; preds = %137
  %142 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %143 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %142, i32 0, i32 4
  %144 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %144, i64 %146
  store %struct.e1000_tx_desc* %147, %struct.e1000_tx_desc** %19, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %24, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %23, align 4
  %160 = load i32, i32* @E1000_TXD_CMD_IFCS, align 4
  %161 = load %struct.adapter*, %struct.adapter** %5, align 8
  %162 = getelementptr inbounds %struct.adapter, %struct.adapter* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %160, %163
  store i32 %164, i32* %25, align 4
  %165 = load i32, i32* %21, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %257

167:                                              ; preds = %141
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %10, align 4
  %170 = sub nsw i32 %169, 1
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %257

172:                                              ; preds = %167
  %173 = load i32, i32* %23, align 4
  %174 = icmp sgt i32 %173, 8
  br i1 %174, label %175, label %257

175:                                              ; preds = %172
  %176 = load i32, i32* @TSO_WORKAROUND, align 4
  %177 = load i32, i32* %23, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* %23, align 4
  %179 = load i64, i64* %24, align 8
  %180 = call i8* @htole64(i64 %179)
  %181 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %19, align 8
  %182 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %181, i32 0, i32 2
  store i8* %180, i8** %182, align 8
  %183 = load i32, i32* %25, align 4
  %184 = load i32, i32* %18, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* %23, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @htole32(i32 %187)
  %189 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %19, align 8
  %190 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  store i32 %188, i32* %191, align 8
  %192 = load i32, i32* %17, align 4
  %193 = call i32 @htole32(i32 %192)
  %194 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %19, align 8
  %195 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 4
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %12, align 4
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %198, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %175
  store i32 0, i32* %12, align 4
  br label %206

206:                                              ; preds = %205, %175
  %207 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %208 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %207, i32 0, i32 4
  %209 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %208, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %209, i64 %211
  store %struct.e1000_tx_desc* %212, %struct.e1000_tx_desc** %19, align 8
  %213 = load i64, i64* %24, align 8
  %214 = load i32, i32* %23, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %213, %215
  %217 = call i8* @htole64(i64 %216)
  %218 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %19, align 8
  %219 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %218, i32 0, i32 2
  store i8* %217, i8** %219, align 8
  %220 = load i32, i32* %25, align 4
  %221 = load i32, i32* %18, align 4
  %222 = or i32 %220, %221
  %223 = load i32, i32* @TSO_WORKAROUND, align 4
  %224 = or i32 %222, %223
  %225 = call i32 @htole32(i32 %224)
  %226 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %19, align 8
  %227 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  store i32 %225, i32* %228, align 8
  %229 = load i32, i32* %17, align 4
  %230 = call i32 @htole32(i32 %229)
  %231 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %19, align 8
  %232 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 4
  %234 = load i32, i32* %12, align 4
  store i32 %234, i32* %15, align 4
  %235 = load i32, i32* %12, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %12, align 4
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %236, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %206
  store i32 0, i32* %12, align 4
  br label %244

244:                                              ; preds = %243, %206
  %245 = load %struct.adapter*, %struct.adapter** %5, align 8
  %246 = getelementptr inbounds %struct.adapter, %struct.adapter* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @iflib_get_dev(i32 %247)
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* %12, align 4
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @DPRINTF(i32 %248, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %249, i32 %250, i32 %255)
  br label %299

257:                                              ; preds = %172, %167, %141
  %258 = load i64, i64* %24, align 8
  %259 = call i8* @htole64(i64 %258)
  %260 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %19, align 8
  %261 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %260, i32 0, i32 2
  store i8* %259, i8** %261, align 8
  %262 = load i32, i32* %25, align 4
  %263 = load i32, i32* %18, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* %23, align 4
  %266 = or i32 %264, %265
  %267 = call i32 @htole32(i32 %266)
  %268 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %19, align 8
  %269 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  store i32 %267, i32* %270, align 8
  %271 = load i32, i32* %17, align 4
  %272 = call i32 @htole32(i32 %271)
  %273 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %19, align 8
  %274 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  store i32 %272, i32* %275, align 4
  %276 = load i32, i32* %12, align 4
  store i32 %276, i32* %15, align 4
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %12, align 4
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %278, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %257
  store i32 0, i32* %12, align 4
  br label %286

286:                                              ; preds = %285, %257
  %287 = load %struct.adapter*, %struct.adapter** %5, align 8
  %288 = getelementptr inbounds %struct.adapter, %struct.adapter* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @iflib_get_dev(i32 %289)
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %12, align 4
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @DPRINTF(i32 %290, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %291, i32 %292, i32 %297)
  br label %299

299:                                              ; preds = %286, %244
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %13, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %13, align 4
  br label %137

303:                                              ; preds = %137
  %304 = load i32, i32* %16, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %349

306:                                              ; preds = %303
  %307 = load i32, i32* %10, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %349

309:                                              ; preds = %306
  %310 = load i32, i32* %15, align 4
  %311 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %312 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %315 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %314, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds i32, i32* %313, i64 %316
  store i32 %310, i32* %317, align 4
  %318 = load %struct.adapter*, %struct.adapter** %5, align 8
  %319 = getelementptr inbounds %struct.adapter, %struct.adapter* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @iflib_get_dev(i32 %320)
  %322 = load i32, i32* %15, align 4
  %323 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %324 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = trunc i64 %325 to i32
  %327 = load i32, i32* %14, align 4
  %328 = call i32 @DPRINTF(i32 %321, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %322, i32 %326, i32 %327)
  %329 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %330 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %329, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = add i64 %331, 1
  %333 = load i32, i32* %22, align 4
  %334 = sub nsw i32 %333, 1
  %335 = sext i32 %334 to i64
  %336 = and i64 %332, %335
  %337 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %338 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %337, i32 0, i32 2
  store i64 %336, i64* %338, align 8
  %339 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %340 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %339, i32 0, i32 2
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.tx_ring*, %struct.tx_ring** %8, align 8
  %343 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 8
  %345 = sext i32 %344 to i64
  %346 = icmp ne i64 %341, %345
  %347 = zext i1 %346 to i32
  %348 = call i32 @MPASS(i32 %347)
  br label %349

349:                                              ; preds = %309, %306, %303
  %350 = load i32, i32* @E1000_TXD_CMD_EOP, align 4
  %351 = load i32, i32* %16, align 4
  %352 = or i32 %350, %351
  %353 = call i32 @htole32(i32 %352)
  %354 = load %struct.e1000_tx_desc*, %struct.e1000_tx_desc** %19, align 8
  %355 = getelementptr inbounds %struct.e1000_tx_desc, %struct.e1000_tx_desc* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = or i32 %357, %353
  store i32 %358, i32* %356, align 8
  %359 = load %struct.adapter*, %struct.adapter** %5, align 8
  %360 = getelementptr inbounds %struct.adapter, %struct.adapter* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @iflib_get_dev(i32 %361)
  %363 = load i32, i32* %14, align 4
  %364 = load i32, i32* %15, align 4
  %365 = load i32, i32* %12, align 4
  %366 = call i32 @DPRINTF(i32 %362, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %363, i32 %364, i32 %365)
  %367 = load i32, i32* %12, align 4
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 6
  store i32 %367, i32* %369, align 4
  ret i32 0
}

declare dso_local i32 @em_tso_setup(%struct.adapter*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @em_transmit_checksum_setup(%struct.adapter*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @DPRINTF(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i8* @htole64(i64) #1

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
