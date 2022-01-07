; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_modified_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_modified_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i64, i64 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64* }
%struct.ecore_ptt = type { i32 }
%struct.dbg_attn_reg = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"eng\00", align 1
@OSAL_NULL = common dso_local global i32 0, align 4
@MAX_BLOCK_ID = common dso_local global i64 0, align 8
@ATTN_TYPE_PARITY = common dso_local global i32 0, align 4
@DBG_MODE_HDR_EVAL_MODE = common dso_local global i32 0, align 4
@DBG_MODE_HDR_MODES_BUF_OFFSET = common dso_local global i32 0, align 4
@DBG_ATTN_REG_STS_ADDRESS = common dso_local global i32 0, align 4
@MAX_DBG_STORMS = common dso_local global i64 0, align 8
@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8
@SEM_FAST_REG_STALLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*, i32)* @ecore_grc_dump_modified_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ecore_grc_dump_modified_regs(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dbg_tools_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.dbg_attn_reg*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.dbg_attn_reg*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.storm_defs*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %22 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %21, i32 0, i32 0
  store %struct.dbg_tools_data* %22, %struct.dbg_tools_data** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = load i32, i32* @OSAL_NULL, align 4
  %25 = load i32, i32* @OSAL_NULL, align 4
  %26 = call i64 @ecore_grc_dump_regs_hdr(i64* %23, i32 0, i64 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 -1, i32 %24, i32 %25)
  %27 = load i64, i64* %11, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %112, %4
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @MAX_BLOCK_ID, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %115

33:                                               ; preds = %29
  %34 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %35 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %112

45:                                               ; preds = %41, %33
  %46 = load i64, i64* %10, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @ATTN_TYPE_PARITY, align 4
  %49 = call %struct.dbg_attn_reg* @ecore_get_block_attn_regs(i32 %47, i32 %48, i64* %16)
  store %struct.dbg_attn_reg* %49, %struct.dbg_attn_reg** %13, align 8
  store i64 0, i64* %15, align 8
  br label %50

50:                                               ; preds = %108, %45
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %16, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %111

54:                                               ; preds = %50
  %55 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %13, align 8
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %55, i64 %56
  store %struct.dbg_attn_reg* %57, %struct.dbg_attn_reg** %17, align 8
  %58 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %17, align 8
  %59 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DBG_MODE_HDR_EVAL_MODE, align 4
  %63 = call i64 @GET_FIELD(i32 %61, i32 %62)
  %64 = icmp sgt i64 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %19, align 4
  %66 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %17, align 8
  %67 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DBG_MODE_HDR_MODES_BUF_OFFSET, align 4
  %71 = call i64 @GET_FIELD(i32 %69, i32 %70)
  store i64 %71, i64* %18, align 8
  %72 = load i32, i32* %19, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %54
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %76 = call i32 @ecore_is_mode_match(%struct.ecore_hwfn* %75, i64* %18)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %108

79:                                               ; preds = %74, %54
  %80 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %81 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %82 = load i64*, i64** %7, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %17, align 8
  %87 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @ecore_grc_dump_reg_entry(%struct.ecore_hwfn* %80, %struct.ecore_ptt* %81, i64* %84, i32 %85, i64 %88, i32 1, i32 0)
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %11, align 8
  %92 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %93 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %94 = load i64*, i64** %7, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %17, align 8
  %99 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @DBG_ATTN_REG_STS_ADDRESS, align 4
  %102 = call i64 @GET_FIELD(i32 %100, i32 %101)
  %103 = call i64 @ecore_grc_dump_reg_entry(%struct.ecore_hwfn* %92, %struct.ecore_ptt* %93, i64* %96, i32 %97, i64 %102, i32 1, i32 0)
  %104 = load i64, i64* %11, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %11, align 8
  %106 = load i64, i64* %12, align 8
  %107 = add i64 %106, 2
  store i64 %107, i64* %12, align 8
  br label %108

108:                                              ; preds = %79, %78
  %109 = load i64, i64* %15, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %15, align 8
  br label %50

111:                                              ; preds = %50
  br label %112

112:                                              ; preds = %111, %44
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %10, align 8
  br label %29

115:                                              ; preds = %29
  store i64 0, i64* %14, align 8
  br label %116

116:                                              ; preds = %155, %115
  %117 = load i64, i64* %14, align 8
  %118 = load i64, i64* @MAX_DBG_STORMS, align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %158

120:                                              ; preds = %116
  %121 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %122 = load i64, i64* %14, align 8
  %123 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %121, i64 %122
  store %struct.storm_defs* %123, %struct.storm_defs** %20, align 8
  %124 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %125 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load %struct.storm_defs*, %struct.storm_defs** %20, align 8
  %128 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i64, i64* %126, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %120
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %155

137:                                              ; preds = %133, %120
  %138 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %139 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %140 = load i64*, i64** %7, align 8
  %141 = load i64, i64* %11, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.storm_defs*, %struct.storm_defs** %20, align 8
  %145 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @SEM_FAST_REG_STALLED, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i64 @BYTES_TO_DWORDS(i64 %148)
  %150 = call i64 @ecore_grc_dump_reg_entry(%struct.ecore_hwfn* %138, %struct.ecore_ptt* %139, i64* %142, i32 %143, i64 %149, i32 1, i32 0)
  %151 = load i64, i64* %11, align 8
  %152 = add i64 %151, %150
  store i64 %152, i64* %11, align 8
  %153 = load i64, i64* %12, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %12, align 8
  br label %155

155:                                              ; preds = %137, %136
  %156 = load i64, i64* %14, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %14, align 8
  br label %116

158:                                              ; preds = %116
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i64*, i64** %7, align 8
  %163 = load i64, i64* %12, align 8
  %164 = load i32, i32* @OSAL_NULL, align 4
  %165 = load i32, i32* @OSAL_NULL, align 4
  %166 = call i64 @ecore_grc_dump_regs_hdr(i64* %162, i32 1, i64 %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 -1, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %161, %158
  %168 = load i64, i64* %11, align 8
  ret i64 %168
}

declare dso_local i64 @ecore_grc_dump_regs_hdr(i64*, i32, i64, i8*, i32, i32, i32) #1

declare dso_local %struct.dbg_attn_reg* @ecore_get_block_attn_regs(i32, i32, i64*) #1

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i32 @ecore_is_mode_match(%struct.ecore_hwfn*, i64*) #1

declare dso_local i64 @ecore_grc_dump_reg_entry(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*, i32, i64, i32, i32) #1

declare dso_local i64 @BYTES_TO_DWORDS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
