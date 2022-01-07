; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_append_path.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_append_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { %struct.string_list* }
%struct.string_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grep_opt*, i8*, i64)* @append_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_path(%struct.grep_opt* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.grep_opt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.string_list*, align 8
  store %struct.grep_opt* %0, %struct.grep_opt** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %9 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %8, i32 0, i32 0
  %10 = load %struct.string_list*, %struct.string_list** %9, align 8
  store %struct.string_list* %10, %struct.string_list** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %25

19:                                               ; preds = %13, %3
  %20 = load %struct.string_list*, %struct.string_list** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @xstrndup(i8* %21, i64 %22)
  %24 = call i32 @string_list_append(%struct.string_list* %20, i32 %23)
  br label %25

25:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #1

declare dso_local i32 @xstrndup(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
