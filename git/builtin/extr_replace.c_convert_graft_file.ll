; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_replace.c_convert_graft_file.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_replace.c_convert_graft_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.argv_array = type { i32, i64 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 8
@advice_graft_file_deprecated = common dso_local global i64 0, align 8
@EOF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"could not convert the following graft(s):\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @convert_graft_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_graft_file(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca %struct.argv_array, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @the_repository, align 4
  %10 = call i8* @get_graft_file(i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @fopen_or_warn(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %5, align 8
  %13 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %14 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %15 = bitcast %struct.argv_array* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 16, i1 false)
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %69

19:                                               ; preds = %1
  store i64 0, i64* @advice_graft_file_deprecated, align 8
  br label %20

20:                                               ; preds = %51, %31, %19
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @strbuf_getline(%struct.strbuf* %6, i32* %21)
  %23 = load i64, i64* @EOF, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 35
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %20

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @argv_array_split(%struct.argv_array* %8, i8* %34)
  %36 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %8, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %8, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @create_graft(i64 %41, i32 %43, i32 %44, i32 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %47, %39, %32
  %52 = call i32 @argv_array_clear(%struct.argv_array* %8)
  br label %20

53:                                               ; preds = %20
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @fclose(i32* %54)
  %56 = call i32 @strbuf_release(%struct.strbuf* %6)
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @unlink_or_warn(i8* %61)
  store i32 %62, i32* %2, align 4
  br label %69

63:                                               ; preds = %53
  %64 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @warning(i32 %64, i8* %66)
  %68 = call i32 @strbuf_release(%struct.strbuf* %7)
  store i32 -1, i32* %2, align 4
  br label %69

69:                                               ; preds = %63, %60, %18
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i8* @get_graft_file(i32) #1

declare dso_local i32* @fopen_or_warn(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strbuf_getline(%struct.strbuf*, i32*) #1

declare dso_local i32 @argv_array_split(%struct.argv_array*, i8*) #1

declare dso_local i64 @create_graft(i64, i32, i32, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @unlink_or_warn(i8*) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
