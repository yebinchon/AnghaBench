; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_smp_snoop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mad.c_smp_snoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_mad = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.ib_port_info = type { i32, i32, i32, i32 }
%struct.mlx4_ib_dev = type { i32*, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8*** }
%union.sl2vl_tbl_to_u64 = type { i8** }
%struct.ib_smp = type { i8**, i32 }

@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV = common dso_local global i32 0, align 4
@IB_EVENT_PKEY_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"PKEY[%d] = x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"PKEY Change event: port=%d, block=0x%x, change_bitmap=0x%x\0A\00", align 1
@IB_EVENT_GID_CHANGE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"sl2vl[%d] = %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i32, %struct.ib_mad*, i8*)* @smp_snoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_snoop(%struct.ib_device* %0, i32 %1, %struct.ib_mad* %2, i8* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_mad*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ib_port_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx4_ib_dev*, align 8
  %16 = alloca %union.sl2vl_tbl_to_u64, align 8
  %17 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_mad* %2, %struct.ib_mad** %7, align 8
  store i8* %3, i8** %8, align 8
  %18 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %19 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %18)
  store %struct.mlx4_ib_dev* %19, %struct.mlx4_ib_dev** %15, align 8
  %20 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %21 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %4
  %27 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %28 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %352

33:                                               ; preds = %26, %4
  %34 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %35 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %352

40:                                               ; preds = %33
  %41 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %42 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %350 [
    i32 129, label %45
    i32 130, label %95
    i32 131, label %225
    i32 128, label %282
  ]

45:                                               ; preds = %40
  %46 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %352

