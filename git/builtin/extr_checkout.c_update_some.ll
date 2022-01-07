; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_update_some.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_update_some.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32, i64, i32, i64 }
%struct.object_id = type { i32 }
%struct.strbuf = type { i32, i8* }

@READ_TREE_RECURSIVE = common dso_local global i32 0, align 4
@the_index = common dso_local global i32 0, align 4
@CE_UPDATE = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.strbuf*, i8*, i32, i32, i8*)* @update_some to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_some(%struct.object_id* %0, %struct.strbuf* %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.cache_entry*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.cache_entry*, align 8
  store %struct.object_id* %0, %struct.object_id** %8, align 8
  store %struct.strbuf* %1, %struct.strbuf** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @S_ISDIR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @READ_TREE_RECURSIVE, align 4
  store i32 %22, i32* %7, align 4
  br label %121

23:                                               ; preds = %6
  %24 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call %struct.cache_entry* @make_empty_cache_entry(i32* @the_index, i32 %30)
  store %struct.cache_entry* %31, %struct.cache_entry** %15, align 8
  %32 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %33 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %32, i32 0, i32 3
  %34 = load %struct.object_id*, %struct.object_id** %8, align 8
  %35 = call i32 @oidcpy(i32* %33, %struct.object_id* %34)
  %36 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memcpy(i64 %38, i8* %41, i32 %44)
  %46 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %47 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %55, %58
  %60 = call i32 @memcpy(i64 %53, i8* %54, i32 %59)
  %61 = call i32 @create_ce_flags(i32 0)
  %62 = load i32, i32* @CE_UPDATE, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %65 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %68 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @create_ce_mode(i32 %69)
  %71 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %72 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %74 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %77 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cache_name_pos(i64 %75, i32 %78)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %115

82:                                               ; preds = %23
  %83 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %83, i64 %85
  %87 = load %struct.cache_entry*, %struct.cache_entry** %86, align 8
  store %struct.cache_entry* %87, %struct.cache_entry** %17, align 8
  %88 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %89 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %92 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %82
  %96 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %97 = call i32 @ce_intent_to_add(%struct.cache_entry* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %95
  %100 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %101 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %100, i32 0, i32 3
  %102 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %103 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %102, i32 0, i32 3
  %104 = call i64 @oideq(i32* %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load i32, i32* @CE_UPDATE, align 4
  %108 = load %struct.cache_entry*, %struct.cache_entry** %17, align 8
  %109 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %113 = call i32 @discard_cache_entry(%struct.cache_entry* %112)
  store i32 0, i32* %7, align 4
  br label %121

114:                                              ; preds = %99, %95, %82
  br label %115

115:                                              ; preds = %114, %23
  %116 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %117 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %118 = load i32, i32* @ADD_CACHE_OK_TO_REPLACE, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @add_cache_entry(%struct.cache_entry* %116, i32 %119)
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %115, %106, %21
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(i32*, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @create_ce_flags(i32) #1

declare dso_local i64 @create_ce_mode(i32) #1

declare dso_local i32 @cache_name_pos(i64, i32) #1

declare dso_local i32 @ce_intent_to_add(%struct.cache_entry*) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

declare dso_local i32 @add_cache_entry(%struct.cache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
