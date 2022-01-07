; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_replace.c_for_each_replace_name.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_replace.c_for_each_replace_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i8* }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@git_replace_ref_base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to resolve '%s' as a valid ref\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"replace ref '%s' not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64 (i8*, i8*, %struct.object_id*)*)* @for_each_replace_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @for_each_replace_name(i8** %0, i64 (i8*, i8*, %struct.object_id*)* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i64 (i8*, i8*, %struct.object_id*)*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id, align 4
  store i8** %0, i8*** %3, align 8
  store i64 (i8*, i8*, %struct.object_id*)* %1, i64 (i8*, i8*, %struct.object_id*)** %4, align 8
  %11 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @git_replace_ref_base, align 4
  %13 = call i32 @strbuf_addstr(%struct.strbuf* %7, i32 %12)
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i8**, i8*** %3, align 8
  store i8** %16, i8*** %5, align 8
  br label %17

17:                                               ; preds = %56, %2
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %59

21:                                               ; preds = %17
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @get_oid(i8* %23, %struct.object_id* %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i32 1, i32* %9, align 4
  br label %56

30:                                               ; preds = %21
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @strbuf_setlen(%struct.strbuf* %7, i64 %31)
  %33 = call i32 @oid_to_hex(%struct.object_id* %10)
  %34 = call i32 @strbuf_addstr(%struct.strbuf* %7, i32 %33)
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %6, align 8
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @read_ref(i8* %40, %struct.object_id* %10)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @error(i8* %44, i8* %45)
  store i32 1, i32* %9, align 4
  br label %56

47:                                               ; preds = %30
  %48 = load i64 (i8*, i8*, %struct.object_id*)*, i64 (i8*, i8*, %struct.object_id*)** %4, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 %48(i8* %49, i8* %51, %struct.object_id* %10)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 1, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %47
  br label %56

56:                                               ; preds = %55, %43, %26
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %5, align 8
  br label %17

59:                                               ; preds = %17
  %60 = call i32 @strbuf_release(%struct.strbuf* %7)
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i64 @read_ref(i8*, %struct.object_id*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
