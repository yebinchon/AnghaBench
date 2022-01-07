; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_hash-object.c_hash_stdin_paths.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_hash-object.c_hash_stdin_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"line is badly quoted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @hash_stdin_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_stdin_paths(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.strbuf, align 8
  %10 = alloca %struct.strbuf, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  br label %13

13:                                               ; preds = %45, %4
  %14 = load i32, i32* @stdin, align 4
  %15 = call i64 @strbuf_getline(%struct.strbuf* %9, i32 %14)
  %16 = load i64, i64* @EOF, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 34
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = call i32 @strbuf_reset(%struct.strbuf* %10)
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @unquote_c_style(%struct.strbuf* %10, i8* %28, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %25
  %34 = call i32 @strbuf_swap(%struct.strbuf* %9, %struct.strbuf* %10)
  br label %35

35:                                               ; preds = %33, %18
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %45

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  br label %45

45:                                               ; preds = %42, %41
  %46 = phi i8* [ null, %41 ], [ %44, %42 ]
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @hash_object(i8* %37, i8* %38, i8* %46, i32 %47, i32 %48)
  br label %13

50:                                               ; preds = %13
  %51 = call i32 @strbuf_release(%struct.strbuf* %9)
  %52 = call i32 @strbuf_release(%struct.strbuf* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_getline(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @unquote_c_style(%struct.strbuf*, i8*, i32*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @strbuf_swap(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @hash_object(i8*, i8*, i8*, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
