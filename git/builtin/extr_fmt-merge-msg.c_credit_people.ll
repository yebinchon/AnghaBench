; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_credit_people.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_credit_people.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"By\00", align 1
@IDENT_NO_DATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"Via\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\0A%c %s \00", align 1
@comment_line_char = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, %struct.string_list*, i32)* @credit_people to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @credit_people(%struct.strbuf* %0, %struct.string_list* %1, i32 %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 97
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %12 = load i32, i32* @IDENT_NO_DATE, align 4
  %13 = call i8* @git_author_info(i32 %12)
  store i8* %13, i8** %8, align 8
  br label %17

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %15 = load i32, i32* @IDENT_NO_DATE, align 4
  %16 = call i8* @git_committer_info(i32 %15)
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.string_list*, %struct.string_list** %5, align 8
  %19 = getelementptr inbounds %struct.string_list, %struct.string_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = load %struct.string_list*, %struct.string_list** %5, align 8
  %24 = getelementptr inbounds %struct.string_list, %struct.string_list* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.string_list*, %struct.string_list** %5, align 8
  %33 = getelementptr inbounds %struct.string_list, %struct.string_list* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @skip_prefix(i8* %31, i32 %36, i8** %8)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @starts_with(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %17
  br label %52

44:                                               ; preds = %39, %30, %27, %22
  %45 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %46 = load i32, i32* @comment_line_char, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @strbuf_addf(%struct.strbuf* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %46, i8* %47)
  %49 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %50 = load %struct.string_list*, %struct.string_list** %5, align 8
  %51 = call i32 @add_people_count(%struct.strbuf* %49, %struct.string_list* %50)
  br label %52

52:                                               ; preds = %44, %43
  ret void
}

declare dso_local i8* @git_author_info(i32) #1

declare dso_local i8* @git_committer_info(i32) #1

declare dso_local i64 @skip_prefix(i8*, i32, i8**) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #1

declare dso_local i32 @add_people_count(%struct.strbuf*, %struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
