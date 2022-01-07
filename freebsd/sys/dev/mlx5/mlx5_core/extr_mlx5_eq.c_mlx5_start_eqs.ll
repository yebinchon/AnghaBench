; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_eq.c_mlx5_start_eqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_eq.c_mlx5_start_eqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.mlx5_eq_table }
%struct.TYPE_3__ = type { i32* }
%struct.mlx5_eq_table = type { i32, i32, i32 }

@MLX5_ASYNC_EVENT_MASK = common dso_local global i64 0, align 8
@port_module_event = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_CODING_PORT_MODULE_EVENT = common dso_local global i64 0, align 8
@nic_vport_change_event = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_NIC_VPORT_CHANGE = common dso_local global i64 0, align 8
@dcbx = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_CODING_DCBX_CHANGE_EVENT = common dso_local global i64 0, align 8
@fpga = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_FPGA_ERROR = common dso_local global i64 0, align 8
@MLX5_EVENT_TYPE_FPGA_QP_ERROR = common dso_local global i64 0, align 8
@temp_warn_event = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_TEMP_WARN_EVENT = common dso_local global i64 0, align 8
@general_notification_event = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_CODING_GENERAL_NOTIFICATION_EVENT = common dso_local global i64 0, align 8
@MLX5_EQ_VEC_CMD = common dso_local global i32 0, align 4
@MLX5_NUM_CMD_EQE = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_CMD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"failed to create cmd EQ %d\0A\00", align 1
@MLX5_EQ_VEC_ASYNC = common dso_local global i32 0, align 4
@MLX5_NUM_ASYNC_EQE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to create async EQ %d\0A\00", align 1
@MLX5_EQ_VEC_PAGES = common dso_local global i32 0, align 4
@MLX5_EVENT_TYPE_PAGE_REQUEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to create pages EQ %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_start_eqs(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_eq_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.mlx5_eq_table* %9, %struct.mlx5_eq_table** %4, align 8
  %10 = load i64, i64* @MLX5_ASYNC_EVENT_MASK, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %12 = load i32, i32* @port_module_event, align 4
  %13 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i64, i64* @MLX5_EVENT_TYPE_CODING_PORT_MODULE_EVENT, align 8
  %17 = shl i64 1, %16
  %18 = load i64, i64* %5, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %22 = load i32, i32* @nic_vport_change_event, align 4
  %23 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i64, i64* @MLX5_EVENT_TYPE_NIC_VPORT_CHANGE, align 8
  %27 = shl i64 1, %26
  %28 = load i64, i64* %5, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %32 = load i32, i32* @dcbx, align 4
  %33 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i64, i64* @MLX5_EVENT_TYPE_CODING_DCBX_CHANGE_EVENT, align 8
  %37 = shl i64 1, %36
  %38 = load i64, i64* %5, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %42 = load i32, i32* @fpga, align 4
  %43 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i64, i64* @MLX5_EVENT_TYPE_FPGA_ERROR, align 8
  %47 = shl i64 1, %46
  %48 = load i64, i64* @MLX5_EVENT_TYPE_FPGA_QP_ERROR, align 8
  %49 = shl i64 1, %48
  %50 = or i64 %47, %49
  %51 = load i64, i64* %5, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %45, %40
  %54 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %55 = load i32, i32* @temp_warn_event, align 4
  %56 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i64, i64* @MLX5_EVENT_TYPE_TEMP_WARN_EVENT, align 8
  %60 = shl i64 1, %59
  %61 = load i64, i64* %5, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %65 = load i32, i32* @general_notification_event, align 4
  %66 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i64, i64* @MLX5_EVENT_TYPE_CODING_GENERAL_NOTIFICATION_EVENT, align 8
  %70 = shl i64 1, %69
  %71 = load i64, i64* %5, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %75 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %76 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %75, i32 0, i32 0
  %77 = load i32, i32* @MLX5_EQ_VEC_CMD, align 4
  %78 = load i32, i32* @MLX5_NUM_CMD_EQE, align 4
  %79 = load i64, i64* @MLX5_EVENT_TYPE_CMD, align 8
  %80 = shl i64 1, %79
  %81 = trunc i64 %80 to i32
  %82 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %83 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = call i32 @mlx5_create_map_eq(%struct.mlx5_core_dev* %74, i32* %76, i32 %77, i32 %78, i32 %81, i32* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %73
  %92 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %154

96:                                               ; preds = %73
  %97 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %98 = call i32 @mlx5_cmd_use_events(%struct.mlx5_core_dev* %97)
  %99 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %100 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %101 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %100, i32 0, i32 1
  %102 = load i32, i32* @MLX5_EQ_VEC_ASYNC, align 4
  %103 = load i32, i32* @MLX5_NUM_ASYNC_EQE, align 4
  %104 = load i64, i64* %5, align 8
  %105 = trunc i64 %104 to i32
  %106 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %107 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = call i32 @mlx5_create_map_eq(%struct.mlx5_core_dev* %99, i32* %101, i32 %102, i32 %103, i32 %105, i32* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %96
  %116 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  br label %146

119:                                              ; preds = %96
  %120 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %121 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %122 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %121, i32 0, i32 2
  %123 = load i32, i32* @MLX5_EQ_VEC_PAGES, align 4
  %124 = load i32, i32* @MLX5_EVENT_TYPE_PAGE_REQUEST, align 4
  %125 = shl i32 1, %124
  %126 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %127 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = call i32 @mlx5_create_map_eq(%struct.mlx5_core_dev* %120, i32* %122, i32 %123, i32 1, i32 %125, i32* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %119
  %136 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  br label %141

139:                                              ; preds = %119
  %140 = load i32, i32* %6, align 4
  store i32 %140, i32* %2, align 4
  br label %154

141:                                              ; preds = %135
  %142 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %143 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %144 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %143, i32 0, i32 1
  %145 = call i32 @mlx5_destroy_unmap_eq(%struct.mlx5_core_dev* %142, i32* %144)
  br label %146

146:                                              ; preds = %141, %115
  %147 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %148 = call i32 @mlx5_cmd_use_polling(%struct.mlx5_core_dev* %147)
  %149 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %150 = load %struct.mlx5_eq_table*, %struct.mlx5_eq_table** %4, align 8
  %151 = getelementptr inbounds %struct.mlx5_eq_table, %struct.mlx5_eq_table* %150, i32 0, i32 0
  %152 = call i32 @mlx5_destroy_unmap_eq(%struct.mlx5_core_dev* %149, i32* %151)
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %146, %139, %91
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_create_map_eq(%struct.mlx5_core_dev*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_cmd_use_events(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_destroy_unmap_eq(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_cmd_use_polling(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
