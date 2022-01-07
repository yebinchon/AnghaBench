; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_read_bisect_terms.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_read_bisect_terms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"bad\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"could not read file '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_bisect_terms(i8** %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = call i8* (...) @git_path_bisect_terms()
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @ENOENT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i8**, i8*** %3, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  %20 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 8
  br label %39

21:                                               ; preds = %14
  %22 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @die_errno(i32 %22, i8* %23)
  br label %25

25:                                               ; preds = %21
  br label %35

26:                                               ; preds = %2
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @strbuf_getline_lf(%struct.strbuf* %5, i32* %27)
  %29 = call i8* @strbuf_detach(%struct.strbuf* %5, i32* null)
  %30 = load i8**, i8*** %3, align 8
  store i8* %29, i8** %30, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @strbuf_getline_lf(%struct.strbuf* %5, i32* %31)
  %33 = call i8* @strbuf_detach(%struct.strbuf* %5, i32* null)
  %34 = load i8**, i8*** %4, align 8
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %26, %25
  %36 = call i32 @strbuf_release(%struct.strbuf* %5)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @fclose(i32* %37)
  br label %39

39:                                               ; preds = %35, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @git_path_bisect_terms(...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @die_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_getline_lf(%struct.strbuf*, i32*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
