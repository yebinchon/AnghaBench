; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_help.c_get_html_page_path.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_help.c_get_html_page_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.stat = type { i32 }

@html_path = common dso_local global i8* null, align 8
@GIT_HTML_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s/git.html\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"'%s': not a documentation directory.\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s/%s.html\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*)* @get_html_page_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_html_page_path(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %6, align 8
  %7 = load i8*, i8** @html_path, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @GIT_HTML_PATH, align 4
  %11 = call i8* @system_path(i32 %10)
  store i8* %11, i8** %6, align 8
  store i8* %11, i8** @html_path, align 8
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i8*, i8** @html_path, align 8
  %14 = call i32 @strstr(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** @html_path, align 8
  %18 = call i32 @mkpath(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  %19 = call i64 @stat(i32 %18, %struct.stat* %5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @S_ISREG(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %16
  %27 = load i8*, i8** @html_path, align 8
  %28 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %12
  %31 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %32 = call i32 @strbuf_init(%struct.strbuf* %31, i32 0)
  %33 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %34 = load i8*, i8** @html_path, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strbuf_addf(%struct.strbuf* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %34, i8* %35)
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @free(i8* %37)
  ret void
}

declare dso_local i8* @system_path(i32) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @mkpath(i8*, i8*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
