; ModuleID = '/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_re_compile_pattern.c'
source_filename = "/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_re_compile_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_pattern_buffer = type { i32, i32 }

@re_syntax_options = common dso_local global i32 0, align 4
@RE_NO_SUB = common dso_local global i32 0, align 4
@__re_error_msgid = common dso_local global i64 0, align 8
@__re_error_msgid_idx = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @re_compile_pattern(i8* %0, i64 %1, %struct.re_pattern_buffer* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.re_pattern_buffer*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.re_pattern_buffer* %2, %struct.re_pattern_buffer** %7, align 8
  %9 = load i32, i32* @re_syntax_options, align 4
  %10 = load i32, i32* @RE_NO_SUB, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %7, align 8
  %17 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @re_syntax_options, align 4
  %24 = call i64 @re_compile_internal(%struct.re_pattern_buffer* %20, i8* %21, i64 %22, i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %38

28:                                               ; preds = %3
  %29 = load i64, i64* @__re_error_msgid, align 8
  %30 = load i64*, i64** @__re_error_msgid_idx, align 8
  %31 = load i64, i64* %8, align 8
  %32 = trunc i64 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %29, %35
  %37 = call i8* @gettext(i64 %36)
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %28, %27
  %39 = load i8*, i8** %4, align 8
  ret i8* %39
}

declare dso_local i64 @re_compile_internal(%struct.re_pattern_buffer*, i8*, i64, i32) #1

declare dso_local i8* @gettext(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
