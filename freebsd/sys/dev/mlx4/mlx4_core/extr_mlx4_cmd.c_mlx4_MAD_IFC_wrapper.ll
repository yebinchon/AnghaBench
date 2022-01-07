; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_MAD_IFC_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_MAD_IFC_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.mlx4_vhcr = type { i32, i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.ib_smp* }
%struct.ib_smp = type { i32*, i32, i64, i32, i64, i64, i64 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_priv = type { i32***, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64* }

@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_SMP_ATTR_PKEY_TABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_SMP_ATTR_PORT_INFO = common dso_local global i64 0, align 8
@MLX4_CMD_TIME_CLASS_C = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@PORT_STATE_OFFSET = common dso_local global i32 0, align 4
@PORT_CAPABILITY_LOCATION_IN_SMP = common dso_local global i32 0, align 4
@IB_SMP_ATTR_GUID_INFO = common dso_local global i64 0, align 8
@IB_SMP_ATTR_NODE_INFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [121 x i8] c"Unprivileged slave %d is trying to execute a Subnet MGMT MAD, class 0x%x, method 0x%x, view=%s for attr 0x%x. Rejecting\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Network\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*)* @mlx4_MAD_IFC_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_MAD_IFC_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca %struct.ib_smp*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.mlx4_priv*, align 8
  %25 = alloca %struct.ib_smp*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %31 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %32 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %31, i32 0, i32 1
  %33 = load %struct.ib_smp*, %struct.ib_smp** %32, align 8
  store %struct.ib_smp* %33, %struct.ib_smp** %14, align 8
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %35 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %34)
  store %struct.mlx4_priv* %35, %struct.mlx4_priv** %24, align 8
  %36 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %37 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %36, i32 0, i32 1
  %38 = load %struct.ib_smp*, %struct.ib_smp** %37, align 8
  store %struct.ib_smp* %38, %struct.ib_smp** %25, align 8
  %39 = load %struct.ib_smp*, %struct.ib_smp** %25, align 8
  %40 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %26, align 8
  %42 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %43 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  %45 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %45, i32 %46, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %50 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, -9
  store i32 %52, i32* %18, align 4
  %53 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %54 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 8
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %23, align 4
  %61 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %62 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %376

65:                                               ; preds = %6
  %66 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %67 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %376

71:                                               ; preds = %65
  %72 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %73 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %376

76:                                               ; preds = %71
  %77 = load i32, i32* %23, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %375, label %79

79:                                               ; preds = %76
  %80 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %81 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %375

85:                                               ; preds = %79
  %86 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %87 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @IB_SMP_ATTR_PKEY_TABLE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %180

91:                                               ; preds = %85
  %92 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %93 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @be32_to_cpu(i64 %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %16, align 4
  %100 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %101 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %99, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %98, %91
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %441

108:                                              ; preds = %98
  %109 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %110 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sdiv i32 %116, 32
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i32* @kcalloc(i32 %118, i32 128, i32 %119)
  store i32* %120, i32** %19, align 8
  %121 = load i32*, i32** %19, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %108
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %7, align 4
  br label %441

126:                                              ; preds = %108
  %127 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %128 = load i32, i32* %16, align 4
  %129 = load i32*, i32** %19, align 8
  %130 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %131 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %132 = call i32 @get_full_pkey_table(%struct.mlx4_dev* %127, i32 %128, i32* %129, %struct.mlx4_cmd_mailbox* %130, %struct.mlx4_cmd_mailbox* %131)
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %20, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %176, label %135

135:                                              ; preds = %126
  %136 = load i32, i32* %15, align 4
  %137 = mul nsw i32 %136, 32
  store i32 %137, i32* %21, align 4
  br label %138

138:                                              ; preds = %172, %135
  %139 = load i32, i32* %21, align 4
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  %142 = mul nsw i32 %141, 32
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %175

144:                                              ; preds = %138
  %145 = load %struct.mlx4_priv*, %struct.mlx4_priv** %24, align 8
  %146 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %145, i32 0, i32 0
  %147 = load i32***, i32**** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32**, i32*** %147, i64 %149
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %151, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %21, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %22, align 4
  %161 = load i32*, i32** %19, align 8
  %162 = load i32, i32* %22, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @cpu_to_be16(i32 %165)
  %167 = load i32*, i32** %26, align 8
  %168 = load i32, i32* %21, align 4
  %169 = srem i32 %168, 32
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  store i32 %166, i32* %171, align 4
  br label %172

172:                                              ; preds = %144
  %173 = load i32, i32* %21, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %21, align 4
  br label %138

175:                                              ; preds = %138
  br label %176

176:                                              ; preds = %175, %126
  %177 = load i32*, i32** %19, align 8
  %178 = call i32 @kfree(i32* %177)
  %179 = load i32, i32* %20, align 4
  store i32 %179, i32* %7, align 4
  br label %441

180:                                              ; preds = %85
  %181 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %182 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @IB_SMP_ATTR_PORT_INFO, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %265

186:                                              ; preds = %180
  %187 = load i32, i32* %16, align 4
  %188 = call i64 @cpu_to_be32(i32 %187)
  %189 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %190 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %189, i32 0, i32 6
  store i64 %188, i64* %190, align 8
  %191 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %192 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %193 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %196 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %201 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %204 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %205 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %191, i32 %194, i32 %197, i32 %198, i32 %199, i32 %202, i32 %203, i32 %204)
  store i32 %205, i32* %20, align 4
  %206 = load i32, i32* %20, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %263, label %208

