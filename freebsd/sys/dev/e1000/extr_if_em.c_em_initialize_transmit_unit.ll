; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_initialize_transmit_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_initialize_transmit_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.e1000_hw, i32, %struct.TYPE_7__, %struct.TYPE_8__, %struct.em_tx_queue*, %struct.TYPE_10__* }
%struct.e1000_hw = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.em_tx_queue = type { %struct.tx_ring }
%struct.tx_ring = type { i32, i32 }
%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"em_initialize_transmit_unit: begin\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Base = %x, Length = %x\0A\00", align 1
@E1000_TXDCTL_GRAN = common dso_local global i32 0, align 4
@DEFAULT_82543_TIPG_IPGR1 = common dso_local global i32 0, align 4
@DEFAULT_80003ES2LAN_TIPG_IPGR2 = common dso_local global i32 0, align 4
@E1000_TIPG_IPGR2_SHIFT = common dso_local global i32 0, align 4
@DEFAULT_82542_TIPG_IPGT = common dso_local global i32 0, align 4
@DEFAULT_82542_TIPG_IPGR1 = common dso_local global i32 0, align 4
@E1000_TIPG_IPGR1_SHIFT = common dso_local global i32 0, align 4
@DEFAULT_82542_TIPG_IPGR2 = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i32 0, align 4
@e1000_media_type_internal_serdes = common dso_local global i32 0, align 4
@DEFAULT_82543_TIPG_IPGT_FIBER = common dso_local global i32 0, align 4
@DEFAULT_82543_TIPG_IPGT_COPPER = common dso_local global i32 0, align 4
@DEFAULT_82543_TIPG_IPGR2 = common dso_local global i32 0, align 4
@E1000_TIPG = common dso_local global i32 0, align 4
@E1000_TIDV = common dso_local global i32 0, align 4
@e1000_82540 = common dso_local global i32 0, align 4
@E1000_TADV = common dso_local global i32 0, align 4
@e1000_82571 = common dso_local global i64 0, align 8
@e1000_82572 = common dso_local global i64 0, align 8
@TARC_SPEED_MODE_BIT = common dso_local global i32 0, align 4
@e1000_82574 = common dso_local global i32 0, align 4
@TARC_ERRATA_BIT = common dso_local global i32 0, align 4
@TARC_COMPENSATION_MODE = common dso_local global i32 0, align 4
@TARC_MQ_FIX = common dso_local global i32 0, align 4
@E1000_TXD_CMD_IDE = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_CT = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@E1000_TCTL_RTLC = common dso_local global i32 0, align 4
@E1000_TCTL_EN = common dso_local global i32 0, align 4
@E1000_COLLISION_THRESHOLD = common dso_local global i32 0, align 4
@E1000_CT_SHIFT = common dso_local global i32 0, align 4
@E1000_TCTL_MULR = common dso_local global i32 0, align 4
@e1000_pch_spt = common dso_local global i64 0, align 8
@E1000_IOSFPC = common dso_local global i32 0, align 4
@E1000_RCTL_RDMTS_HEX = common dso_local global i32 0, align 4
@E1000_TARC0_CB_MULTIQ_3_REQ = common dso_local global i32 0, align 4
@E1000_TARC0_CB_MULTIQ_2_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @em_initialize_transmit_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_initialize_transmit_unit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.em_tx_queue*, align 8
  %6 = alloca %struct.tx_ring*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call %struct.adapter* @iflib_get_softc(i32 %17)
  store %struct.adapter* %18, %struct.adapter** %3, align 8
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 6
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %4, align 8
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  store %struct.e1000_hw* %23, %struct.e1000_hw** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %24 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %114, %1
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %119

