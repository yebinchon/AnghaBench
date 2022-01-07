; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_debug_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_debug_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_debug_dump_internals = type { i32, i8*, i8* }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_debug_dump_internals = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i64 0, align 8
@I40E_AQ_LARGE_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_LB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_debug_dump(%struct.i40e_hw* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8* %5, i32* %6, i8** %7, i32* %8, %struct.i40e_asq_cmd_details* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40e_hw*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.i40e_asq_cmd_details*, align 8
  %22 = alloca %struct.i40e_aq_desc, align 4
  %23 = alloca %struct.i40e_aqc_debug_dump_internals*, align 8
  %24 = alloca %struct.i40e_aqc_debug_dump_internals*, align 8
  %25 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32* %6, i32** %18, align 8
  store i8** %7, i8*** %19, align 8
  store i32* %8, i32** %20, align 8
  store %struct.i40e_asq_cmd_details* %9, %struct.i40e_asq_cmd_details** %21, align 8
  %26 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %22, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to %struct.i40e_aqc_debug_dump_internals*
  store %struct.i40e_aqc_debug_dump_internals* %28, %struct.i40e_aqc_debug_dump_internals** %23, align 8
  %29 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %22, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = bitcast i32* %30 to %struct.i40e_aqc_debug_dump_internals*
  store %struct.i40e_aqc_debug_dump_internals* %31, %struct.i40e_aqc_debug_dump_internals** %24, align 8
  %32 = load i32, i32* %16, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %10
  %35 = load i8*, i8** %17, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34, %10
  %38 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %38, i32* %11, align 4
  br label %107

39:                                               ; preds = %34
  %40 = load i32, i32* @i40e_aqc_opc_debug_dump_internals, align 4
  %41 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %22, i32 %40)
  %42 = load i64, i64* @I40E_AQ_FLAG_BUF, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @CPU_TO_LE16(i32 %43)
  %45 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %22, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* @I40E_AQ_LARGE_BUF, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load i64, i64* @I40E_AQ_FLAG_LB, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @CPU_TO_LE16(i32 %53)
  %55 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %22, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %51, %39
  %59 = load i8*, i8** %13, align 8
  %60 = load %struct.i40e_aqc_debug_dump_internals*, %struct.i40e_aqc_debug_dump_internals** %23, align 8
  %61 = getelementptr inbounds %struct.i40e_aqc_debug_dump_internals, %struct.i40e_aqc_debug_dump_internals* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load %struct.i40e_aqc_debug_dump_internals*, %struct.i40e_aqc_debug_dump_internals** %23, align 8
  %64 = getelementptr inbounds %struct.i40e_aqc_debug_dump_internals, %struct.i40e_aqc_debug_dump_internals* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @CPU_TO_LE32(i32 %65)
  %67 = load %struct.i40e_aqc_debug_dump_internals*, %struct.i40e_aqc_debug_dump_internals** %23, align 8
  %68 = getelementptr inbounds %struct.i40e_aqc_debug_dump_internals, %struct.i40e_aqc_debug_dump_internals* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @CPU_TO_LE16(i32 %69)
  %71 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %22, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = load %struct.i40e_hw*, %struct.i40e_hw** %12, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = load i32, i32* %16, align 4
  %75 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %21, align 8
  %76 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %72, %struct.i40e_aq_desc* %22, i8* %73, i32 %74, %struct.i40e_asq_cmd_details* %75)
  store i32 %76, i32* %25, align 4
  %77 = load i32, i32* %25, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %105, label %79

79:                                               ; preds = %58
  %80 = load i32*, i32** %18, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %22, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @LE16_TO_CPU(i32 %84)
  %86 = load i32*, i32** %18, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i8**, i8*** %19, align 8
  %89 = icmp ne i8** %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.i40e_aqc_debug_dump_internals*, %struct.i40e_aqc_debug_dump_internals** %24, align 8
  %92 = getelementptr inbounds %struct.i40e_aqc_debug_dump_internals, %struct.i40e_aqc_debug_dump_internals* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** %19, align 8
  store i8* %93, i8** %94, align 8
  br label %95

95:                                               ; preds = %90, %87
  %96 = load i32*, i32** %20, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.i40e_aqc_debug_dump_internals*, %struct.i40e_aqc_debug_dump_internals** %24, align 8
  %100 = getelementptr inbounds %struct.i40e_aqc_debug_dump_internals, %struct.i40e_aqc_debug_dump_internals* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @LE32_TO_CPU(i32 %101)
  %103 = load i32*, i32** %20, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %95
  br label %105

105:                                              ; preds = %104, %58
  %106 = load i32, i32* %25, align 4
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %105, %37
  %108 = load i32, i32* %11, align 4
  ret i32 %108
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i32 @CPU_TO_LE32(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i8*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @LE16_TO_CPU(i32) #1

declare dso_local i32 @LE32_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
