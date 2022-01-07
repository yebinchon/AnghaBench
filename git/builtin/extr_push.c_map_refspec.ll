; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_push.c_map_refspec.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_push.c_map_refspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.remote = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ref = type { i64 }
%struct.refspec_item = type { i64, i64, i64 }
%struct.branch = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@push_default = common dso_local global i64 0, align 8
@PUSH_DEFAULT_UPSTREAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.remote*, %struct.ref*)* @map_refspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @map_refspec(i8* %0, %struct.remote* %1, %struct.ref* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.remote*, align 8
  %7 = alloca %struct.ref*, align 8
  %8 = alloca %struct.ref*, align 8
  %9 = alloca %struct.refspec_item, align 8
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca %struct.branch*, align 8
  %12 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %5, align 8
  store %struct.remote* %1, %struct.remote** %6, align 8
  store %struct.ref* %2, %struct.ref** %7, align 8
  store %struct.ref* null, %struct.ref** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.ref*, %struct.ref** %7, align 8
  %15 = call i32 @count_refspec_match(i8* %13, %struct.ref* %14, %struct.ref** %8)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %4, align 8
  br label %97

19:                                               ; preds = %3
  %20 = load %struct.remote*, %struct.remote** %6, align 8
  %21 = getelementptr inbounds %struct.remote, %struct.remote* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %19
  %26 = call i32 @memset(%struct.refspec_item* %9, i32 0, i32 24)
  %27 = load %struct.ref*, %struct.ref** %8, align 8
  %28 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %9, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = load %struct.remote*, %struct.remote** %6, align 8
  %32 = getelementptr inbounds %struct.remote, %struct.remote* %31, i32 0, i32 0
  %33 = call i32 @query_refspecs(%struct.TYPE_4__* %32, %struct.refspec_item* %9)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %9, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %41 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %9, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %46 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %9, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %9, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (%struct.strbuf*, i8*, i8*, i64, ...) @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %45, i64 %47, i64 %49)
  %51 = call i8* @strbuf_detach(%struct.strbuf* %10, i32* null)
  store i8* %51, i8** %4, align 8
  br label %97

52:                                               ; preds = %35, %25
  br label %53

53:                                               ; preds = %52, %19
  %54 = load i64, i64* @push_default, align 8
  %55 = load i64, i64* @PUSH_DEFAULT_UPSTREAM, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %53
  %58 = load %struct.ref*, %struct.ref** %8, align 8
  %59 = getelementptr inbounds %struct.ref, %struct.ref* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @starts_with(i64 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %57
  %64 = load %struct.ref*, %struct.ref** %8, align 8
  %65 = getelementptr inbounds %struct.ref, %struct.ref* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 11
  %68 = call %struct.branch* @branch_get(i64 %67)
  store %struct.branch* %68, %struct.branch** %11, align 8
  %69 = load %struct.branch*, %struct.branch** %11, align 8
  %70 = getelementptr inbounds %struct.branch, %struct.branch* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %94

73:                                               ; preds = %63
  %74 = load %struct.branch*, %struct.branch** %11, align 8
  %75 = getelementptr inbounds %struct.branch, %struct.branch* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %76, i64 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %73
  %83 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %84 = load i8*, i8** %5, align 8
  %85 = load %struct.branch*, %struct.branch** %11, align 8
  %86 = getelementptr inbounds %struct.branch, %struct.branch* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %87, i64 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (%struct.strbuf*, i8*, i8*, i64, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %84, i64 %91)
  %93 = call i8* @strbuf_detach(%struct.strbuf* %12, i32* null)
  store i8* %93, i8** %4, align 8
  br label %97

94:                                               ; preds = %73, %63
  br label %95

95:                                               ; preds = %94, %57, %53
  %96 = load i8*, i8** %5, align 8
  store i8* %96, i8** %4, align 8
  br label %97

97:                                               ; preds = %95, %82, %39, %17
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

declare dso_local i32 @count_refspec_match(i8*, %struct.ref*, %struct.ref**) #1

declare dso_local i32 @memset(%struct.refspec_item*, i32, i32) #1

declare dso_local i32 @query_refspecs(%struct.TYPE_4__*, %struct.refspec_item*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, i64, ...) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i64 @starts_with(i64, i8*) #1

declare dso_local %struct.branch* @branch_get(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
