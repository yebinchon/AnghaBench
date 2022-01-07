; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_fix_unresolved_deltas.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_fix_unresolved_deltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_delta_entry = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.oid_array = type { i64, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.hashfile = type { i32 }
%struct.base_data = type { i32, i32, i32 }

@nr_ref_deltas = common dso_local global i32 0, align 4
@ref_deltas = common dso_local global %struct.ref_delta_entry* null, align 8
@delta_pos_compare = common dso_local global i32 0, align 4
@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 8
@the_repository = common dso_local global i32 0, align 4
@OBJECT_INFO_FOR_PREFETCH = common dso_local global i32 0, align 4
@objects = common dso_local global %struct.TYPE_8__* null, align 8
@OBJ_REF_DELTA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"local object %s is corrupt\00", align 1
@progress = common dso_local global i32 0, align 4
@nr_resolved_deltas = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashfile*)* @fix_unresolved_deltas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_unresolved_deltas(%struct.hashfile* %0) #0 {
  %2 = alloca %struct.hashfile*, align 8
  %3 = alloca %struct.ref_delta_entry**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.oid_array, align 8
  %6 = alloca %struct.ref_delta_entry*, align 8
  %7 = alloca %struct.ref_delta_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.base_data*, align 8
  store %struct.hashfile* %0, %struct.hashfile** %2, align 8
  %10 = load %struct.ref_delta_entry**, %struct.ref_delta_entry*** %3, align 8
  %11 = load i32, i32* @nr_ref_deltas, align 4
  %12 = call i32 @ALLOC_ARRAY(%struct.ref_delta_entry** %10, i32 %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %26, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @nr_ref_deltas, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.ref_delta_entry*, %struct.ref_delta_entry** @ref_deltas, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ref_delta_entry, %struct.ref_delta_entry* %18, i64 %20
  %22 = load %struct.ref_delta_entry**, %struct.ref_delta_entry*** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ref_delta_entry*, %struct.ref_delta_entry** %22, i64 %24
  store %struct.ref_delta_entry* %21, %struct.ref_delta_entry** %25, align 8
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %13

29:                                               ; preds = %13
  %30 = load %struct.ref_delta_entry**, %struct.ref_delta_entry*** %3, align 8
  %31 = load i32, i32* @nr_ref_deltas, align 4
  %32 = load i32, i32* @delta_pos_compare, align 4
  %33 = call i32 @QSORT(%struct.ref_delta_entry** %30, i32 %31, i32 %32)
  %34 = call i64 (...) @has_promisor_remote()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %29
  %37 = bitcast %struct.oid_array* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %59, %36
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @nr_ref_deltas, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load %struct.ref_delta_entry**, %struct.ref_delta_entry*** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ref_delta_entry*, %struct.ref_delta_entry** %43, i64 %45
  %47 = load %struct.ref_delta_entry*, %struct.ref_delta_entry** %46, align 8
  store %struct.ref_delta_entry* %47, %struct.ref_delta_entry** %6, align 8
  %48 = load i32, i32* @the_repository, align 4
  %49 = load %struct.ref_delta_entry*, %struct.ref_delta_entry** %6, align 8
  %50 = getelementptr inbounds %struct.ref_delta_entry, %struct.ref_delta_entry* %49, i32 0, i32 1
  %51 = load i32, i32* @OBJECT_INFO_FOR_PREFETCH, align 4
  %52 = call i32 @oid_object_info_extended(i32 %48, %struct.TYPE_7__* %50, i32* null, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  br label %59

55:                                               ; preds = %42
  %56 = load %struct.ref_delta_entry*, %struct.ref_delta_entry** %6, align 8
  %57 = getelementptr inbounds %struct.ref_delta_entry, %struct.ref_delta_entry* %56, i32 0, i32 1
  %58 = call i32 @oid_array_append(%struct.oid_array* %5, %struct.TYPE_7__* %57)
  br label %59

59:                                               ; preds = %55, %54
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %38

62:                                               ; preds = %38
  %63 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %5, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* @the_repository, align 4
  %68 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %5, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %5, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @promisor_remote_get_direct(i32 %67, i32 %69, i64 %71)
  br label %73

73:                                               ; preds = %66, %62
  %74 = call i32 @oid_array_clear(%struct.oid_array* %5)
  br label %75

75:                                               ; preds = %73, %29
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %150, %75
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @nr_ref_deltas, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %153

80:                                               ; preds = %76
  %81 = load %struct.ref_delta_entry**, %struct.ref_delta_entry*** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ref_delta_entry*, %struct.ref_delta_entry** %81, i64 %83
  %85 = load %struct.ref_delta_entry*, %struct.ref_delta_entry** %84, align 8
  store %struct.ref_delta_entry* %85, %struct.ref_delta_entry** %7, align 8
  %86 = call %struct.base_data* (...) @alloc_base_data()
  store %struct.base_data* %86, %struct.base_data** %9, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @objects, align 8
  %88 = load %struct.ref_delta_entry*, %struct.ref_delta_entry** %7, align 8
  %89 = getelementptr inbounds %struct.ref_delta_entry, %struct.ref_delta_entry* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @OBJ_REF_DELTA, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %80
  br label %150

97:                                               ; preds = %80
  %98 = load %struct.ref_delta_entry*, %struct.ref_delta_entry** %7, align 8
  %99 = getelementptr inbounds %struct.ref_delta_entry, %struct.ref_delta_entry* %98, i32 0, i32 1
  %100 = load %struct.base_data*, %struct.base_data** %9, align 8
  %101 = getelementptr inbounds %struct.base_data, %struct.base_data* %100, i32 0, i32 0
  %102 = call i32 @read_object_file(%struct.TYPE_7__* %99, i32* %8, i32* %101)
  %103 = load %struct.base_data*, %struct.base_data** %9, align 8
  %104 = getelementptr inbounds %struct.base_data, %struct.base_data* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.base_data*, %struct.base_data** %9, align 8
  %106 = getelementptr inbounds %struct.base_data, %struct.base_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %97
  br label %150

110:                                              ; preds = %97
  %111 = load %struct.ref_delta_entry*, %struct.ref_delta_entry** %7, align 8
  %112 = getelementptr inbounds %struct.ref_delta_entry, %struct.ref_delta_entry* %111, i32 0, i32 1
  %113 = load %struct.base_data*, %struct.base_data** %9, align 8
  %114 = getelementptr inbounds %struct.base_data, %struct.base_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.base_data*, %struct.base_data** %9, align 8
  %117 = getelementptr inbounds %struct.base_data, %struct.base_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @type_name(i32 %119)
  %121 = call i64 @check_object_signature(%struct.TYPE_7__* %112, i32 %115, i32 %118, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %110
  %124 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %125 = load %struct.ref_delta_entry*, %struct.ref_delta_entry** %7, align 8
  %126 = getelementptr inbounds %struct.ref_delta_entry, %struct.ref_delta_entry* %125, i32 0, i32 1
  %127 = call i32 @oid_to_hex(%struct.TYPE_7__* %126)
  %128 = call i32 @die(i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %110
  %130 = load %struct.hashfile*, %struct.hashfile** %2, align 8
  %131 = load %struct.ref_delta_entry*, %struct.ref_delta_entry** %7, align 8
  %132 = getelementptr inbounds %struct.ref_delta_entry, %struct.ref_delta_entry* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.base_data*, %struct.base_data** %9, align 8
  %136 = getelementptr inbounds %struct.base_data, %struct.base_data* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.base_data*, %struct.base_data** %9, align 8
  %139 = getelementptr inbounds %struct.base_data, %struct.base_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @append_obj_to_pack(%struct.hashfile* %130, i32 %134, i32 %137, i32 %140, i32 %141)
  %143 = load %struct.base_data*, %struct.base_data** %9, align 8
  %144 = getelementptr inbounds %struct.base_data, %struct.base_data* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.base_data*, %struct.base_data** %9, align 8
  %146 = call i32 @find_unresolved_deltas(%struct.base_data* %145)
  %147 = load i32, i32* @progress, align 4
  %148 = load i32, i32* @nr_resolved_deltas, align 4
  %149 = call i32 @display_progress(i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %129, %109, %96
  %151 = load i32, i32* %4, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %4, align 4
  br label %76

153:                                              ; preds = %76
  %154 = load %struct.ref_delta_entry**, %struct.ref_delta_entry*** %3, align 8
  %155 = call i32 @free(%struct.ref_delta_entry** %154)
  ret void
}

declare dso_local i32 @ALLOC_ARRAY(%struct.ref_delta_entry**, i32) #1

declare dso_local i32 @QSORT(%struct.ref_delta_entry**, i32, i32) #1

declare dso_local i64 @has_promisor_remote(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @oid_object_info_extended(i32, %struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @oid_array_append(%struct.oid_array*, %struct.TYPE_7__*) #1

declare dso_local i32 @promisor_remote_get_direct(i32, i32, i64) #1

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #1

declare dso_local %struct.base_data* @alloc_base_data(...) #1

declare dso_local i32 @read_object_file(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i64 @check_object_signature(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @type_name(i32) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.TYPE_7__*) #1

declare dso_local i32 @append_obj_to_pack(%struct.hashfile*, i32, i32, i32, i32) #1

declare dso_local i32 @find_unresolved_deltas(%struct.base_data*) #1

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i32 @free(%struct.ref_delta_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
