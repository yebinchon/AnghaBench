; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_get_flow_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_get_flow_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_flow_prio = type { %struct.mlx5_flow_table*, i64 }
%struct.mlx5_flow_table = type { i32 }
%struct.mlx5_ib_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio* }
%struct.ib_flow_attr = type { i32, i64, i32 }
%struct.mlx5_flow_namespace = type { i32 }

@IB_FLOW_ATTR_FLAGS_DONT_TRAP = common dso_local global i32 0, align 4
@IB_FLOW_ATTR_NORMAL = common dso_local global i64 0, align 8
@MLX5_IB_FLOW_MCAST_PRIO = common dso_local global i32 0, align 4
@MLX5_FLOW_NAMESPACE_BYPASS = common dso_local global i32 0, align 4
@MLX5_FS_MAX_ENTRIES = common dso_local global i32 0, align 4
@MLX5_FS_MAX_TYPES = common dso_local global i32 0, align 4
@IB_FLOW_ATTR_ALL_DEFAULT = common dso_local global i64 0, align 8
@IB_FLOW_ATTR_MC_DEFAULT = common dso_local global i64 0, align 8
@MLX5_FLOW_NAMESPACE_LEFTOVERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bypass\00", align 1
@MLX5_IB_FLOW_LEFTOVERS_PRIO = common dso_local global i64 0, align 8
@IB_FLOW_ATTR_SNIFFER = common dso_local global i64 0, align 8
@allow_sniffer_and_nic_rx_shared_tir = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@MLX5_IB_FT_RX = common dso_local global i32 0, align 4
@MLX5_FLOW_NAMESPACE_SNIFFER_RX = common dso_local global i32 0, align 4
@MLX5_FLOW_NAMESPACE_SNIFFER_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_ib_flow_prio* (%struct.mlx5_ib_dev*, %struct.ib_flow_attr*, i32)* @get_flow_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_ib_flow_prio* @get_flow_table(%struct.mlx5_ib_dev* %0, %struct.ib_flow_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.ib_flow_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_flow_namespace*, align 8
  %10 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %11 = alloca %struct.mlx5_flow_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.ib_flow_attr* %1, %struct.ib_flow_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %17 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IB_FLOW_ATTR_FLAGS_DONT_TRAP, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %8, align 4
  store %struct.mlx5_flow_namespace* null, %struct.mlx5_flow_namespace** %9, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %22 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IB_FLOW_ATTR_NORMAL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %3
  %27 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %28 = call i64 @flow_is_multicast_only(%struct.ib_flow_attr* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @MLX5_IB_FLOW_MCAST_PRIO, align 4
  store i32 %34, i32* %14, align 4
  br label %41

35:                                               ; preds = %30, %26
  %36 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %37 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ib_prio_to_core_prio(i32 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %35, %33
  %42 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MLX5_FLOW_NAMESPACE_BYPASS, align 4
  %46 = call %struct.mlx5_flow_namespace* @mlx5_get_flow_namespace(i32 %44, i32 %45)
  store %struct.mlx5_flow_namespace* %46, %struct.mlx5_flow_namespace** %9, align 8
  %47 = load i32, i32* @MLX5_FS_MAX_ENTRIES, align 4
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* @MLX5_FS_MAX_TYPES, align 4
  store i32 %48, i32* %13, align 4
  %49 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %50 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %52, i64 %54
  store %struct.mlx5_ib_flow_prio* %55, %struct.mlx5_ib_flow_prio** %10, align 8
  br label %121

56:                                               ; preds = %3
  %57 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %58 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IB_FLOW_ATTR_ALL_DEFAULT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %64 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IB_FLOW_ATTR_MC_DEFAULT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62, %56
  %69 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MLX5_FLOW_NAMESPACE_LEFTOVERS, align 4
  %73 = call %struct.mlx5_flow_namespace* @mlx5_get_flow_namespace(i32 %71, i32 %72)
  store %struct.mlx5_flow_namespace* %73, %struct.mlx5_flow_namespace** %9, align 8
  %74 = call i32 @build_leftovers_ft_param(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %12, i32* %13)
  %75 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %76 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %77, align 8
  %79 = load i64, i64* @MLX5_IB_FLOW_LEFTOVERS_PRIO, align 8
  %80 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %78, i64 %79
  store %struct.mlx5_ib_flow_prio* %80, %struct.mlx5_ib_flow_prio** %10, align 8
  br label %120

81:                                               ; preds = %62
  %82 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %83 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IB_FLOW_ATTR_SNIFFER, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %119

87:                                               ; preds = %81
  %88 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %89 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @allow_sniffer_and_nic_rx_shared_tir, align 4
  %92 = call i32 @MLX5_CAP_FLOWTABLE(i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* @ENOTSUPP, align 4
  %96 = sub nsw i32 0, %95
  %97 = call %struct.mlx5_ib_flow_prio* @ERR_PTR(i32 %96)
  store %struct.mlx5_ib_flow_prio* %97, %struct.mlx5_ib_flow_prio** %4, align 8
  br label %163

98:                                               ; preds = %87
  %99 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %100 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @MLX5_IB_FT_RX, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* @MLX5_FLOW_NAMESPACE_SNIFFER_RX, align 4
  br label %109

107:                                              ; preds = %98
  %108 = load i32, i32* @MLX5_FLOW_NAMESPACE_SNIFFER_TX, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = call %struct.mlx5_flow_namespace* @mlx5_get_flow_namespace(i32 %101, i32 %110)
  store %struct.mlx5_flow_namespace* %111, %struct.mlx5_flow_namespace** %9, align 8
  %112 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %113 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %115, i64 %117
  store %struct.mlx5_ib_flow_prio* %118, %struct.mlx5_ib_flow_prio** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %119

119:                                              ; preds = %109, %81
  br label %120

120:                                              ; preds = %119, %68
  br label %121

121:                                              ; preds = %120, %41
  %122 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %9, align 8
  %123 = icmp ne %struct.mlx5_flow_namespace* %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* @ENOTSUPP, align 4
  %126 = sub nsw i32 0, %125
  %127 = call %struct.mlx5_ib_flow_prio* @ERR_PTR(i32 %126)
  store %struct.mlx5_ib_flow_prio* %127, %struct.mlx5_ib_flow_prio** %4, align 8
  br label %163

128:                                              ; preds = %121
  %129 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %10, align 8
  %130 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %129, i32 0, i32 0
  %131 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %130, align 8
  store %struct.mlx5_flow_table* %131, %struct.mlx5_flow_table** %11, align 8
  %132 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %133 = icmp ne %struct.mlx5_flow_table* %132, null
  br i1 %133, label %153, label %134

134:                                              ; preds = %128
  %135 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %9, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %13, align 4
  %139 = call %struct.mlx5_flow_table* @mlx5_create_auto_grouped_flow_table(%struct.mlx5_flow_namespace* %135, i32 %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %137, i32 %138)
  store %struct.mlx5_flow_table* %139, %struct.mlx5_flow_table** %11, align 8
  %140 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %141 = call i32 @IS_ERR(%struct.mlx5_flow_table* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %134
  %144 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %10, align 8
  %145 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %144, i32 0, i32 1
  store i64 0, i64* %145, align 8
  %146 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %147 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %10, align 8
  %148 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %147, i32 0, i32 0
  store %struct.mlx5_flow_table* %146, %struct.mlx5_flow_table** %148, align 8
  br label %152

149:                                              ; preds = %134
  %150 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %11, align 8
  %151 = call i32 @PTR_ERR(%struct.mlx5_flow_table* %150)
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %149, %143
  br label %153

153:                                              ; preds = %152, %128
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %15, align 4
  %158 = call %struct.mlx5_ib_flow_prio* @ERR_PTR(i32 %157)
  br label %161

159:                                              ; preds = %153
  %160 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %10, align 8
  br label %161

161:                                              ; preds = %159, %156
  %162 = phi %struct.mlx5_ib_flow_prio* [ %158, %156 ], [ %160, %159 ]
  store %struct.mlx5_ib_flow_prio* %162, %struct.mlx5_ib_flow_prio** %4, align 8
  br label %163

163:                                              ; preds = %161, %124, %94
  %164 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %4, align 8
  ret %struct.mlx5_ib_flow_prio* %164
}

declare dso_local i64 @flow_is_multicast_only(%struct.ib_flow_attr*) #1

declare dso_local i32 @ib_prio_to_core_prio(i32, i32) #1

declare dso_local %struct.mlx5_flow_namespace* @mlx5_get_flow_namespace(i32, i32) #1

declare dso_local i32 @build_leftovers_ft_param(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @MLX5_CAP_FLOWTABLE(i32, i32) #1

declare dso_local %struct.mlx5_ib_flow_prio* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_flow_table* @mlx5_create_auto_grouped_flow_table(%struct.mlx5_flow_namespace*, i32, i8*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.mlx5_flow_table*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