208:                                              ; preds = %186
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %211 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %210)
  %212 = icmp ne i32 %209, %211
  br i1 %212, label %213, label %263

213:                                              ; preds = %208
  %214 = load %struct.ib_smp*, %struct.ib_smp** %25, align 8
  %215 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* @PORT_STATE_OFFSET, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32* %219, i32** %29, align 8
  %220 = load i32, i32* %16, align 4
  %221 = icmp slt i32 %220, 1
  br i1 %221, label %229, label %222

222:                                              ; preds = %213
  %223 = load i32, i32* %16, align 4
  %224 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %225 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp sgt i32 %223, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %222, %213
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %7, align 4
  br label %441

232:                                              ; preds = %222
  %233 = load i32*, i32** %29, align 8
  %234 = load i32, i32* %233, align 4
  %235 = and i32 %234, 240
  %236 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %9, align 4
  %239 = call i32 @vf_port_state(%struct.mlx4_dev* %236, i32 %237, i32 %238)
  %240 = or i32 %235, %239
  %241 = load i32*, i32** %29, align 8
  store i32 %240, i32* %241, align 4
  %242 = load %struct.mlx4_priv*, %struct.mlx4_priv** %24, align 8
  %243 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  %251 = load i64*, i64** %250, align 8
  %252 = load i32, i32* %16, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i64, i64* %251, i64 %253
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %27, align 8
  %256 = load %struct.ib_smp*, %struct.ib_smp** %25, align 8
  %257 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* @PORT_CAPABILITY_LOCATION_IN_SMP, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = call i32 @memcpy(i32* %261, i64* %27, i32 4)
  br label %263

263:                                              ; preds = %232, %208, %186
  %264 = load i32, i32* %20, align 4
  store i32 %264, i32* %7, align 4
  br label %441

265:                                              ; preds = %180
  %266 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %267 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %266, i32 0, i32 5
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @IB_SMP_ATTR_GUID_INFO, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %339

271:                                              ; preds = %265
  %272 = load i32, i32* %16, align 4
  %273 = icmp slt i32 %272, 1
  br i1 %273, label %281, label %274

274:                                              ; preds = %271
  %275 = load i32, i32* %16, align 4
  %276 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %277 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = icmp sgt i32 %275, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %274, %271
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %7, align 4
  br label %441

284:                                              ; preds = %274
  %285 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %286 = load i32, i32* %9, align 4
  %287 = load i32, i32* %16, align 4
  %288 = call i64 @mlx4_get_admin_guid(%struct.mlx4_dev* %285, i32 %286, i32 %287)
  store i64 %288, i64* %30, align 8
  %289 = load i32, i32* %9, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %328

291:                                              ; preds = %284
  %292 = load i64, i64* %30, align 8
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %328

294:                                              ; preds = %291
  %295 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %296 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %295, i32 0, i32 6
  store i64 0, i64* %296, align 8
  %297 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %298 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %299 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %302 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %305 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %18, align 4
  %308 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %309 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %312 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %313 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %297, i32 %300, i32 %303, i32 %306, i32 %307, i32 %310, i32 %311, i32 %312)
  store i32 %313, i32* %20, align 4
  %314 = load i32, i32* %20, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %294
  %317 = load i32, i32* %20, align 4
  store i32 %317, i32* %7, align 4
  br label %441

318:                                              ; preds = %294
  %319 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %320 = load %struct.ib_smp*, %struct.ib_smp** %25, align 8
  %321 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = bitcast i32* %322 to i64*
  %324 = load i64, i64* %323, align 8
  %325 = load i32, i32* %9, align 4
  %326 = load i32, i32* %16, align 4
  %327 = call i32 @mlx4_set_admin_guid(%struct.mlx4_dev* %319, i64 %324, i32 %325, i32 %326)
  br label %333

