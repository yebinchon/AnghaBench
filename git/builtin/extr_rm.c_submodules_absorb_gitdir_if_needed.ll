; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rm.c_submodules_absorb_gitdir_if_needed.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rm.c_submodules_absorb_gitdir_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.cache_entry = type { i32, i32 }

@list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@active_cache = common dso_local global %struct.cache_entry** null, align 8
@ABSORB_GITDIR_RECURSE_SUBMODULES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @submodules_absorb_gitdir_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submodules_absorb_gitdir_if_needed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry*, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %61, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @list, i32 0, i32 0), align 8
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %64

9:                                                ; preds = %5
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @list, i32 0, i32 1), align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = call i32 @cache_name_pos(i8* %16, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %9
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @get_ours_cache_pos(i8* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %61

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %9
  %31 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %31, i64 %33
  %35 = load %struct.cache_entry*, %struct.cache_entry** %34, align 8
  store %struct.cache_entry* %35, %struct.cache_entry** %4, align 8
  %36 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @S_ISGITLINK(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %30
  %42 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %43 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @file_exists(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i8*, i8** %2, align 8
  %49 = call i64 @is_empty_dir(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47, %41, %30
  br label %61

52:                                               ; preds = %47
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 @submodule_uses_gitfile(i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %2, align 8
  %58 = load i32, i32* @ABSORB_GITDIR_RECURSE_SUBMODULES, align 4
  %59 = call i32 @absorb_git_dir_into_superproject(i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %51, %28
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %5

64:                                               ; preds = %5
  ret void
}

declare dso_local i32 @cache_name_pos(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_ours_cache_pos(i8*, i32) #1

declare dso_local i32 @S_ISGITLINK(i32) #1

declare dso_local i32 @file_exists(i32) #1

declare dso_local i64 @is_empty_dir(i8*) #1

declare dso_local i32 @submodule_uses_gitfile(i8*) #1

declare dso_local i32 @absorb_git_dir_into_superproject(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
