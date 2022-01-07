; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_crlf_to_worktree.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_crlf_to_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.text_stat = type { i64 }

@EOL_CRLF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.strbuf*, i32)* @crlf_to_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crlf_to_worktree(i8* %0, i64 %1, %struct.strbuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.text_stat, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.strbuf* %2, %struct.strbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @output_eol(i32 %16)
  %18 = load i64, i64* @EOL_CRLF, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %101

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @gather_stats(i8* %22, i64 %23, %struct.text_stat* %11)
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @will_convert_lf_to_crlf(%struct.text_stat* %11, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %101

29:                                               ; preds = %21
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %37 = call i8* @strbuf_detach(%struct.strbuf* %36, i32* null)
  store i8* %37, i8** %10, align 8
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %11, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %40, %42
  %44 = call i32 @strbuf_grow(%struct.strbuf* %39, i64 %43)
  br label %45

45:                                               ; preds = %83, %38
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i8* @memchr(i8* %46, i8 signext 10, i64 %47)
  store i8* %48, i8** %12, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %94

52:                                               ; preds = %45
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = icmp ugt i8* %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 -1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 13
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8*, i8** %6, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = call i32 @strbuf_add(%struct.strbuf* %63, i8* %64, i64 %70)
  br label %83

72:                                               ; preds = %56, %52
  %73 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = call i32 @strbuf_add(%struct.strbuf* %73, i8* %74, i64 %79)
  %81 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %82 = call i32 @strbuf_addstr(%struct.strbuf* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %72, %62
  %84 = load i8*, i8** %12, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8*, i8** %6, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = load i64, i64* %7, align 8
  %91 = sub i64 %90, %89
  store i64 %91, i64* %7, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  store i8* %93, i8** %6, align 8
  br label %45

94:                                               ; preds = %51
  %95 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @strbuf_add(%struct.strbuf* %95, i8* %96, i64 %97)
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @free(i8* %99)
  store i32 1, i32* %5, align 4
  br label %101

101:                                              ; preds = %94, %28, %20
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i64 @output_eol(i32) #1

declare dso_local i32 @gather_stats(i8*, i64, %struct.text_stat*) #1

declare dso_local i32 @will_convert_lf_to_crlf(%struct.text_stat*, i32) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
