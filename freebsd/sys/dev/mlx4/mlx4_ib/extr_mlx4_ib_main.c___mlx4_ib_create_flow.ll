; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c___mlx4_ib_create_flow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c___mlx4_ib_create_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%struct.ib_flow_attr = type { i32, i32, i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_net_trans_rule_hw_ctrl* }
%struct.mlx4_net_trans_rule_hw_ctrl = type { i32, i32, i64, i32 }
%union.ib_flow_spec = type { i32 }

@__mlx4_ib_create_flow.__mlx4_domain = internal constant [136 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 128, i32 129, i32 130, i32 131], align 16
@MLX4_IB_FLOW_MAX_PRIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid priority value %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IB_FLOW_DOMAIN_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid domain value %d\0A\00", align 1
@default_table = common dso_local global i64 0, align 8
@MLX4_QP_FLOW_STEERING_ATTACH = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"mcg table is full. Fail to register network rule.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"Device managed flow steering is disabled. Fail to register network rule.\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Invalid argument. Fail to register network rule.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_flow_attr*, i32, i32, i32*)* @__mlx4_ib_create_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlx4_ib_create_flow(%struct.ib_qp* %0, %struct.ib_flow_attr* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca %struct.ib_flow_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.mlx4_ib_dev*, align 8
  %17 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %18 = alloca %struct.mlx4_net_trans_rule_hw_ctrl*, align 8
  %19 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %7, align 8
  store %struct.ib_flow_attr* %1, %struct.ib_flow_attr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %21 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.mlx4_ib_dev* @to_mdev(i32 %22)
  store %struct.mlx4_ib_dev* %23, %struct.mlx4_ib_dev** %16, align 8
  %24 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %25 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MLX4_IB_FLOW_MAX_PRIO, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %5
  %30 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %31 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %226

36:                                               ; preds = %5
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @IB_FLOW_DOMAIN_NUM, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %226

45:                                               ; preds = %36
  %46 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @mlx4_map_sw_to_hw_steering_mode(i32 %48, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %226

55:                                               ; preds = %45
  %56 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %57 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(i32 %58)
  store %struct.mlx4_cmd_mailbox* %59, %struct.mlx4_cmd_mailbox** %17, align 8
  %60 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %61 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %65 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %64)
  store i32 %65, i32* %6, align 4
  br label %226

66:                                               ; preds = %55
  %67 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %68 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %67, i32 0, i32 1
  %69 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %68, align 8
  store %struct.mlx4_net_trans_rule_hw_ctrl* %69, %struct.mlx4_net_trans_rule_hw_ctrl** %18, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [136 x i32], [136 x i32]* @__mlx4_ib_create_flow.__mlx4_domain, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %75 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %73, %76
  %78 = call i32 @cpu_to_be16(i32 %77)
  %79 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %18, align 8
  %80 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i64 @mlx4_map_sw_to_hw_steering_mode(i32 %83, i32 %84)
  %86 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %18, align 8
  %87 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %89 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %18, align 8
  %92 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %94 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @cpu_to_be32(i32 %95)
  %97 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %18, align 8
  %98 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %100 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %99, i64 1
  %101 = bitcast %struct.ib_flow_attr* %100 to i8*
  store i8* %101, i8** %15, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, 24
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %14, align 4
  %106 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %107 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %108 = call i32 @__mlx4_ib_default_rules_match(%struct.ib_qp* %106, %struct.ib_flow_attr* %107)
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %19, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %139

111:                                              ; preds = %66
  %112 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %113 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %114 = load i64, i64* @default_table, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %119 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %118, i32 0, i32 1
  %120 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %120, i64 %122
  %124 = call i32 @__mlx4_ib_create_default_rules(%struct.mlx4_ib_dev* %112, %struct.ib_qp* %113, i64 %117, %struct.mlx4_net_trans_rule_hw_ctrl* %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %111
  %128 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %129 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %132 = call i32 @mlx4_free_cmd_mailbox(i32 %130, %struct.mlx4_cmd_mailbox* %131)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %6, align 4
  br label %226

135:                                              ; preds = %111
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %135, %66
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %182, %139
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %8, align 8
  %143 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %185

146:                                              ; preds = %140
  %147 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %148 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %151 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i8*, i8** %15, align 8
  %154 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %155 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %154, i32 0, i32 1
  %156 = load %struct.mlx4_net_trans_rule_hw_ctrl*, %struct.mlx4_net_trans_rule_hw_ctrl** %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, %struct.mlx4_net_trans_rule_hw_ctrl* %156, i64 %158
  %160 = call i32 @parse_flow_attr(i32 %149, i32 %152, i8* %153, %struct.mlx4_net_trans_rule_hw_ctrl* %159)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %146
  %164 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %165 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %168 = call i32 @mlx4_free_cmd_mailbox(i32 %166, %struct.mlx4_cmd_mailbox* %167)
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %6, align 4
  br label %226

171:                                              ; preds = %146
  %172 = load i8*, i8** %15, align 8
  %173 = bitcast i8* %172 to %union.ib_flow_spec*
  %174 = bitcast %union.ib_flow_spec* %173 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = load i8*, i8** %15, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr i8, i8* %176, i64 %177
  store i8* %178, i8** %15, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %14, align 4
  br label %182

182:                                              ; preds = %171
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %13, align 4
  br label %140

185:                                              ; preds = %140
  %186 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %187 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %190 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32*, i32** %11, align 8
  %193 = load i32, i32* %14, align 4
  %194 = ashr i32 %193, 2
  %195 = load i32, i32* @MLX4_QP_FLOW_STEERING_ATTACH, align 4
  %196 = load i32, i32* @MLX4_CMD_TIME_CLASS_A, align 4
  %197 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %198 = call i32 @mlx4_cmd_imm(i32 %188, i32 %191, i32* %192, i32 %194, i32 0, i32 %195, i32 %196, i32 %197)
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @ENOMEM, align 4
  %201 = sub nsw i32 0, %200
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %185
  %204 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %219

205:                                              ; preds = %185
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* @ENXIO, align 4
  %208 = sub nsw i32 0, %207
  %209 = icmp eq i32 %206, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  br label %218

212:                                              ; preds = %205
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %212
  br label %218

218:                                              ; preds = %217, %210
  br label %219

219:                                              ; preds = %218, %203
  %220 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %16, align 8
  %221 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %224 = call i32 @mlx4_free_cmd_mailbox(i32 %222, %struct.mlx4_cmd_mailbox* %223)
  %225 = load i32, i32* %12, align 4
  store i32 %225, i32* %6, align 4
  br label %226

226:                                              ; preds = %219, %163, %127, %63, %52, %40, %29
  %227 = load i32, i32* %6, align 4
  ret i32 %227
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @mlx4_map_sw_to_hw_steering_mode(i32, i32) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @__mlx4_ib_default_rules_match(%struct.ib_qp*, %struct.ib_flow_attr*) #1

declare dso_local i32 @__mlx4_ib_create_default_rules(%struct.mlx4_ib_dev*, %struct.ib_qp*, i64, %struct.mlx4_net_trans_rule_hw_ctrl*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(i32, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @parse_flow_attr(i32, i32, i8*, %struct.mlx4_net_trans_rule_hw_ctrl*) #1

declare dso_local i32 @mlx4_cmd_imm(i32, i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