328:                                              ; preds = %291, %284
  %329 = load %struct.ib_smp*, %struct.ib_smp** %25, align 8
  %330 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = call i32 @memcpy(i32* %331, i64* %30, i32 8)
  br label %333

333:                                              ; preds = %328, %318
  %334 = load %struct.ib_smp*, %struct.ib_smp** %25, align 8
  %335 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 8
  %338 = call i32 @memset(i32* %337, i32 0, i32 56)
  store i32 0, i32* %7, align 4
  br label %441

339:                                              ; preds = %265
  %340 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %341 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %340, i32 0, i32 5
  %342 = load i64, i64* %341, align 8
  %343 = load i64, i64* @IB_SMP_ATTR_NODE_INFO, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %374

345:                                              ; preds = %339
  %346 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %347 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %348 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %351 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* %16, align 4
  %354 = load i32, i32* %18, align 4
  %355 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %356 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %359 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %360 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %346, i32 %349, i32 %352, i32 %353, i32 %354, i32 %357, i32 %358, i32 %359)
  store i32 %360, i32* %20, align 4
  %361 = load i32, i32* %20, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %372, label %363

363:                                              ; preds = %345
  %364 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %365 = load i32, i32* %9, align 4
  %366 = call i64 @mlx4_get_slave_node_guid(%struct.mlx4_dev* %364, i32 %365)
  store i64 %366, i64* %28, align 8
  %367 = load %struct.ib_smp*, %struct.ib_smp** %25, align 8
  %368 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %367, i32 0, i32 0
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 12
  %371 = call i32 @memcpy(i32* %370, i64* %28, i32 8)
  br label %372

372:                                              ; preds = %363, %345
  %373 = load i32, i32* %20, align 4
  store i32 %373, i32* %7, align 4
  br label %441

374:                                              ; preds = %339
  br label %375

375:                                              ; preds = %374, %79, %76
  br label %376

376:                                              ; preds = %375, %71, %65, %6
  %377 = load i32, i32* %9, align 4
  %378 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %379 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %378)
  %380 = icmp ne i32 %377, %379
  br i1 %380, label %381, label %423

381:                                              ; preds = %376
  %382 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %383 = load i32, i32* %9, align 4
  %384 = load i32, i32* %16, align 4
  %385 = call i32 @mlx4_vf_smi_enabled(%struct.mlx4_dev* %382, i32 %383, i32 %384)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %423, label %387

387:                                              ; preds = %381
  %388 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %389 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %388, i32 0, i32 2
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %392 = icmp eq i64 %390, %391
  br i1 %392, label %393, label %402

393:                                              ; preds = %387
  %394 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %395 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %394, i32 0, i32 4
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %399, label %402

399:                                              ; preds = %393
  %400 = load i32, i32* %23, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %422

402:                                              ; preds = %399, %393, %387
  %403 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %404 = load i32, i32* %9, align 4
  %405 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %406 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %405, i32 0, i32 2
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %409 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %408, i32 0, i32 4
  %410 = load i64, i64* %409, align 8
  %411 = load i32, i32* %23, align 4
  %412 = icmp ne i32 %411, 0
  %413 = zext i1 %412 to i64
  %414 = select i1 %412, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %415 = load %struct.ib_smp*, %struct.ib_smp** %14, align 8
  %416 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %415, i32 0, i32 5
  %417 = load i64, i64* %416, align 8
  %418 = call i32 @be16_to_cpu(i64 %417)
  %419 = call i32 @mlx4_err(%struct.mlx4_dev* %403, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i32 %404, i64 %407, i64 %410, i8* %414, i32 %418)
  %420 = load i32, i32* @EPERM, align 4
  %421 = sub nsw i32 0, %420
  store i32 %421, i32* %7, align 4
  br label %441

422:                                              ; preds = %399
  br label %423

423:                                              ; preds = %422, %381, %376
  %424 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %425 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %426 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %429 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %432 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* %18, align 4
  %435 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %436 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %439 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %440 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %424, i32 %427, i32 %430, i32 %433, i32 %434, i32 %437, i32 %438, i32 %439)
  store i32 %440, i32* %7, align 4
  br label %441

441:                                              ; preds = %423, %402, %372, %333, %316, %281, %263, %229, %176, %123, %105
  %442 = load i32, i32* %7, align 4
  ret i32 %442
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @get_full_pkey_table(%struct.mlx4_dev*, i32, i32*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i32 @vf_port_state(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i64 @mlx4_get_admin_guid(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_set_admin_guid(%struct.mlx4_dev*, i64, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @mlx4_get_slave_node_guid(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_vf_smi_enabled(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32, i64, i64, i8*, i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
