; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_prune.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"dry run\00", align 1
@builtin_remote_prune_usage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prune(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.option], align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %7, i64 0, i64 0
  %9 = call i32 @N_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @OPT__DRY_RUN(i32* %5, i32 %9)
  %11 = getelementptr inbounds %struct.option, %struct.option* %8, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.option, %struct.option* %8, i64 1
  %13 = call i32 (...) @OPT_END()
  %14 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %7, i64 0, i64 0
  %18 = load i32, i32* @builtin_remote_prune_usage, align 4
  %19 = call i32 @parse_options(i32 %15, i8** %16, i32* null, %struct.option* %17, i32 %18, i32 0)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @builtin_remote_prune_usage, align 4
  %24 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %7, i64 0, i64 0
  %25 = call i32 @usage_with_options(i32 %23, %struct.option* %24)
  br label %26

26:                                               ; preds = %22, %2
  br label %27

27:                                               ; preds = %37, %26
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i8**, i8*** %4, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @prune_remote(i8* %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %3, align 4
  %40 = load i8**, i8*** %4, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %4, align 8
  br label %27

42:                                               ; preds = %27
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @OPT__DRY_RUN(i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i32*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i32 @prune_remote(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
