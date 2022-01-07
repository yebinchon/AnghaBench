; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_write_perfect_filter_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_write_perfect_filter_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }
%union.ixgbe_atr_input = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i64, i32, i32, i32, i64, i64*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"ixgbe_fdir_write_perfect_filter_82599\00", align 1
@IXGBE_FDIRIPSA = common dso_local global i32 0, align 4
@IXGBE_FDIRIPDA = common dso_local global i32 0, align 4
@IXGBE_FDIRPORT_DESTINATION_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRPORT = common dso_local global i32 0, align 4
@IXGBE_FDIRVLAN_FLEX_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRVLAN = common dso_local global i32 0, align 4
@IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRHASH = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_CMD_ADD_FLOW = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_FILTER_UPDATE = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_LAST = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_QUEUE_EN = common dso_local global i32 0, align 4
@IXGBE_FDIR_DROP_QUEUE = common dso_local global i64 0, align 8
@IXGBE_FDIRCMD_DROP = common dso_local global i32 0, align 4
@IXGBE_ATR_L4TYPE_TUNNEL_MASK = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_TUNNEL_FILTER = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_FLOW_TYPE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_RX_QUEUE_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD_VT_POOL_SHIFT = common dso_local global i32 0, align 4
@IXGBE_FDIRCMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Flow Director command did not complete!\0A\00", align 1
@IXGBE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_fdir_write_perfect_filter_82599(%struct.ixgbe_hw* %0, %union.ixgbe_atr_input* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca %union.ixgbe_atr_input*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %7, align 8
  store %union.ixgbe_atr_input* %1, %union.ixgbe_atr_input** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @UNREFERENCED_1PARAMETER(i32 %20)
  %22 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %90, label %25

25:                                               ; preds = %5
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %27 = call i32 @IXGBE_FDIRSIPv6(i32 0)
  %28 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %29 = bitcast %union.ixgbe_atr_input* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %26, i32 %27, i32 %33)
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %36 = call i32 @IXGBE_FDIRSIPv6(i32 1)
  %37 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %38 = bitcast %union.ixgbe_atr_input* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %35, i32 %36, i32 %42)
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %45 = call i32 @IXGBE_FDIRSIPv6(i32 2)
  %46 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %47 = bitcast %union.ixgbe_atr_input* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %44, i32 %45, i32 %51)
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %54 = load i32, i32* @IXGBE_FDIRIPSA, align 4
  %55 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %56 = bitcast %union.ixgbe_atr_input* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %53, i32 %54, i32 %60)
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %63 = load i32, i32* @IXGBE_FDIRIPDA, align 4
  %64 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %65 = bitcast %union.ixgbe_atr_input* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %62, i32 %63, i32 %69)
  %71 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %72 = bitcast %union.ixgbe_atr_input* %71 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @IXGBE_NTOHS(i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* @IXGBE_FDIRPORT_DESTINATION_SHIFT, align 4
  %77 = load i32, i32* %12, align 4
  %78 = shl i32 %77, %76
  store i32 %78, i32* %12, align 4
  %79 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %80 = bitcast %union.ixgbe_atr_input* %79 to %struct.TYPE_2__*
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @IXGBE_NTOHS(i32 %82)
  %84 = load i32, i32* %12, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %12, align 4
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %87 = load i32, i32* @IXGBE_FDIRPORT, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %25, %5
  %91 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %92 = bitcast %union.ixgbe_atr_input* %91 to %struct.TYPE_2__*
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @IXGBE_STORE_AS_BE16(i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* @IXGBE_FDIRVLAN_FLEX_SHIFT, align 4
  %97 = load i32, i32* %13, align 4
  %98 = shl i32 %97, %96
  store i32 %98, i32* %13, align 4
  %99 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %100 = bitcast %union.ixgbe_atr_input* %99 to %struct.TYPE_2__*
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @IXGBE_NTOHS(i32 %102)
  %104 = load i32, i32* %13, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %13, align 4
  %106 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %107 = load i32, i32* @IXGBE_FDIRVLAN, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %106, i32 %107, i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %188

112:                                              ; preds = %90
  %113 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %114 = bitcast %union.ixgbe_atr_input* %113 to %struct.TYPE_2__*
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 -2147483648, i32* %18, align 4
  br label %119

119:                                              ; preds = %118, %112
  %120 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %121 = bitcast %union.ixgbe_atr_input* %120 to %struct.TYPE_2__*
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 7
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %128 = bitcast %union.ixgbe_atr_input* %127 to %struct.TYPE_2__*
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 7
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 1
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = shl i32 %133, 8
  %135 = or i32 %126, %134
  %136 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %137 = bitcast %union.ixgbe_atr_input* %136 to %struct.TYPE_2__*
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 7
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 2
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = shl i32 %142, 16
  %144 = or i32 %135, %143
  %145 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %146 = bitcast %union.ixgbe_atr_input* %145 to %struct.TYPE_2__*
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 7
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 3
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = shl i32 %151, 24
  %153 = or i32 %144, %152
  store i32 %153, i32* %16, align 4
  %154 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %155 = bitcast %union.ixgbe_atr_input* %154 to %struct.TYPE_2__*
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 7
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 4
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %162 = bitcast %union.ixgbe_atr_input* %161 to %struct.TYPE_2__*
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 7
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 5
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = shl i32 %167, 8
  %169 = or i32 %160, %168
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %18, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %18, align 4
  %173 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %174 = call i32 @IXGBE_FDIRSIPv6(i32 0)
  %175 = load i32, i32* %16, align 4
  %176 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %173, i32 %174, i32 %175)
  %177 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %178 = call i32 @IXGBE_FDIRSIPv6(i32 1)
  %179 = load i32, i32* %18, align 4
  %180 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %177, i32 %178, i32 %179)
  %181 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %182 = call i32 @IXGBE_FDIRSIPv6(i32 2)
  %183 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %184 = bitcast %union.ixgbe_atr_input* %183 to %struct.TYPE_2__*
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw* %181, i32 %182, i32 %186)
  br label %188

