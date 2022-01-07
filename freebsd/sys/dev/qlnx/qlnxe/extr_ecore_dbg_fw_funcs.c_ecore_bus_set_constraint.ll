; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_set_constraint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_set_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_ptt = type { i32 }

@BYTES_IN_DWORD = common dso_local global i32 0, align 4
@TRIGGER_SETS_PER_STATE = common dso_local global i32 0, align 4
@MAX_CONSTRAINTS = common dso_local global i32 0, align 4
@DBG_REG_FILTER_CNSTR_OPRTN_0 = common dso_local global i32 0, align 4
@DBG_REG_TRIGGER_STATE_SET_CNSTR_OPRTN_0 = common dso_local global i32 0, align 4
@DBG_REG_FILTER_CNSTR_DATA_0 = common dso_local global i32 0, align 4
@DBG_REG_TRIGGER_STATE_SET_CNSTR_DATA_0 = common dso_local global i32 0, align 4
@DBG_REG_FILTER_CNSTR_DATA_MASK_0 = common dso_local global i32 0, align 4
@DBG_REG_TRIGGER_STATE_SET_CNSTR_DATA_MASK_0 = common dso_local global i32 0, align 4
@DBG_REG_FILTER_CNSTR_FRAME_0 = common dso_local global i32 0, align 4
@DBG_REG_TRIGGER_STATE_SET_CNSTR_FRAME_0 = common dso_local global i32 0, align 4
@DBG_REG_FILTER_CNSTR_FRAME_MASK_0 = common dso_local global i32 0, align 4
@DBG_REG_TRIGGER_STATE_SET_CNSTR_FRAME_MASK_0 = common dso_local global i32 0, align 4
@DBG_REG_FILTER_CNSTR_OFFSET_0 = common dso_local global i32 0, align 4
@DBG_REG_TRIGGER_STATE_SET_CNSTR_OFFSET_0 = common dso_local global i32 0, align 4
@DBG_REG_FILTER_CNSTR_RANGE_0 = common dso_local global i32 0, align 4
@DBG_REG_TRIGGER_STATE_SET_CNSTR_RANGE_0 = common dso_local global i32 0, align 4
@DBG_REG_FILTER_CNSTR_CYCLIC_0 = common dso_local global i32 0, align 4
@DBG_REG_TRIGGER_STATE_SET_CNSTR_CYCLIC_0 = common dso_local global i32 0, align 4
@DBG_REG_FILTER_CNSTR_MUST_0 = common dso_local global i32 0, align 4
@DBG_REG_TRIGGER_STATE_SET_CNSTR_MUST_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @ecore_bus_set_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_bus_set_constraint(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.ecore_hwfn*, align 8
  %15 = alloca %struct.ecore_ptt*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.dbg_tools_data*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %14, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %14, align 8
  %31 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %30, i32 0, i32 0
  store %struct.dbg_tools_data* %31, %struct.dbg_tools_data** %27, align 8
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* @BYTES_IN_DWORD, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %28, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %13
  %38 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %27, align 8
  %39 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %29, align 4
  %43 = load i32, i32* %29, align 4
  %44 = load i32, i32* @TRIGGER_SETS_PER_STATE, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* @MAX_CONSTRAINTS, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* @BYTES_IN_DWORD, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %28, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %28, align 4
  br label %52

52:                                               ; preds = %37, %13
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %14, align 8
  %54 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @DBG_REG_FILTER_CNSTR_OPRTN_0, align 4
  br label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @DBG_REG_TRIGGER_STATE_SET_CNSTR_OPRTN_0, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load i32, i32* %28, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %18, align 4
  %66 = call i32 @ecore_wr(%struct.ecore_hwfn* %53, %struct.ecore_ptt* %54, i32 %64, i32 %65)
  %67 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %14, align 8
  %68 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @DBG_REG_FILTER_CNSTR_DATA_0, align 4
  br label %75

73:                                               ; preds = %61
  %74 = load i32, i32* @DBG_REG_TRIGGER_STATE_SET_CNSTR_DATA_0, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load i32, i32* %28, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %19, align 4
  %80 = call i32 @ecore_wr(%struct.ecore_hwfn* %67, %struct.ecore_ptt* %68, i32 %78, i32 %79)
  %81 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %14, align 8
  %82 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @DBG_REG_FILTER_CNSTR_DATA_MASK_0, align 4
  br label %89

87:                                               ; preds = %75
  %88 = load i32, i32* @DBG_REG_TRIGGER_STATE_SET_CNSTR_DATA_MASK_0, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load i32, i32* %28, align 4
  %92 = add nsw i32 %90, %91
  %93 = load i32, i32* %20, align 4
  %94 = call i32 @ecore_wr(%struct.ecore_hwfn* %81, %struct.ecore_ptt* %82, i32 %92, i32 %93)
  %95 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %14, align 8
  %96 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i32, i32* @DBG_REG_FILTER_CNSTR_FRAME_0, align 4
  br label %103

101:                                              ; preds = %89
  %102 = load i32, i32* @DBG_REG_TRIGGER_STATE_SET_CNSTR_FRAME_0, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = load i32, i32* %28, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %21, align 4
  %108 = call i32 @ecore_wr(%struct.ecore_hwfn* %95, %struct.ecore_ptt* %96, i32 %106, i32 %107)
  %109 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %14, align 8
  %110 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* @DBG_REG_FILTER_CNSTR_FRAME_MASK_0, align 4
  br label %117

115:                                              ; preds = %103
  %116 = load i32, i32* @DBG_REG_TRIGGER_STATE_SET_CNSTR_FRAME_MASK_0, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = load i32, i32* %28, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* %22, align 4
  %122 = call i32 @ecore_wr(%struct.ecore_hwfn* %109, %struct.ecore_ptt* %110, i32 %120, i32 %121)
  %123 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %14, align 8
  %124 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %125 = load i32, i32* %16, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = load i32, i32* @DBG_REG_FILTER_CNSTR_OFFSET_0, align 4
  br label %131

129:                                              ; preds = %117
  %130 = load i32, i32* @DBG_REG_TRIGGER_STATE_SET_CNSTR_OFFSET_0, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  %133 = load i32, i32* %28, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %23, align 4
  %136 = call i32 @ecore_wr(%struct.ecore_hwfn* %123, %struct.ecore_ptt* %124, i32 %134, i32 %135)
  %137 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %14, align 8
  %138 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* @DBG_REG_FILTER_CNSTR_RANGE_0, align 4
  br label %145

143:                                              ; preds = %131
  %144 = load i32, i32* @DBG_REG_TRIGGER_STATE_SET_CNSTR_RANGE_0, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = load i32, i32* %28, align 4
  %148 = add nsw i32 %146, %147
  %149 = load i32, i32* %24, align 4
  %150 = call i32 @ecore_wr(%struct.ecore_hwfn* %137, %struct.ecore_ptt* %138, i32 %148, i32 %149)
  %151 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %14, align 8
  %152 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %145
  %156 = load i32, i32* @DBG_REG_FILTER_CNSTR_CYCLIC_0, align 4
  br label %159

157:                                              ; preds = %145
  %158 = load i32, i32* @DBG_REG_TRIGGER_STATE_SET_CNSTR_CYCLIC_0, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i32 [ %156, %155 ], [ %158, %157 ]
  %161 = load i32, i32* %28, align 4
  %162 = add nsw i32 %160, %161
  %163 = load i32, i32* %25, align 4
  %164 = call i32 @ecore_wr(%struct.ecore_hwfn* %151, %struct.ecore_ptt* %152, i32 %162, i32 %163)
  %165 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %14, align 8
  %166 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %167 = load i32, i32* %16, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %159
  %170 = load i32, i32* @DBG_REG_FILTER_CNSTR_MUST_0, align 4
  br label %173

171:                                              ; preds = %159
  %172 = load i32, i32* @DBG_REG_TRIGGER_STATE_SET_CNSTR_MUST_0, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %175 = load i32, i32* %28, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %26, align 4
  %178 = call i32 @ecore_wr(%struct.ecore_hwfn* %165, %struct.ecore_ptt* %166, i32 %176, i32 %177)
  ret void
}

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
