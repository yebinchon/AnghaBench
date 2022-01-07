; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_create_star_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_fs_tree.c_create_star_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_table = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.mlx5_flow_group*, %struct.mlx5_flow_group* }
%struct.mlx5_flow_group = type { i32 }
%struct.fs_prio = type { i32 }
%struct.mlx5_flow_root_namespace = type { i32, i32 }

@create_flow_group_in = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to allocate inbox\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@start_flow_index = common dso_local global i32 0, align 4
@end_flow_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_table*, %struct.fs_prio*)* @create_star_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_star_rule(%struct.mlx5_flow_table* %0, %struct.fs_prio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_flow_table*, align 8
  %5 = alloca %struct.fs_prio*, align 8
  %6 = alloca %struct.mlx5_flow_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlx5_flow_table*, align 8
  %11 = alloca %struct.mlx5_flow_table*, align 8
  %12 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fs_prio*, align 8
  %16 = alloca %struct.fs_prio*, align 8
  store %struct.mlx5_flow_table* %0, %struct.mlx5_flow_table** %4, align 8
  store %struct.fs_prio* %1, %struct.fs_prio** %5, align 8
  %17 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %18 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %17, i32 0, i32 0
  %19 = call %struct.mlx5_flow_root_namespace* @find_root(i32* %18)
  store %struct.mlx5_flow_root_namespace* %19, %struct.mlx5_flow_root_namespace** %12, align 8
  %20 = load i32, i32* @create_flow_group_in, align 4
  %21 = call i32 @MLX5_ST_SZ_BYTES(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* @fte_match_param, align 4
  %23 = call i32 @MLX5_ST_SZ_BYTES(i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32* @mlx5_vzalloc(i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %2
  %29 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %12, align 8
  %30 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mlx5_core_warn(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %217

35:                                               ; preds = %2
  %36 = load i32, i32* %14, align 4
  %37 = call i32* @mlx5_vzalloc(i32 %36)
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %12, align 8
  %42 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mlx5_core_warn(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @kvfree(i32* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %217

49:                                               ; preds = %35
  %50 = load i32, i32* @create_flow_group_in, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* @start_flow_index, align 4
  %53 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %54 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @MLX5_SET(i32 %50, i32* %51, i32 %52, i32 %55)
  %57 = load i32, i32* @create_flow_group_in, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* @end_flow_index, align 4
  %60 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %61 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @MLX5_SET(i32 %57, i32* %58, i32 %59, i32 %62)
  %64 = load i32*, i32** %8, align 8
  %65 = call %struct.mlx5_flow_group* @fs_alloc_fg(i32* %64)
  store %struct.mlx5_flow_group* %65, %struct.mlx5_flow_group** %6, align 8
  %66 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %6, align 8
  %67 = call i64 @IS_ERR(%struct.mlx5_flow_group* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %49
  %70 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %6, align 8
  %71 = call i32 @PTR_ERR(%struct.mlx5_flow_group* %70)
  store i32 %71, i32* %7, align 4
  br label %211

72:                                               ; preds = %49
  %73 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %6, align 8
  %74 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %75 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store %struct.mlx5_flow_group* %73, %struct.mlx5_flow_group** %76, align 8
  %77 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %78 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %77, i32 0, i32 0
  %79 = call i32 @fs_get_dev(i32* %78)
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %82 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %85 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %88 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %6, align 8
  %91 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %90, i32 0, i32 0
  %92 = call i32 @mlx5_cmd_fs_create_fg(i32 %79, i32* %80, i32 %83, i32 %86, i32 %89, i32* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %72
  br label %208

96:                                               ; preds = %72
  %97 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %98 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %6, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %101 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = call %struct.mlx5_flow_group* @alloc_star_ft_entry(%struct.mlx5_flow_table* %97, %struct.mlx5_flow_group* %98, i32* %99, i32 %102)
  %104 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %105 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store %struct.mlx5_flow_group* %103, %struct.mlx5_flow_group** %106, align 8
  %107 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %108 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %109, align 8
  %111 = call i64 @IS_ERR(%struct.mlx5_flow_group* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %96
  br label %186

114:                                              ; preds = %96
  %115 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %12, align 8
  %116 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %115, i32 0, i32 0
  %117 = call i32 @mutex_lock(i32* %116)
  %118 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %119 = call %struct.mlx5_flow_table* @find_next_ft(%struct.fs_prio* %118)
  store %struct.mlx5_flow_table* %119, %struct.mlx5_flow_table** %10, align 8
  %120 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %12, align 8
  %121 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %124 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %10, align 8
  %125 = call i32 @fs_set_star_rule(i32 %122, %struct.mlx5_flow_table* %123, %struct.mlx5_flow_table* %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %114
  %129 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %12, align 8
  %130 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  br label %186

132:                                              ; preds = %114
  %133 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %10, align 8
  %134 = icmp ne %struct.mlx5_flow_table* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load %struct.fs_prio*, %struct.fs_prio** %15, align 8
  %137 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %10, align 8
  %138 = call i32 @fs_get_parent(%struct.fs_prio* %136, %struct.mlx5_flow_table* %137)
  %139 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %10, align 8
  %140 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %139, i32 0, i32 3
  %141 = call i32 @fs_put(i32* %140)
  br label %142

142:                                              ; preds = %135, %132
  %143 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %144 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %145 = call %struct.mlx5_flow_table* @find_prev_ft(%struct.mlx5_flow_table* %143, %struct.fs_prio* %144)
  store %struct.mlx5_flow_table* %145, %struct.mlx5_flow_table** %11, align 8
  %146 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %147 = icmp ne %struct.mlx5_flow_table* %146, null
  br i1 %147, label %148, label %165

148:                                              ; preds = %142
  %149 = load %struct.fs_prio*, %struct.fs_prio** %16, align 8
  %150 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %151 = call i32 @fs_get_parent(%struct.fs_prio* %149, %struct.mlx5_flow_table* %150)
  %152 = load %struct.fs_prio*, %struct.fs_prio** %16, align 8
  %153 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %154 = call i32 @connect_prev_fts(i32* null, %struct.fs_prio* %152, %struct.mlx5_flow_table* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %12, align 8
  %159 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %158, i32 0, i32 0
  %160 = call i32 @mutex_unlock(i32* %159)
  br label %173

161:                                              ; preds = %148
  %162 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %163 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %162, i32 0, i32 3
  %164 = call i32 @fs_put(i32* %163)
  br label %165

165:                                              ; preds = %161, %142
  %166 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %12, align 8
  %167 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %166, i32 0, i32 0
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @kvfree(i32* %169)
  %171 = load i32*, i32** %9, align 8
  %172 = call i32 @kvfree(i32* %171)
  store i32 0, i32* %3, align 4
  br label %217

173:                                              ; preds = %157
  %174 = load %struct.fs_prio*, %struct.fs_prio** %5, align 8
  %175 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %174, i32 0, i32 0
  %176 = call i32 @fs_get_dev(i32* %175)
  %177 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %178 = call i32 @fs_set_star_rule(i32 %176, %struct.mlx5_flow_table* %177, %struct.mlx5_flow_table* null)
  %179 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %10, align 8
  %180 = icmp ne %struct.mlx5_flow_table* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %173
  %182 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %10, align 8
  %183 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %182, i32 0, i32 3
  %184 = call i32 @fs_put(i32* %183)
  br label %185

185:                                              ; preds = %181, %173
  br label %186

186:                                              ; preds = %185, %128, %113
  %187 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %188 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %189, align 8
  %191 = call i32 @free_star_fte_entry(%struct.mlx5_flow_group* %190)
  %192 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %193 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %192, i32 0, i32 3
  %194 = call i32 @fs_get_dev(i32* %193)
  %195 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %196 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %199 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %4, align 8
  %202 = getelementptr inbounds %struct.mlx5_flow_table, %struct.mlx5_flow_table* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %6, align 8
  %205 = getelementptr inbounds %struct.mlx5_flow_group, %struct.mlx5_flow_group* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @mlx5_cmd_fs_destroy_fg(i32 %194, i32 %197, i32 %200, i32 %203, i32 %206)
  br label %208

208:                                              ; preds = %186, %95
  %209 = load %struct.mlx5_flow_group*, %struct.mlx5_flow_group** %6, align 8
  %210 = call i32 @kfree(%struct.mlx5_flow_group* %209)
  br label %211

211:                                              ; preds = %208, %69
  %212 = load i32*, i32** %8, align 8
  %213 = call i32 @kvfree(i32* %212)
  %214 = load i32*, i32** %9, align 8
  %215 = call i32 @kvfree(i32* %214)
  %216 = load i32, i32* %7, align 4
  store i32 %216, i32* %3, align 4
  br label %217

217:                                              ; preds = %211, %165, %40, %28
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local %struct.mlx5_flow_root_namespace* @find_root(i32*) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @mlx5_vzalloc(i32) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local %struct.mlx5_flow_group* @fs_alloc_fg(i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_group*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_group*) #1

declare dso_local i32 @mlx5_cmd_fs_create_fg(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @fs_get_dev(i32*) #1

declare dso_local %struct.mlx5_flow_group* @alloc_star_ft_entry(%struct.mlx5_flow_table*, %struct.mlx5_flow_group*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mlx5_flow_table* @find_next_ft(%struct.fs_prio*) #1

declare dso_local i32 @fs_set_star_rule(i32, %struct.mlx5_flow_table*, %struct.mlx5_flow_table*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fs_get_parent(%struct.fs_prio*, %struct.mlx5_flow_table*) #1

declare dso_local i32 @fs_put(i32*) #1

declare dso_local %struct.mlx5_flow_table* @find_prev_ft(%struct.mlx5_flow_table*, %struct.fs_prio*) #1

declare dso_local i32 @connect_prev_fts(i32*, %struct.fs_prio*, %struct.mlx5_flow_table*) #1

declare dso_local i32 @free_star_fte_entry(%struct.mlx5_flow_group*) #1

declare dso_local i32 @mlx5_cmd_fs_destroy_fg(i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_flow_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
