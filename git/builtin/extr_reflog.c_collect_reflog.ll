; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_collect_reflog.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_collect_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }
%struct.collected_reflog = type { i32 }
%struct.collect_reflog_cb = type { i64, %struct.collected_reflog**, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@REF_TYPE_NORMAL = common dso_local global i64 0, align 8
@reflog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @collect_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_reflog(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.collected_reflog*, align 8
  %11 = alloca %struct.collect_reflog_cb*, align 8
  %12 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.collect_reflog_cb*
  store %struct.collect_reflog_cb* %14, %struct.collect_reflog_cb** %11, align 8
  %15 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %16 = load %struct.collect_reflog_cb*, %struct.collect_reflog_cb** %11, align 8
  %17 = getelementptr inbounds %struct.collect_reflog_cb, %struct.collect_reflog_cb* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @ref_type(i8* %23)
  %25 = load i64, i64* @REF_TYPE_NORMAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %64

28:                                               ; preds = %22, %4
  %29 = load %struct.collect_reflog_cb*, %struct.collect_reflog_cb** %11, align 8
  %30 = getelementptr inbounds %struct.collect_reflog_cb, %struct.collect_reflog_cb* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strbuf_worktree_ref(%struct.TYPE_2__* %31, %struct.strbuf* %12, i8* %32)
  %34 = load %struct.collected_reflog*, %struct.collected_reflog** %10, align 8
  %35 = load i32, i32* @reflog, align 4
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @FLEX_ALLOC_STR(%struct.collected_reflog* %34, i32 %35, i32 %37)
  %39 = call i32 @strbuf_release(%struct.strbuf* %12)
  %40 = load %struct.collected_reflog*, %struct.collected_reflog** %10, align 8
  %41 = getelementptr inbounds %struct.collected_reflog, %struct.collected_reflog* %40, i32 0, i32 0
  %42 = load %struct.object_id*, %struct.object_id** %7, align 8
  %43 = call i32 @oidcpy(i32* %41, %struct.object_id* %42)
  %44 = load %struct.collect_reflog_cb*, %struct.collect_reflog_cb** %11, align 8
  %45 = getelementptr inbounds %struct.collect_reflog_cb, %struct.collect_reflog_cb* %44, i32 0, i32 1
  %46 = load %struct.collected_reflog**, %struct.collected_reflog*** %45, align 8
  %47 = load %struct.collect_reflog_cb*, %struct.collect_reflog_cb** %11, align 8
  %48 = getelementptr inbounds %struct.collect_reflog_cb, %struct.collect_reflog_cb* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = load %struct.collect_reflog_cb*, %struct.collect_reflog_cb** %11, align 8
  %52 = getelementptr inbounds %struct.collect_reflog_cb, %struct.collect_reflog_cb* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ALLOC_GROW(%struct.collected_reflog** %46, i64 %50, i32 %53)
  %55 = load %struct.collected_reflog*, %struct.collected_reflog** %10, align 8
  %56 = load %struct.collect_reflog_cb*, %struct.collect_reflog_cb** %11, align 8
  %57 = getelementptr inbounds %struct.collect_reflog_cb, %struct.collect_reflog_cb* %56, i32 0, i32 1
  %58 = load %struct.collected_reflog**, %struct.collected_reflog*** %57, align 8
  %59 = load %struct.collect_reflog_cb*, %struct.collect_reflog_cb** %11, align 8
  %60 = getelementptr inbounds %struct.collect_reflog_cb, %struct.collect_reflog_cb* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = getelementptr inbounds %struct.collected_reflog*, %struct.collected_reflog** %58, i64 %61
  store %struct.collected_reflog* %55, %struct.collected_reflog** %63, align 8
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %28, %27
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ref_type(i8*) #2

declare dso_local i32 @strbuf_worktree_ref(%struct.TYPE_2__*, %struct.strbuf*, i8*) #2

declare dso_local i32 @FLEX_ALLOC_STR(%struct.collected_reflog*, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #2

declare dso_local i32 @ALLOC_GROW(%struct.collected_reflog**, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
