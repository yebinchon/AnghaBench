; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_master_immediate_activate_vlan_qos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_cmd.c_mlx4_master_immediate_activate_vlan_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_priv = type { %struct.TYPE_14__, %struct.mlx4_dev }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.mlx4_vport_state* }
%struct.mlx4_vport_state = type { i64, i64, i32, i64 }
%struct.TYPE_8__ = type { %struct.mlx4_vport_oper_state* }
%struct.mlx4_vport_oper_state = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i64, i32 }
%struct.mlx4_dev = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.mlx4_vf_immed_vlan_work = type { i32, i32, i32, i32, i64, i32, i64, i32, %struct.mlx4_priv*, i64, i32, i64 }

@NO_INDX = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_UPDATE_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"updating immediately admin params slave %d port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vlan %d QoS %d link down\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_VGT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"No vlan resources slave %d, port %d\0A\00", align 1
@MLX4_VF_IMMED_VLAN_FLAG_VLAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"alloc vlan %d idx  %d slave %d port %d\0A\00", align 1
@MLX4_VF_IMMED_VLAN_FLAG_QOS = common dso_local global i32 0, align 4
@MLX4_VF_IMMED_VLAN_FLAG_LINK_DISABLE = common dso_local global i32 0, align 4
@mlx4_vf_immed_vlan_work_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_priv*, i32, i32)* @mlx4_master_immediate_activate_vlan_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_master_immediate_activate_vlan_qos(%struct.mlx4_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_vport_oper_state*, align 8
  %9 = alloca %struct.mlx4_vport_state*, align 8
  %10 = alloca %struct.mlx4_vf_immed_vlan_work*, align 8
  %11 = alloca %struct.mlx4_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_priv* %0, %struct.mlx4_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %15 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %14, i32 0, i32 1
  store %struct.mlx4_dev* %15, %struct.mlx4_dev** %11, align 8
  %16 = load i32, i32* @NO_INDX, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %26, i64 %28
  store %struct.mlx4_vport_oper_state* %29, %struct.mlx4_vport_oper_state** %8, align 8
  %30 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %31 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %39, i64 %41
  store %struct.mlx4_vport_state* %42, %struct.mlx4_vport_state** %9, align 8
  %43 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %44 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %48 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %3
  %52 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %53 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %57 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %51
  %61 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %62 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %66 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %60
  %70 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %71 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %75 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %291

79:                                               ; preds = %69, %60, %51, %3
  %80 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %81 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %79
  %92 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %93 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MLX4_DEV_CAP_FLAG2_UPDATE_QP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91, %79
  store i32 -1, i32* %4, align 4
  br label %291

100:                                              ; preds = %91
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (%struct.mlx4_dev*, i8*, i32, i32, ...) @mlx4_dbg(%struct.mlx4_dev* %101, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load %struct.mlx4_dev*, %struct.mlx4_dev** %11, align 8
  %106 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %107 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %111 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (%struct.mlx4_dev*, i8*, i32, i32, ...) @mlx4_dbg(%struct.mlx4_dev* %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %112)
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call %struct.mlx4_vf_immed_vlan_work* @kzalloc(i32 80, i32 %114)
  store %struct.mlx4_vf_immed_vlan_work* %115, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %116 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %117 = icmp ne %struct.mlx4_vf_immed_vlan_work* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %100
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %291

121:                                              ; preds = %100
  %122 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %123 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %127 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %125, %128
  br i1 %129, label %130, label %174

130:                                              ; preds = %121
  %131 = load i64, i64* @MLX4_VGT, align 8
  %132 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %133 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %130
  %137 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %138 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %137, i32 0, i32 1
  %139 = load i32, i32* %7, align 4
  %140 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %141 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @__mlx4_register_vlan(%struct.mlx4_dev* %138, i32 %139, i64 %142, i32* %13)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %136
  %147 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %148 = call i32 @kfree(%struct.mlx4_vf_immed_vlan_work* %147)
  %149 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %150 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %149, i32 0, i32 1
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @mlx4_warn(%struct.mlx4_dev* %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %151, i32 %152)
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %4, align 4
  br label %291

155:                                              ; preds = %136
  br label %158

156:                                              ; preds = %130
  %157 = load i32, i32* @NO_INDX, align 4
  store i32 %157, i32* %13, align 4
  br label %158

158:                                              ; preds = %156, %155
  %159 = load i32, i32* @MLX4_VF_IMMED_VLAN_FLAG_VLAN, align 4
  %160 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %161 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %165 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %164, i32 0, i32 1
  %166 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %167 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 (%struct.mlx4_dev*, i8*, i32, i32, ...) @mlx4_dbg(%struct.mlx4_dev* %165, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %169, i32 %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %158, %121
  %175 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %176 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %180 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %179, i32 0, i32 11
  store i64 %178, i64* %180, align 8
  %181 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %182 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %185 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  %186 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %187 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %191 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %189, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %174
  %195 = load i32, i32* @MLX4_VF_IMMED_VLAN_FLAG_QOS, align 4
  %196 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %197 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %194, %174
  %201 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %202 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @MLX4_VF_IMMED_VLAN_FLAG_VLAN, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %200
  %208 = load i32, i32* %13, align 4
  %209 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %210 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %207, %200
  %212 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %213 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %216 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 2
  store i64 %214, i64* %217, align 8
  %218 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %219 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %222 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 3
  store i32 %220, i32* %223, align 8
  %224 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %225 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %228 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  store i64 %226, i64* %229, align 8
  %230 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %9, align 8
  %231 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %234 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 1
  store i64 %232, i64* %235, align 8
  %236 = load i32, i32* @MLX4_VF_IMMED_VLAN_FLAG_LINK_DISABLE, align 4
  %237 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %238 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 8
  %241 = load i32, i32* %7, align 4
  %242 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %243 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 8
  %244 = load i32, i32* %6, align 4
  %245 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %246 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 4
  %247 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %248 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %252 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %251, i32 0, i32 10
  store i32 %250, i32* %252, align 8
  %253 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %254 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %258 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %257, i32 0, i32 4
  store i64 %256, i64* %258, align 8
  %259 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %260 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %264 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %263, i32 0, i32 9
  store i64 %262, i64* %264, align 8
  %265 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %266 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %269 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %268, i32 0, i32 5
  store i32 %267, i32* %269, align 8
  %270 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %8, align 8
  %271 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %275 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %274, i32 0, i32 6
  store i64 %273, i64* %275, align 8
  %276 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %277 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %278 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %277, i32 0, i32 8
  store %struct.mlx4_priv* %276, %struct.mlx4_priv** %278, align 8
  %279 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %280 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %279, i32 0, i32 7
  %281 = load i32, i32* @mlx4_vf_immed_vlan_work_handler, align 4
  %282 = call i32 @INIT_WORK(i32* %280, i32 %281)
  %283 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %284 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.mlx4_vf_immed_vlan_work*, %struct.mlx4_vf_immed_vlan_work** %10, align 8
  %289 = getelementptr inbounds %struct.mlx4_vf_immed_vlan_work, %struct.mlx4_vf_immed_vlan_work* %288, i32 0, i32 7
  %290 = call i32 @queue_work(i32 %287, i32* %289)
  store i32 0, i32* %4, align 4
  br label %291

291:                                              ; preds = %211, %146, %118, %99, %78
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32, i32, ...) #1

declare dso_local %struct.mlx4_vf_immed_vlan_work* @kzalloc(i32, i32) #1

declare dso_local i32 @__mlx4_register_vlan(%struct.mlx4_dev*, i32, i64, i32*) #1

declare dso_local i32 @kfree(%struct.mlx4_vf_immed_vlan_work*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
