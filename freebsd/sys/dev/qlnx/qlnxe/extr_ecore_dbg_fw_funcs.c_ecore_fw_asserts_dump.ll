; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_fw_asserts_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_fw_asserts_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i64, i8, i32 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64* }
%struct.ecore_ptt = type { i32 }
%struct.fw_asserts_ram_section = type { i32, i32, i32, i32, i32 }
%struct.fw_info = type { %struct.fw_asserts_ram_section }

@__const.ecore_fw_asserts_dump.storm_letter_str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"dump-type\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fw-asserts\00", align 1
@MAX_DBG_STORMS = common dso_local global i64 0, align 8
@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"fw_asserts\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"storm\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@SEM_FAST_REG_INT_RAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32)* @ecore_fw_asserts_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_fw_asserts_dump(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dbg_tools_data*, align 8
  %10 = alloca %struct.fw_asserts_ram_section*, align 8
  %11 = alloca [2 x i8], align 1
  %12 = alloca %struct.fw_info, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.storm_defs*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %22 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %21, i32 0, i32 0
  store %struct.dbg_tools_data* %22, %struct.dbg_tools_data** %9, align 8
  %23 = bitcast [2 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.ecore_fw_asserts_dump.storm_letter_str, i32 0, i32 0), i64 2, i1 false)
  store i32 0, i32* %13, align 4
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %25 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ecore_dump_common_global_params(%struct.ecore_hwfn* %24, %struct.ecore_ptt* %25, i32* %29, i32 %30, i32 1)
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ecore_dump_str_param(i32* %37, i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %42

42:                                               ; preds = %164, %4
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* @MAX_DBG_STORMS, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %167

46:                                               ; preds = %42
  %47 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %48 = load i64, i64* %14, align 8
  %49 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %47, i64 %48
  store %struct.storm_defs* %49, %struct.storm_defs** %20, align 8
  %50 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %51 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.storm_defs*, %struct.storm_defs** %20, align 8
  %54 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %164

60:                                               ; preds = %46
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %62 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %63 = load i64, i64* %14, align 8
  %64 = call i32 @ecore_read_fw_info(%struct.ecore_hwfn* %61, %struct.ecore_ptt* %62, i64 %63, %struct.fw_info* %12)
  %65 = getelementptr inbounds %struct.fw_info, %struct.fw_info* %12, i32 0, i32 0
  store %struct.fw_asserts_ram_section* %65, %struct.fw_asserts_ram_section** %10, align 8
  %66 = load %struct.storm_defs*, %struct.storm_defs** %20, align 8
  %67 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 8
  %69 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  store i8 %68, i8* %69, align 1
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @ecore_dump_section_hdr(i32* %73, i32 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %13, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %8, align 4
  %83 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %84 = call i32 @ecore_dump_str_param(i32* %81, i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %13, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.fw_asserts_ram_section*, %struct.fw_asserts_ram_section** %10, align 8
  %93 = getelementptr inbounds %struct.fw_asserts_ram_section, %struct.fw_asserts_ram_section* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ecore_dump_num_param(i32* %90, i32 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %60
  %101 = load %struct.fw_asserts_ram_section*, %struct.fw_asserts_ram_section** %10, align 8
  %102 = getelementptr inbounds %struct.fw_asserts_ram_section, %struct.fw_asserts_ram_section* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %13, align 4
  br label %164

106:                                              ; preds = %60
  %107 = load %struct.storm_defs*, %struct.storm_defs** %20, align 8
  %108 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SEM_FAST_REG_INT_RAM, align 4
  %111 = add nsw i32 %109, %110
  %112 = load %struct.fw_asserts_ram_section*, %struct.fw_asserts_ram_section** %10, align 8
  %113 = getelementptr inbounds %struct.fw_asserts_ram_section, %struct.fw_asserts_ram_section* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @RAM_LINES_TO_BYTES(i32 %114)
  %116 = add nsw i32 %111, %115
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.fw_asserts_ram_section*, %struct.fw_asserts_ram_section** %10, align 8
  %119 = getelementptr inbounds %struct.fw_asserts_ram_section, %struct.fw_asserts_ram_section* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @DWORDS_TO_BYTES(i32 %120)
  %122 = add nsw i32 %117, %121
  store i32 %122, i32* %16, align 4
  %123 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %124 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @ecore_rd(%struct.ecore_hwfn* %123, %struct.ecore_ptt* %124, i32 %125)
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %106
  %130 = load i32, i32* %17, align 4
  br label %135

131:                                              ; preds = %106
  %132 = load %struct.fw_asserts_ram_section*, %struct.fw_asserts_ram_section** %10, align 8
  %133 = getelementptr inbounds %struct.fw_asserts_ram_section, %struct.fw_asserts_ram_section* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  br label %135

135:                                              ; preds = %131, %129
  %136 = phi i32 [ %130, %129 ], [ %134, %131 ]
  %137 = sub nsw i32 %136, 1
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @BYTES_TO_DWORDS(i32 %138)
  %140 = load %struct.fw_asserts_ram_section*, %struct.fw_asserts_ram_section** %10, align 8
  %141 = getelementptr inbounds %struct.fw_asserts_ram_section, %struct.fw_asserts_ram_section* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %139, %142
  %144 = load i32, i32* %18, align 4
  %145 = load %struct.fw_asserts_ram_section*, %struct.fw_asserts_ram_section** %10, align 8
  %146 = getelementptr inbounds %struct.fw_asserts_ram_section, %struct.fw_asserts_ram_section* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %144, %147
  %149 = add nsw i32 %143, %148
  store i32 %149, i32* %19, align 4
  %150 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %151 = load %struct.ecore_ptt*, %struct.ecore_ptt** %6, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %19, align 4
  %158 = load %struct.fw_asserts_ram_section*, %struct.fw_asserts_ram_section** %10, align 8
  %159 = getelementptr inbounds %struct.fw_asserts_ram_section, %struct.fw_asserts_ram_section* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ecore_grc_dump_addr_range(%struct.ecore_hwfn* %150, %struct.ecore_ptt* %151, i32* %155, i32 %156, i32 %157, i32 %160, i32 0)
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %13, align 4
  br label %164

164:                                              ; preds = %135, %100, %59
  %165 = load i64, i64* %14, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %14, align 8
  br label %42

167:                                              ; preds = %42
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @ecore_dump_last_section(i32* %168, i32 %169, i32 %170)
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  ret i32 %174
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ecore_dump_common_global_params(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32) #2

declare dso_local i32 @ecore_dump_str_param(i32*, i32, i8*, i8*) #2

declare dso_local i32 @ecore_read_fw_info(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, %struct.fw_info*) #2

declare dso_local i32 @ecore_dump_section_hdr(i32*, i32, i8*, i32) #2

declare dso_local i32 @ecore_dump_num_param(i32*, i32, i8*, i32) #2

declare dso_local i32 @RAM_LINES_TO_BYTES(i32) #2

declare dso_local i32 @DWORDS_TO_BYTES(i32) #2

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #2

declare dso_local i32 @BYTES_TO_DWORDS(i32) #2

declare dso_local i32 @ecore_grc_dump_addr_range(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @ecore_dump_last_section(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
