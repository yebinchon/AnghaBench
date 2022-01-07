; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_async_convert_to_working_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_async_convert_to_working_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.strbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @async_convert_to_working_tree(%struct.index_state* %0, i8* %1, i8* %2, i64 %3, %struct.strbuf* %4, i8* %5) #0 {
  %7 = alloca %struct.index_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca i8*, align 8
  store %struct.index_state* %0, %struct.index_state** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.strbuf* %4, %struct.strbuf** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load %struct.index_state*, %struct.index_state** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = call i32 @convert_to_working_tree_internal(%struct.index_state* %13, i8* %14, i8* %15, i64 %16, %struct.strbuf* %17, i32 0, i8* %18)
  ret i32 %19
}

declare dso_local i32 @convert_to_working_tree_internal(%struct.index_state*, i8*, i8*, i64, %struct.strbuf*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