31:                                               ; preds = %25
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 5
  %34 = load %struct.em_tx_queue*, %struct.em_tx_queue** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %34, i64 %36
  store %struct.em_tx_queue* %37, %struct.em_tx_queue** %5, align 8
  %38 = load %struct.em_tx_queue*, %struct.em_tx_queue** %5, align 8
  %39 = getelementptr inbounds %struct.em_tx_queue, %struct.em_tx_queue* %38, i32 0, i32 0
  store %struct.tx_ring* %39, %struct.tx_ring** %6, align 8
  %40 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %41 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %44 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %43, i32 0, i32 1
  %45 = ptrtoint i32* %44 to i64
  store i64 %45, i64* %14, align 8
  %46 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %47 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %46, i64 1
  %48 = ptrtoint %struct.tx_ring* %47 to i64
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* %14, align 8
  %52 = sub nsw i64 %50, %51
  %53 = call i32 @bzero(i64 %49, i64 %52)
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @E1000_TDLEN(i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %54, i32 %56, i32 %64)
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @E1000_TDBAH(i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = ashr i32 %69, 32
  %71 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %66, i32 %68, i32 %70)
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @E1000_TDBAL(i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %72, i32 %74, i32 %75)
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @E1000_TDT(i32 %78)
  %80 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %77, i32 %79, i32 0)
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @E1000_TDH(i32 %82)
  %84 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %81, i32 %83, i32 0)
  %85 = load %struct.adapter*, %struct.adapter** %3, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 1
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @E1000_TDBAL(i32 %87)
  %89 = call i32 @E1000_READ_REG(%struct.e1000_hw* %86, i32 %88)
  %90 = load %struct.adapter*, %struct.adapter** %3, align 8
  %91 = getelementptr inbounds %struct.adapter, %struct.adapter* %90, i32 0, i32 1
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @E1000_TDLEN(i32 %92)
  %94 = call i32 @E1000_READ_REG(%struct.e1000_hw* %91, i32 %93)
  %95 = call i32 @HW_DEBUGOUT2(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %94)
  store i32 0, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, 31
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, 256
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = or i32 %100, 65536
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, 4194304
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* @E1000_TXDCTL_GRAN, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, 33554432
  store i32 %108, i32* %9, align 4
  %109 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @E1000_TXDCTL(i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %109, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %31
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  %117 = load %struct.tx_ring*, %struct.tx_ring** %6, align 8
  %118 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %117, i32 1
  store %struct.tx_ring* %118, %struct.tx_ring** %6, align 8
  br label %25

119:                                              ; preds = %25
  %120 = load %struct.adapter*, %struct.adapter** %3, align 8
  %121 = getelementptr inbounds %struct.adapter, %struct.adapter* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  switch i32 %124, label %144 [
    i32 129, label %125
    i32 128, label %132
  ]

125:                                              ; preds = %119
  %126 = load i32, i32* @DEFAULT_82543_TIPG_IPGR1, align 4
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* @DEFAULT_80003ES2LAN_TIPG_IPGR2, align 4
  %128 = load i32, i32* @E1000_TIPG_IPGR2_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = load i32, i32* %11, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %11, align 4
  br label %175

132:                                              ; preds = %119
  %133 = load i32, i32* @DEFAULT_82542_TIPG_IPGT, align 4
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* @DEFAULT_82542_TIPG_IPGR1, align 4
  %135 = load i32, i32* @E1000_TIPG_IPGR1_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = load i32, i32* %11, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* @DEFAULT_82542_TIPG_IPGR2, align 4
  %140 = load i32, i32* @E1000_TIPG_IPGR2_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %11, align 4
  br label %175

144:                                              ; preds = %119
  %145 = load %struct.adapter*, %struct.adapter** %3, align 8
  %146 = getelementptr inbounds %struct.adapter, %struct.adapter* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @e1000_media_type_fiber, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %160, label %152

152:                                              ; preds = %144
  %153 = load %struct.adapter*, %struct.adapter** %3, align 8
  %154 = getelementptr inbounds %struct.adapter, %struct.adapter* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @e1000_media_type_internal_serdes, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %152, %144
  %161 = load i32, i32* @DEFAULT_82543_TIPG_IPGT_FIBER, align 4
  store i32 %161, i32* %11, align 4
  br label %164

162:                                              ; preds = %152
  %163 = load i32, i32* @DEFAULT_82543_TIPG_IPGT_COPPER, align 4
  store i32 %163, i32* %11, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = load i32, i32* @DEFAULT_82543_TIPG_IPGR1, align 4
  %166 = load i32, i32* @E1000_TIPG_IPGR1_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = load i32, i32* %11, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* @DEFAULT_82543_TIPG_IPGR2, align 4
  %171 = load i32, i32* @E1000_TIPG_IPGR2_SHIFT, align 4
  %172 = shl i32 %170, %171
  %173 = load i32, i32* %11, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %164, %132, %125
  %176 = load %struct.adapter*, %struct.adapter** %3, align 8
  %177 = getelementptr inbounds %struct.adapter, %struct.adapter* %176, i32 0, i32 1
  %178 = load i32, i32* @E1000_TIPG, align 4
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %177, i32 %178, i32 %179)
  %181 = load %struct.adapter*, %struct.adapter** %3, align 8
  %182 = getelementptr inbounds %struct.adapter, %struct.adapter* %181, i32 0, i32 1
  %183 = load i32, i32* @E1000_TIDV, align 4
  %184 = load %struct.adapter*, %struct.adapter** %3, align 8
  %185 = getelementptr inbounds %struct.adapter, %struct.adapter* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %182, i32 %183, i32 %187)
  %189 = load %struct.adapter*, %struct.adapter** %3, align 8
  %190 = getelementptr inbounds %struct.adapter, %struct.adapter* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @e1000_82540, align 4
  %195 = icmp sge i32 %193, %194
  br i1 %195, label %196, label %205

