; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_find_unresolved_deltas_1.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_find_unresolved_deltas_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.base_data = type { i32, i32, i64, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@OBJ_REF_DELTA = common dso_local global i32 0, align 4
@OBJ_OFS_DELTA = common dso_local global i64 0, align 8
@objects = common dso_local global %struct.object_entry* null, align 8
@ref_deltas = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"child->real_type != OBJ_REF_DELTA\00", align 1
@ofs_deltas = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.base_data* (%struct.base_data*, %struct.base_data*)* @find_unresolved_deltas_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.base_data* @find_unresolved_deltas_1(%struct.base_data* %0, %struct.base_data* %1) #0 {
  %3 = alloca %struct.base_data*, align 8
  %4 = alloca %struct.base_data*, align 8
  %5 = alloca %struct.base_data*, align 8
  %6 = alloca %struct.object_entry*, align 8
  %7 = alloca %struct.base_data*, align 8
  %8 = alloca %struct.object_entry*, align 8
  %9 = alloca %struct.base_data*, align 8
  store %struct.base_data* %0, %struct.base_data** %4, align 8
  store %struct.base_data* %1, %struct.base_data** %5, align 8
  %10 = load %struct.base_data*, %struct.base_data** %4, align 8
  %11 = getelementptr inbounds %struct.base_data, %struct.base_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %61

14:                                               ; preds = %2
  %15 = load %struct.base_data*, %struct.base_data** %4, align 8
  %16 = getelementptr inbounds %struct.base_data, %struct.base_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %61

19:                                               ; preds = %14
  %20 = load %struct.base_data*, %struct.base_data** %4, align 8
  %21 = getelementptr inbounds %struct.base_data, %struct.base_data* %20, i32 0, i32 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.base_data*, %struct.base_data** %4, align 8
  %26 = getelementptr inbounds %struct.base_data, %struct.base_data* %25, i32 0, i32 2
  %27 = load %struct.base_data*, %struct.base_data** %4, align 8
  %28 = getelementptr inbounds %struct.base_data, %struct.base_data* %27, i32 0, i32 0
  %29 = load i32, i32* @OBJ_REF_DELTA, align 4
  %30 = call i32 @find_ref_delta_children(i32* %24, i64* %26, i32* %28, i32 %29)
  %31 = load %struct.base_data*, %struct.base_data** %4, align 8
  %32 = getelementptr inbounds %struct.base_data, %struct.base_data* %31, i32 0, i32 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.base_data*, %struct.base_data** %4, align 8
  %38 = getelementptr inbounds %struct.base_data, %struct.base_data* %37, i32 0, i32 3
  %39 = load %struct.base_data*, %struct.base_data** %4, align 8
  %40 = getelementptr inbounds %struct.base_data, %struct.base_data* %39, i32 0, i32 1
  %41 = load i64, i64* @OBJ_OFS_DELTA, align 8
  %42 = call i32 @find_ofs_delta_children(i32 %36, i64* %38, i32* %40, i64 %41)
  %43 = load %struct.base_data*, %struct.base_data** %4, align 8
  %44 = getelementptr inbounds %struct.base_data, %struct.base_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %57

47:                                               ; preds = %19
  %48 = load %struct.base_data*, %struct.base_data** %4, align 8
  %49 = getelementptr inbounds %struct.base_data, %struct.base_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.base_data*, %struct.base_data** %4, align 8
  %54 = getelementptr inbounds %struct.base_data, %struct.base_data* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @free(i32 %55)
  store %struct.base_data* null, %struct.base_data** %3, align 8
  br label %180

57:                                               ; preds = %47, %19
  %58 = load %struct.base_data*, %struct.base_data** %5, align 8
  %59 = load %struct.base_data*, %struct.base_data** %4, align 8
  %60 = call i32 @link_base_data(%struct.base_data* %58, %struct.base_data* %59)
  br label %61

61:                                               ; preds = %57, %14, %2
  %62 = load %struct.base_data*, %struct.base_data** %4, align 8
  %63 = getelementptr inbounds %struct.base_data, %struct.base_data* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.base_data*, %struct.base_data** %4, align 8
  %66 = getelementptr inbounds %struct.base_data, %struct.base_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = icmp ule i64 %64, %68
  br i1 %69, label %70, label %121

70:                                               ; preds = %61
  %71 = load %struct.object_entry*, %struct.object_entry** @objects, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ref_deltas, align 8
  %73 = load %struct.base_data*, %struct.base_data** %4, align 8
  %74 = getelementptr inbounds %struct.base_data, %struct.base_data* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %71, i64 %79
  store %struct.object_entry* %80, %struct.object_entry** %6, align 8
  %81 = call %struct.base_data* (...) @alloc_base_data()
  store %struct.base_data* %81, %struct.base_data** %7, align 8
  %82 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %83 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %82, i32 0, i32 0
  %84 = load i32, i32* @OBJ_REF_DELTA, align 4
  %85 = load %struct.base_data*, %struct.base_data** %4, align 8
  %86 = getelementptr inbounds %struct.base_data, %struct.base_data* %85, i32 0, i32 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @compare_and_swap_type(i64* %83, i32 %84, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %70
  %93 = call i32 @BUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %70
  %95 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %96 = load %struct.base_data*, %struct.base_data** %4, align 8
  %97 = load %struct.base_data*, %struct.base_data** %7, align 8
  %98 = call i32 @resolve_delta(%struct.object_entry* %95, %struct.base_data* %96, %struct.base_data* %97)
  %99 = load %struct.base_data*, %struct.base_data** %4, align 8
  %100 = getelementptr inbounds %struct.base_data, %struct.base_data* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.base_data*, %struct.base_data** %4, align 8
  %103 = getelementptr inbounds %struct.base_data, %struct.base_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = icmp eq i64 %101, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %94
  %108 = load %struct.base_data*, %struct.base_data** %4, align 8
  %109 = getelementptr inbounds %struct.base_data, %struct.base_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.base_data*, %struct.base_data** %4, align 8
  %114 = call i32 @free_base_data(%struct.base_data* %113)
  br label %115

115:                                              ; preds = %112, %107, %94
  %116 = load %struct.base_data*, %struct.base_data** %4, align 8
  %117 = getelementptr inbounds %struct.base_data, %struct.base_data* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %117, align 8
  %120 = load %struct.base_data*, %struct.base_data** %7, align 8
  store %struct.base_data* %120, %struct.base_data** %3, align 8
  br label %180

121:                                              ; preds = %61
  %122 = load %struct.base_data*, %struct.base_data** %4, align 8
  %123 = getelementptr inbounds %struct.base_data, %struct.base_data* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.base_data*, %struct.base_data** %4, align 8
  %126 = getelementptr inbounds %struct.base_data, %struct.base_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp ule i64 %124, %128
  br i1 %129, label %130, label %177

130:                                              ; preds = %121
  %131 = load %struct.object_entry*, %struct.object_entry** @objects, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ofs_deltas, align 8
  %133 = load %struct.base_data*, %struct.base_data** %4, align 8
  %134 = getelementptr inbounds %struct.base_data, %struct.base_data* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %131, i64 %139
  store %struct.object_entry* %140, %struct.object_entry** %8, align 8
  %141 = call %struct.base_data* (...) @alloc_base_data()
  store %struct.base_data* %141, %struct.base_data** %9, align 8
  %142 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %143 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @OBJ_OFS_DELTA, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load %struct.base_data*, %struct.base_data** %4, align 8
  %150 = getelementptr inbounds %struct.base_data, %struct.base_data* %149, i32 0, i32 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %155 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %157 = load %struct.base_data*, %struct.base_data** %4, align 8
  %158 = load %struct.base_data*, %struct.base_data** %9, align 8
  %159 = call i32 @resolve_delta(%struct.object_entry* %156, %struct.base_data* %157, %struct.base_data* %158)
  %160 = load %struct.base_data*, %struct.base_data** %4, align 8
  %161 = getelementptr inbounds %struct.base_data, %struct.base_data* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.base_data*, %struct.base_data** %4, align 8
  %164 = getelementptr inbounds %struct.base_data, %struct.base_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = icmp eq i64 %162, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %130
  %169 = load %struct.base_data*, %struct.base_data** %4, align 8
  %170 = call i32 @free_base_data(%struct.base_data* %169)
  br label %171

171:                                              ; preds = %168, %130
  %172 = load %struct.base_data*, %struct.base_data** %4, align 8
  %173 = getelementptr inbounds %struct.base_data, %struct.base_data* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %173, align 8
  %176 = load %struct.base_data*, %struct.base_data** %9, align 8
  store %struct.base_data* %176, %struct.base_data** %3, align 8
  br label %180

177:                                              ; preds = %121
  %178 = load %struct.base_data*, %struct.base_data** %4, align 8
  %179 = call i32 @unlink_base_data(%struct.base_data* %178)
  store %struct.base_data* null, %struct.base_data** %3, align 8
  br label %180

180:                                              ; preds = %177, %171, %115, %52
  %181 = load %struct.base_data*, %struct.base_data** %3, align 8
  ret %struct.base_data* %181
}

declare dso_local i32 @find_ref_delta_children(i32*, i64*, i32*, i32) #1

declare dso_local i32 @find_ofs_delta_children(i32, i64*, i32*, i64) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @link_base_data(%struct.base_data*, %struct.base_data*) #1

declare dso_local %struct.base_data* @alloc_base_data(...) #1

declare dso_local i32 @compare_and_swap_type(i64*, i32, i64) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @resolve_delta(%struct.object_entry*, %struct.base_data*, %struct.base_data*) #1

declare dso_local i32 @free_base_data(%struct.base_data*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @unlink_base_data(%struct.base_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
