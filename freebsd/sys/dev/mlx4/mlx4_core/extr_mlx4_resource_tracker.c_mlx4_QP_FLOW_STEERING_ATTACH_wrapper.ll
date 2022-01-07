; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_QP_FLOW_STEERING_ATTACH_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_resource_tracker.c_mlx4_QP_FLOW_STEERING_ATTACH_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.mlx4_vhcr = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { i64, i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx4_resource_tracker }
%struct.mlx4_resource_tracker = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.list_head* }
%struct.list_head = type { i32 }
%struct.res_qp = type { i32, i64, i64, i32 }
%struct.mlx4_net_trans_rule_hw_ctrl = type { i32, i32 }
%struct._rule_hw = type { i32 }
%struct.res_fs_rule = type { i32, i64, i64, i32 }

@RES_MAC = common dso_local global i64 0, align 8
@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Steering rule with qpn 0x%x rejected\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Can't attach FS rule without L2 headers, adding L2 header\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Corrupted mailbox\0A\00", align 1
@MLX4_QP_FLOW_STEERING_ATTACH = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@RES_FS_RULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Fail to add flow steering resources\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_QP_FLOW_STEERING_DETACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QP_FLOW_STEERING_ATTACH_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca %struct.mlx4_priv*, align 8
  %15 = alloca %struct.mlx4_resource_tracker*, align 8
  %16 = alloca %struct.list_head*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.res_qp*, align 8
  %20 = alloca %struct.mlx4_net_trans_rule_hw_ctrl*, align 8
  %21 = alloca %struct._rule_hw*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.res_fs_rule*, align 8
  %24 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %26 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %25)
  store %struct.mlx4_priv* %26, %struct.mlx4_priv** %14, align 8
  %27 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %28 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store %struct.mlx4_resource_tracker* %30, %struct.mlx4_resource_tracker** %15, align 8
  %31 = load %struct.mlx4_resource_tracker*, %struct.mlx4_resource_tracker** %15, align 8
  %32 = getelementptr inbounds %struct.mlx4_resource_tracker, %struct.mlx4_resource_tracker* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.list_head*, %struct.list_head** %37, align 8
  %39 = load i64, i64* @RES_MAC, align 8
  %40 = getelementptr inbounds %struct.list_head, %struct.list_head* %38, i64 %39
  store %struct.list_head* %40, %struct.list_head** %16, align 8
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %42 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %6
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %275

