; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_replace.c_replace_parents.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_replace.c_replace_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.object_id = type { i32 }
%struct.commit = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"parent \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"not a valid object name: '%s'\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"could not parse %s as a commit\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"parent %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i32, i8**)* @replace_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_parents(%struct.strbuf* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.object_id, align 4
  %14 = alloca %struct.commit*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %15 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %9, align 8
  %22 = load i32, i32* %12, align 4
  %23 = add i32 %22, 6
  %24 = load i8*, i8** %9, align 8
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  store i8* %27, i8** %10, align 8
  br label %28

28:                                               ; preds = %32, %3
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @starts_with(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %12, align 4
  %34 = add i32 %33, 8
  %35 = load i8*, i8** %10, align 8
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %10, align 8
  br label %28

38:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %80, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %83

43:                                               ; preds = %39
  %44 = load i8**, i8*** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @get_oid(i8* %48, %struct.object_id* %13)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = call i32 @strbuf_release(%struct.strbuf* %8)
  %53 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i8**, i8*** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @error(i32 %53, i8* %58)
  store i32 %59, i32* %4, align 4
  br label %105

60:                                               ; preds = %43
  %61 = load i32, i32* @the_repository, align 4
  %62 = call %struct.commit* @lookup_commit_reference(i32 %61, %struct.object_id* %13)
  store %struct.commit* %62, %struct.commit** %14, align 8
  %63 = load %struct.commit*, %struct.commit** %14, align 8
  %64 = icmp ne %struct.commit* %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = call i32 @strbuf_release(%struct.strbuf* %8)
  %67 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i8**, i8*** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @error(i32 %67, i8* %72)
  store i32 %73, i32* %4, align 4
  br label %105

74:                                               ; preds = %60
  %75 = load %struct.commit*, %struct.commit** %14, align 8
  %76 = getelementptr inbounds %struct.commit, %struct.commit* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 @oid_to_hex(i32* %77)
  %79 = call i32 @strbuf_addf(%struct.strbuf* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %39

83:                                               ; preds = %39
  %84 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %85 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @strbuf_splice(%struct.strbuf* %84, i32 %92, i32 %98, i8* %100, i32 %102)
  %104 = call i32 @strbuf_release(%struct.strbuf* %8)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %83, %65, %51
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local %struct.commit* @lookup_commit_reference(i32, %struct.object_id*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @strbuf_splice(%struct.strbuf*, i32, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
