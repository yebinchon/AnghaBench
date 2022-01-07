; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_config.c_collect_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_config.c_collect_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf_list = type { i32, i32*, i32 }

@use_key_regexp = common dso_local global i64 0, align 8
@key = common dso_local global i32 0, align 4
@key_regexp = common dso_local global i32* null, align 8
@regexp = common dso_local global i32* null, align 8
@do_not_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @collect_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf_list*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.strbuf_list*
  store %struct.strbuf_list* %10, %struct.strbuf_list** %8, align 8
  %11 = load i64, i64* @use_key_regexp, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* @key, align 4
  %16 = call i64 @strcmp(i8* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %82

19:                                               ; preds = %13, %3
  %20 = load i64, i64* @use_key_regexp, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32*, i32** @key_regexp, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @regexec(i32* %23, i8* %24, i32 0, i32* null, i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %82

28:                                               ; preds = %22, %19
  %29 = load i32*, i32** @regexp, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load i32, i32* @do_not_match, align 4
  %33 = load i32*, i32** @regexp, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i8* [ %37, %36 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %38 ]
  %41 = call i64 @regexec(i32* %33, i8* %40, i32 0, i32* null, i32 0)
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = xor i32 %32, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %82

49:                                               ; preds = %39, %28
  %50 = load %struct.strbuf_list*, %struct.strbuf_list** %8, align 8
  %51 = getelementptr inbounds %struct.strbuf_list, %struct.strbuf_list* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.strbuf_list*, %struct.strbuf_list** %8, align 8
  %54 = getelementptr inbounds %struct.strbuf_list, %struct.strbuf_list* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  %57 = load %struct.strbuf_list*, %struct.strbuf_list** %8, align 8
  %58 = getelementptr inbounds %struct.strbuf_list, %struct.strbuf_list* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ALLOC_GROW(i32* %52, i32 %56, i32 %59)
  %61 = load %struct.strbuf_list*, %struct.strbuf_list** %8, align 8
  %62 = getelementptr inbounds %struct.strbuf_list, %struct.strbuf_list* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.strbuf_list*, %struct.strbuf_list** %8, align 8
  %65 = getelementptr inbounds %struct.strbuf_list, %struct.strbuf_list* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = call i32 @strbuf_init(i32* %68, i32 0)
  %70 = load %struct.strbuf_list*, %struct.strbuf_list** %8, align 8
  %71 = getelementptr inbounds %struct.strbuf_list, %struct.strbuf_list* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.strbuf_list*, %struct.strbuf_list** %8, align 8
  %74 = getelementptr inbounds %struct.strbuf_list, %struct.strbuf_list* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @format_config(i32* %78, i8* %79, i8* %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %49, %48, %27, %18
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @ALLOC_GROW(i32*, i32, i32) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @format_config(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
