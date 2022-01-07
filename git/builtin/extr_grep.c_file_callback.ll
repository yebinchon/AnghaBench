; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_file_callback.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_file_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.option = type { %struct.grep_opt* }
%struct.grep_opt = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cannot open '%s'\00", align 1
@GREP_PATTERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @file_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_callback(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.option*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.grep_opt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.strbuf, align 8
  store %struct.option* %0, %struct.option** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.option*, %struct.option** %4, align 8
  %13 = getelementptr inbounds %struct.option, %struct.option* %12, i32 0, i32 0
  %14 = load %struct.grep_opt*, %struct.grep_opt** %13, align 8
  store %struct.grep_opt* %14, %struct.grep_opt** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @BUG_ON_OPT_NEG(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32*, i32** @stdin, align 8
  br label %30

27:                                               ; preds = %3
  %28 = load i8*, i8** %5, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32* [ %26, %25 ], [ %29, %27 ]
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @die_errno(i32 %35, i8* %36)
  br label %38

38:                                               ; preds = %34, %30
  br label %39

39:                                               ; preds = %48, %47, %38
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @strbuf_getline(%struct.strbuf* %11, i32* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %39

48:                                               ; preds = %43
  %49 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* @GREP_PATTERN, align 4
  %58 = call i32 @append_grep_pat(%struct.grep_opt* %49, i32 %51, i64 %53, i8* %54, i32 %56, i32 %57)
  br label %39

59:                                               ; preds = %39
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @fclose(i32* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = call i32 @strbuf_release(%struct.strbuf* %11)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @die_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @strbuf_getline(%struct.strbuf*, i32*) #2

declare dso_local i32 @append_grep_pat(%struct.grep_opt*, i32, i64, i8*, i32, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
