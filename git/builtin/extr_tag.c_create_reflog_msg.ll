; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_tag.c_create_reflog_msg.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_tag.c_create_reflog_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }
%struct.commit = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"GIT_REFLOG_ACTION\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"tag: tagging \00", align 1
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"object of unknown type\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"commit object\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@SHORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"tree object\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"blob object\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"other tag object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, %struct.strbuf*)* @create_reflog_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_reflog_msg(%struct.object_id* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.commit*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  store i32 0, i32* %9, align 4
  %12 = call i8* @getenv(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call i32 @strbuf_addstr(%struct.strbuf* %16, i8* %17)
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %21 = call i32 @strbuf_addstr(%struct.strbuf* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %23 = load %struct.object_id*, %struct.object_id** %3, align 8
  %24 = load i32, i32* @DEFAULT_ABBREV, align 4
  %25 = call i32 @strbuf_add_unique_abbrev(%struct.strbuf* %22, %struct.object_id* %23, i32 %24)
  br label %26

26:                                               ; preds = %19, %15
  %27 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %28 = call i32 @strbuf_addstr(%struct.strbuf* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @the_repository, align 4
  %30 = load %struct.object_id*, %struct.object_id** %3, align 8
  %31 = call i32 @oid_object_info(i32 %29, %struct.object_id* %30, i32* null)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %33 [
    i32 130, label %36
    i32 128, label %70
    i32 131, label %73
    i32 129, label %76
  ]

33:                                               ; preds = %26
  %34 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %35 = call i32 @strbuf_addstr(%struct.strbuf* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %79

36:                                               ; preds = %26
  %37 = load %struct.object_id*, %struct.object_id** %3, align 8
  %38 = call i8* @read_object_file(%struct.object_id* %37, i32* %5, i64* %8)
  store i8* %38, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @find_commit_subject(i8* %41, i8** %10)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %44 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @strbuf_insert(%struct.strbuf* %43, i32 %46, i8* %47, i32 %48)
  br label %53

50:                                               ; preds = %36
  %51 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %52 = call i32 @strbuf_addstr(%struct.strbuf* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %40
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32, i32* @the_repository, align 4
  %57 = load %struct.object_id*, %struct.object_id** %3, align 8
  %58 = call %struct.commit* @lookup_commit_reference(i32 %56, %struct.object_id* %57)
  store %struct.commit* %58, %struct.commit** %6, align 8
  %59 = icmp ne %struct.commit* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %62 = load %struct.commit*, %struct.commit** %6, align 8
  %63 = getelementptr inbounds %struct.commit, %struct.commit* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SHORT, align 4
  %66 = call i32 @DATE_MODE(i32 %65)
  %67 = call i32 @show_date(i32 %64, i32 0, i32 %66)
  %68 = call i32 @strbuf_addf(%struct.strbuf* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %60, %53
  br label %79

70:                                               ; preds = %26
  %71 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %72 = call i32 @strbuf_addstr(%struct.strbuf* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %79

73:                                               ; preds = %26
  %74 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %75 = call i32 @strbuf_addstr(%struct.strbuf* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %79

76:                                               ; preds = %26
  %77 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %78 = call i32 @strbuf_addstr(%struct.strbuf* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %73, %70, %69, %33
  %80 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %81 = call i32 @strbuf_addch(%struct.strbuf* %80, i8 signext 41)
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_add_unique_abbrev(%struct.strbuf*, %struct.object_id*, i32) #1

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @find_commit_subject(i8*, i8**) #1

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @show_date(i32, i32, i32) #1

declare dso_local i32 @DATE_MODE(i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
