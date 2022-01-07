; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_update_clone_task_finished.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_update_clone_task_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.cache_entry = type { i32 }
%struct.submodule_update_clone = type { i32, %struct.cache_entry**, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, %struct.cache_entry** }

@.str = private unnamed_addr constant [38 x i8] c"Failed to clone '%s'. Retry scheduled\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to clone '%s' a second time, aborting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.strbuf*, i8*, i8*)* @update_clone_task_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_clone_task_finished(i32 %0, %struct.strbuf* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cache_entry*, align 8
  %11 = alloca %struct.submodule_update_clone*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.strbuf* %1, %struct.strbuf** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.submodule_update_clone*
  store %struct.submodule_update_clone* %15, %struct.submodule_update_clone** %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = call i32 @free(i32* %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %93

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %11, align 8
  %28 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %25
  %33 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %11, align 8
  %34 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.cache_entry**, %struct.cache_entry*** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %36, i64 %38
  %40 = load %struct.cache_entry*, %struct.cache_entry** %39, align 8
  store %struct.cache_entry* %40, %struct.cache_entry** %10, align 8
  %41 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %42 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %44 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strbuf_addf(%struct.strbuf* %41, i32 %42, i32 %45)
  %47 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %48 = call i32 @strbuf_addch(%struct.strbuf* %47, i8 signext 10)
  %49 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %11, align 8
  %50 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %49, i32 0, i32 1
  %51 = load %struct.cache_entry**, %struct.cache_entry*** %50, align 8
  %52 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %11, align 8
  %53 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %11, align 8
  %57 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ALLOC_GROW(%struct.cache_entry** %51, i64 %55, i32 %58)
  %60 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %61 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %11, align 8
  %62 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %61, i32 0, i32 1
  %63 = load %struct.cache_entry**, %struct.cache_entry*** %62, align 8
  %64 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %11, align 8
  %65 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %63, i64 %66
  store %struct.cache_entry* %60, %struct.cache_entry** %68, align 8
  store i32 0, i32* %5, align 4
  br label %93

69:                                               ; preds = %25
  %70 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %11, align 8
  %71 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %13, align 4
  %76 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %11, align 8
  %77 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %76, i32 0, i32 1
  %78 = load %struct.cache_entry**, %struct.cache_entry*** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %78, i64 %80
  %82 = load %struct.cache_entry*, %struct.cache_entry** %81, align 8
  store %struct.cache_entry* %82, %struct.cache_entry** %10, align 8
  %83 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %84 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %86 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @strbuf_addf(%struct.strbuf* %83, i32 %84, i32 %87)
  %89 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %90 = call i32 @strbuf_addch(%struct.strbuf* %89, i8 signext 10)
  %91 = load %struct.submodule_update_clone*, %struct.submodule_update_clone** %11, align 8
  %92 = getelementptr inbounds %struct.submodule_update_clone, %struct.submodule_update_clone* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  store i32 1, i32* %5, align 4
  br label %93

93:                                               ; preds = %69, %32, %24
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @ALLOC_GROW(%struct.cache_entry**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
