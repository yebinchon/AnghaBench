; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_dump_inputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_bus_dump_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i8 }
%struct.TYPE_4__ = type { i8* }
%struct.block_defs = type { i8* }
%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dbg_bus_block_data*, %struct.dbg_bus_storm_data* }
%struct.dbg_bus_block_data = type { i32, i32 }
%struct.dbg_bus_storm_data = type { i64, i32, i32 }

@__const.ecore_bus_dump_inputs.storm_name = private unnamed_addr constant [8 x i8] c"?storm\00\00", align 1
@MAX_DBG_STORMS = common dso_local global i64 0, align 8
@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"bus_input\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@s_storm_mode_defs = common dso_local global %struct.TYPE_4__* null, align 8
@MAX_BLOCK_ID = common dso_local global i32 0, align 4
@s_block_defs = common dso_local global %struct.block_defs** null, align 8
@DBG_BUS_BLOCK_DATA_ENABLE_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"shr\00", align 1
@DBG_BUS_BLOCK_DATA_RIGHT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32*, i32)* @ecore_bus_dump_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_bus_dump_inputs(%struct.ecore_hwfn* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dbg_tools_data*, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.dbg_bus_storm_data*, align 8
  %13 = alloca %struct.storm_defs*, align 8
  %14 = alloca %struct.dbg_bus_block_data*, align 8
  %15 = alloca %struct.block_defs*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  store %struct.dbg_tools_data* %17, %struct.dbg_tools_data** %7, align 8
  %18 = bitcast [8 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.ecore_bus_dump_inputs.storm_name, i32 0, i32 0), i64 8, i1 false)
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %91, %3
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @MAX_DBG_STORMS, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %94

23:                                               ; preds = %19
  %24 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %7, align 8
  %25 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %27, i64 %28
  store %struct.dbg_bus_storm_data* %29, %struct.dbg_bus_storm_data** %12, align 8
  %30 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %30, i64 %31
  store %struct.storm_defs* %32, %struct.storm_defs** %13, align 8
  %33 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %7, align 8
  %34 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %36, i64 %37
  %39 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %23
  br label %91

43:                                               ; preds = %23
  %44 = load %struct.storm_defs*, %struct.storm_defs** %13, align 8
  %45 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %44, i32 0, i32 0
  %46 = load i8, i8* %45, align 1
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  store i8 %46, i8* %47, align 1
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ecore_dump_section_hdr(i32* %51, i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 3)
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %62 = call i32 @ecore_dump_str_param(i32* %59, i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %12, align 8
  %71 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ecore_dump_num_param(i32* %68, i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_storm_mode_defs, align 8
  %82 = load %struct.dbg_bus_storm_data*, %struct.dbg_bus_storm_data** %12, align 8
  %83 = getelementptr inbounds %struct.dbg_bus_storm_data, %struct.dbg_bus_storm_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @ecore_dump_str_param(i32* %79, i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %43, %42
  %92 = load i64, i64* %11, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %11, align 8
  br label %19

94:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %176, %94
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @MAX_BLOCK_ID, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %179

99:                                               ; preds = %95
  %100 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %7, align 8
  %101 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %103, i64 %105
  store %struct.dbg_bus_block_data* %106, %struct.dbg_bus_block_data** %14, align 8
  %107 = load %struct.block_defs**, %struct.block_defs*** @s_block_defs, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.block_defs*, %struct.block_defs** %107, i64 %109
  %111 = load %struct.block_defs*, %struct.block_defs** %110, align 8
  store %struct.block_defs* %111, %struct.block_defs** %15, align 8
  %112 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %14, align 8
  %113 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %116 = call i32 @GET_FIELD(i32 %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %99
  br label %176

119:                                              ; preds = %99
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @ecore_dump_section_hdr(i32* %123, i32 %124, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 4)
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %10, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.block_defs*, %struct.block_defs** %15, align 8
  %134 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @ecore_dump_str_param(i32* %131, i32 %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %135)
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %10, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %14, align 8
  %145 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ecore_dump_num_param(i32* %142, i32 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %10, align 4
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %6, align 4
  %155 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %14, align 8
  %156 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @DBG_BUS_BLOCK_DATA_ENABLE_MASK, align 4
  %159 = call i32 @GET_FIELD(i32 %157, i32 %158)
  %160 = call i32 @ecore_dump_num_param(i32* %153, i32 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %10, align 4
  %163 = load i32*, i32** %5, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.dbg_bus_block_data*, %struct.dbg_bus_block_data** %14, align 8
  %169 = getelementptr inbounds %struct.dbg_bus_block_data, %struct.dbg_bus_block_data* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @DBG_BUS_BLOCK_DATA_RIGHT_SHIFT, align 4
  %172 = call i32 @GET_FIELD(i32 %170, i32 %171)
  %173 = call i32 @ecore_dump_num_param(i32* %166, i32 %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %119, %118
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %95

179:                                              ; preds = %95
  %180 = load i32, i32* %10, align 4
  ret i32 %180
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ecore_dump_section_hdr(i32*, i32, i8*, i32) #2

declare dso_local i32 @ecore_dump_str_param(i32*, i32, i8*, i8*) #2

declare dso_local i32 @ecore_dump_num_param(i32*, i32, i8*, i32) #2

declare dso_local i32 @GET_FIELD(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
