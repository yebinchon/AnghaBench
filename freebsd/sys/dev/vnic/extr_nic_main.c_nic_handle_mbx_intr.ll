; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_handle_mbx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_handle_mbx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.nicpf = type { i8**, i32, %struct.TYPE_12__*, i32, i32*, i32*, i32*, i32* }
%struct.TYPE_12__ = type { i8* }
%union.nic_mbx = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@__const.nic_handle_mbx_intr.mbx = private unnamed_addr constant { %struct.TYPE_13__, [8 x i8] } { %struct.TYPE_13__ zeroinitializer, [8 x i8] undef }, align 4
@TRUE = common dso_local global i8* null, align 8
@NIC_PF_VF_MAILBOX_SIZE = common dso_local global i32 0, align 4
@MAX_LMAC = common dso_local global i32 0, align 4
@NIC_PF_QSET_0_127_CFG = common dso_local global i32 0, align 4
@NIC_QS_ID_SHIFT = common dso_local global i32 0, align 4
@NIC_PF_QSET_0_127_RQ_0_7_CFG = common dso_local global i32 0, align 4
@NIC_Q_NUM_SHIFT = common dso_local global i32 0, align 4
@NIC_PF_QSET_0_127_RQ_0_7_BP_CFG = common dso_local global i32 0, align 4
@NIC_PF_QSET_0_127_RQ_0_7_DROP_CFG = common dso_local global i32 0, align 4
@NIC_PF_QSET_0_127_SQ_0_7_CFG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Invalid msg from VF%d, msg 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, i32)* @nic_handle_mbx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_handle_mbx_intr(%struct.nicpf* %0, i32 %1) #0 {
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.nic_mbx, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = bitcast %union.nic_mbx* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ({ %struct.TYPE_13__, [8 x i8] }* @__const.nic_handle_mbx_intr.mbx to i8*), i64 12, i1 false)
  store i32 0, i32* %13, align 4
  %15 = load i8*, i8** @TRUE, align 8
  %16 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %17 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  store i8* %15, i8** %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @nic_get_mbx_addr(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = bitcast %union.nic_mbx* %5 to i32*
  store i32* %24, i32** %6, align 8
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %40, %2
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @NIC_PF_VF_MAILBOX_SIZE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @nic_reg_read(%struct.nicpf* %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %25

43:                                               ; preds = %25
  %44 = bitcast %union.nic_mbx* %5 to %struct.TYPE_13__*
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %254 [
    i32 139, label %47
    i32 140, label %74
    i32 137, label %89
    i32 138, label %109
    i32 135, label %129
    i32 136, label %132
    i32 128, label %152
    i32 131, label %178
    i32 130, label %207
    i32 142, label %216
    i32 132, label %220
    i32 134, label %224
    i32 133, label %224
    i32 143, label %228
    i32 129, label %237
    i32 144, label %246
    i32 141, label %250
  ]

47:                                               ; preds = %43
  %48 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @nic_mbx_send_ready(%struct.nicpf* %48, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @MAX_LMAC, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %47
  %55 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %56 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %55, i32 0, i32 7
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 0, i32* %60, align 4
  %61 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %62 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 0, i32* %66, align 4
  %67 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %68 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %54, %47
  store i32 1, i32* %13, align 4
  br label %263

74:                                               ; preds = %43
  %75 = load i32, i32* @NIC_PF_QSET_0_127_CFG, align 4
  %76 = bitcast %union.nic_mbx* %5 to %struct.TYPE_9__*
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NIC_QS_ID_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = or i32 %75, %80
  store i32 %81, i32* %8, align 4
  %82 = bitcast %union.nic_mbx* %5 to %struct.TYPE_9__*
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %9, align 4
  %85 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @nic_reg_write(%struct.nicpf* %85, i32 %86, i32 %87)
  br label %263

89:                                               ; preds = %43
  %90 = load i32, i32* @NIC_PF_QSET_0_127_RQ_0_7_CFG, align 4
  %91 = bitcast %union.nic_mbx* %5 to %struct.TYPE_8__*
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NIC_QS_ID_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = or i32 %90, %95
  %97 = bitcast %union.nic_mbx* %5 to %struct.TYPE_8__*
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @NIC_Q_NUM_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %96, %101
  store i32 %102, i32* %8, align 4
  %103 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %104 = load i32, i32* %8, align 4
  %105 = bitcast %union.nic_mbx* %5 to %struct.TYPE_8__*
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @nic_reg_write(%struct.nicpf* %103, i32 %104, i32 %107)
  br label %263

109:                                              ; preds = %43
  %110 = load i32, i32* @NIC_PF_QSET_0_127_RQ_0_7_BP_CFG, align 4
  %111 = bitcast %union.nic_mbx* %5 to %struct.TYPE_8__*
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NIC_QS_ID_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = or i32 %110, %115
  %117 = bitcast %union.nic_mbx* %5 to %struct.TYPE_8__*
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @NIC_Q_NUM_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = or i32 %116, %121
  store i32 %122, i32* %8, align 4
  %123 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %124 = load i32, i32* %8, align 4
  %125 = bitcast %union.nic_mbx* %5 to %struct.TYPE_8__*
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @nic_reg_write(%struct.nicpf* %123, i32 %124, i32 %127)
  br label %263

129:                                              ; preds = %43
  %130 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %131 = call i32 @nic_rcv_queue_sw_sync(%struct.nicpf* %130)
  store i32 %131, i32* %13, align 4
  br label %263

132:                                              ; preds = %43
  %133 = load i32, i32* @NIC_PF_QSET_0_127_RQ_0_7_DROP_CFG, align 4
  %134 = bitcast %union.nic_mbx* %5 to %struct.TYPE_8__*
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @NIC_QS_ID_SHIFT, align 4
  %138 = shl i32 %136, %137
  %139 = or i32 %133, %138
  %140 = bitcast %union.nic_mbx* %5 to %struct.TYPE_8__*
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @NIC_Q_NUM_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = or i32 %139, %144
  store i32 %145, i32* %8, align 4
  %146 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %147 = load i32, i32* %8, align 4
  %148 = bitcast %union.nic_mbx* %5 to %struct.TYPE_8__*
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @nic_reg_write(%struct.nicpf* %146, i32 %147, i32 %150)
  br label %263

152:                                              ; preds = %43
  %153 = load i32, i32* @NIC_PF_QSET_0_127_SQ_0_7_CFG, align 4
  %154 = bitcast %union.nic_mbx* %5 to %struct.TYPE_14__*
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @NIC_QS_ID_SHIFT, align 4
  %158 = shl i32 %156, %157
  %159 = or i32 %153, %158
  %160 = bitcast %union.nic_mbx* %5 to %struct.TYPE_14__*
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @NIC_Q_NUM_SHIFT, align 4
  %164 = shl i32 %162, %163
  %165 = or i32 %159, %164
  store i32 %165, i32* %8, align 4
  %166 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %167 = load i32, i32* %8, align 4
  %168 = bitcast %union.nic_mbx* %5 to %struct.TYPE_14__*
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @nic_reg_write(%struct.nicpf* %166, i32 %167, i32 %170)
  %172 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %173 = bitcast %union.nic_mbx* %5 to %struct.TYPE_9__*
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = bitcast %union.nic_mbx* %5 to %struct.TYPE_14__*
  %177 = call i32 @nic_tx_channel_cfg(%struct.nicpf* %172, i32 %175, %struct.TYPE_14__* %176)
  br label %263

178:                                              ; preds = %43
  %179 = bitcast %union.nic_mbx* %5 to %struct.TYPE_10__*
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %11, align 4
  %182 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %183 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %182, i32 0, i32 4
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32 %188)
  store i32 %189, i32* %10, align 4
  %190 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %191 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %190, i32 0, i32 4
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32 %196)
  store i32 %197, i32* %11, align 4
  %198 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %199 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %11, align 4
  %203 = bitcast %union.nic_mbx* %5 to %struct.TYPE_10__*
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @bgx_set_lmac_mac(i32 %200, i32 %201, i32 %202, i32 %205)
  br label %263

207:                                              ; preds = %43
  %208 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %209 = bitcast %union.nic_mbx* %5 to %struct.TYPE_11__*
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = bitcast %union.nic_mbx* %5 to %struct.TYPE_11__*
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @nic_update_hw_frs(%struct.nicpf* %208, i32 %211, i32 %214)
  store i32 %215, i32* %13, align 4
  br label %263

216:                                              ; preds = %43
  %217 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %218 = bitcast %union.nic_mbx* %5 to i32*
  %219 = call i32 @nic_config_cpi(%struct.nicpf* %217, i32* %218)
  br label %263

220:                                              ; preds = %43
  %221 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %222 = load i32, i32* %4, align 4
  %223 = call i32 @nic_send_rss_size(%struct.nicpf* %221, i32 %222)
  br label %281

224:                                              ; preds = %43, %43
  %225 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %226 = bitcast %union.nic_mbx* %5 to i32*
  %227 = call i32 @nic_config_rss(%struct.nicpf* %225, i32* %226)
  br label %263

228:                                              ; preds = %43
  %229 = load i8*, i8** @TRUE, align 8
  %230 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %231 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %230, i32 0, i32 2
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %231, align 8
  %233 = load i32, i32* %4, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  store i8* %229, i8** %236, align 8
  br label %281

237:                                              ; preds = %43
  %238 = load i8*, i8** @FALSE, align 8
  %239 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %240 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %239, i32 0, i32 2
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = load i32, i32* %4, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  store i8* %238, i8** %245, align 8
  br label %263

246:                                              ; preds = %43
  %247 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %248 = bitcast %union.nic_mbx* %5 to i32*
  %249 = call i32 @nic_get_bgx_stats(%struct.nicpf* %247, i32* %248)
  br label %281

250:                                              ; preds = %43
  %251 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %252 = bitcast %union.nic_mbx* %5 to i32*
  %253 = call i32 @nic_config_loopback(%struct.nicpf* %251, i32* %252)
  store i32 %253, i32* %13, align 4
  br label %263

254:                                              ; preds = %43
  %255 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %256 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %4, align 4
  %259 = bitcast %union.nic_mbx* %5 to %struct.TYPE_13__*
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @device_printf(i32 %257, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %258, i32 %261)
  br label %263

263:                                              ; preds = %254, %250, %237, %224, %216, %207, %178, %152, %132, %129, %109, %89, %74, %73
  %264 = load i32, i32* %13, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %268 = load i32, i32* %4, align 4
  %269 = call i32 @nic_mbx_send_ack(%struct.nicpf* %267, i32 %268)
  br label %280

270:                                              ; preds = %263
  %271 = bitcast %union.nic_mbx* %5 to %struct.TYPE_13__*
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 139
  br i1 %274, label %275, label %279

275:                                              ; preds = %270
  %276 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %277 = load i32, i32* %4, align 4
  %278 = call i32 @nic_mbx_send_nack(%struct.nicpf* %276, i32 %277)
  br label %279

279:                                              ; preds = %275, %270
  br label %280

280:                                              ; preds = %279, %266
  br label %281

281:                                              ; preds = %280, %246, %228, %220
  %282 = load i8*, i8** @FALSE, align 8
  %283 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %284 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %283, i32 0, i32 0
  %285 = load i8**, i8*** %284, align 8
  %286 = load i32, i32* %4, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8*, i8** %285, i64 %287
  store i8* %282, i8** %288, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @nic_get_mbx_addr(i32) #2

declare dso_local i32 @nic_reg_read(%struct.nicpf*, i32) #2

declare dso_local i32 @nic_mbx_send_ready(%struct.nicpf*, i32) #2

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i32, i32) #2

declare dso_local i32 @nic_rcv_queue_sw_sync(%struct.nicpf*) #2

declare dso_local i32 @nic_tx_channel_cfg(%struct.nicpf*, i32, %struct.TYPE_14__*) #2

declare dso_local i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32) #2

declare dso_local i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32) #2

declare dso_local i32 @bgx_set_lmac_mac(i32, i32, i32, i32) #2

declare dso_local i32 @nic_update_hw_frs(%struct.nicpf*, i32, i32) #2

declare dso_local i32 @nic_config_cpi(%struct.nicpf*, i32*) #2

declare dso_local i32 @nic_send_rss_size(%struct.nicpf*, i32) #2

declare dso_local i32 @nic_config_rss(%struct.nicpf*, i32*) #2

declare dso_local i32 @nic_get_bgx_stats(%struct.nicpf*, i32*) #2

declare dso_local i32 @nic_config_loopback(%struct.nicpf*, i32*) #2

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #2

declare dso_local i32 @nic_mbx_send_ack(%struct.nicpf*, i32) #2

declare dso_local i32 @nic_mbx_send_nack(%struct.nicpf*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
