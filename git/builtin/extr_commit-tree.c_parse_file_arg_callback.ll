; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit-tree.c_parse_file_arg_callback.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit-tree.c_parse_file_arg_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.strbuf* }
%struct.strbuf = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"git commit-tree: failed to open '%s'\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"git commit-tree: failed to read '%s'\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"git commit-tree: failed to close '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @parse_file_arg_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_file_arg_callback(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf*, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.option*, %struct.option** %4, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  %11 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  store %struct.strbuf* %11, %struct.strbuf** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @BUG_ON_OPT_NEG_NOARG(i32 %12, i8* %13)
  %15 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %21 = call i32 @strbuf_addch(%struct.strbuf* %20, i8 signext 10)
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %38

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @O_RDONLY, align 4
  %30 = call i32 @open(i8* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @die_errno(i32 %34, i8* %35)
  br label %37

37:                                               ; preds = %33, %27
  br label %38

38:                                               ; preds = %37, %26
  %39 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @strbuf_read(%struct.strbuf* %39, i32 %40, i32 0)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @die_errno(i32 %44, i8* %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @close(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @die_errno(i32 %55, i8* %56)
  br label %58

58:                                               ; preds = %54, %50, %47
  ret i32 0
}

declare dso_local i32 @BUG_ON_OPT_NEG_NOARG(i32, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @die_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
