; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_create_vlan_groups_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_flow_table.c_mlx5e_create_vlan_groups_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.mlx5e_flow_table = type { i64, i32**, i32 }

@create_flow_group_in = common dso_local global i32 0, align 4
@match_criteria = common dso_local global i32 0, align 4
@match_criteria_enable = common dso_local global i32 0, align 4
@MLX5_MATCH_OUTER_HEADERS = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@start_flow_index = common dso_local global i32 0, align 4
@MLX5E_VLAN_GROUP0_SIZE = common dso_local global i64 0, align 8
@end_flow_index = common dso_local global i32 0, align 4
@MLX5E_VLAN_GROUP1_SIZE = common dso_local global i64 0, align 8
@MLX5E_VLAN_GROUP2_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_flow_table*, i32*, i32)* @mlx5e_create_vlan_groups_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_create_vlan_groups_sub(%struct.mlx5e_flow_table* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_flow_table*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.mlx5e_flow_table* %0, %struct.mlx5e_flow_table** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @create_flow_group_in, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @match_criteria, align 4
  %14 = call i32* @MLX5_ADDR_OF(i32 %11, i32* %12, i32 %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @memset(i32* %15, i32 0, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* @match_criteria_enable, align 4
  %20 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %21 = call i32 @MLX5_SET_CFG(i32* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @fte_match_param, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 1), align 4
  %25 = call i32 @MLX5_SET_TO_ONES(i32 %22, i32* %23, i32 %24)
  %26 = load i32, i32* @fte_match_param, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 2), align 4
  %29 = call i32 @MLX5_SET_TO_ONES(i32 %26, i32* %27, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @start_flow_index, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @MLX5_SET_CFG(i32* %30, i32 %31, i32 %32)
  %34 = load i64, i64* @MLX5E_VLAN_GROUP0_SIZE, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @end_flow_index, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @MLX5_SET_CFG(i32* %39, i32 %40, i32 %42)
  %44 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %45 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i8* @mlx5_create_flow_group(i32 %46, i32* %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %51 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %54 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32*, i32** %52, i64 %55
  store i32* %49, i32** %56, align 8
  %57 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32*, i32** %59, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @IS_ERR(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %3
  br label %181

68:                                               ; preds = %3
  %69 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %70 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @memset(i32* %73, i32 0, i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @match_criteria_enable, align 4
  %78 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %79 = call i32 @MLX5_SET_CFG(i32* %76, i32 %77, i32 %78)
  %80 = load i32, i32* @fte_match_param, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 1), align 4
  %83 = call i32 @MLX5_SET_TO_ONES(i32 %80, i32* %81, i32 %82)
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @start_flow_index, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @MLX5_SET_CFG(i32* %84, i32 %85, i32 %86)
  %88 = load i64, i64* @MLX5E_VLAN_GROUP1_SIZE, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %9, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* @end_flow_index, align 4
  %95 = load i32, i32* %9, align 4
  %96 = sub nsw i32 %95, 1
  %97 = call i32 @MLX5_SET_CFG(i32* %93, i32 %94, i32 %96)
  %98 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %99 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i8* @mlx5_create_flow_group(i32 %100, i32* %101)
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %105 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %104, i32 0, i32 1
  %106 = load i32**, i32*** %105, align 8
  %107 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %108 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32*, i32** %106, i64 %109
  store i32* %103, i32** %110, align 8
  %111 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %112 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %111, i32 0, i32 1
  %113 = load i32**, i32*** %112, align 8
  %114 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %115 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32*, i32** %113, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = call i64 @IS_ERR(i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %68
  br label %181

122:                                              ; preds = %68
  %123 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %124 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %124, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @memset(i32* %127, i32 0, i32 %128)
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* @match_criteria_enable, align 4
  %132 = load i32, i32* @MLX5_MATCH_OUTER_HEADERS, align 4
  %133 = call i32 @MLX5_SET_CFG(i32* %130, i32 %131, i32 %132)
  %134 = load i32, i32* @fte_match_param, align 4
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @outer_headers, i32 0, i32 0), align 4
  %137 = call i32 @MLX5_SET_TO_ONES(i32 %134, i32* %135, i32 %136)
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* @start_flow_index, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @MLX5_SET_CFG(i32* %138, i32 %139, i32 %140)
  %142 = load i64, i64* @MLX5E_VLAN_GROUP2_SIZE, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %9, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* @end_flow_index, align 4
  %149 = load i32, i32* %9, align 4
  %150 = sub nsw i32 %149, 1
  %151 = call i32 @MLX5_SET_CFG(i32* %147, i32 %148, i32 %150)
  %152 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %153 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = call i8* @mlx5_create_flow_group(i32 %154, i32* %155)
  %157 = bitcast i8* %156 to i32*
  %158 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %159 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %158, i32 0, i32 1
  %160 = load i32**, i32*** %159, align 8
  %161 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %162 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i32*, i32** %160, i64 %163
  store i32* %157, i32** %164, align 8
  %165 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %166 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %165, i32 0, i32 1
  %167 = load i32**, i32*** %166, align 8
  %168 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %169 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i32*, i32** %167, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = call i64 @IS_ERR(i32* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %122
  br label %181

176:                                              ; preds = %122
  %177 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %178 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %178, align 8
  store i32 0, i32* %4, align 4
  br label %201

181:                                              ; preds = %175, %121, %67
  %182 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %183 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %182, i32 0, i32 1
  %184 = load i32**, i32*** %183, align 8
  %185 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %186 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds i32*, i32** %184, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @PTR_ERR(i32* %189)
  store i32 %190, i32* %8, align 4
  %191 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %192 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %191, i32 0, i32 1
  %193 = load i32**, i32*** %192, align 8
  %194 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %195 = getelementptr inbounds %struct.mlx5e_flow_table, %struct.mlx5e_flow_table* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i32*, i32** %193, i64 %196
  store i32* null, i32** %197, align 8
  %198 = load %struct.mlx5e_flow_table*, %struct.mlx5e_flow_table** %5, align 8
  %199 = call i32 @mlx5e_destroy_groups(%struct.mlx5e_flow_table* %198)
  %200 = load i32, i32* %8, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %181, %176
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i32* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET_CFG(i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i32*, i32) #1

declare dso_local i8* @mlx5_create_flow_group(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlx5e_destroy_groups(%struct.mlx5e_flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
