; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_bisect_append_log_quoted.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_bisect--helper.c_bisect_append_log_quoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"git bisect start\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @bisect_append_log_quoted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bisect_append_log_quoted(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.strbuf, align 8
  store i8** %0, i8*** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = call i32 (...) @git_path_bisect_log()
  %8 = call i32* @fopen(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %5, align 8
  %9 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %28

18:                                               ; preds = %13
  %19 = load i8**, i8*** %3, align 8
  %20 = call i32 @sq_quote_argv(%struct.strbuf* %6, i8** %19)
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %18
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @fclose(i32* %29)
  %31 = call i32 @strbuf_release(%struct.strbuf* %6)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @git_path_bisect_log(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @sq_quote_argv(%struct.strbuf*, i8**) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
