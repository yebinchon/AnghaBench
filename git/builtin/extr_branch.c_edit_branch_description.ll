; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_branch.c_edit_branch_description.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_branch.c_edit_branch_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [92 x i8] c"Please edit the description for the branch\0A  %s\0ALines starting with '%c' will be stripped.\0A\00", align 1
@comment_line_char = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"branch.%s.description\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @edit_branch_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edit_branch_description(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf, align 8
  %5 = alloca %struct.strbuf, align 8
  store i8* %0, i8** %3, align 8
  %6 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %7 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @read_branch_desc(%struct.strbuf* %4, i8* %8)
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 10
  br i1 %23, label %24, label %26

24:                                               ; preds = %13, %1
  %25 = call i32 @strbuf_addch(%struct.strbuf* %4, i8 signext 10)
  br label %26

26:                                               ; preds = %24, %13
  %27 = call i32 @_(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* @comment_line_char, align 4
  %30 = call i32 @strbuf_commented_addf(%struct.strbuf* %4, i32 %27, i8* %28, i32 %29)
  %31 = call i32 (...) @edit_description()
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @write_file_buf(i32 %31, i8* %33, i32 %35)
  %37 = call i32 @strbuf_reset(%struct.strbuf* %4)
  %38 = call i32 (...) @edit_description()
  %39 = call i64 @launch_editor(i32 %38, %struct.strbuf* %4, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = call i32 @strbuf_release(%struct.strbuf* %4)
  store i32 -1, i32* %2, align 4
  br label %61

43:                                               ; preds = %26
  %44 = call i32 @strbuf_stripspace(%struct.strbuf* %4, i32 1)
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  br label %56

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i8* [ %54, %52 ], [ null, %55 ]
  %58 = call i32 @git_config_set(i8* %48, i8* %57)
  %59 = call i32 @strbuf_release(%struct.strbuf* %5)
  %60 = call i32 @strbuf_release(%struct.strbuf* %4)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %41
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @read_branch_desc(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_commented_addf(%struct.strbuf*, i32, i8*, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @write_file_buf(i32, i8*, i32) #2

declare dso_local i32 @edit_description(...) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @launch_editor(i32, %struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strbuf_stripspace(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @git_config_set(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
