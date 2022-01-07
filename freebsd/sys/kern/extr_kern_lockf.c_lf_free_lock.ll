; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_free_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_free_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.sx }
%struct.sx = type { i32 }
%struct.lockf_entry = type { i64, i64, i64, i32, i32*, i64, i32, i32, %struct.lockf_entry* }
%struct.lock_owner = type { i64, i64, i64, i32, i32*, i64, i32, i32, %struct.lock_owner* }

@.str = private unnamed_addr constant [34 x i8] c"lockf_entry negative ref count %p\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"freeing lock with dependencies\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"freeing lock with dependants\00", align 1
@lf_lock_owners = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"lock owner refcount\00", align 1
@lf_owner_graph_lock = common dso_local global %struct.sx zeroinitializer, align 4
@lf_owner_graph = common dso_local global i32 0, align 4
@lo_link = common dso_local global i32 0, align 4
@M_LOCKF = common dso_local global i32 0, align 4
@F_REMOTE = common dso_local global i32 0, align 4
@lockf_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockf_entry*)* @lf_free_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lf_free_lock(%struct.lockf_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lockf_entry*, align 8
  %4 = alloca %struct.sx*, align 8
  %5 = alloca %struct.lock_owner*, align 8
  store %struct.lockf_entry* %0, %struct.lockf_entry** %3, align 8
  %6 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %7 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %12 = bitcast %struct.lockf_entry* %11 to i8*
  %13 = call i32 @KASSERT(i32 %10, i8* %12)
  %14 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %15 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

20:                                               ; preds = %1
  %21 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %22 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %21, i32 0, i32 8
  %23 = load %struct.lockf_entry*, %struct.lockf_entry** %22, align 8
  %24 = bitcast %struct.lockf_entry* %23 to %struct.lock_owner*
  store %struct.lock_owner* %24, %struct.lock_owner** %5, align 8
  %25 = load %struct.lock_owner*, %struct.lock_owner** %5, align 8
  %26 = icmp ne %struct.lock_owner* %25, null
  br i1 %26, label %27, label %82

27:                                               ; preds = %20
  %28 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %29 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %28, i32 0, i32 7
  %30 = call i32 @LIST_EMPTY(i32* %29)
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %33 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %32, i32 0, i32 6
  %34 = call i32 @LIST_EMPTY(i32* %33)
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lf_lock_owners, align 8
  %37 = load %struct.lock_owner*, %struct.lock_owner** %5, align 8
  %38 = getelementptr inbounds %struct.lock_owner, %struct.lock_owner* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.sx* %41, %struct.sx** %4, align 8
  %42 = load %struct.sx*, %struct.sx** %4, align 8
  %43 = call i32 @sx_xlock(%struct.sx* %42)
  %44 = load %struct.lock_owner*, %struct.lock_owner** %5, align 8
  %45 = getelementptr inbounds %struct.lock_owner, %struct.lock_owner* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @KASSERT(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.lock_owner*, %struct.lock_owner** %5, align 8
  %51 = getelementptr inbounds %struct.lock_owner, %struct.lock_owner* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.lock_owner*, %struct.lock_owner** %5, align 8
  %55 = getelementptr inbounds %struct.lock_owner, %struct.lock_owner* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %27
  %59 = load %struct.lock_owner*, %struct.lock_owner** %5, align 8
  %60 = getelementptr inbounds %struct.lock_owner, %struct.lock_owner* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = call i32 @sx_xlock(%struct.sx* @lf_owner_graph_lock)
  %65 = load %struct.lock_owner*, %struct.lock_owner** %5, align 8
  %66 = getelementptr inbounds %struct.lock_owner, %struct.lock_owner* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @graph_free_vertex(i32* @lf_owner_graph, i64 %67)
  %69 = call i32 @sx_xunlock(%struct.sx* @lf_owner_graph_lock)
  br label %70

70:                                               ; preds = %63, %58
  %71 = load %struct.lock_owner*, %struct.lock_owner** %5, align 8
  %72 = bitcast %struct.lock_owner* %71 to %struct.lockf_entry*
  %73 = load i32, i32* @lo_link, align 4
  %74 = call i32 @LIST_REMOVE(%struct.lockf_entry* %72, i32 %73)
  %75 = load %struct.lock_owner*, %struct.lock_owner** %5, align 8
  %76 = bitcast %struct.lock_owner* %75 to %struct.lockf_entry*
  %77 = load i32, i32* @M_LOCKF, align 4
  %78 = call i32 @free(%struct.lockf_entry* %76, i32 %77)
  br label %79

79:                                               ; preds = %70, %27
  %80 = load %struct.sx*, %struct.sx** %4, align 8
  %81 = call i32 @sx_unlock(%struct.sx* %80)
  br label %82

82:                                               ; preds = %79, %20
  %83 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %84 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @F_REMOTE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %82
  %90 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %91 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %96 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @vrele(i32* %97)
  %99 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %100 = getelementptr inbounds %struct.lockf_entry, %struct.lockf_entry* %99, i32 0, i32 4
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %94, %89, %82
  %102 = load %struct.lockf_entry*, %struct.lockf_entry** %3, align 8
  %103 = load i32, i32* @M_LOCKF, align 4
  %104 = call i32 @free(%struct.lockf_entry* %102, i32 %103)
  store i32 1, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %19
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @sx_xlock(%struct.sx*) #1

declare dso_local i32 @graph_free_vertex(i32*, i64) #1

declare dso_local i32 @sx_xunlock(%struct.sx*) #1

declare dso_local i32 @LIST_REMOVE(%struct.lockf_entry*, i32) #1

declare dso_local i32 @free(%struct.lockf_entry*, i32) #1

declare dso_local i32 @sx_unlock(%struct.sx*) #1

declare dso_local i32 @vrele(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
