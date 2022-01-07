; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_check_changes.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_check_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathspec = type { i32 }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pathspec*, i32, %struct.strbuf*)* @check_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_changes(%struct.pathspec* %0, i32 %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.pathspec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i32, align 4
  store %struct.pathspec* %0, %struct.pathspec** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %9 = call i64 @check_changes_tracked_files(%struct.pathspec* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %12

12:                                               ; preds = %11, %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %19 = call i64 @get_untracked_files(%struct.pathspec* %16, i32 %17, %struct.strbuf* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %15, %12
  %23 = load i32, i32* %7, align 4
  ret i32 %23
}

declare dso_local i64 @check_changes_tracked_files(%struct.pathspec*) #1

declare dso_local i64 @get_untracked_files(%struct.pathspec*, i32, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
