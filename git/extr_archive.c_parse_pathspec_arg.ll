; ModuleID = '/home/carl/AnghaBench/git/extr_archive.c_parse_pathspec_arg.c'
source_filename = "/home/carl/AnghaBench/git/extr_archive.c_parse_pathspec_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archiver_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PATHSPEC_PREFER_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"pathspec '%s' did not match any files\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.archiver_args*)* @parse_pathspec_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_pathspec_arg(i8** %0, %struct.archiver_args* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.archiver_args*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.archiver_args* %1, %struct.archiver_args** %4, align 8
  %5 = load %struct.archiver_args*, %struct.archiver_args** %4, align 8
  %6 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %5, i32 0, i32 0
  %7 = load i32, i32* @PATHSPEC_PREFER_FULL, align 4
  %8 = load i8**, i8*** %3, align 8
  %9 = call i32 @parse_pathspec(%struct.TYPE_2__* %6, i32 0, i32 %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8)
  %10 = load %struct.archiver_args*, %struct.archiver_args** %4, align 8
  %11 = getelementptr inbounds %struct.archiver_args, %struct.archiver_args* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load i8**, i8*** %3, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %37, %15
  %17 = load i8**, i8*** %3, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load i8**, i8*** %3, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.archiver_args*, %struct.archiver_args** %4, align 8
  %28 = load i8**, i8*** %3, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @path_exists(%struct.archiver_args* %27, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8**, i8*** %3, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @die(i32 %33, i8* %35)
  br label %37

37:                                               ; preds = %32, %26, %20
  %38 = load i8**, i8*** %3, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %3, align 8
  br label %16

40:                                               ; preds = %16
  br label %41

41:                                               ; preds = %40, %2
  ret void
}

declare dso_local i32 @parse_pathspec(%struct.TYPE_2__*, i32, i32, i8*, i8**) #1

declare dso_local i32 @path_exists(%struct.archiver_args*, i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
