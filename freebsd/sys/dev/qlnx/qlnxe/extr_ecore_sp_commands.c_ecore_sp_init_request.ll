; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_sp_init_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sp_commands.c_ecore_sp_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_spq_entry = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i32 }
%struct.ecore_sp_init_data = type { i32, i32, i32, %struct.TYPE_8__* }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_SPQ_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unknown SPQE completion mode %d\0A\00", align 1
@ECORE_MSG_SPQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"Initialized: CID %08x cmd %02x protocol %02x data_addr %llx comp_mode [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"MODE_EBLOCK\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"MODE_BLOCK\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"MODE_CB\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn* %0, %struct.ecore_spq_entry** %1, i8* %2, i8* %3, %struct.ecore_sp_init_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_spq_entry**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ecore_sp_init_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ecore_spq_entry*, align 8
  %14 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_spq_entry** %1, %struct.ecore_spq_entry*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.ecore_sp_init_data* %4, %struct.ecore_sp_init_data** %11, align 8
  %15 = load %struct.ecore_sp_init_data*, %struct.ecore_sp_init_data** %11, align 8
  %16 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %17, 16
  %19 = load %struct.ecore_sp_init_data*, %struct.ecore_sp_init_data** %11, align 8
  %20 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** @OSAL_NULL, align 8
  %24 = bitcast i8* %23 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %24, %struct.ecore_spq_entry** %13, align 8
  %25 = load %struct.ecore_spq_entry**, %struct.ecore_spq_entry*** %8, align 8
  %26 = icmp ne %struct.ecore_spq_entry** %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %28, i32* %6, align 4
  br label %137

29:                                               ; preds = %5
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %31 = load %struct.ecore_spq_entry**, %struct.ecore_spq_entry*** %8, align 8
  %32 = call i32 @ecore_spq_get_entry(%struct.ecore_hwfn* %30, %struct.ecore_spq_entry** %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @ECORE_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %137

38:                                               ; preds = %29
  %39 = load %struct.ecore_spq_entry**, %struct.ecore_spq_entry*** %8, align 8
  %40 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %39, align 8
  store %struct.ecore_spq_entry* %40, %struct.ecore_spq_entry** %13, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @OSAL_CPU_TO_LE32(i32 %41)
  %43 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %44 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i32 %42, i32* %46, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %49 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i8* %47, i8** %51, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %54 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i8* %52, i8** %56, align 8
  %57 = load i32, i32* @ECORE_SPQ_PRIORITY_NORMAL, align 4
  %58 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %59 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ecore_sp_init_data*, %struct.ecore_sp_init_data** %11, align 8
  %61 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %64 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %66 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %69 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %112 [
    i32 128, label %71
    i32 130, label %77
    i32 129, label %93
  ]

71:                                               ; preds = %38
  %72 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %73 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %72, i32 0, i32 3
  %74 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %75 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %76, align 8
  br label %119

77:                                               ; preds = %38
  %78 = load %struct.ecore_sp_init_data*, %struct.ecore_sp_init_data** %11, align 8
  %79 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %78, i32 0, i32 3
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = icmp ne %struct.TYPE_8__* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %83, i32* %6, align 4
  br label %137

84:                                               ; preds = %77
  %85 = load %struct.ecore_sp_init_data*, %struct.ecore_sp_init_data** %11, align 8
  %86 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %85, i32 0, i32 3
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %91 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %92, align 8
  br label %119

93:                                               ; preds = %38
  %94 = load %struct.ecore_sp_init_data*, %struct.ecore_sp_init_data** %11, align 8
  %95 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %94, i32 0, i32 3
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = icmp ne %struct.TYPE_8__* %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** @OSAL_NULL, align 8
  %100 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %101 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i8* %99, i8** %102, align 8
  br label %111

103:                                              ; preds = %93
  %104 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %105 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %104, i32 0, i32 2
  %106 = load %struct.ecore_sp_init_data*, %struct.ecore_sp_init_data** %11, align 8
  %107 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %106, i32 0, i32 3
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = bitcast %struct.TYPE_8__* %105 to i8*
  %110 = bitcast %struct.TYPE_8__* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 16, i1 false)
  br label %111

111:                                              ; preds = %103, %98
  br label %119

112:                                              ; preds = %38
  %113 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %114 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %115 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %113, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %118, i32* %6, align 4
  br label %137

119:                                              ; preds = %111, %84, %71
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %121 = load i32, i32* @ECORE_MSG_SPQ, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %126 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %125, i32 0, i32 1
  %127 = ptrtoint i32* %126 to i64
  %128 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %129 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @D_TRINE(i32 %130, i32 128, i32 130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %132 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %120, i32 %121, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %122, i8* %123, i8* %124, i64 %127, i32 %131)
  %133 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %13, align 8
  %134 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %133, i32 0, i32 1
  %135 = call i32 @OSAL_MEMSET(i32* %134, i32 0, i32 4)
  %136 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %119, %112, %82, %36, %27
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @ecore_spq_get_entry(%struct.ecore_hwfn*, %struct.ecore_spq_entry**) #1

declare dso_local i32 @OSAL_CPU_TO_LE32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @D_TRINE(i32, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @OSAL_MEMSET(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