50:                                               ; preds = %6
  %51 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %52 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.mlx4_net_trans_rule_hw_ctrl*
  store %struct.mlx4_net_trans_rule_hw_ctrl* %54, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %58 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mlx4_slave_convert_port(%struct.mlx4_dev* %55, i32 %56, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %275

66:                                               ; preds = %50
  %67 = load i32, i32* %17, align 4
  %68 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %69 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %71 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @be32_to_cpu(i32 %72)
  %74 = and i32 %73, 16777215
  store i32 %74, i32* %18, align 4
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* @RES_QP, align 4
  %79 = call i32 @get_res(%struct.mlx4_dev* %75, i32 %76, i32 %77, i32 %78, %struct.res_qp** %19)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %66
  %83 = load i32, i32* %18, align 4
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %17, align 4
  store i32 %85, i32* %7, align 4
  br label %275

86:                                               ; preds = %66
  %87 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %88 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %87, i64 1
  %89 = bitcast %struct.mlx4_net_trans_rule_hw_ctrl* %88 to %struct._rule_hw*
  store %struct._rule_hw* %89, %struct._rule_hw** %21, align 8
  %90 = load %struct._rule_hw*, %struct._rule_hw** %21, align 8
  %91 = getelementptr inbounds %struct._rule_hw, %struct._rule_hw* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be16_to_cpu(i32 %92)
  %94 = call i32 @map_hw_to_sw_id(i32 %93)
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %22, align 4
  %96 = icmp eq i32 %95, 132
  br i1 %96, label %97, label %101

97:                                               ; preds = %86
  %98 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %99 = load %struct._rule_hw*, %struct._rule_hw** %21, align 8
  %100 = call i32 @handle_eth_header_mcast_prio(%struct.mlx4_net_trans_rule_hw_ctrl* %98, %struct._rule_hw* %99)
  br label %101

101:                                              ; preds = %97, %86
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %104 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %102, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %146

109:                                              ; preds = %101
  %110 = load i32, i32* %22, align 4
  switch i32 %110, label %141 [
    i32 132, label %111
    i32 131, label %121
    i32 130, label %122
    i32 129, label %122
    i32 128, label %122
  ]

111:                                              ; preds = %109
  %112 = load i32, i32* %9, align 4
  %113 = load %struct._rule_hw*, %struct._rule_hw** %21, align 8
  %114 = load %struct.list_head*, %struct.list_head** %16, align 8
  %115 = call i32 @validate_eth_header_mac(i32 %112, %struct._rule_hw* %113, %struct.list_head* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %17, align 4
  br label %268

120:                                              ; preds = %111
  br label %145

121:                                              ; preds = %109
  br label %145

122:                                              ; preds = %109, %109, %109
  %123 = call i32 @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %124 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %127 = load %struct.list_head*, %struct.list_head** %16, align 8
  %128 = load i32, i32* %22, align 4
  %129 = call i32 @add_eth_header(%struct.mlx4_dev* %124, i32 %125, %struct.mlx4_cmd_mailbox* %126, %struct.list_head* %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %17, align 4
  br label %268

134:                                              ; preds = %122
  %135 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %136 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %138, 1
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 4
  br label %145

141:                                              ; preds = %109
  %142 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %17, align 4
  br label %268

145:                                              ; preds = %134, %121, %120
  br label %146

146:                                              ; preds = %145, %108
  %147 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %148 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %149 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %152 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %151, i32 0, i32 1
  %153 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %154 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MLX4_QP_FLOW_STEERING_ATTACH, align 4
  %157 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %158 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %159 = call i32 @mlx4_cmd_imm(%struct.mlx4_dev* %147, i32 %150, i32* %152, i32 %155, i32 0, i32 %156, i32 %157, i32 %158)
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %146
  br label %268

163:                                              ; preds = %146
  %164 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %167 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @RES_FS_RULE, align 4
  %170 = load i32, i32* %18, align 4
  %171 = call i32 @add_res_range(%struct.mlx4_dev* %164, i32 %165, i32 %168, i32 1, i32 %169, i32 %170)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %163
  %175 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %176 = call i32 @mlx4_err(%struct.mlx4_dev* %175, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %255

177:                                              ; preds = %163
  %178 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %181 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @RES_FS_RULE, align 4
  %184 = bitcast %struct.res_fs_rule** %23 to %struct.res_qp**
  %185 = call i32 @get_res(%struct.mlx4_dev* %178, i32 %179, i32 %182, i32 %183, %struct.res_qp** %184)
  store i32 %185, i32* %17, align 4
  %186 = load i32, i32* %17, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %177
  br label %255

189:                                              ; preds = %177
  %190 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %191 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @qp_attach_mbox_size(i64 %192)
  store i32 %193, i32* %24, align 4
  %194 = load i32, i32* %24, align 4
  %195 = load i32, i32* @GFP_KERNEL, align 4
  %196 = call i64 @kmalloc(i32 %194, i32 %195)
  %197 = load %struct.res_fs_rule*, %struct.res_fs_rule** %23, align 8
  %198 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %197, i32 0, i32 1
  store i64 %196, i64* %198, align 8
  %199 = load %struct.res_fs_rule*, %struct.res_fs_rule** %23, align 8
  %200 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %189
  %204 = load i32, i32* @ENOMEM, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %17, align 4
  br label %247

206:                                              ; preds = %189
  %207 = load i32, i32* %24, align 4
  %208 = load %struct.res_fs_rule*, %struct.res_fs_rule** %23, align 8
  %209 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 8
  %210 = load %struct.res_fs_rule*, %struct.res_fs_rule** %23, align 8
  %211 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %210, i32 0, i32 2
  store i64 0, i64* %211, align 8
  %212 = load %struct.res_fs_rule*, %struct.res_fs_rule** %23, align 8
  %213 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %216 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* %24, align 4
  %219 = call i32 @memcpy(i64 %214, i64 %217, i32 %218)
  %220 = load %struct.res_fs_rule*, %struct.res_fs_rule** %23, align 8
  %221 = getelementptr inbounds %struct.res_fs_rule, %struct.res_fs_rule* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = inttoptr i64 %222 to %struct.mlx4_net_trans_rule_hw_ctrl*
  store %struct.mlx4_net_trans_rule_hw_ctrl* %223, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %224 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %225 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %231

228:                                              ; preds = %206
  %229 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %230 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %229, i32 0, i32 0
  store i32 2, i32* %230, align 4
  br label %234

231:                                              ; preds = %206
  %232 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %20, align 8
  %233 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %232, i32 0, i32 0
  store i32 1, i32* %233, align 4
  br label %234

234:                                              ; preds = %231, %228
  %235 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %236 = call i64 @mlx4_is_bonded(%struct.mlx4_dev* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %234
  %239 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %240 = load %struct.res_fs_rule*, %struct.res_fs_rule** %23, align 8
  %241 = bitcast %struct.res_fs_rule* %240 to %struct.res_qp*
  %242 = call i32 @mlx4_do_mirror_rule(%struct.mlx4_dev* %239, %struct.res_qp* %241)
  br label %243

243:                                              ; preds = %238, %234
  %244 = load %struct.res_qp*, %struct.res_qp** %19, align 8
  %245 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %244, i32 0, i32 0
  %246 = call i32 @atomic_inc(i32* %245)
  br label %247

247:                                              ; preds = %243, %203
  %248 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %249 = load i32, i32* %9, align 4
  %250 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %251 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @RES_FS_RULE, align 4
  %254 = call i32 @put_res(%struct.mlx4_dev* %248, i32 %249, i32 %252, i32 %253)
  br label %255

255:                                              ; preds = %247, %188, %174
  %256 = load i32, i32* %17, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %255
  %259 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %260 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %261 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @MLX4_QP_FLOW_STEERING_DETACH, align 4
  %264 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %265 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %266 = call i32 @mlx4_cmd(%struct.mlx4_dev* %259, i32 %262, i32 0, i32 0, i32 %263, i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %258, %255
  br label %268

268:                                              ; preds = %267, %162, %141, %131, %117
  %269 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* %18, align 4
  %272 = load i32, i32* @RES_QP, align 4
  %273 = call i32 @put_res(%struct.mlx4_dev* %269, i32 %270, i32 %271, i32 %272)
  %274 = load i32, i32* %17, align 4
  store i32 %274, i32* %7, align 4
  br label %275

275:                                              ; preds = %268, %82, %63, %47
  %276 = load i32, i32* %7, align 4
  ret i32 %276
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_convert_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @map_hw_to_sw_id(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @handle_eth_header_mcast_prio(%struct.mlx4_net_trans_rule_hw_ctrl*, %struct._rule_hw*) #1

declare dso_local i32 @validate_eth_header_mac(i32, %struct._rule_hw*, %struct.list_head*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @add_eth_header(%struct.mlx4_dev*, i32, %struct.mlx4_cmd_mailbox*, %struct.list_head*, i32) #1

declare dso_local i32 @mlx4_cmd_imm(%struct.mlx4_dev*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @add_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @qp_attach_mbox_size(i64) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i64 @mlx4_is_bonded(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_do_mirror_rule(%struct.mlx4_dev*, %struct.res_qp*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