196:                                              ; preds = %175
  %197 = load %struct.adapter*, %struct.adapter** %3, align 8
  %198 = getelementptr inbounds %struct.adapter, %struct.adapter* %197, i32 0, i32 1
  %199 = load i32, i32* @E1000_TADV, align 4
  %200 = load %struct.adapter*, %struct.adapter** %3, align 8
  %201 = getelementptr inbounds %struct.adapter, %struct.adapter* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %198, i32 %199, i32 %203)
  br label %205

205:                                              ; preds = %196, %175
  %206 = load %struct.adapter*, %struct.adapter** %3, align 8
  %207 = getelementptr inbounds %struct.adapter, %struct.adapter* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* @e1000_82571, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %223, label %214

214:                                              ; preds = %205
  %215 = load %struct.adapter*, %struct.adapter** %3, align 8
  %216 = getelementptr inbounds %struct.adapter, %struct.adapter* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = load i64, i64* @e1000_82572, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %214, %205
  %224 = load %struct.adapter*, %struct.adapter** %3, align 8
  %225 = getelementptr inbounds %struct.adapter, %struct.adapter* %224, i32 0, i32 1
  %226 = call i32 @E1000_TARC(i32 0)
  %227 = call i32 @E1000_READ_REG(%struct.e1000_hw* %225, i32 %226)
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* @TARC_SPEED_MODE_BIT, align 4
  %229 = load i32, i32* %10, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %10, align 4
  %231 = load %struct.adapter*, %struct.adapter** %3, align 8
  %232 = getelementptr inbounds %struct.adapter, %struct.adapter* %231, i32 0, i32 1
  %233 = call i32 @E1000_TARC(i32 0)
  %234 = load i32, i32* %10, align 4
  %235 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %232, i32 %233, i32 %234)
  br label %311

236:                                              ; preds = %214
  %237 = load %struct.adapter*, %struct.adapter** %3, align 8
  %238 = getelementptr inbounds %struct.adapter, %struct.adapter* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 129
  br i1 %242, label %243, label %266

243:                                              ; preds = %236
  %244 = load %struct.adapter*, %struct.adapter** %3, align 8
  %245 = getelementptr inbounds %struct.adapter, %struct.adapter* %244, i32 0, i32 1
  %246 = call i32 @E1000_TARC(i32 0)
  %247 = call i32 @E1000_READ_REG(%struct.e1000_hw* %245, i32 %246)
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = or i32 %248, 1
  store i32 %249, i32* %10, align 4
  %250 = load %struct.adapter*, %struct.adapter** %3, align 8
  %251 = getelementptr inbounds %struct.adapter, %struct.adapter* %250, i32 0, i32 1
  %252 = call i32 @E1000_TARC(i32 0)
  %253 = load i32, i32* %10, align 4
  %254 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %251, i32 %252, i32 %253)
  %255 = load %struct.adapter*, %struct.adapter** %3, align 8
  %256 = getelementptr inbounds %struct.adapter, %struct.adapter* %255, i32 0, i32 1
  %257 = call i32 @E1000_TARC(i32 1)
  %258 = call i32 @E1000_READ_REG(%struct.e1000_hw* %256, i32 %257)
  store i32 %258, i32* %10, align 4
  %259 = load i32, i32* %10, align 4
  %260 = or i32 %259, 1
  store i32 %260, i32* %10, align 4
  %261 = load %struct.adapter*, %struct.adapter** %3, align 8
  %262 = getelementptr inbounds %struct.adapter, %struct.adapter* %261, i32 0, i32 1
  %263 = call i32 @E1000_TARC(i32 1)
  %264 = load i32, i32* %10, align 4
  %265 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %262, i32 %263, i32 %264)
  br label %310

