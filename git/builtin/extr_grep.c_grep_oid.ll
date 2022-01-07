; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_grep_oid.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_grep_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.grep_opt = type { i32, i64, i64 }
%struct.object_id = type { i32 }
%struct.grep_source = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@GREP_SOURCE_OID = common dso_local global i32 0, align 4
@num_threads = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_opt*, %struct.object_id*, i8*, i32, i8*)* @grep_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_oid(%struct.grep_opt* %0, %struct.object_id* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.grep_opt*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca %struct.grep_source, align 4
  %14 = alloca i32, align 4
  store %struct.grep_opt* %0, %struct.grep_opt** %7, align 8
  store %struct.object_id* %1, %struct.object_id** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %16 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %17 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %5
  %21 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %22 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %31 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @quote_path_relative(i8* %29, i32 %32, %struct.strbuf* %12)
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @strbuf_insert(%struct.strbuf* %12, i32 0, i8* %34, i32 %35)
  br label %40

37:                                               ; preds = %20, %5
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %38)
  br label %40

40:                                               ; preds = %37, %25
  %41 = load i32, i32* @GREP_SOURCE_OID, align 4
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = load %struct.object_id*, %struct.object_id** %8, align 8
  %46 = call i32 @grep_source_init(%struct.grep_source* %13, i32 %41, i32 %43, i8* %44, %struct.object_id* %45)
  %47 = call i32 @strbuf_release(%struct.strbuf* %12)
  %48 = load i32, i32* @num_threads, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %52 = call i32 @add_work(%struct.grep_opt* %51, %struct.grep_source* %13)
  store i32 0, i32* %6, align 4
  br label %58

53:                                               ; preds = %40
  %54 = load %struct.grep_opt*, %struct.grep_opt** %7, align 8
  %55 = call i32 @grep_source(%struct.grep_opt* %54, %struct.grep_source* %13)
  store i32 %55, i32* %14, align 4
  %56 = call i32 @grep_source_clear(%struct.grep_source* %13)
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @quote_path_relative(i8*, i32, %struct.strbuf*) #2

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i8*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @grep_source_init(%struct.grep_source*, i32, i32, i8*, %struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @add_work(%struct.grep_opt*, %struct.grep_source*) #2

declare dso_local i32 @grep_source(%struct.grep_opt*, %struct.grep_source*) #2

declare dso_local i32 @grep_source_clear(%struct.grep_source*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
