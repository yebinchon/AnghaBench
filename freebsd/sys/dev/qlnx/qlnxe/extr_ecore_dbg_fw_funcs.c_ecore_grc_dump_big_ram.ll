; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_big_ram.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_grc_dump_big_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.big_ram_defs = type { i32*, i32*, i32, i32, i32, i32 }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64 }
%struct.ecore_ptt = type { i32 }

@__const.ecore_grc_dump_big_ram.mem_name = private unnamed_addr constant [12 x i8] c"???_BIG_RAM\00", align 1
@__const.ecore_grc_dump_big_ram.type_name = private unnamed_addr constant [8 x i8] c"???_RAM\00", align 1
@s_big_ram_defs = common dso_local global %struct.big_ram_defs* null, align 8
@BRB_REG_BIG_RAM_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i64)* @ecore_grc_dump_big_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_grc_dump_big_ram(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.dbg_tools_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [12 x i8], align 1
  %19 = alloca [8 x i8], align 1
  %20 = alloca %struct.big_ram_defs*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %22 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %21, i32 0, i32 0
  store %struct.dbg_tools_data* %22, %struct.dbg_tools_data** %12, align 8
  store i32 0, i32* %15, align 4
  %23 = bitcast [12 x i8]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.ecore_grc_dump_big_ram.mem_name, i32 0, i32 0), i64 12, i1 false)
  %24 = bitcast [8 x i8]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.ecore_grc_dump_big_ram.type_name, i32 0, i32 0), i64 8, i1 false)
  %25 = load %struct.big_ram_defs*, %struct.big_ram_defs** @s_big_ram_defs, align 8
  %26 = load i64, i64* %11, align 8
  %27 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %25, i64 %26
  store %struct.big_ram_defs* %27, %struct.big_ram_defs** %20, align 8
  %28 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %29 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %32 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %37 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %38 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %39 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ecore_rd(%struct.ecore_hwfn* %36, %struct.ecore_ptt* %37, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %44 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %12, align 8
  %47 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %42, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 256, i32 128
  store i32 %55, i32* %13, align 4
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %57 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %58 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %61 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @OSAL_STRLEN(i32 %62)
  %64 = call i32 @OSAL_STRNCPY(i8* %56, i32 %59, i32 %63)
  %65 = getelementptr inbounds [12 x i8], [12 x i8]* %18, i64 0, i64 0
  %66 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %67 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %70 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @OSAL_STRLEN(i32 %71)
  %73 = call i32 @OSAL_STRNCPY(i8* %65, i32 %68, i32 %72)
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %10, align 4
  %80 = getelementptr inbounds [12 x i8], [12 x i8]* %18, i64 0, i64 0
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %13, align 4
  %83 = mul nsw i32 %82, 8
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %85 = call i32 @ecore_grc_dump_mem_hdr(%struct.ecore_hwfn* %74, i32* %78, i32 %79, i8* %80, i32 0, i32 %81, i32 %83, i32 0, i8* %84, i32 0, i32 0)
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %5
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %6, align 4
  br label %129

94:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  br label %95

95:                                               ; preds = %124, %94
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @BRB_REG_BIG_RAM_DATA_SIZE, align 4
  %99 = call i32 @DIV_ROUND_UP(i32 %97, i32 %98)
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %95
  %102 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %103 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %104 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %105 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @ecore_wr(%struct.ecore_hwfn* %102, %struct.ecore_ptt* %103, i32 %106, i32 %107)
  %109 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %110 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.big_ram_defs*, %struct.big_ram_defs** %20, align 8
  %117 = getelementptr inbounds %struct.big_ram_defs, %struct.big_ram_defs* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @BYTES_TO_DWORDS(i32 %118)
  %120 = load i32, i32* @BRB_REG_BIG_RAM_DATA_SIZE, align 4
  %121 = call i32 @ecore_grc_dump_addr_range(%struct.ecore_hwfn* %109, %struct.ecore_ptt* %110, i32* %114, i32 %115, i32 %119, i32 %120, i32 0)
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %15, align 4
  br label %124

124:                                              ; preds = %101
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  br label %95

127:                                              ; preds = %95
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %127, %90
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #2

declare dso_local i32 @OSAL_STRNCPY(i8*, i32, i32) #2

declare dso_local i32 @OSAL_STRLEN(i32) #2

declare dso_local i32 @ecore_grc_dump_mem_hdr(%struct.ecore_hwfn*, i32*, i32, i8*, i32, i32, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #2

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i32) #2

declare dso_local i32 @ecore_grc_dump_addr_range(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @BYTES_TO_DWORDS(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
