; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_read_one_ent.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_read_one_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32, i32, i32, i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: not in %s branch.\00", align 1
@S_IFDIR = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: not a blob in %s branch.\00", align 1
@the_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_entry* (i8*, %struct.object_id*, i8*, i32, i32)* @read_one_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_entry* @read_one_ent(i8* %0, %struct.object_id* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca %struct.object_id, align 4
  %14 = alloca %struct.cache_entry*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.object_id* %1, %struct.object_id** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @the_repository, align 4
  %16 = load %struct.object_id*, %struct.object_id** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @get_tree_entry(i32 %15, %struct.object_id* %16, i8* %17, %struct.object_id* %13, i16* %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25)
  br label %27

27:                                               ; preds = %23, %20
  store %struct.cache_entry* null, %struct.cache_entry** %6, align 8
  br label %66

28:                                               ; preds = %5
  %29 = load i16, i16* %12, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* @S_IFDIR, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %39)
  br label %41

41:                                               ; preds = %37, %34
  store %struct.cache_entry* null, %struct.cache_entry** %6, align 8
  br label %66

42:                                               ; preds = %28
  %43 = load i32, i32* %10, align 4
  %44 = call %struct.cache_entry* @make_empty_cache_entry(i32* @the_index, i32 %43)
  store %struct.cache_entry* %44, %struct.cache_entry** %14, align 8
  %45 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %46 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %45, i32 0, i32 4
  %47 = call i32 @oidcpy(i32* %46, %struct.object_id* %13)
  %48 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %49 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @memcpy(i32 %50, i8* %51, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @create_ce_flags(i32 %54)
  %56 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %57 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %60 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i16, i16* %12, align 2
  %62 = call i32 @create_ce_mode(i16 zeroext %61)
  %63 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %64 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  store %struct.cache_entry* %65, %struct.cache_entry** %6, align 8
  br label %66

66:                                               ; preds = %42, %41, %27
  %67 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  ret %struct.cache_entry* %67
}

declare dso_local i64 @get_tree_entry(i32, %struct.object_id*, i8*, %struct.object_id*, i16*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local %struct.cache_entry* @make_empty_cache_entry(i32*, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @create_ce_flags(i32) #1

declare dso_local i32 @create_ce_mode(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
