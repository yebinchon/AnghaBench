; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_diagnostics.c_mlx5_core_get_diagnostics_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_diagnostics.c_mlx5_core_get_diagnostics_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mlx5_core_dev = type { i32 }
%union.mlx5_core_pci_diagnostics = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }
%union.mlx5_core_general_diagnostics = type { i32 }

@debug = common dso_local global i32 0, align 4
@num_of_diagnostic_counters = common dso_local global i32 0, align 4
@query_diagnostic_counters_out = common dso_local global i32 0, align 4
@diagnostic_counter = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@diag_counter = common dso_local global %struct.TYPE_5__* null, align 8
@mlx5_core_pci_diagnostics_table = common dso_local global i32 0, align 4
@MLX5_CORE_PCI_DIAGNOSTICS_NUM = common dso_local global i32 0, align 4
@mlx5_core_general_diagnostics_table = common dso_local global i32 0, align 4
@MLX5_CORE_GENERAL_DIAGNOSTICS_NUM = common dso_local global i32 0, align 4
@mpcnt_reg = common dso_local global i32 0, align 4
@grp = common dso_local global i32 0, align 4
@MLX5_PCIE_PERFORMANCE_COUNTERS_GROUP = common dso_local global i32 0, align 4
@MLX5_REG_MPCNT = common dso_local global i32 0, align 4
@counter_set = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@pcie_perf_counters = common dso_local global i32 0, align 4
@rx_errors = common dso_local global i32 0, align 4
@tx_errors = common dso_local global i32 0, align 4
@MLX5_PCIE_TIMERS_AND_STATES_COUNTERS_GROUP = common dso_local global i32 0, align 4
@pcie_timers_states = common dso_local global i32 0, align 4
@non_fatal_err_msg_sent = common dso_local global i32 0, align 4
@fatal_err_msg_sent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_core_get_diagnostics_full(%struct.mlx5_core_dev* %0, %union.mlx5_core_pci_diagnostics* %1, %union.mlx5_core_general_diagnostics* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %union.mlx5_core_pci_diagnostics*, align 8
  %7 = alloca %union.mlx5_core_general_diagnostics*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %union.mlx5_core_pci_diagnostics* %1, %union.mlx5_core_pci_diagnostics** %6, align 8
  store %union.mlx5_core_general_diagnostics* %2, %union.mlx5_core_general_diagnostics** %7, align 8
  %19 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %20 = load i32, i32* @debug, align 4
  %21 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %19, i32 %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %206

24:                                               ; preds = %3
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %26 = load i32, i32* @num_of_diagnostic_counters, align 4
  %27 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %206

31:                                               ; preds = %24
  %32 = load i32, i32* @query_diagnostic_counters_out, align 4
  %33 = call i32 @MLX5_ST_SZ_BYTES(i32 %32)
  %34 = load i32, i32* @diagnostic_counter, align 4
  %35 = call i32 @MLX5_ST_SZ_BYTES(i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %33, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i8* @mlx5_vzalloc(i32 %39)
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %206

46:                                               ; preds = %31
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @mlx5_query_diagnostic_counters(%struct.mlx5_core_dev* %47, i32 1, i32 0, i8* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %105

53:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %101, %53
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %104

58:                                               ; preds = %54
  %59 = load i32, i32* @query_diagnostic_counters_out, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @diag_counter, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @MLX5_GET(i32 %59, i8* %60, i32 %66)
  store i8* %67, i8** %15, align 8
  %68 = load i32, i32* @query_diagnostic_counters_out, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @diag_counter, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @MLX5_GET64(i32 %68, i8* %69, i32 %75)
  store i32 %76, i32* %16, align 4
  %77 = load %union.mlx5_core_pci_diagnostics*, %union.mlx5_core_pci_diagnostics** %6, align 8
  %78 = icmp ne %union.mlx5_core_pci_diagnostics* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %58
  %80 = load i32, i32* @mlx5_core_pci_diagnostics_table, align 4
  %81 = load %union.mlx5_core_pci_diagnostics*, %union.mlx5_core_pci_diagnostics** %6, align 8
  %82 = bitcast %union.mlx5_core_pci_diagnostics* %81 to i32*
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MLX5_CORE_PCI_DIAGNOSTICS_NUM, align 4
  %85 = load i8*, i8** %15, align 8
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @mlx5_core_put_diag_counter(i32 %80, i32 %83, i32 %84, i8* %85, i32 %86)
  br label %88

88:                                               ; preds = %79, %58
  %89 = load %union.mlx5_core_general_diagnostics*, %union.mlx5_core_general_diagnostics** %7, align 8
  %90 = icmp ne %union.mlx5_core_general_diagnostics* %89, null
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load i32, i32* @mlx5_core_general_diagnostics_table, align 4
  %93 = load %union.mlx5_core_general_diagnostics*, %union.mlx5_core_general_diagnostics** %7, align 8
  %94 = bitcast %union.mlx5_core_general_diagnostics* %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MLX5_CORE_GENERAL_DIAGNOSTICS_NUM, align 4
  %97 = load i8*, i8** %15, align 8
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @mlx5_core_put_diag_counter(i32 %92, i32 %95, i32 %96, i8* %97, i32 %98)
  br label %100

100:                                              ; preds = %91, %88
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %54

104:                                              ; preds = %54
  br label %105

105:                                              ; preds = %104, %46
  %106 = load i8*, i8** %8, align 8
  %107 = call i32 @kvfree(i8* %106)
  %108 = load %union.mlx5_core_pci_diagnostics*, %union.mlx5_core_pci_diagnostics** %6, align 8
  %109 = icmp ne %union.mlx5_core_pci_diagnostics* %108, null
  br i1 %109, label %110, label %205

110:                                              ; preds = %105
  %111 = load i32, i32* @mpcnt_reg, align 4
  %112 = call i32 @MLX5_ST_SZ_BYTES(i32 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* @mpcnt_reg, align 4
  %114 = call i32 @MLX5_ST_SZ_BYTES(i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i8* @mlx5_vzalloc(i32 %115)
  store i8* %116, i8** %9, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %206

122:                                              ; preds = %110
  %123 = load i32, i32* %11, align 4
  %124 = call i8* @mlx5_vzalloc(i32 %123)
  store i8* %124, i8** %8, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @kvfree(i8* %128)
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %206

132:                                              ; preds = %122
  %133 = load i32, i32* @mpcnt_reg, align 4
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* @grp, align 4
  %136 = load i32, i32* @MLX5_PCIE_PERFORMANCE_COUNTERS_GROUP, align 4
  %137 = call i32 @MLX5_SET(i32 %133, i8* %134, i32 %135, i32 %136)
  %138 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load i8*, i8** %8, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @MLX5_REG_MPCNT, align 4
  %144 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %138, i8* %139, i32 %140, i8* %141, i32 %142, i32 %143, i32 0, i32 0)
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %132
  %148 = load i32, i32* @mpcnt_reg, align 4
  %149 = load i8*, i8** %8, align 8
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @counter_set, i32 0, i32 1), align 4
  %151 = call i8* @MLX5_ADDR_OF(i32 %148, i8* %149, i32 %150)
  store i8* %151, i8** %17, align 8
  %152 = load i32, i32* @pcie_perf_counters, align 4
  %153 = load i8*, i8** %17, align 8
  %154 = load i32, i32* @rx_errors, align 4
  %155 = call i8* @MLX5_GET(i32 %152, i8* %153, i32 %154)
  %156 = load %union.mlx5_core_pci_diagnostics*, %union.mlx5_core_pci_diagnostics** %6, align 8
  %157 = bitcast %union.mlx5_core_pci_diagnostics* %156 to %struct.TYPE_4__*
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  store i8* %155, i8** %158, align 8
  %159 = load i32, i32* @pcie_perf_counters, align 4
  %160 = load i8*, i8** %17, align 8
  %161 = load i32, i32* @tx_errors, align 4
  %162 = call i8* @MLX5_GET(i32 %159, i8* %160, i32 %161)
  %163 = load %union.mlx5_core_pci_diagnostics*, %union.mlx5_core_pci_diagnostics** %6, align 8
  %164 = bitcast %union.mlx5_core_pci_diagnostics* %163 to %struct.TYPE_4__*
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  store i8* %162, i8** %165, align 8
  br label %166

166:                                              ; preds = %147, %132
  %167 = load i32, i32* @mpcnt_reg, align 4
  %168 = load i8*, i8** %9, align 8
  %169 = load i32, i32* @grp, align 4
  %170 = load i32, i32* @MLX5_PCIE_TIMERS_AND_STATES_COUNTERS_GROUP, align 4
  %171 = call i32 @MLX5_SET(i32 %167, i8* %168, i32 %169, i32 %170)
  %172 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %173 = load i8*, i8** %9, align 8
  %174 = load i32, i32* %12, align 4
  %175 = load i8*, i8** %8, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* @MLX5_REG_MPCNT, align 4
  %178 = call i32 @mlx5_core_access_reg(%struct.mlx5_core_dev* %172, i8* %173, i32 %174, i8* %175, i32 %176, i32 %177, i32 0, i32 0)
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %166
  %182 = load i32, i32* @mpcnt_reg, align 4
  %183 = load i8*, i8** %8, align 8
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @counter_set, i32 0, i32 0), align 4
  %185 = call i8* @MLX5_ADDR_OF(i32 %182, i8* %183, i32 %184)
  store i8* %185, i8** %18, align 8
  %186 = load i32, i32* @pcie_timers_states, align 4
  %187 = load i8*, i8** %18, align 8
  %188 = load i32, i32* @non_fatal_err_msg_sent, align 4
  %189 = call i8* @MLX5_GET(i32 %186, i8* %187, i32 %188)
  %190 = load %union.mlx5_core_pci_diagnostics*, %union.mlx5_core_pci_diagnostics** %6, align 8
  %191 = bitcast %union.mlx5_core_pci_diagnostics* %190 to %struct.TYPE_4__*
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  store i8* %189, i8** %192, align 8
  %193 = load i32, i32* @pcie_timers_states, align 4
  %194 = load i8*, i8** %18, align 8
  %195 = load i32, i32* @fatal_err_msg_sent, align 4
  %196 = call i8* @MLX5_GET(i32 %193, i8* %194, i32 %195)
  %197 = load %union.mlx5_core_pci_diagnostics*, %union.mlx5_core_pci_diagnostics** %6, align 8
  %198 = bitcast %union.mlx5_core_pci_diagnostics* %197 to %struct.TYPE_4__*
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  store i8* %196, i8** %199, align 8
  br label %200

200:                                              ; preds = %181, %166
  %201 = load i8*, i8** %9, align 8
  %202 = call i32 @kvfree(i8* %201)
  %203 = load i8*, i8** %8, align 8
  %204 = call i32 @kvfree(i8* %203)
  br label %205

205:                                              ; preds = %200, %105
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %205, %127, %119, %43, %30, %23
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i8* @mlx5_vzalloc(i32) #1

declare dso_local i32 @mlx5_query_diagnostic_counters(%struct.mlx5_core_dev*, i32, i32, i8*, i32) #1

declare dso_local i8* @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @MLX5_GET64(i32, i8*, i32) #1

declare dso_local i32 @mlx5_core_put_diag_counter(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_core_access_reg(%struct.mlx5_core_dev*, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
