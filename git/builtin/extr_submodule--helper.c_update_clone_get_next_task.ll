; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_update_clone_get_next_task.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_update_clone_get_next_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32 }
%struct.strbuf = type { i32 }
%struct.submodule_update_clone = type { i64, i32, %struct.cache_entry**, %struct.TYPE_2__ }
%struct.cache_entry = type { i32 }
%struct.TYPE_2__ = type { i64, %struct.cache_entry** }

@.str = private unnamed_addr constant [71 x i8] c"BUG: submodule considered for cloning, doesn't need cloning any more?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.child_process*, %struct.strbuf*, i8*, i8**)* @update_clone_get_next_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_clone_get_next_task(%struct.child_process* %0, %struct.strbuf* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.child_process*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.submodule_update_clone*, align 8
  %11 = alloca %struct.cache_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.child_process* %0, %struct.child_process** %6, align 8
  store %struct.strbuf* %1, %struct.strbuf** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.submodule_update_clone*
  store %struct.submodule_update_clone* %16, %struct.submodule_update_clone** %10, align 8
  br label %17

17:                                               ; preds = %57, %4
  %18 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %19 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %22 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %20, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %17
  %27 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %28 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.cache_entry**, %struct.cache_entry*** %29, align 8
  %31 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %32 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %30, i64 %33
  %35 = load %struct.cache_entry*, %struct.cache_entry** %34, align 8
  store %struct.cache_entry* %35, %struct.cache_entry** %11, align 8
  %36 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %37 = load %struct.child_process*, %struct.child_process** %6, align 8
  %38 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %39 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %40 = call i64 @prepare_to_clone_next_submodule(%struct.cache_entry* %36, %struct.child_process* %37, %struct.submodule_update_clone* %38, %struct.strbuf* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %26
  %43 = call i32* @xmalloc(i32 4)
  store i32* %43, i32** %13, align 8
  %44 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %45 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32*, i32** %13, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = load i8**, i8*** %9, align 8
  store i8* %50, i8** %51, align 8
  %52 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %53 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  store i32 1, i32* %5, align 4
  br label %113

56:                                               ; preds = %26
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %59 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  br label %17

62:                                               ; preds = %17
  %63 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %64 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %67 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %65, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %74 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %112

77:                                               ; preds = %62
  %78 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %79 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %78, i32 0, i32 2
  %80 = load %struct.cache_entry**, %struct.cache_entry*** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %80, i64 %82
  %84 = load %struct.cache_entry*, %struct.cache_entry** %83, align 8
  store %struct.cache_entry* %84, %struct.cache_entry** %11, align 8
  %85 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %86 = load %struct.child_process*, %struct.child_process** %6, align 8
  %87 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %88 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %89 = call i64 @prepare_to_clone_next_submodule(%struct.cache_entry* %85, %struct.child_process* %86, %struct.submodule_update_clone* %87, %struct.strbuf* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %77
  %92 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %93 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %93, align 8
  %96 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %97 = call i32 @strbuf_addstr(%struct.strbuf* %96, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %113

98:                                               ; preds = %77
  %99 = call i32* @xmalloc(i32 4)
  store i32* %99, i32** %14, align 8
  %100 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %101 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i32*, i32** %14, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** %14, align 8
  %106 = bitcast i32* %105 to i8*
  %107 = load i8**, i8*** %9, align 8
  store i8* %106, i8** %107, align 8
  %108 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %10, align 8
  %109 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %109, align 8
  store i32 1, i32* %5, align 4
  br label %113

112:                                              ; preds = %62
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %98, %91, %42
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @prepare_to_clone_next_submodule(%struct.cache_entry*, %struct.child_process*, %struct.submodule_update_clone*, %struct.strbuf*) #1

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