266:                                              ; preds = %236
  %267 = load %struct.adapter*, %struct.adapter** %3, align 8
  %268 = getelementptr inbounds %struct.adapter, %struct.adapter* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @e1000_82574, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %309

274:                                              ; preds = %266
  %275 = load %struct.adapter*, %struct.adapter** %3, align 8
  %276 = getelementptr inbounds %struct.adapter, %struct.adapter* %275, i32 0, i32 1
  %277 = call i32 @E1000_TARC(i32 0)
  %278 = call i32 @E1000_READ_REG(%struct.e1000_hw* %276, i32 %277)
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* @TARC_ERRATA_BIT, align 4
  %280 = load i32, i32* %10, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %10, align 4
  %282 = load %struct.adapter*, %struct.adapter** %3, align 8
  %283 = getelementptr inbounds %struct.adapter, %struct.adapter* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp sgt i32 %284, 1
  br i1 %285, label %286, label %302

286:                                              ; preds = %274
  %287 = load i32, i32* @TARC_COMPENSATION_MODE, align 4
  %288 = load i32, i32* @TARC_MQ_FIX, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* %10, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %10, align 4
  %292 = load %struct.adapter*, %struct.adapter** %3, align 8
  %293 = getelementptr inbounds %struct.adapter, %struct.adapter* %292, i32 0, i32 1
  %294 = call i32 @E1000_TARC(i32 0)
  %295 = load i32, i32* %10, align 4
  %296 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %293, i32 %294, i32 %295)
  %297 = load %struct.adapter*, %struct.adapter** %3, align 8
  %298 = getelementptr inbounds %struct.adapter, %struct.adapter* %297, i32 0, i32 1
  %299 = call i32 @E1000_TARC(i32 1)
  %300 = load i32, i32* %10, align 4
  %301 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %298, i32 %299, i32 %300)
  br label %308

302:                                              ; preds = %274
  %303 = load %struct.adapter*, %struct.adapter** %3, align 8
  %304 = getelementptr inbounds %struct.adapter, %struct.adapter* %303, i32 0, i32 1
  %305 = call i32 @E1000_TARC(i32 0)
  %306 = load i32, i32* %10, align 4
  %307 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %304, i32 %305, i32 %306)
  br label %308

308:                                              ; preds = %302, %286
  br label %309

309:                                              ; preds = %308, %266
  br label %310

310:                                              ; preds = %309, %243
  br label %311

311:                                              ; preds = %310, %223
  %312 = load %struct.adapter*, %struct.adapter** %3, align 8
  %313 = getelementptr inbounds %struct.adapter, %struct.adapter* %312, i32 0, i32 3
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = icmp sgt i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %311
  %318 = load i32, i32* @E1000_TXD_CMD_IDE, align 4
  %319 = load %struct.adapter*, %struct.adapter** %3, align 8
  %320 = getelementptr inbounds %struct.adapter, %struct.adapter* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 4
  br label %323