56:                                               ; preds = %45
  %57 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %58 = bitcast %struct.ib_mad* %57 to %struct.ib_smp*
  %59 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %58, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = bitcast i8** %60 to %struct.ib_port_info*
  store %struct.ib_port_info* %61, %struct.ib_port_info** %9, align 8
  %62 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %63 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @be16_to_cpu(i32 %64)
  store i8* %65, i8** %10, align 8
  %66 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %69 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @be16_to_cpu(i32 %70)
  %72 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %73 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 15
  %76 = call i32 @update_sm_ah(%struct.mlx4_ib_dev* %66, i32 %67, i8* %71, i32 %75)
  %77 = load %struct.ib_port_info*, %struct.ib_port_info** %9, align 8
  %78 = getelementptr inbounds %struct.ib_port_info, %struct.ib_port_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 128
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %56
  %83 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @handle_client_rereg_event(%struct.mlx4_ib_dev* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %56
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = icmp ne i8* %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @handle_lid_change_event(%struct.mlx4_ib_dev* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %86
  br label %351

95:                                               ; preds = %40
  %96 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %97 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %96, i32 0, i32 1
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %352

106:                                              ; preds = %95
  %107 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %108 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = call i32 @mlx4_is_mfunc(%struct.TYPE_12__* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %106
  %113 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @IB_EVENT_PKEY_CHANGE, align 4
  %116 = call i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev* %113, i32 %114, i32 %115)
  br label %351

117:                                              ; preds = %106
  %118 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %119 = bitcast %struct.ib_mad* %118 to %struct.ib_smp*
  %120 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @be32_to_cpu(i32 %121)
  %123 = and i32 %122, 65535
  store i32 %123, i32* %12, align 4
  %124 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %125 = bitcast %struct.ib_mad* %124 to %struct.ib_smp*
  %126 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %125, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 0
  %129 = bitcast i8** %128 to i32*
  store i32* %129, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %195, %117
  %131 = load i32, i32* %14, align 4
  %132 = icmp slt i32 %131, 32
  br i1 %132, label %133, label %198

133:                                              ; preds = %130
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %12, align 4
  %136 = mul nsw i32 %135, 32
  %137 = add nsw i32 %134, %136
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @be16_to_cpu(i32 %142)
  %144 = call i32 (i8*, i32, i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %137, i8* %143)
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @be16_to_cpu(i32 %149)
  %151 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %152 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i8***, i8**** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8**, i8*** %154, i64 %157
  %159 = load i8**, i8*** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %12, align 4
  %162 = mul nsw i32 %161, 32
  %163 = add nsw i32 %160, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %159, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %150, %166
  br i1 %167, label %168, label %194

168:                                              ; preds = %133
  %169 = load i32, i32* %14, align 4
  %170 = shl i32 1, %169
  %171 = load i32, i32* %13, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %13, align 4
  %173 = load i32*, i32** %11, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @be16_to_cpu(i32 %177)
  %179 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %180 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i8***, i8**** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8**, i8*** %182, i64 %185
  %187 = load i8**, i8*** %186, align 8
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %12, align 4
  %190 = mul nsw i32 %189, 32
  %191 = add nsw i32 %188, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %187, i64 %192
  store i8* %178, i8** %193, align 8
  br label %194

194:                                              ; preds = %168, %133
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %130

198:                                              ; preds = %130
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = inttoptr i64 %201 to i8*
  %203 = load i32, i32* %13, align 4
  %204 = call i32 (i8*, i32, i8*, ...) @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %199, i8* %202, i32 %203)
  %205 = load i32, i32* %13, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %224

207:                                              ; preds = %198
  %208 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @IB_EVENT_PKEY_CHANGE, align 4
  %211 = call i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev* %208, i32 %209, i32 %210)
  %212 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %213 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %207
  %218 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* %13, align 4
  %222 = call i32 @__propagate_pkey_ev(%struct.mlx4_ib_dev* %218, i32 %219, i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %217, %207
  br label %224

224:                                              ; preds = %223, %198
  br label %351

225:                                              ; preds = %40
  %226 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %227 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %226, i32 0, i32 1
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %225
  br label %352

236:                                              ; preds = %225
  %237 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %238 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %237, i32 0, i32 1
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  %240 = call i32 @mlx4_is_master(%struct.TYPE_12__* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %236
  %243 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* @IB_EVENT_GID_CHANGE, align 4
  %246 = call i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev* %243, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %242, %236
  %248 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %249 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %248, i32 0, i32 1
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %249, align 8
  %251 = call i32 @mlx4_is_master(%struct.TYPE_12__* %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %281

253:                                              ; preds = %247
  %254 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %255 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %281, label %259

259:                                              ; preds = %253
  %260 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %261 = bitcast %struct.ib_mad* %260 to %struct.ib_smp*
  %262 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @be32_to_cpu(i32 %263)
  store i32 %264, i32* %12, align 4
  %265 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* %6, align 4
  %268 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %269 = bitcast %struct.ib_mad* %268 to %struct.ib_smp*
  %270 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %269, i32 0, i32 0
  %271 = bitcast i8*** %270 to i32*
  %272 = call i32 @mlx4_ib_update_cache_on_guid_change(%struct.mlx4_ib_dev* %265, i32 %266, i32 %267, i32* %271)
  %273 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %274 = load i32, i32* %12, align 4
  %275 = load i32, i32* %6, align 4
  %276 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %277 = bitcast %struct.ib_mad* %276 to %struct.ib_smp*
  %278 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %277, i32 0, i32 0
  %279 = bitcast i8*** %278 to i32*
  %280 = call i32 @mlx4_ib_notify_slaves_on_guid_change(%struct.mlx4_ib_dev* %273, i32 %274, i32 %275, i32* %279)
  br label %281

281:                                              ; preds = %259, %253, %247
  br label %351

282:                                              ; preds = %40
  %283 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %284 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %283, i32 0, i32 1
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @MLX4_DEV_CAP_FLAG_PORT_MNG_CHG_EV, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %303

292:                                              ; preds = %282
  %293 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %294 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %293, i32 0, i32 1
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SL_TO_VL_CHANGE_EVENT, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %292
  br label %352

303:                                              ; preds = %292, %282
  %304 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %305 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %304, i32 0, i32 1
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %305, align 8
  %307 = call i32 @mlx4_is_slave(%struct.TYPE_12__* %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %349, label %309

309:                                              ; preds = %303
  store i32 0, i32* %17, align 4
  br label %310

310:                                              ; preds = %335, %309
  %311 = load i32, i32* %17, align 4
  %312 = icmp slt i32 %311, 8
  br i1 %312, label %313, label %338

313:                                              ; preds = %310
  %314 = load %struct.ib_mad*, %struct.ib_mad** %7, align 8
  %315 = bitcast %struct.ib_mad* %314 to %struct.ib_smp*
  %316 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %315, i32 0, i32 0
  %317 = load i8**, i8*** %316, align 8
  %318 = load i32, i32* %17, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8*, i8** %317, i64 %319
  %321 = load i8*, i8** %320, align 8
  %322 = bitcast %union.sl2vl_tbl_to_u64* %16 to i8***
  %323 = load i8**, i8*** %322, align 8
  %324 = load i32, i32* %17, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8*, i8** %323, i64 %325
  store i8* %321, i8** %326, align 8
  %327 = load i32, i32* %17, align 4
  %328 = bitcast %union.sl2vl_tbl_to_u64* %16 to i8***
  %329 = load i8**, i8*** %328, align 8
  %330 = load i32, i32* %17, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8*, i8** %329, i64 %331
  %333 = load i8*, i8** %332, align 8
  %334 = call i32 (i8*, i32, i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %327, i8* %333)
  br label %335

335:                                              ; preds = %313
  %336 = load i32, i32* %17, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %17, align 4
  br label %310

338:                                              ; preds = %310
  %339 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %15, align 8
  %340 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %6, align 4
  %343 = sub nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %341, i64 %344
  %346 = bitcast %union.sl2vl_tbl_to_u64* %16 to i32*
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @atomic64_set(i32* %345, i32 %347)
  br label %349

349:                                              ; preds = %338, %303
  br label %351

350:                                              ; preds = %40
  br label %351

351:                                              ; preds = %350, %349, %281, %224, %112, %94
  br label %352

352:                                              ; preds = %55, %105, %235, %302, %351, %33, %26
  ret void
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @update_sm_ah(%struct.mlx4_ib_dev*, i32, i8*, i32) #1

declare dso_local i32 @handle_client_rereg_event(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @handle_lid_change_event(%struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @mlx4_is_mfunc(%struct.TYPE_12__*) #1

declare dso_local i32 @mlx4_ib_dispatch_event(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*, ...) #1

declare dso_local i32 @__propagate_pkey_ev(%struct.mlx4_ib_dev*, i32, i32, i32) #1

declare dso_local i32 @mlx4_is_master(%struct.TYPE_12__*) #1

declare dso_local i32 @mlx4_ib_update_cache_on_guid_change(%struct.mlx4_ib_dev*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_ib_notify_slaves_on_guid_change(%struct.mlx4_ib_dev*, i32, i32, i32*) #1

declare dso_local i32 @mlx4_is_slave(%struct.TYPE_12__*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
