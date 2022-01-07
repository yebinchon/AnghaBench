; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_assign_hw_ids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_assign_hw_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.dbg_bus_data }
%struct.dbg_bus_data = type { i64, %struct.dbg_bus_block_data*, %struct.TYPE_2__*, i64, i64 }
%struct.dbg_bus_block_data = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@VALUES_PER_CYCLE = common dso_local global i64 0, align 8
@DBG_BUS_TRIGGER_STATE_DATA_CONSTRAINT_DWORD_MASK = common dso_local global i32 0, align 4
@MAX_BLOCK_ID = common dso_local global i64 0, align 8
@DBG_BUS_BLOCK_DATA_ENABLE_MASK = common dso_local global i32 0, align 4
@DBG_BUS_BLOCK_DATA_RIGHT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, i64*)* @ecore_assign_hw_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_assign_hw_ids(%struct.ecore_hwfn* %0, i64* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.dbg_tools_data*, align 8
  %6 = alloca %struct.dbg_bus_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.dbg_bus_block_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store i64* %1, i64** %4, align 8
  %15 = load i64, i64* @VALUES_PER_CYCLE, align 8
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  store %struct.dbg_tools_data* %17, %struct.dbg_tools_data** %5, align 8
  %18 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %5, align 8
  %19 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %18, i32 0, i32 0
  store %struct.dbg_bus_data* %19, %struct.dbg_bus_data** %6, align 8
  store i32 1, i32* %7, align 4
  %20 = load i64*, i64** %4, align 8
  %21 = load i64, i64* @VALUES_PER_CYCLE, align 8
  %22 = call i32 @OSAL_MEMSET(i64* %20, i32 0, i64 %21)
  %23 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %24 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %167

28:                                               ; preds = %2
  %29 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %30 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %28
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %77, %33
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %37 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i1 [ false, %34 ], [ %42, %40 ]
  br i1 %44, label %45, label %80

45:                                               ; preds = %43
  store i64 0, i64* %11, align 8
  store i64 0, i64* %8, align 8
  br label %46

46:                                               ; preds = %69, %45
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @VALUES_PER_CYCLE, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %52 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DBG_BUS_TRIGGER_STATE_DATA_CONSTRAINT_DWORD_MASK, align 4
  %59 = call i32 @GET_FIELD(i32 %57, i32 %58)
  %60 = load i64, i64* %8, align 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 1, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %50
  %66 = load i64, i64* %11, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %65, %50
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %46

72:                                               ; preds = %46
  %73 = load i64, i64* %11, align 8
  %74 = icmp ugt i64 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %72
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %34

80:                                               ; preds = %43
  br label %81

81:                                               ; preds = %80, %28
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  store i64 0, i64* %8, align 8
  br label %85

85:                                               ; preds = %94, %84
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @VALUES_PER_CYCLE, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i64, i64* %8, align 8
  %91 = load i64*, i64** %4, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 %90, i64* %93, align 8
  br label %94

94:                                               ; preds = %89
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %8, align 8
  br label %85

97:                                               ; preds = %85
  br label %167

98:                                               ; preds = %81
  store i64 0, i64* %13, align 8
  store i64 0, i64* %10, align 8
  br label %99

99:                                               ; preds = %163, %98
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @MAX_BLOCK_ID, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %166

103:                                              ; preds = %99
  %104 = load %struct.dbg_bus_data*, %struct.dbg_bus_data** %6, align 8
  %105 = getelementptr inbounds %struct.dbg_bus_data, %struct.dbg_bus_data* %104, i32 0, i32 1
  %106 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %106, i64 %107
  store %struct.dbg_bus_block_data* %108, %struct.dbg_bus_block_data** %14, align 8
  %109 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %14, align 8
  %110 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %113 = call i32 @GET_FIELD(i32 %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %103
  br label %163

116:                                              ; preds = %103
  %117 = load i64, i64* %13, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %13, align 8
  %119 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %14, align 8
  %120 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %119, i32 0, i32 0
  store i64 %117, i64* %120, align 8
  %121 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %14, align 8
  %122 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %116
  br label %163

126:                                              ; preds = %116
  %127 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %14, align 8
  %128 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %131 = call i32 @GET_FIELD(i32 %129, i32 %130)
  %132 = load i64, i64* @VALUES_PER_CYCLE, align 8
  %133 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %14, align 8
  %134 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @DBG_BUS_BLOCK_DATA_RIGHT_SHIFT, align 4
  %137 = call i32 @GET_FIELD(i32 %135, i32 %136)
  %138 = call i64 @SHR(i32 %131, i64 %132, i32 %137)
  store i64 %138, i64* %12, align 8
  store i64 0, i64* %8, align 8
  br label %139

139:                                              ; preds = %159, %126
  %140 = load i64, i64* %8, align 8
  %141 = load i64, i64* @VALUES_PER_CYCLE, align 8
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* %8, align 8
  %146 = trunc i64 %145 to i32
  %147 = shl i32 1, %146
  %148 = sext i32 %147 to i64
  %149 = and i64 %144, %148
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %143
  %152 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %14, align 8
  %153 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64*, i64** %4, align 8
  %156 = load i64, i64* %8, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  store i64 %154, i64* %157, align 8
  br label %158

158:                                              ; preds = %151, %143
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %8, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %8, align 8
  br label %139

162:                                              ; preds = %139
  br label %163

163:                                              ; preds = %162, %125, %115
  %164 = load i64, i64* %10, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %10, align 8
  br label %99

166:                                              ; preds = %99
  br label %167

167:                                              ; preds = %27, %166, %97
  ret void
}

declare dso_local i32 @OSAL_MEMSET(i64*, i32, i64) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i64 @SHR(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
