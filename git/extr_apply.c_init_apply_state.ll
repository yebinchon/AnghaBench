; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_init_apply_state.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_init_apply_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i8*, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.repository* }
%struct.repository = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@warn_on_ws_error = common dso_local global i32 0, align 4
@ignore_ws_none = common dso_local global i32 0, align 4
@apply_default_whitespace = common dso_local global i64 0, align 8
@apply_default_ignorewhitespace = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_apply_state(%struct.apply_state* %0, %struct.repository* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.apply_state*, align 8
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %5, align 8
  store %struct.repository* %1, %struct.repository** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %9 = call i32 @memset(%struct.apply_state* %8, i32 0, i32 64)
  %10 = load i8*, i8** %7, align 8
  %11 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %12 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.repository*, %struct.repository** %6, align 8
  %14 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %15 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %14, i32 0, i32 13
  store %struct.repository* %13, %struct.repository** %15, align 8
  %16 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %17 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %16, i32 0, i32 1
  store i32 1, i32* %17, align 8
  %18 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %19 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %18, i32 0, i32 2
  store i8 10, i8* %19, align 4
  %20 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %21 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %20, i32 0, i32 3
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* @UINT_MAX, align 4
  %23 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %24 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 4
  %25 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %26 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %25, i32 0, i32 4
  store i32 5, i32* %26, align 4
  %27 = load i32, i32* @warn_on_ws_error, align 4
  %28 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %29 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @ignore_ws_none, align 4
  %31 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %32 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 4
  %33 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %34 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %33, i32 0, i32 5
  store i32 1, i32* %34, align 8
  %35 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %36 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %35, i32 0, i32 9
  %37 = call i32 @string_list_init(i32* %36, i32 0)
  %38 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %39 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %38, i32 0, i32 8
  %40 = call i32 @string_list_init(i32* %39, i32 0)
  %41 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %42 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %41, i32 0, i32 7
  %43 = call i32 @string_list_init(i32* %42, i32 0)
  %44 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %45 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %44, i32 0, i32 6
  %46 = call i32 @strbuf_init(i32* %45, i32 0)
  %47 = call i32 (...) @git_apply_config()
  %48 = load i64, i64* @apply_default_whitespace, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %3
  %51 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %52 = load i64, i64* @apply_default_whitespace, align 8
  %53 = call i64 @parse_whitespace_option(%struct.apply_state* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 -1, i32* %4, align 4
  br label %66

56:                                               ; preds = %50, %3
  %57 = load i64, i64* @apply_default_ignorewhitespace, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %61 = load i64, i64* @apply_default_ignorewhitespace, align 8
  %62 = call i64 @parse_ignorewhitespace_option(%struct.apply_state* %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 -1, i32* %4, align 4
  br label %66

65:                                               ; preds = %59, %56
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %64, %55
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @memset(%struct.apply_state*, i32, i32) #1

declare dso_local i32 @string_list_init(i32*, i32) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @git_apply_config(...) #1

declare dso_local i64 @parse_whitespace_option(%struct.apply_state*, i64) #1

declare dso_local i64 @parse_ignorewhitespace_option(%struct.apply_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
