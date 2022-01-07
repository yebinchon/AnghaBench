; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_bootstrap_attr_stack.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_bootstrap_attr_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.index_state = type { i32 }
%struct.attr_stack = type { i32 }

@builtin_attr = common dso_local global i32 0, align 4
@GITATTRIBUTES_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@startup_info = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*, %struct.attr_stack**)* @bootstrap_attr_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bootstrap_attr_stack(%struct.index_state* %0, %struct.attr_stack** %1) #0 {
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca %struct.attr_stack**, align 8
  %5 = alloca %struct.attr_stack*, align 8
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store %struct.attr_stack** %1, %struct.attr_stack*** %4, align 8
  %6 = load %struct.attr_stack**, %struct.attr_stack*** %4, align 8
  %7 = load %struct.attr_stack*, %struct.attr_stack** %6, align 8
  %8 = icmp ne %struct.attr_stack* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %58

10:                                               ; preds = %2
  %11 = load i32, i32* @builtin_attr, align 4
  %12 = call %struct.attr_stack* @read_attr_from_array(i32 %11)
  store %struct.attr_stack* %12, %struct.attr_stack** %5, align 8
  %13 = load %struct.attr_stack**, %struct.attr_stack*** %4, align 8
  %14 = load %struct.attr_stack*, %struct.attr_stack** %5, align 8
  %15 = call i32 @push_stack(%struct.attr_stack** %13, %struct.attr_stack* %14, i32* null, i32 0)
  %16 = call i64 (...) @git_attr_system()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = call i64 (...) @git_etc_gitattributes()
  %20 = call %struct.attr_stack* @read_attr_from_file(i64 %19, i32 1)
  store %struct.attr_stack* %20, %struct.attr_stack** %5, align 8
  %21 = load %struct.attr_stack**, %struct.attr_stack*** %4, align 8
  %22 = load %struct.attr_stack*, %struct.attr_stack** %5, align 8
  %23 = call i32 @push_stack(%struct.attr_stack** %21, %struct.attr_stack* %22, i32* null, i32 0)
  br label %24

24:                                               ; preds = %18, %10
  %25 = call i64 (...) @get_home_gitattributes()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = call i64 (...) @get_home_gitattributes()
  %29 = call %struct.attr_stack* @read_attr_from_file(i64 %28, i32 1)
  store %struct.attr_stack* %29, %struct.attr_stack** %5, align 8
  %30 = load %struct.attr_stack**, %struct.attr_stack*** %4, align 8
  %31 = load %struct.attr_stack*, %struct.attr_stack** %5, align 8
  %32 = call i32 @push_stack(%struct.attr_stack** %30, %struct.attr_stack* %31, i32* null, i32 0)
  br label %33

33:                                               ; preds = %27, %24
  %34 = load %struct.index_state*, %struct.index_state** %3, align 8
  %35 = load i32, i32* @GITATTRIBUTES_FILE, align 4
  %36 = call %struct.attr_stack* @read_attr(%struct.index_state* %34, i32 %35, i32 1)
  store %struct.attr_stack* %36, %struct.attr_stack** %5, align 8
  %37 = load %struct.attr_stack**, %struct.attr_stack*** %4, align 8
  %38 = load %struct.attr_stack*, %struct.attr_stack** %5, align 8
  %39 = call i32* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @push_stack(%struct.attr_stack** %37, %struct.attr_stack* %38, i32* %39, i32 0)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = call i64 (...) @git_path_info_attributes()
  %47 = call %struct.attr_stack* @read_attr_from_file(i64 %46, i32 1)
  store %struct.attr_stack* %47, %struct.attr_stack** %5, align 8
  br label %49

48:                                               ; preds = %33
  store %struct.attr_stack* null, %struct.attr_stack** %5, align 8
  br label %49

49:                                               ; preds = %48, %45
  %50 = load %struct.attr_stack*, %struct.attr_stack** %5, align 8
  %51 = icmp ne %struct.attr_stack* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call %struct.attr_stack* @xcalloc(i32 1, i32 4)
  store %struct.attr_stack* %53, %struct.attr_stack** %5, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = load %struct.attr_stack**, %struct.attr_stack*** %4, align 8
  %56 = load %struct.attr_stack*, %struct.attr_stack** %5, align 8
  %57 = call i32 @push_stack(%struct.attr_stack** %55, %struct.attr_stack* %56, i32* null, i32 0)
  br label %58

58:                                               ; preds = %54, %9
  ret void
}

declare dso_local %struct.attr_stack* @read_attr_from_array(i32) #1

declare dso_local i32 @push_stack(%struct.attr_stack**, %struct.attr_stack*, i32*, i32) #1

declare dso_local i64 @git_attr_system(...) #1

declare dso_local %struct.attr_stack* @read_attr_from_file(i64, i32) #1

declare dso_local i64 @git_etc_gitattributes(...) #1

declare dso_local i64 @get_home_gitattributes(...) #1

declare dso_local %struct.attr_stack* @read_attr(%struct.index_state*, i32, i32) #1

declare dso_local i32* @xstrdup(i8*) #1

declare dso_local i64 @git_path_info_attributes(...) #1

declare dso_local %struct.attr_stack* @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
