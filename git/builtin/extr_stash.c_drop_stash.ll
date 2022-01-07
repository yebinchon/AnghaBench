; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_stash.c_drop_stash.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_stash.c_drop_stash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stash_info = type { i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"be quiet, only report errors\00", align 1
@git_stash_drop_usage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @drop_stash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drop_stash(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stash_info, align 4
  %11 = alloca [2 x %struct.option], align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %11, i64 0, i64 0
  %13 = call i32 @N_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @OPT__QUIET(i32* %9, i32 %13)
  %15 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.option, %struct.option* %12, i64 1
  %17 = call i32 (...) @OPT_END()
  %18 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %11, i64 0, i64 0
  %23 = load i32, i32* @git_stash_drop_usage, align 4
  %24 = call i32 @parse_options(i32 %19, i8** %20, i8* %21, %struct.option* %22, i32 %23, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i8**, i8*** %6, align 8
  %27 = call i64 @get_stash_info(%struct.stash_info* %10, i32 %25, i8** %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %36

30:                                               ; preds = %3
  %31 = call i32 @assert_stash_ref(%struct.stash_info* %10)
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @do_drop_stash(%struct.stash_info* %10, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = call i32 @free_stash_info(%struct.stash_info* %10)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %30, %29
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @OPT__QUIET(i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i64 @get_stash_info(%struct.stash_info*, i32, i8**) #1

declare dso_local i32 @assert_stash_ref(%struct.stash_info*) #1

declare dso_local i32 @do_drop_stash(%struct.stash_info*, i32) #1

declare dso_local i32 @free_stash_info(%struct.stash_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