323:                                              ; preds = %317, %311
  %324 = load %struct.adapter*, %struct.adapter** %3, align 8
  %325 = getelementptr inbounds %struct.adapter, %struct.adapter* %324, i32 0, i32 1
  %326 = load i32, i32* @E1000_TCTL, align 4
  %327 = call i32 @E1000_READ_REG(%struct.e1000_hw* %325, i32 %326)
  store i32 %327, i32* %8, align 4
  %328 = load i32, i32* @E1000_TCTL_CT, align 4
  %329 = xor i32 %328, -1
  %330 = load i32, i32* %8, align 4
  %331 = and i32 %330, %329
  store i32 %331, i32* %8, align 4
  %332 = load i32, i32* @E1000_TCTL_PSP, align 4
  %333 = load i32, i32* @E1000_TCTL_RTLC, align 4
  %334 = or i32 %332, %333
  %335 = load i32, i32* @E1000_TCTL_EN, align 4
  %336 = or i32 %334, %335
  %337 = load i32, i32* @E1000_COLLISION_THRESHOLD, align 4
  %338 = load i32, i32* @E1000_CT_SHIFT, align 4
  %339 = shl i32 %337, %338
  %340 = or i32 %336, %339
  %341 = load i32, i32* %8, align 4
  %342 = or i32 %341, %340
  store i32 %342, i32* %8, align 4
  %343 = load %struct.adapter*, %struct.adapter** %3, align 8
  %344 = getelementptr inbounds %struct.adapter, %struct.adapter* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = sext i32 %347 to i64
  %349 = load i64, i64* @e1000_82571, align 8
  %350 = icmp sge i64 %348, %349
  br i1 %350, label %351, label %355

351:                                              ; preds = %323
  %352 = load i32, i32* @E1000_TCTL_MULR, align 4
  %353 = load i32, i32* %8, align 4
  %354 = or i32 %353, %352
  store i32 %354, i32* %8, align 4
  br label %355

355:                                              ; preds = %351, %323
  %356 = load %struct.adapter*, %struct.adapter** %3, align 8
  %357 = getelementptr inbounds %struct.adapter, %struct.adapter* %356, i32 0, i32 1
  %358 = load i32, i32* @E1000_TCTL, align 4
  %359 = load i32, i32* %8, align 4
  %360 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %357, i32 %358, i32 %359)
  %361 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %362 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  %366 = load i64, i64* @e1000_pch_spt, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %393

368:                                              ; preds = %355
  %369 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %370 = load i32, i32* @E1000_IOSFPC, align 4
  %371 = call i32 @E1000_READ_REG(%struct.e1000_hw* %369, i32 %370)
  store i32 %371, i32* %16, align 4
  %372 = load i32, i32* @E1000_RCTL_RDMTS_HEX, align 4
  %373 = load i32, i32* %16, align 4
  %374 = or i32 %373, %372
  store i32 %374, i32* %16, align 4
  %375 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %376 = load i32, i32* @E1000_IOSFPC, align 4
  %377 = load i32, i32* %16, align 4
  %378 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %375, i32 %376, i32 %377)
  %379 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %380 = call i32 @E1000_TARC(i32 0)
  %381 = call i32 @E1000_READ_REG(%struct.e1000_hw* %379, i32 %380)
  store i32 %381, i32* %16, align 4
  %382 = load i32, i32* @E1000_TARC0_CB_MULTIQ_3_REQ, align 4
  %383 = xor i32 %382, -1
  %384 = load i32, i32* %16, align 4
  %385 = and i32 %384, %383
  store i32 %385, i32* %16, align 4
  %386 = load i32, i32* @E1000_TARC0_CB_MULTIQ_2_REQ, align 4
  %387 = load i32, i32* %16, align 4
  %388 = or i32 %387, %386
  store i32 %388, i32* %16, align 4
  %389 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %390 = call i32 @E1000_TARC(i32 0)
  %391 = load i32, i32* %16, align 4
  %392 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %389, i32 %390, i32 %391)
  br label %393

393:                                              ; preds = %368, %355
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i32 @bzero(i64, i64) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_TDLEN(i32) #1

declare dso_local i32 @E1000_TDBAH(i32) #1

declare dso_local i32 @E1000_TDBAL(i32) #1

declare dso_local i32 @E1000_TDT(i32) #1

declare dso_local i32 @E1000_TDH(i32) #1

declare dso_local i32 @HW_DEBUGOUT2(i8*, i32, i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_TXDCTL(i32) #1

declare dso_local i32 @E1000_TARC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
