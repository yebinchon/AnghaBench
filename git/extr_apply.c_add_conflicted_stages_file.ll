; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_add_conflicted_stages_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_add_conflicted_stages_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.patch = type { i32, i32, i32* }
%struct.cache_entry = type { i32, i32, i32, i32, i32 }

@S_IFREG = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to add cache entry for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.patch*)* @add_conflicted_stages_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_conflicted_stages_file(%struct.apply_state* %0, %struct.patch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apply_state*, align 8
  %5 = alloca %struct.patch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cache_entry*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %4, align 8
  store %struct.patch* %1, %struct.patch** %5, align 8
  %10 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %11 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %115

15:                                               ; preds = %2
  %16 = load %struct.patch*, %struct.patch** %5, align 8
  %17 = getelementptr inbounds %struct.patch, %struct.patch* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strlen(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.patch*, %struct.patch** %5, align 8
  %21 = getelementptr inbounds %struct.patch, %struct.patch* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load %struct.patch*, %struct.patch** %5, align 8
  %26 = getelementptr inbounds %struct.patch, %struct.patch* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  br label %31

28:                                               ; preds = %15
  %29 = load i32, i32* @S_IFREG, align 4
  %30 = or i32 %29, 420
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ %27, %24 ], [ %30, %28 ]
  store i32 %32, i32* %8, align 4
  %33 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %34 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.patch*, %struct.patch** %5, align 8
  %39 = getelementptr inbounds %struct.patch, %struct.patch* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @remove_file_from_index(i32 %37, i32 %40)
  store i32 1, i32* %6, align 4
  br label %42

42:                                               ; preds = %111, %31
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %114

45:                                               ; preds = %42
  %46 = load %struct.patch*, %struct.patch** %5, align 8
  %47 = getelementptr inbounds %struct.patch, %struct.patch* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = call i64 @is_null_oid(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %111

56:                                               ; preds = %45
  %57 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %58 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call %struct.cache_entry* @make_empty_cache_entry(i32 %61, i32 %62)
  store %struct.cache_entry* %63, %struct.cache_entry** %9, align 8
  %64 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %65 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.patch*, %struct.patch** %5, align 8
  %68 = getelementptr inbounds %struct.patch, %struct.patch* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @memcpy(i32 %66, i32 %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @create_ce_mode(i32 %72)
  %74 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %75 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @create_ce_flags(i32 %76)
  %78 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %79 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %82 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %84 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %83, i32 0, i32 1
  %85 = load %struct.patch*, %struct.patch** %5, align 8
  %86 = getelementptr inbounds %struct.patch, %struct.patch* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = call i32 @oidcpy(i32* %84, i32* %91)
  %93 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %94 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %99 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %100 = call i64 @add_index_entry(i32 %97, %struct.cache_entry* %98, i32 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %56
  %103 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %104 = call i32 @discard_cache_entry(%struct.cache_entry* %103)
  %105 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.patch*, %struct.patch** %5, align 8
  %107 = getelementptr inbounds %struct.patch, %struct.patch* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @error(i32 %105, i32 %108)
  store i32 %109, i32* %3, align 4
  br label %115

110:                                              ; preds = %56
  br label %111

111:                                              ; preds = %110, %55
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %42

114:                                              ; preds = %42
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %102, %14
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @remove_file_from_index(i32, i32) #1

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @create_ce_mode(i32) #1

declare dso_local i32 @create_ce_flags(i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i64 @add_index_entry(i32, %struct.cache_entry*, i32) #1

declare dso_local i32 @discard_cache_entry(%struct.cache_entry*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