188:                                              ; preds = %119, %90
  %189 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %190 = bitcast %union.ixgbe_atr_input* %189 to %struct.TYPE_2__*
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* @IXGBE_FDIRHASH_SIG_SW_INDEX_SHIFT, align 4
  %195 = shl i32 %193, %194
  %196 = load i32, i32* %14, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %14, align 4
  %198 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %199 = load i32, i32* @IXGBE_FDIRHASH, align 4
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %198, i32 %199, i32 %200)
  %202 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %203 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %202)
  %204 = load i32, i32* @IXGBE_FDIRCMD_CMD_ADD_FLOW, align 4
  %205 = load i32, i32* @IXGBE_FDIRCMD_FILTER_UPDATE, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @IXGBE_FDIRCMD_LAST, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @IXGBE_FDIRCMD_QUEUE_EN, align 4
  %210 = or i32 %208, %209
  store i32 %210, i32* %15, align 4
  %211 = load i64, i64* %10, align 8
  %212 = load i64, i64* @IXGBE_FDIR_DROP_QUEUE, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %188
  %215 = load i32, i32* @IXGBE_FDIRCMD_DROP, align 4
  %216 = load i32, i32* %15, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %15, align 4
  br label %218

218:                                              ; preds = %214, %188
  %219 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %220 = bitcast %union.ixgbe_atr_input* %219 to %struct.TYPE_2__*
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @IXGBE_ATR_L4TYPE_TUNNEL_MASK, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %218
  %227 = load i32, i32* @IXGBE_FDIRCMD_TUNNEL_FILTER, align 4
  %228 = load i32, i32* %15, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %15, align 4
  br label %230

230:                                              ; preds = %226, %218
  %231 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %232 = bitcast %union.ixgbe_atr_input* %231 to %struct.TYPE_2__*
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @IXGBE_FDIRCMD_FLOW_TYPE_SHIFT, align 4
  %236 = shl i32 %234, %235
  %237 = load i32, i32* %15, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %15, align 4
  %239 = load i64, i64* %10, align 8
  %240 = trunc i64 %239 to i32
  %241 = load i32, i32* @IXGBE_FDIRCMD_RX_QUEUE_SHIFT, align 4
  %242 = shl i32 %240, %241
  %243 = load i32, i32* %15, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %15, align 4
  %245 = load %union.ixgbe_atr_input*, %union.ixgbe_atr_input** %8, align 8
  %246 = bitcast %union.ixgbe_atr_input* %245 to %struct.TYPE_2__*
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 6
  %248 = load i64, i64* %247, align 8
  %249 = trunc i64 %248 to i32
  %250 = load i32, i32* @IXGBE_FDIRCMD_VT_POOL_SHIFT, align 4
  %251 = shl i32 %249, %250
  %252 = load i32, i32* %15, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %15, align 4
  %254 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %255 = load i32, i32* @IXGBE_FDIRCMD, align 4
  %256 = load i32, i32* %15, align 4
  %257 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %254, i32 %255, i32 %256)
  %258 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %259 = call i64 @ixgbe_fdir_check_cmd_complete(%struct.ixgbe_hw* %258, i32* %15)
  store i64 %259, i64* %19, align 8
  %260 = load i64, i64* %19, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %230
  %263 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %264 = load i64, i64* %19, align 8
  store i64 %264, i64* %6, align 8
  br label %267

265:                                              ; preds = %230
  %266 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %266, i64* %6, align 8
  br label %267

267:                                              ; preds = %265, %262
  %268 = load i64, i64* %6, align 8
  ret i64 %268
}

declare dso_local i32 @UNREFERENCED_1PARAMETER(i32) #1

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_WRITE_REG_BE32(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_FDIRSIPv6(i32) #1

declare dso_local i32 @IXGBE_NTOHS(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_STORE_AS_BE16(i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_fdir_check_cmd_complete(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
