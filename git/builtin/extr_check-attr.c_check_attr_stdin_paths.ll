; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_check-attr.c_check_attr_stdin_paths.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_check-attr.c_check_attr_stdin_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.attr_check = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@nul_term_line = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"line is badly quoted\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"attribute to stdout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.attr_check*, i32)* @check_attr_stdin_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_attr_stdin_paths(i8* %0, %struct.attr_check* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.attr_check*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca i64 (%struct.strbuf*, i32)*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.attr_check* %1, %struct.attr_check** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %11 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = load i64, i64* @nul_term_line, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i64 (%struct.strbuf*, i32)* @strbuf_getline_nul, i64 (%struct.strbuf*, i32)* @strbuf_getline_lf
  store i64 (%struct.strbuf*, i32)* %15, i64 (%struct.strbuf*, i32)** %9, align 8
  br label %16

16:                                               ; preds = %42, %3
  %17 = load i64 (%struct.strbuf*, i32)*, i64 (%struct.strbuf*, i32)** %9, align 8
  %18 = load i32, i32* @stdin, align 4
  %19 = call i64 %17(%struct.strbuf* %7, i32 %18)
  %20 = load i64, i64* @EOF, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %16
  %23 = load i64, i64* @nul_term_line, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 34
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = call i32 @strbuf_reset(%struct.strbuf* %8)
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @unquote_c_style(%struct.strbuf* %8, i8* %35, i32* null)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %32
  %41 = call i32 @strbuf_swap(%struct.strbuf* %7, %struct.strbuf* %8)
  br label %42

42:                                               ; preds = %40, %25, %22
  %43 = load i8*, i8** %4, align 8
  %44 = load %struct.attr_check*, %struct.attr_check** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @check_attr(i8* %43, %struct.attr_check* %44, i32 %45, i8* %47)
  %49 = load i32, i32* @stdout, align 4
  %50 = call i32 @maybe_flush_or_die(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %16

51:                                               ; preds = %16
  %52 = call i32 @strbuf_release(%struct.strbuf* %7)
  %53 = call i32 @strbuf_release(%struct.strbuf* %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_getline_nul(%struct.strbuf*, i32) #2

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @unquote_c_style(%struct.strbuf*, i8*, i32*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @strbuf_swap(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @check_attr(i8*, %struct.attr_check*, i32, i8*) #2

declare dso_local i32 @maybe_flush_or_die(i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
