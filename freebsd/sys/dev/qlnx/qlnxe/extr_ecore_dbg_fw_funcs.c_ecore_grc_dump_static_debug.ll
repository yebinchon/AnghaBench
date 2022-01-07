; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_static_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_static_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_defs = type { i64*, i32, i32 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64, i64* }
%struct.ecore_ptt = type { i32 }
%struct.dbg_bus_block = type { i32 }

@DBG_REG_DBG_BLOCK_ON = common dso_local global i32 0, align 4
@MAX_BLOCK_ID = common dso_local global i64 0, align 8
@s_block_defs = common dso_local global %struct.block_defs** null, align 8
@MAX_DBG_BUS_CLIENTS = common dso_local global i64 0, align 8
@DBG_BUS_FRAME_MODE_8HW_0ST = common dso_local global i32 0, align 4
@DBG_REG_DEBUG_TARGET = common dso_local global i32 0, align 4
@DBG_BUS_TARGET_ID_INT_BUF = common dso_local global i32 0, align 4
@DBG_REG_FULL_MODE = common dso_local global i32 0, align 4
@STATIC_DEBUG_LINE_DWORDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"STATIC\00", align 1
@DBG_REG_CALENDAR_OUT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*, i32)* @ecore_grc_dump_static_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ecore_grc_dump_static_debug(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_ptt*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dbg_tools_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.block_defs*, align 8
  %15 = alloca %struct.block_defs*, align 8
  %16 = alloca %struct.dbg_bus_block*, align 8
  %17 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %19 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %18, i32 0, i32 0
  store %struct.dbg_tools_data* %19, %struct.dbg_tools_data** %10, align 8
  store i64 0, i64* %13, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %24 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %25 = load i32, i32* @DBG_REG_DBG_BLOCK_ON, align 4
  %26 = call i64 @ecore_rd(%struct.ecore_hwfn* %23, %struct.ecore_ptt* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i64 0, i64* %5, align 8
  br label %216

29:                                               ; preds = %22, %4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %83

32:                                               ; preds = %29
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %60, %32
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @MAX_BLOCK_ID, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %33
  %38 = load %struct.block_defs**, %struct.block_defs*** @s_block_defs, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds %struct.block_defs*, %struct.block_defs** %38, i64 %39
  %41 = load %struct.block_defs*, %struct.block_defs** %40, align 8
  store %struct.block_defs* %41, %struct.block_defs** %14, align 8
  %42 = load %struct.block_defs*, %struct.block_defs** %14, align 8
  %43 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %46 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MAX_DBG_BUS_CLIENTS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %37
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %54 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %55 = load %struct.block_defs*, %struct.block_defs** %14, align 8
  %56 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ecore_wr(%struct.ecore_hwfn* %53, %struct.ecore_ptt* %54, i32 %57, i32 0)
  br label %59

59:                                               ; preds = %52, %37
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %11, align 8
  br label %33

63:                                               ; preds = %33
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %65 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %66 = call i32 @ecore_bus_reset_dbg_block(%struct.ecore_hwfn* %64, %struct.ecore_ptt* %65)
  %67 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %68 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %69 = load i32, i32* @DBG_BUS_FRAME_MODE_8HW_0ST, align 4
  %70 = call i32 @ecore_bus_set_framing_mode(%struct.ecore_hwfn* %67, %struct.ecore_ptt* %68, i32 %69)
  %71 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %72 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %73 = load i32, i32* @DBG_REG_DEBUG_TARGET, align 4
  %74 = load i32, i32* @DBG_BUS_TARGET_ID_INT_BUF, align 4
  %75 = call i32 @ecore_wr(%struct.ecore_hwfn* %71, %struct.ecore_ptt* %72, i32 %73, i32 %74)
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %77 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %78 = load i32, i32* @DBG_REG_FULL_MODE, align 4
  %79 = call i32 @ecore_wr(%struct.ecore_hwfn* %76, %struct.ecore_ptt* %77, i32 %78, i32 1)
  %80 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %81 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %82 = call i32 @ecore_bus_enable_dbg_block(%struct.ecore_hwfn* %80, %struct.ecore_ptt* %81, i32 1)
  br label %83

83:                                               ; preds = %63, %29
  store i64 0, i64* %11, align 8
  br label %84

84:                                               ; preds = %201, %83
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* @MAX_BLOCK_ID, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %204

88:                                               ; preds = %84
  %89 = load %struct.block_defs**, %struct.block_defs*** @s_block_defs, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds %struct.block_defs*, %struct.block_defs** %89, i64 %90
  %92 = load %struct.block_defs*, %struct.block_defs** %91, align 8
  store %struct.block_defs* %92, %struct.block_defs** %15, align 8
  %93 = load %struct.block_defs*, %struct.block_defs** %15, align 8
  %94 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %97 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MAX_DBG_BUS_CLIENTS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %88
  br label %201

104:                                              ; preds = %88
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %106 = load i64, i64* %11, align 8
  %107 = trunc i64 %106 to i32
  %108 = call %struct.dbg_bus_block* @get_dbg_bus_block_desc(%struct.ecore_hwfn* %105, i32 %107)
  store %struct.dbg_bus_block* %108, %struct.dbg_bus_block** %16, align 8
  %109 = load %struct.dbg_bus_block*, %struct.dbg_bus_block** %16, align 8
  %110 = call i64 @NUM_DBG_LINES(%struct.dbg_bus_block* %109)
  %111 = load i64, i64* @STATIC_DEBUG_LINE_DWORDS, align 8
  %112 = mul i64 %110, %111
  store i64 %112, i64* %17, align 8
  %113 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = load i64, i64* %13, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.block_defs*, %struct.block_defs** %15, align 8
  %119 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* %17, align 8
  %122 = call i64 @ecore_grc_dump_mem_hdr(%struct.ecore_hwfn* %113, i64* %116, i32 %117, i32 %120, i32 0, i64 %121, i32 32, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %123 = load i64, i64* %13, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %13, align 8
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %104
  %128 = load i64, i64* %17, align 8
  %129 = load i64, i64* %13, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %13, align 8
  br label %201

131:                                              ; preds = %104
  %132 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %133 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %132, i32 0, i32 1
  %134 = load i64*, i64** %133, align 8
  %135 = load i64, i64* %11, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %149

139:                                              ; preds = %131
  %140 = load i64*, i64** %8, align 8
  %141 = load i64, i64* %13, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %17, align 8
  %144 = call i32 @DWORDS_TO_BYTES(i64 %143)
  %145 = call i32 @OSAL_MEMSET(i64* %142, i32 0, i32 %144)
  %146 = load i64, i64* %17, align 8
  %147 = load i64, i64* %13, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %13, align 8
  br label %201

149:                                              ; preds = %131
  %150 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %151 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %152 = load %struct.block_defs*, %struct.block_defs** %15, align 8
  %153 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %152, i32 0, i32 0
  %154 = load i64*, i64** %153, align 8
  %155 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %10, align 8
  %156 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i64, i64* %154, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = shl i32 1, %160
  %162 = call i32 @ecore_bus_enable_clients(%struct.ecore_hwfn* %150, %struct.ecore_ptt* %151, i32 %161)
  store i64 0, i64* %12, align 8
  br label %163

163:                                              ; preds = %188, %149
  %164 = load i64, i64* %12, align 8
  %165 = load %struct.dbg_bus_block*, %struct.dbg_bus_block** %16, align 8
  %166 = call i64 @NUM_DBG_LINES(%struct.dbg_bus_block* %165)
  %167 = icmp ult i64 %164, %166
  br i1 %167, label %168, label %191

168:                                              ; preds = %163
  %169 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %170 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %171 = load i64, i64* %11, align 8
  %172 = trunc i64 %171 to i32
  %173 = load i64, i64* %12, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 @ecore_config_dbg_line(%struct.ecore_hwfn* %169, %struct.ecore_ptt* %170, i32 %172, i32 %174, i32 15, i32 0, i32 0, i32 0)
  %176 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %177 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %178 = load i64*, i64** %8, align 8
  %179 = load i64, i64* %13, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @DBG_REG_CALENDAR_OUT_DATA, align 4
  %183 = call i32 @BYTES_TO_DWORDS(i32 %182)
  %184 = load i64, i64* @STATIC_DEBUG_LINE_DWORDS, align 8
  %185 = call i64 @ecore_grc_dump_addr_range(%struct.ecore_hwfn* %176, %struct.ecore_ptt* %177, i64* %180, i32 %181, i32 %183, i64 %184, i32 1)
  %186 = load i64, i64* %13, align 8
  %187 = add i64 %186, %185
  store i64 %187, i64* %13, align 8
  br label %188

188:                                              ; preds = %168
  %189 = load i64, i64* %12, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %12, align 8
  br label %163

191:                                              ; preds = %163
  %192 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %193 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %194 = call i32 @ecore_bus_enable_clients(%struct.ecore_hwfn* %192, %struct.ecore_ptt* %193, i32 0)
  %195 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %196 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %197 = load %struct.block_defs*, %struct.block_defs** %15, align 8
  %198 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @ecore_wr(%struct.ecore_hwfn* %195, %struct.ecore_ptt* %196, i32 %199, i32 0)
  br label %201

201:                                              ; preds = %191, %139, %127, %103
  %202 = load i64, i64* %11, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %11, align 8
  br label %84

204:                                              ; preds = %84
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  %208 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %209 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %210 = call i32 @ecore_bus_enable_dbg_block(%struct.ecore_hwfn* %208, %struct.ecore_ptt* %209, i32 0)
  %211 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %212 = load %struct.ecore_ptt*, %struct.ecore_ptt** %7, align 8
  %213 = call i32 @ecore_bus_enable_clients(%struct.ecore_hwfn* %211, %struct.ecore_ptt* %212, i32 0)
  br label %214

214:                                              ; preds = %207, %204
  %215 = load i64, i64* %13, align 8
  store i64 %215, i64* %5, align 8
  br label %216

216:                                              ; preds = %214, %28
  %217 = load i64, i64* %5, align 8
  ret i64 %217
}

declare dso_local i64 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #1

declare dso_local i32 @ecore_bus_reset_dbg_block(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i32 @ecore_bus_set_framing_mode(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_bus_enable_dbg_block(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local %struct.dbg_bus_block* @get_dbg_bus_block_desc(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @NUM_DBG_LINES(%struct.dbg_bus_block*) #1

declare dso_local i64 @ecore_grc_dump_mem_hdr(%struct.ecore_hwfn*, i64*, i32, i32, i32, i64, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @OSAL_MEMSET(i64*, i32, i32) #1

declare dso_local i32 @DWORDS_TO_BYTES(i64) #1

declare dso_local i32 @ecore_bus_enable_clients(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

declare dso_local i32 @ecore_config_dbg_line(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ecore_grc_dump_addr_range(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*, i32, i32, i64, i32) #1

declare dso_local i32 @BYTES_TO_DWORDS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
