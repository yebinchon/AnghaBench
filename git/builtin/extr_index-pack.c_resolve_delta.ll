; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_resolve_delta.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_resolve_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.base_data = type { i32, i32, %struct.object_entry* }

@show_stat = common dso_local global i64 0, align 8
@objects = common dso_local global %struct.object_entry* null, align 8
@obj_stat = common dso_local global %struct.TYPE_4__* null, align 8
@deepest_delta = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"failed to apply delta\00", align 1
@nr_resolved_deltas = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_entry*, %struct.base_data*, %struct.base_data*)* @resolve_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_delta(%struct.object_entry* %0, %struct.base_data* %1, %struct.base_data* %2) #0 {
  %4 = alloca %struct.object_entry*, align 8
  %5 = alloca %struct.base_data*, align 8
  %6 = alloca %struct.base_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.object_entry* %0, %struct.object_entry** %4, align 8
  store %struct.base_data* %1, %struct.base_data** %5, align 8
  store %struct.base_data* %2, %struct.base_data** %6, align 8
  %11 = load i64, i64* @show_stat, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %3
  %14 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %15 = load %struct.object_entry*, %struct.object_entry** @objects, align 8
  %16 = ptrtoint %struct.object_entry* %14 to i64
  %17 = ptrtoint %struct.object_entry* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load %struct.base_data*, %struct.base_data** %5, align 8
  %22 = getelementptr inbounds %struct.base_data, %struct.base_data* %21, i32 0, i32 2
  %23 = load %struct.object_entry*, %struct.object_entry** %22, align 8
  %24 = load %struct.object_entry*, %struct.object_entry** @objects, align 8
  %25 = ptrtoint %struct.object_entry* %23 to i64
  %26 = ptrtoint %struct.object_entry* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 16
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_stat, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_stat, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 %36, i64* %41, align 8
  %42 = call i32 (...) @deepest_delta_lock()
  %43 = load i64, i64* @deepest_delta, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_stat, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %43, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %13
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_stat, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* @deepest_delta, align 8
  br label %58

58:                                               ; preds = %51, %13
  %59 = call i32 (...) @deepest_delta_unlock()
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obj_stat, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %60, i32* %65, align 8
  br label %66

66:                                               ; preds = %58, %3
  %67 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %68 = call i8* @get_data_from_pack(%struct.object_entry* %67)
  store i8* %68, i8** %8, align 8
  %69 = load %struct.base_data*, %struct.base_data** %5, align 8
  %70 = call i8* @get_base_data(%struct.base_data* %69)
  store i8* %70, i8** %7, align 8
  %71 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %72 = load %struct.base_data*, %struct.base_data** %6, align 8
  %73 = getelementptr inbounds %struct.base_data, %struct.base_data* %72, i32 0, i32 2
  store %struct.object_entry* %71, %struct.object_entry** %73, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.base_data*, %struct.base_data** %5, align 8
  %76 = getelementptr inbounds %struct.base_data, %struct.base_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %80 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.base_data*, %struct.base_data** %6, align 8
  %83 = getelementptr inbounds %struct.base_data, %struct.base_data* %82, i32 0, i32 0
  %84 = call i32 @patch_delta(i8* %74, i32 %77, i8* %78, i32 %81, i32* %83)
  %85 = load %struct.base_data*, %struct.base_data** %6, align 8
  %86 = getelementptr inbounds %struct.base_data, %struct.base_data* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load %struct.base_data*, %struct.base_data** %6, align 8
  %90 = getelementptr inbounds %struct.base_data, %struct.base_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %66
  %94 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %95 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %99 = call i32 @bad_object(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %93, %66
  %101 = load %struct.base_data*, %struct.base_data** %6, align 8
  %102 = getelementptr inbounds %struct.base_data, %struct.base_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.base_data*, %struct.base_data** %6, align 8
  %105 = getelementptr inbounds %struct.base_data, %struct.base_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %108 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @type_name(i32 %109)
  %111 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %112 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = call i32 @hash_object_file(i32 %103, i32 %106, i32 %110, i32* %113)
  %115 = load %struct.base_data*, %struct.base_data** %6, align 8
  %116 = getelementptr inbounds %struct.base_data, %struct.base_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.base_data*, %struct.base_data** %6, align 8
  %119 = getelementptr inbounds %struct.base_data, %struct.base_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %122 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.object_entry*, %struct.object_entry** %4, align 8
  %125 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = call i32 @sha1_object(i32 %117, i32* null, i32 %120, i32 %123, i32* %126)
  %128 = call i32 (...) @counter_lock()
  %129 = load i32, i32* @nr_resolved_deltas, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @nr_resolved_deltas, align 4
  %131 = call i32 (...) @counter_unlock()
  ret void
}

declare dso_local i32 @deepest_delta_lock(...) #1

declare dso_local i32 @deepest_delta_unlock(...) #1

declare dso_local i8* @get_data_from_pack(%struct.object_entry*) #1

declare dso_local i8* @get_base_data(%struct.base_data*) #1

declare dso_local i32 @patch_delta(i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @bad_object(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @hash_object_file(i32, i32, i32, i32*) #1

declare dso_local i32 @type_name(i32) #1

declare dso_local i32 @sha1_object(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @counter_lock(...) #1

declare dso_local i32 @counter_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
