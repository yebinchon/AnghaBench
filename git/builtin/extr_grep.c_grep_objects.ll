; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_grep_objects.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_grep_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i64, i32 }
%struct.pathspec = type { i32 }
%struct.object_array = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.object = type { i32 }

@recurse_submodules = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_opt*, %struct.pathspec*, %struct.object_array*)* @grep_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_objects(%struct.grep_opt* %0, %struct.pathspec* %1, %struct.object_array* %2) #0 {
  %4 = alloca %struct.grep_opt*, align 8
  %5 = alloca %struct.pathspec*, align 8
  %6 = alloca %struct.object_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.object*, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %4, align 8
  store %struct.pathspec* %1, %struct.pathspec** %5, align 8
  store %struct.object_array* %2, %struct.object_array** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.object_array*, %struct.object_array** %6, align 8
  %12 = getelementptr inbounds %struct.object_array, %struct.object_array* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %71, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  %19 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %20 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.object_array*, %struct.object_array** %6, align 8
  %23 = getelementptr inbounds %struct.object_array, %struct.object_array* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.object* @deref_tag(i32 %21, i32 %29, i32* null, i32 0)
  store %struct.object* %30, %struct.object** %10, align 8
  %31 = load i64, i64* @recurse_submodules, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %35 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @submodule_free(i32 %36)
  %38 = load %struct.object*, %struct.object** %10, align 8
  %39 = getelementptr inbounds %struct.object, %struct.object* %38, i32 0, i32 0
  %40 = call i32 @gitmodules_config_oid(i32* %39)
  br label %41

41:                                               ; preds = %33, %18
  %42 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %43 = load %struct.pathspec*, %struct.pathspec** %5, align 8
  %44 = load %struct.object*, %struct.object** %10, align 8
  %45 = load %struct.object_array*, %struct.object_array** %6, align 8
  %46 = getelementptr inbounds %struct.object_array, %struct.object_array* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.object_array*, %struct.object_array** %6, align 8
  %54 = getelementptr inbounds %struct.object_array, %struct.object_array* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @grep_object(%struct.grep_opt* %42, %struct.pathspec* %43, %struct.object* %44, i32 %52, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  %64 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %65 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %74

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %41
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %14

74:                                               ; preds = %68, %14
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local %struct.object* @deref_tag(i32, i32, i32*, i32) #1

declare dso_local i32 @submodule_free(i32) #1

declare dso_local i32 @gitmodules_config_oid(i32*) #1

declare dso_local i64 @grep_object(%struct.grep_opt*, %struct.pathspec*, %struct.object*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
