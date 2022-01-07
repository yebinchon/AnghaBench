; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_check-ignore.c_check_ignore_stdin_paths.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_check-ignore.c_check_ignore_stdin_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.dir_struct = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@nul_term_line = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"line is badly quoted\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"check-ignore to stdout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dir_struct*, i8*)* @check_ignore_stdin_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ignore_stdin_paths(%struct.dir_struct* %0, i8* %1) #0 {
  %3 = alloca %struct.dir_struct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i64 (%struct.strbuf*, i32)*, align 8
  %9 = alloca i32, align 4
  store %struct.dir_struct* %0, %struct.dir_struct** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %11 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = bitcast [2 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false)
  store i32 0, i32* %9, align 4
  %13 = load i64, i64* @nul_term_line, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i64 (%struct.strbuf*, i32)* @strbuf_getline_nul, i64 (%struct.strbuf*, i32)* @strbuf_getline_lf
  store i64 (%struct.strbuf*, i32)* %16, i64 (%struct.strbuf*, i32)** %8, align 8
  br label %17

17:                                               ; preds = %43, %2
  %18 = load i64 (%struct.strbuf*, i32)*, i64 (%struct.strbuf*, i32)** %8, align 8
  %19 = load i32, i32* @stdin, align 4
  %20 = call i64 %18(%struct.strbuf* %5, i32 %19)
  %21 = load i64, i64* @EOF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %17
  %24 = load i64, i64* @nul_term_line, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 34
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = call i32 @strbuf_reset(%struct.strbuf* %6)
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @unquote_c_style(%struct.strbuf* %6, i8* %36, i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %33
  %42 = call i32 @strbuf_swap(%struct.strbuf* %5, %struct.strbuf* %6)
  br label %43

43:                                               ; preds = %41, %26, %23
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %45, i8** %46, align 16
  %47 = load %struct.dir_struct*, %struct.dir_struct** %3, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %50 = call i64 @check_ignore(%struct.dir_struct* %47, i8* %48, i32 1, i8** %49)
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @stdout, align 4
  %56 = call i32 @maybe_flush_or_die(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %17

57:                                               ; preds = %17
  %58 = call i32 @strbuf_release(%struct.strbuf* %5)
  %59 = call i32 @strbuf_release(%struct.strbuf* %6)
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strbuf_getline_nul(%struct.strbuf*, i32) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @unquote_c_style(%struct.strbuf*, i8*, i32*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @strbuf_swap(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i64 @check_ignore(%struct.dir_struct*, i8*, i32, i8**) #2

declare dso_local i32 @maybe_flush_or_die(i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
