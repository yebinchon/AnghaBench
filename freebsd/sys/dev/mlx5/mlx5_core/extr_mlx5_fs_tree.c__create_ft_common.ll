; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c__create_ft_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c__create_ft_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.mlx5_flow_table = type { i64, i32, i32, i32, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mlx5_flow_namespace = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.fs_prio = type { i64, i64, i32, i32 }
%struct.mlx5_flow_root_namespace = type { i64, i32 }
%struct.mlx5_core_dev = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"flow steering failed to find root of namespace %s\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_FT_ESW_EGRESS_ACL = common dso_local global i64 0, align 8
@FS_FT_ESW_INGRESS_ACL = common dso_local global i64 0, align 8
@FS_TYPE_FLOW_TABLE = common dso_local global i32 0, align 4
@FS_FT_NIC_RX = common dso_local global i64 0, align 8
@flow_table_properties_nic_receive = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"flow_table_%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_table* (%struct.mlx5_flow_namespace*, i32, %struct.fs_prio*, i32, i8*)* @_create_ft_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_table* @_create_ft_common(%struct.mlx5_flow_namespace* %0, i32 %1, %struct.fs_prio* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.mlx5_flow_table*, align 8
  %7 = alloca %struct.mlx5_flow_namespace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fs_prio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mlx5_flow_table*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [20 x i8], align 16
  %17 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %18 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_flow_namespace* %0, %struct.mlx5_flow_namespace** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.fs_prio* %2, %struct.fs_prio** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %19 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %7, align 8
  %20 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %19, i32 0, i32 0
  %21 = call %struct.mlx5_flow_root_namespace* @find_root(%struct.TYPE_7__* %20)
  store %struct.mlx5_flow_root_namespace* %21, %struct.mlx5_flow_root_namespace** %17, align 8
  %22 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %7, align 8
  %23 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %22, i32 0, i32 0
  %24 = call %struct.mlx5_core_dev* @fs_get_dev(%struct.TYPE_7__* %23)
  store %struct.mlx5_core_dev* %24, %struct.mlx5_core_dev** %18, align 8
  %25 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %17, align 8
  %26 = icmp ne %struct.mlx5_flow_root_namespace* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %5
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %18, align 8
  %29 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %7, align 8
  %30 = getelementptr inbounds %struct.mlx5_flow_namespace, %struct.mlx5_flow_namespace* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %28, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.mlx5_flow_table* @ERR_PTR(i32 %35)
  store %struct.mlx5_flow_table* %36, %struct.mlx5_flow_table** %6, align 8
  br label %214

37:                                               ; preds = %5
  %38 = load %struct.fs_prio*, %struct.fs_prio** %9, align 8
  %39 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.fs_prio*, %struct.fs_prio** %9, align 8
  %42 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.mlx5_flow_table* @ERR_PTR(i32 %47)
  store %struct.mlx5_flow_table* %48, %struct.mlx5_flow_table** %6, align 8
  br label %214

49:                                               ; preds = %37
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.mlx5_flow_table* @kzalloc(i32 48, i32 %50)
  store %struct.mlx5_flow_table* %51, %struct.mlx5_flow_table** %12, align 8
  %52 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %53 = icmp ne %struct.mlx5_flow_table* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.mlx5_flow_table* @ERR_PTR(i32 %56)
  store %struct.mlx5_flow_table* %57, %struct.mlx5_flow_table** %6, align 8
  br label %214

58:                                               ; preds = %49
  %59 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %60 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %59, i32 0, i32 4
  %61 = call i32 @fs_init_node(%struct.TYPE_6__* %60, i32 1)
  %62 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %63 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %62, i32 0, i32 6
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %17, align 8
  %66 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @FS_FT_ESW_EGRESS_ACL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %58
  %71 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %17, align 8
  %72 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FS_FT_ESW_INGRESS_ACL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70, %58
  %77 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %78 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  br label %84

79:                                               ; preds = %70
  %80 = load %struct.fs_prio*, %struct.fs_prio** %9, align 8
  %81 = call i64 @alloc_new_level(%struct.fs_prio* %80)
  %82 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %83 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %82, i32 0, i32 5
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %79, %76
  %85 = load i32, i32* @FS_TYPE_FLOW_TABLE, align 4
  %86 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %87 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %91 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %17, align 8
  %93 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %96 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 2
  %99 = call i32 @roundup_pow_of_two(i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = sub nsw i32 %100, 2
  %102 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %103 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @ilog2(i32 %104)
  store i32 %105, i32* %14, align 4
  %106 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %17, align 8
  %107 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %110 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %113 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %116 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %120 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %119, i32 0, i32 2
  %121 = call i32 @mlx5_cmd_fs_create_ft(i32 %108, i32 %111, i64 %114, i64 %117, i32 %118, i32* %120)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %84
  br label %209

125:                                              ; preds = %84
  %126 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %127 = load %struct.fs_prio*, %struct.fs_prio** %9, align 8
  %128 = call i32 @create_star_rule(%struct.mlx5_flow_table* %126, %struct.fs_prio* %127)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %195

132:                                              ; preds = %125
  %133 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %17, align 8
  %134 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @FS_FT_NIC_RX, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %132
  %139 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %17, align 8
  %140 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @flow_table_properties_nic_receive, i32 0, i32 0), align 4
  %143 = call i64 @MLX5_CAP_FLOWTABLE(i32 %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %138
  %146 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %17, align 8
  %147 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %148 = call i32 @update_root_ft_create(%struct.mlx5_flow_root_namespace* %146, %struct.mlx5_flow_table* %147)
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %191

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %152, %138, %132
  %154 = load i8*, i8** %11, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i8*, i8** %11, align 8
  %158 = call i32 @strlen(i8* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %172, label %160

160:                                              ; preds = %156, %153
  %161 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %162 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %163 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @snprintf(i8* %161, i32 20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  %166 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %167 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %166, i32 0, i32 4
  %168 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %169 = load %struct.fs_prio*, %struct.fs_prio** %9, align 8
  %170 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %169, i32 0, i32 3
  %171 = call i32 @_fs_add_node(%struct.TYPE_6__* %167, i8* %168, i32* %170)
  br label %179

172:                                              ; preds = %156
  %173 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %174 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %173, i32 0, i32 4
  %175 = load i8*, i8** %11, align 8
  %176 = load %struct.fs_prio*, %struct.fs_prio** %9, align 8
  %177 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %176, i32 0, i32 3
  %178 = call i32 @_fs_add_node(%struct.TYPE_6__* %174, i8* %175, i32* %177)
  br label %179

179:                                              ; preds = %172, %160
  %180 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %181 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load %struct.fs_prio*, %struct.fs_prio** %9, align 8
  %184 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %183, i32 0, i32 2
  %185 = call i32 @list_add_tail(i32* %182, i32* %184)
  %186 = load %struct.fs_prio*, %struct.fs_prio** %9, align 8
  %187 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %187, align 8
  %190 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  store %struct.mlx5_flow_table* %190, %struct.mlx5_flow_table** %6, align 8
  br label %214

191:                                              ; preds = %151
  %192 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %193 = load %struct.fs_prio*, %struct.fs_prio** %9, align 8
  %194 = call i32 @destroy_star_rule(%struct.mlx5_flow_table* %192, %struct.fs_prio* %193)
  br label %195

195:                                              ; preds = %191, %131
  %196 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %17, align 8
  %197 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %200 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %203 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %206 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @mlx5_cmd_fs_destroy_ft(i32 %198, i32 %201, i64 %204, i32 %207)
  br label %209

209:                                              ; preds = %195, %124
  %210 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %12, align 8
  %211 = call i32 @kfree(%struct.mlx5_flow_table* %210)
  %212 = load i32, i32* %13, align 4
  %213 = call %struct.mlx5_flow_table* @ERR_PTR(i32 %212)
  store %struct.mlx5_flow_table* %213, %struct.mlx5_flow_table** %6, align 8
  br label %214

214:                                              ; preds = %209, %179, %54, %45, %27
  %215 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %6, align 8
  ret %struct.mlx5_flow_table* %215
}

declare dso_local %struct.mlx5_flow_root_namespace* @find_root(%struct.TYPE_7__*) #1

declare dso_local %struct.mlx5_core_dev* @fs_get_dev(%struct.TYPE_7__*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local %struct.mlx5_flow_table* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_flow_table* @kzalloc(i32, i32) #1

declare dso_local i32 @fs_init_node(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @alloc_new_level(%struct.fs_prio*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @mlx5_cmd_fs_create_ft(i32, i32, i64, i64, i32, i32*) #1

declare dso_local i32 @create_star_rule(%struct.mlx5_flow_table*, %struct.fs_prio*) #1

declare dso_local i64 @MLX5_CAP_FLOWTABLE(i32, i32) #1

declare dso_local i32 @update_root_ft_create(%struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_table*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @_fs_add_node(%struct.TYPE_6__*, i8*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @destroy_star_rule(%struct.mlx5_flow_table*, %struct.fs_prio*) #1

declare dso_local i32 @mlx5_cmd_fs_destroy_ft(i32, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
