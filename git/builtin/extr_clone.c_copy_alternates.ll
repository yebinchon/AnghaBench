; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_copy_alternates.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_copy_alternates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@EOF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"%s/objects/%s\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"skipping invalid relative alternate: %s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*)* @copy_alternates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_alternates(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %9 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32* @xfopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %5, align 8
  %12 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  br label %13

13:                                               ; preds = %56, %35, %29, %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @strbuf_getline(%struct.strbuf* %6, i32* %14)
  %16 = load i64, i64* @EOF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 35
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %18
  br label %13

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @is_absolute_path(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @add_to_alternates_file(i8* %37)
  br label %13

39:                                               ; preds = %30
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @mkpathdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %42)
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @normalize_path_copy(i8* %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @add_to_alternates_file(i8* %49)
  br label %56

51:                                               ; preds = %39
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %54)
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @free(i8* %57)
  br label %13

59:                                               ; preds = %13
  %60 = call i32 @strbuf_release(%struct.strbuf* %6)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @fclose(i32* %61)
  ret void
}

declare dso_local i32* @xfopen(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strbuf_getline(%struct.strbuf*, i32*) #1

declare dso_local i64 @is_absolute_path(i8*) #1

declare dso_local i32 @add_to_alternates_file(i8*) #1

declare dso_local i8* @mkpathdup(i8*, i8*, i8*) #1

declare dso_local i32 @normalize_path_copy(i8*, i8*) #1

declare dso_local i32 @warning(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
