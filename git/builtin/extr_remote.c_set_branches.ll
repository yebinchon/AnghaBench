; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_set_branches.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_set_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"add branch\00", align 1
@builtin_remote_setbranches_usage = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"no remote specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @set_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_branches(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.option], align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %6, i64 0, i64 0
  %8 = call i32 @N_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @OPT_BOOL(i8 signext 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %5, i32 %8)
  %10 = getelementptr inbounds %struct.option, %struct.option* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.option, %struct.option* %7, i64 1
  %12 = call i32 (...) @OPT_END()
  %13 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i8**, i8*** %4, align 8
  %16 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %6, i64 0, i64 0
  %17 = load i32, i32* @builtin_remote_setbranches_usage, align 4
  %18 = call i32 @parse_options(i32 %14, i8** %15, i32* null, %struct.option* %16, i32 %17, i32 0)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @error(i32 %22)
  %24 = load i32, i32* @builtin_remote_setbranches_usage, align 4
  %25 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %6, i64 0, i64 0
  %26 = call i32 @usage_with_options(i32 %24, %struct.option* %25)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load i8**, i8*** %4, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  store i8* null, i8** %31, align 8
  %32 = load i8**, i8*** %4, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** %4, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @set_remote_branches(i8* %34, i8** %36, i32 %37)
  ret i32 %38
}

declare dso_local i32 @OPT_BOOL(i8 signext, i8*, i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i32*, %struct.option*, i32, i32) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i32 @set_remote_branches(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
