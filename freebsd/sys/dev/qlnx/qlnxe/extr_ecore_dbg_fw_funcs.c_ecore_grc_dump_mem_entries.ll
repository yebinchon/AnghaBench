; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_mem_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_mem_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i8 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.dbg_array = type { i64, i32* }
%struct.dbg_dump_cond_hdr = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dbg_dump_mem = type { i32, i32 }

@MEM_DUMP_ENTRY_SIZE_DWORDS = common dso_local global i64 0, align 8
@DBG_MODE_HDR_EVAL_MODE = common dso_local global i32 0, align 4
@DBG_MODE_HDR_MODES_BUF_OFFSET = common dso_local global i32 0, align 4
@DBG_DUMP_MEM_MEM_GROUP_ID = common dso_local global i32 0, align 4
@MEM_GROUPS_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Invalid mem_group_id\0A\00", align 1
@DBG_DUMP_MEM_ADDRESS = common dso_local global i32 0, align 4
@DBG_DUMP_MEM_LENGTH = common dso_local global i32 0, align 4
@DBG_DUMP_MEM_WIDE_BUS = common dso_local global i32 0, align 4
@MEM_GROUP_CONN_CFC_MEM = common dso_local global i64 0, align 8
@MAX_LCIDS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Invalid CCFC connection memory size\0A\00", align 1
@DBG_GRC_PARAM_NUM_LCIDS = common dso_local global i32 0, align 4
@MEM_GROUP_TASK_CFC_MEM = common dso_local global i64 0, align 8
@MAX_LTIDS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid TCFC task memory size\0A\00", align 1
@DBG_GRC_PARAM_NUM_LTIDS = common dso_local global i32 0, align 4
@s_block_defs = common dso_local global %struct.TYPE_6__** null, align 8
@s_storm_defs = common dso_local global %struct.TYPE_5__* null, align 8
@OSAL_NULL = common dso_local global i32 0, align 4
@s_mem_group_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32*, i64*, i32)* @ecore_grc_dump_mem_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ecore_grc_dump_mem_entries(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i64 %2, i32* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.dbg_array, align 8
  %9 = alloca %struct.ecore_hwfn*, align 8
  %10 = alloca %struct.ecore_ptt*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dbg_dump_cond_hdr*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.dbg_dump_mem*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = bitcast %struct.dbg_array* %8 to { i64, i32* }*
  %29 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %28, i32 0, i32 0
  store i64 %2, i64* %29, align 8
  %30 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %28, i32 0, i32 1
  store i32* %3, i32** %30, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %9, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 1, i32* %16, align 4
  br label %31

31:                                               ; preds = %217, %70, %6
  %32 = load i64, i64* %15, align 8
  %33 = getelementptr inbounds %struct.dbg_array, %struct.dbg_array* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %218

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.dbg_array, %struct.dbg_array* %8, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %15, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %15, align 8
  %41 = getelementptr inbounds i32, i32* %38, i64 %39
  %42 = bitcast i32* %41 to %struct.dbg_dump_cond_hdr*
  store %struct.dbg_dump_cond_hdr* %42, %struct.dbg_dump_cond_hdr** %17, align 8
  %43 = load %struct.dbg_dump_cond_hdr*, %struct.dbg_dump_cond_hdr** %17, align 8
  %44 = getelementptr inbounds %struct.dbg_dump_cond_hdr, %struct.dbg_dump_cond_hdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MEM_DUMP_ENTRY_SIZE_DWORDS, align 8
  %47 = udiv i64 %45, %46
  store i64 %47, i64* %19, align 8
  %48 = load %struct.dbg_dump_cond_hdr*, %struct.dbg_dump_cond_hdr** %17, align 8
  %49 = getelementptr inbounds %struct.dbg_dump_cond_hdr, %struct.dbg_dump_cond_hdr* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DBG_MODE_HDR_EVAL_MODE, align 4
  %53 = call i8* @GET_FIELD(i32 %51, i32 %52)
  %54 = icmp ugt i8* %53, null
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %36
  %59 = load %struct.dbg_dump_cond_hdr*, %struct.dbg_dump_cond_hdr** %17, align 8
  %60 = getelementptr inbounds %struct.dbg_dump_cond_hdr, %struct.dbg_dump_cond_hdr* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DBG_MODE_HDR_MODES_BUF_OFFSET, align 4
  %64 = call i8* @GET_FIELD(i32 %62, i32 %63)
  store i8* %64, i8** %18, align 8
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %66 = call i32 @ecore_is_mode_match(%struct.ecore_hwfn* %65, i8** %18)
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %58, %36
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load %struct.dbg_dump_cond_hdr*, %struct.dbg_dump_cond_hdr** %17, align 8
  %72 = getelementptr inbounds %struct.dbg_dump_cond_hdr, %struct.dbg_dump_cond_hdr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %15, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %15, align 8
  br label %31

76:                                               ; preds = %67
  store i64 0, i64* %13, align 8
  br label %77

77:                                               ; preds = %211, %76
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* %19, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %217

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.dbg_array, %struct.dbg_array* %8, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %15, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = bitcast i32* %85 to %struct.dbg_dump_mem*
  store %struct.dbg_dump_mem* %86, %struct.dbg_dump_mem** %21, align 8
  %87 = load %struct.dbg_dump_mem*, %struct.dbg_dump_mem** %21, align 8
  %88 = getelementptr inbounds %struct.dbg_dump_mem, %struct.dbg_dump_mem* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DBG_DUMP_MEM_MEM_GROUP_ID, align 4
  %91 = call i8* @GET_FIELD(i32 %89, i32 %90)
  %92 = ptrtoint i8* %91 to i64
  store i64 %92, i64* %22, align 8
  store i32 0, i32* %23, align 4
  store i8 97, i8* %25, align 1
  %93 = load i64, i64* %22, align 8
  %94 = load i64, i64* @MEM_GROUPS_NUM, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %81
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %98 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %97, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %220

99:                                               ; preds = %81
  %100 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %101 = load %struct.dbg_dump_cond_hdr*, %struct.dbg_dump_cond_hdr** %17, align 8
  %102 = getelementptr inbounds %struct.dbg_dump_cond_hdr, %struct.dbg_dump_cond_hdr* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i64, i64* %22, align 8
  %106 = call i32 @ecore_grc_is_mem_included(%struct.ecore_hwfn* %100, i32 %104, i64 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %99
  br label %211

109:                                              ; preds = %99
  %110 = load %struct.dbg_dump_mem*, %struct.dbg_dump_mem** %21, align 8
  %111 = getelementptr inbounds %struct.dbg_dump_mem, %struct.dbg_dump_mem* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @DBG_DUMP_MEM_ADDRESS, align 4
  %114 = call i8* @GET_FIELD(i32 %112, i32 %113)
  %115 = ptrtoint i8* %114 to i64
  store i64 %115, i64* %26, align 8
  %116 = load %struct.dbg_dump_mem*, %struct.dbg_dump_mem** %21, align 8
  %117 = getelementptr inbounds %struct.dbg_dump_mem, %struct.dbg_dump_mem* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @DBG_DUMP_MEM_LENGTH, align 4
  %120 = call i8* @GET_FIELD(i32 %118, i32 %119)
  %121 = ptrtoint i8* %120 to i64
  store i64 %121, i64* %27, align 8
  %122 = load %struct.dbg_dump_mem*, %struct.dbg_dump_mem** %21, align 8
  %123 = getelementptr inbounds %struct.dbg_dump_mem, %struct.dbg_dump_mem* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @DBG_DUMP_MEM_WIDE_BUS, align 4
  %126 = call i8* @GET_FIELD(i32 %124, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* %24, align 4
  %128 = load i64, i64* %22, align 8
  %129 = load i64, i64* @MEM_GROUP_CONN_CFC_MEM, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %147

131:                                              ; preds = %109
  %132 = load i64, i64* %27, align 8
  %133 = load i64, i64* @MAX_LCIDS, align 8
  %134 = urem i64 %132, %133
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %138 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %137, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %220

139:                                              ; preds = %131
  %140 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %141 = load i32, i32* @DBG_GRC_PARAM_NUM_LCIDS, align 4
  %142 = call i64 @ecore_grc_get_param(%struct.ecore_hwfn* %140, i32 %141)
  %143 = load i64, i64* %27, align 8
  %144 = load i64, i64* @MAX_LCIDS, align 8
  %145 = udiv i64 %143, %144
  %146 = mul i64 %142, %145
  store i64 %146, i64* %27, align 8
  br label %168

147:                                              ; preds = %109
  %148 = load i64, i64* %22, align 8
  %149 = load i64, i64* @MEM_GROUP_TASK_CFC_MEM, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %147
  %152 = load i64, i64* %27, align 8
  %153 = load i64, i64* @MAX_LTIDS, align 8
  %154 = urem i64 %152, %153
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %158 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %157, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %220

159:                                              ; preds = %151
  %160 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %161 = load i32, i32* @DBG_GRC_PARAM_NUM_LTIDS, align 4
  %162 = call i64 @ecore_grc_get_param(%struct.ecore_hwfn* %160, i32 %161)
  %163 = load i64, i64* %27, align 8
  %164 = load i64, i64* @MAX_LTIDS, align 8
  %165 = udiv i64 %163, %164
  %166 = mul i64 %162, %165
  store i64 %166, i64* %27, align 8
  br label %167

167:                                              ; preds = %159, %147
  br label %168

168:                                              ; preds = %167, %139
  %169 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @s_block_defs, align 8
  %170 = load %struct.dbg_dump_cond_hdr*, %struct.dbg_dump_cond_hdr** %17, align 8
  %171 = getelementptr inbounds %struct.dbg_dump_cond_hdr, %struct.dbg_dump_cond_hdr* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %169, i64 %172
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %168
  store i32 1, i32* %23, align 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_storm_defs, align 8
  %180 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @s_block_defs, align 8
  %181 = load %struct.dbg_dump_cond_hdr*, %struct.dbg_dump_cond_hdr** %17, align 8
  %182 = getelementptr inbounds %struct.dbg_dump_cond_hdr, %struct.dbg_dump_cond_hdr* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %180, i64 %183
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i8, i8* %189, align 1
  store i8 %190, i8* %25, align 1
  br label %191

191:                                              ; preds = %178, %168
  %192 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %9, align 8
  %193 = load %struct.ecore_ptt*, %struct.ecore_ptt** %10, align 8
  %194 = load i64*, i64** %11, align 8
  %195 = load i64, i64* %14, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* @OSAL_NULL, align 4
  %199 = load i64, i64* %26, align 8
  %200 = load i64, i64* %27, align 8
  %201 = load i32, i32* %24, align 4
  %202 = load i32*, i32** @s_mem_group_names, align 8
  %203 = load i64, i64* %22, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %23, align 4
  %207 = load i8, i8* %25, align 1
  %208 = call i64 @ecore_grc_dump_mem(%struct.ecore_hwfn* %192, %struct.ecore_ptt* %193, i64* %196, i32 %197, i32 %198, i64 %199, i64 %200, i32 %201, i32 0, i32 0, i32 %205, i32 %206, i8 signext %207)
  %209 = load i64, i64* %14, align 8
  %210 = add i64 %209, %208
  store i64 %210, i64* %14, align 8
  br label %211

211:                                              ; preds = %191, %108
  %212 = load i64, i64* %13, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %13, align 8
  %214 = load i64, i64* @MEM_DUMP_ENTRY_SIZE_DWORDS, align 8
  %215 = load i64, i64* %15, align 8
  %216 = add i64 %215, %214
  store i64 %216, i64* %15, align 8
  br label %77

217:                                              ; preds = %77
  br label %31

218:                                              ; preds = %31
  %219 = load i64, i64* %14, align 8
  store i64 %219, i64* %7, align 8
  br label %220

220:                                              ; preds = %218, %156, %136, %96
  %221 = load i64, i64* %7, align 8
  ret i64 %221
}

declare dso_local i8* @GET_FIELD(i32, i32) #1

declare dso_local i32 @ecore_is_mode_match(%struct.ecore_hwfn*, i8**) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_grc_is_mem_included(%struct.ecore_hwfn*, i32, i64) #1

declare dso_local i64 @ecore_grc_get_param(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @ecore_grc_dump_mem(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
